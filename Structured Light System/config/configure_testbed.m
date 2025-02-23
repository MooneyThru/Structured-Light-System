function testbed = configure_testbed()

    % testbed.col = [133, 333, 466, 599, 799]*1e-3;
    % testbed.floor = [231, 331, 431]*1e-3;
    % testbed.row = -[816.5, 837, 876.5, 936.5, 956]*1e-3;

    % testbed.col   = [131.15, 331.15, 464.15, 597.15, 797.125] * 1e-3;
    % testbed.floor = [230, 330, 430] * 1e-3;
    % % testbed.row   = -[810.33, 822, 870.33, 930.33, 942] * 1e-3;
    % testbed.row = -[816.5, 837, 876.5, 936.5, 956]*1e-3;

    testbed.col   = [131.15, 331.15, 464.15, 597.15, 797.15] * 1e-3;
    testbed.floor = [233, 333, 433] * 1e-3;
    testbed.row   = -[807.33, 826, 867.33, 929.26, 946] * 1e-3;
    
    % Relationship between the mounting hole of the testbed base and the focal point of the SLM
    testbed.T_b_l = [ 1 0 0 -0.012; 
                      0 1 0 0; 
                      0 0 1 0.019; 
                      0 0 0 1];

end