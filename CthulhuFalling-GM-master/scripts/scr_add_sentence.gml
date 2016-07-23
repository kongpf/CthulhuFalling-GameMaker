// scr_add_sentence(Sentence);
sentence = argument0;

if (instance_exists(obj_textManager)) {
   with (obj_textManager) {
        ds_list_add(sentences, sentence);
   }
} else {
  show_message("Nessun'instanza di obj_textManager nella room, aggiungerne una!");
}
