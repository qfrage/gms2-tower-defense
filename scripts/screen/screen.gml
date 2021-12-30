function screen_to_sprite() {
    if(!surface_exists(application_surface)) return -1;
    var sw = surface_get_width(application_surface), sh = surface_get_height(application_surface);
    var surf = surface_create(sw,sh);
    surface_set_target(surf);
    gpu_set_colorwriteenable(1,1,1,0);
    draw_clear_alpha(c_white,1);
    gpu_set_blendenable(true);
    draw_surface(application_surface,0,0);
    var v_dfaefg = sprite_create_from_surface(surf,0,0,sw,sh,false,false,sw/2,sh/2);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(1,1,1,1);
    surface_reset_target();
    
    surface_free(surf);
    
    return v_dfaefg;
}