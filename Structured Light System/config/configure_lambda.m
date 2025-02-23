function lambda_actual = configure_lambda()

    % misalignment for laser pointer axes
    % lambda_a1 = [1e-3; 1e-3; 0.1/180*pi; 0.1/180*pi];
    % lambda_a2 = [1e-3; 1e-3; 0.1/180*pi; 0.1/180*pi];
    % lambda_a3 = [1e-3; 1e-3; 0.1/180*pi; 0.1/180*pi];
    % lambda_actual = [lambda_a1 lambda_a2 lambda_a3];

    % lambda_a1 = [-1e-2; 1e-2; -0.2/180*pi; 0.2/180*pi];
    % lambda_a2 = [1e-2; -1e-2; 0.2/180*pi; -0.2/180*pi];
    % lambda_a3 = [-1e-2; 1e-2; -0.2/180*pi; 0.2/180*pi];
    % lambda_actual = [lambda_a1 lambda_a2 lambda_a3];

    lambda_a1 = [-1e-3; 1e-3; -0.1/180*pi; 0.1/180*pi];
    lambda_a2 = [1e-3; -1e-3; 0.1/180*pi; -0.1/180*pi];
    lambda_a3 = [-1e-3; 1e-3; -0.1/180*pi; 0.1/180*pi];
    lambda_actual = [lambda_a1 lambda_a2 lambda_a3];

    % lambda_a1 = [1e-3; -1e-3; 1e-3; 0.1/180*pi; 0.1/180*pi; -0.1/180*pi;];
    % lambda_a2 = [1e-3; 1e-3; -1e-3; -0.1/180*pi; 0.1/180*pi; 0.1/180*pi;];
    % lambda_a3 = [-1e-3; 1e-3; 1e-3; 0.1/180*pi; -0.1/180*pi; 0.1/180*pi;];
    % lambda_actual = [lambda_a1 lambda_a2 lambda_a3];

end