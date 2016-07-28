#define screen_init
// screen base(view_wview and view_hview)
screen_x = 0;
screen_y = 0;
screen_w = 320;
screen_h = 240;
screen_scale = 2;

// create a surface for the whole screen to be drawn on
screen = surface_create(screen_w,screen_h);

// this will destroy the screen object if surfaces are not supported on the graphics card, reverting to the viewport method
if screen = -1{instance_destroy();}

#define screen_begin
// this draws the surface on the screen
surface_reset_target();
draw_clear(0);
draw_set_blend_mode_ext(bm_one, bm_zero);
draw_surface_stretched(screen,screen_x,screen_y,screen_w*screen_scale,screen_h*screen_scale);
draw_set_blend_mode(bm_normal);

#define screen_end
// this sets surface 'screen' as the drawing target for everything in the game, so all drawing will be done on this surface and not on the game screen
surface_set_target(screen);
