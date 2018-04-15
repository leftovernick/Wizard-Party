// @description Add Letters Over Timer



draw_nine_slice(spr_TextBox, x, y, x+width_, y+height_);

if char_count_ < string_length(text_[page_]) {
	char_count_ += .5;
}
text_part_ = string_copy(text_[page_], 1, char_count_);
draw_text_ext(x+6, y+6, text_part_, string_height_, width_ - 8);