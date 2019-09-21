# VIM editor - Linkedin Learning
* vi hello.txt - edit,create file using vi editor
* :qa! - quite vi editor
* Normal mode and Insert mode
* : - Normal mode
* i - Insert mode
* ctl+g - shows which file you are editing
* H,J,K,L - H -> Right, J-> down, K->Up, L->Left
* number+[H,J,K,L] - move the cursors based on the number [10k -10 rows up]
* w - moves to the next word
* e - moves end of the word
* number+[w,e] - move the cursors based on the number
* ( - moves to Previous sentence
* ) - moves to next sentence
* { - moves to Previous paragraph
* } - moves to next paragraph
* use number+keys to move quickly
* :/akilan - find akilan in the file [ press 'n' for next]
* :/ak.an - some people wrote my name as akhilan - so use regx to find it
* :?akilan - backword search [/search forward]
* gg - start of the file
* G - last line of the file
* ctl+f - move to next page
* ctl+b - move to previous page
* :set number - set the line number
* :8 - goes to the 8th line
* $ - end of the line [ in bash ctl+e - end of the line ]
* 0 - start of the line [ in bash ctl+a - start of the line ]
* vi akilan.txt +8 - goes to line number 8
* *+n - find the current word forward
* #+n - find the current word backword
* dd - delete the line
* dw - delete the word
* d+/akilan - delete everything before akilan word
* d) - delete a sentence
* yw - copy the word
* yy - copy the whole line
* p - paste in the next after cursor
* P - paste before cursor
* x - to delete a current character
* cw - delete the word and enters into insert mode [dw -don't go to enter mode]
* c+/akilan - delete words till akilan
* V - enter visual mode
* :s/you/they - replace 'you' with 'they' for 1st occurance
* :s/you/they/g - replace 'you' with'they' for global
* :s/you/they/gc - asks for confirmation