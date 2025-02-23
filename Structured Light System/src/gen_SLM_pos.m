function SLMPostures = gen_SLM_pos(NumOfSLMPosture)
   
    col = 1:5;        % col values as simple identifiers x
    floor = 1:3;      % floor values as simple identifiers z
    angle = [-30, -15, 0, 15, 30]; % angles in radians

    colAngles = {
        [1, 2],     % angles for col 1
        [2, 3],     % angles for col 2
        [3],        % angles for col 3
        [3, 4],     % angles for col 4
        [4, 5]      % angles for col 5
    };

    combinationMatrix = [];
    
    for i = 1:length(col)
       
        col_value = col(i);
        validAngles = colAngles{i};

        if col_value == 3
            validRows = [2, 5]; % Only rows 2 and 4 are valid for col 3
        else
            validRows = [1, 3, 4]; % Exclude rows 2 and 4 for col 1, 2, 4, 5
        end

        for j = 1:length(validAngles)
            angle_value = angle(validAngles(j));
            [F, R] = ndgrid(floor, validRows);
          
            numCombinations = numel(F);
            combinations = [repmat(col_value, numCombinations, 1), ...
                            F(:), R(:), repmat(angle_value, numCombinations, 1)];
          
            combinationMatrix = [combinationMatrix; combinations];
        end
    end

    totalCombinations = size(combinationMatrix, 1);

    if totalCombinations <= NumOfSLMPosture
        SLMPostures = combinationMatrix;
    else
        SLMPostures = combinationMatrix(1:NumOfSLMPosture, :);
    end

end
