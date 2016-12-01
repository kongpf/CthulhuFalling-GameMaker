///scr_string_add_newlines(text, chars_per_line);
var text = argument[0];
var final_text = "";
var chars = argument[1];
var count = 0;
var chars_loop = 0;
var start = 0;

for (count = 1; count < string_length(text); count++) {
    chars_loop++;
    if (chars == chars_loop) {
       final_text += (string_copy(text, start, count) + "#"); 
       start = count + 1;
       chars_loop = 0;
    }
}

return final_text;
