% function lambda_base = add_lambda_base(num)
% 
%     % Lambda_base = [0.01; 0.01; 0.01; 0.1/180*pi; 0.1/180*pi; 0.1/180*pi];
%     Lambda_base = [0.001; 0.001; 0.001; 0.1/180*pi; 0.1/180*pi; 0.1/180*pi];
%     % Lambda_base = [0.3; 0.3; 0.03; 0.1/180*pi; 0.1/180*pi; 0.1/180*pi];
% 
%     rand('seed', 1);
%     for idx = 1:num
%         random_values = 2 * rand(size(Lambda_base)) - 1;
%         random_lambda = Lambda_base .* random_values;
%         lambda_base(idx,:) = round(random_lambda, );  % 소수점 3자리로 반올림
%     end
% 
% end


function lambda_base = add_lambda_base(num)
 % Lambda_base = [0.01; 0.01; 0.01; 0.1/180*pi; 0.1/180*pi; 0.1/180*pi];
 Lambda_base = [0.001; 0.001; 0.001; 0.01/180*pi; 0.01/180*pi; 0.01/180*pi];
 % Lambda_base = [0.3; 0.3; 0.03; 0.1/180*pi; 0.1/180*pi; 0.1/180*pi];
 rand('seed', 1);
 for idx = 1:num
    random_values = 2 * rand(size(Lambda_base)) - 1;
    random_lambda = Lambda_base .* random_values;
    lambda_base(idx,:) = random_lambda; % round 함수 제거
 end
end