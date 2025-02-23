% Configure laser module-axis misalignment parameters
lambda = configure_lambda();

% Create laser module vectors with specific angles (in radians)
a = combine_lpt_axes(20 * pi/180, 18);

% Initial D-H parameters for SLM posture
x0 = [0.3502 0.218 -0.8103 90*pi/180 0 90*pi/180];

% Create true transformation matrix using D-H parameters
% Translation followed by rotation (x, y, z)
T_true = trans('x', x0(1)) * trans('y', x0(2)) * trans('z', x0(3)) * ...
         rot('x', x0(4)) * rot('y', x0(5)) * rot('z', x0(6));

% Add small perturbation to initial parameters
q = x0 + 0.01;

% Compute laser point positions with true transformation
p_tilde = comp_lpts(T_true, a, lambda);

% Estimate SLM posture using perturbed parameters
T_hat = est_SLM_posture(q', a, p_tilde, lambda);