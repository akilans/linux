# VIM editor - Linkedin Learning
* vi hello.txt - edit,create file using vi editor
* :qa! - quite vi editor
* :w !sudo tee % - save file by root inside vi editor
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
* :e hello.py - Edit another file, it will be in buffer
* :bd - buffer delete
* :e ./ - list all the files in current directory, and move j,k to select
* :e! - undo all changes
* :ls - list buffers
* :b hello.txt - moves to hello.txt buffer
* :bn - next, :b 3 - moves to 3rd buffer
* :bp - previous buffer
* :r hello.py - add hello.py contents in the current file
* :set number | :se nu - set number
* :set nonumber | :se nonu - remove number
* ~/.vimrc - set number " Set number in front of line
* :abb _me akil.dove2gmail.com - 
* _me+ctl+v - not expand
* :comm! WC !wc % - by calling WC, it counts the number of lines in the current file
* :syntax on - syntax for programming
* :colorscheme industry, morning, blue, evening
* vi time.txt +4d +wq - opens time.txt deletes line 4 and writing on dist
* vi -d file1.txt file2.txt - compares 2 files, ctl+w+w moves between windows
* vi files.txt, then :r |ls - > writes list of files in the current direcorty to files.txt file
* 
