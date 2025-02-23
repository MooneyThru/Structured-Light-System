function pts_tilde = get_actual_lpts()

    args_img                    = configure_img_process();
    % [img_lpts, pts_tilde_raw]   = img_processing(args_img);
    [screen_holes, pts_tilde_raw] = extract_screen_holes_and_laser_tracking(args_img);
    % pts_tilde_raw = test_laser_tracking02(args_img);
    img_lpts   = test_laser_tracking(args_img);
    % imshow(img_lpts);
    % disp(pts_tilde_raw);
    % screen_holes                = extract_screen_holes(args_img);   

    persp_matrix                = comp_persp(args_img, screen_holes);
    img_lpts_pers               = apply_perspective(persp_matrix, args_img, img_lpts);
    pts_tilde_tmp               = apply_perspective(persp_matrix, args_img, pts_tilde_raw); 
    pts_tilde                   = adjust_pts_ratio(args_img, pts_tilde_tmp);

end