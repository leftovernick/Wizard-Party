target_ = obj_Player;
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);
scale_ = view_wport[0]/width_;
shake_ = 0;

fixed_ = true;

shake_x = camera_get_view_width(view_camera[0]);
shake_y = camera_get_view_height(view_camera[0]);