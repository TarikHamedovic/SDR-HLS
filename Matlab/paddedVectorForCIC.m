function paddedVector = padVectorForCIC(inputVector, decimationRatio)
    % padVectorForCIC Pads the input vector with zeros to make its number of rows a multiple of decimation_ratio.
    % 
    % Parameters:
    %   inputVector: The original input vector (size N x 1)
    %   decimationRatio: The decimation ratio to achieve the padding
    %
    % Returns:
    %   paddedVector: The input vector padded with zeros at the end to make its length a multiple of decimation_ratio

    % Check the size of the input vector
    [numRows, numCols] = size(inputVector);
    
    % Ensure the inputVector is a column vector
    if numCols ~= 1
        error('Input vector must be a column vector');
    end
    
    % Calculate the padding required to make the number of rows a multiple of decimationRatio
    paddingSize = decimationRatio - mod(numRows, decimationRatio);
    if paddingSize == decimationRatio
        paddingSize = 0; % No padding needed if numRows is already a multiple of decimationRatio
    end
    
    % Create the padding vector
    paddingVector = zeros(paddingSize, 1);
    
    % Concatenate the input vector and the padding vector
    paddedVector = [inputVector; paddingVector];
end
