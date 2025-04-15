function sector = get_bldc_sector(angle_rad)
% Input:
%   angle_rad - mechanical rotor angle in radians
% Output:
%   sector    - sector number (1 to 6)

% Convert radians to degrees
angle_deg_mech = rad2deg(angle_rad);

% Convert mechanical angle to electrical angle (assuming 4 pole pairs)
angle_deg_elec = angle_deg_mech * 4;

% Wrap the angle within 0–360 degrees
angle_wrapped = mod(angle_deg_elec, 360);

% Each sector is 60 degrees wide
sector = floor(angle_wrapped / 60) + 1;
end
