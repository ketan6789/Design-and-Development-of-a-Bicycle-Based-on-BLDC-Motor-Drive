function pattern = bldc_commutation(sector, duty_cycle)


% Outputs:
% 6x1 uint8 vector [AH; AL; BH; BL; CH; CL]

% upper patterns (for duty_cycle > 0.5)
upper_patterns = uint8([
    1 0 0 0 0 1;  % Sector 1
    0 0 1 0 0 1;  % Sector 2
    0 1 1 0 0 0;  % Sector 3
    0 1 0 0 1 0;  % Sector 4
    0 0 0 1 1 0;  % Sector 5
    1 0 0 1 0 0   % Sector 6
]);

% lower patterns (for duty_cycle <= 0.5)
lower_patterns = uint8([
    0 1 0 0 1 0;  % Sector 1
    0 0 0 1 1 0;  % Sector 2
    1 0 0 1 0 0;  % Sector 3
    1 0 0 0 0 1;  % Sector 4
    0 0 1 0 0 1;  % Sector 5
    0 1 1 0 0 0   % Sector 6
]);

% Default to zero output
pattern = zeros(6,1,'uint8');

% Ensuring sector is in valid range
if sector >= 1 && sector <= 6
    if duty_cycle > 0.5
        pattern = upper_patterns(sector, :).';  % Transpose to column vector
    else
        pattern = lower_patterns(sector, :).';
    end
end
end
