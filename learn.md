# Vim Learning
## Command
- \<Ctrl> + z => swap to terminal
- fg => swap to vim
- :! \<command> => run the command
- :r !\<command> => paste the command result
- :source \<file> => read .vimrc file setting

## Search, Replace, Substitute
- [/|?]pattern => search for [forward | backward] pattern
- [n|N] => repeat search in [same | opposite] direction
- [*|#] => goto the [next | previous] occurence of the current word
- :e \<file> => open file
- :%s/old/new/g => replace all
- :%s/\<old\>/new/g => replace all word exactly matching
- :'<,'>s/old/new/g => replace all in visual mode
- :'a,'bs/old/new/g => replace from mark a to mark b inclusive

## Registers
- "xp => paste contents of register x (a register for vim)
- "xy => yank into register x
- "+p => paste from clipboard to vim
- "+y => copy from vim to clipboard
- :%d => yank and delete all lines to vim
- :%d+ => yank and delete all lines to clipboard
- :%y => yank all lines to vim
- :%y+ => yank all lines to clipboard

## Cursor Movement
- [gg|G] => go to [first | last] line
- [w|b][W|B] => move to [previous | next] word [include punctuations]
- [{|}] => move to [previous | next] start of the paragraph
- g[j|k] => move to [next | previous] line include when the contents is split into multiple lines
- [f|F]x => jump to [next | previous]  occurrence of char x
- [t|T]x => jump to before [next | previous]  occurrence of char x
- ; => repeat previous [f|t|F|T] movement
- , => repeat previous [f|t|F|T] movement backward
- \<Ctrl> + [f|b] => move [forward | back] one full screen
- \<Ctrl> + [d|u] => move [forward | back] 1/2 a screen
- H => move to top of screen
- M => move to middle of screen
- L => move to bottom of screen
- ^ => move to the first appear character in the line

## Editing
- \<Enter> | \<Ctrl> + [ => exist insert mode
- u => undo
- \<Ctrl> + r => redo
- i => insert before cursor
- I => insert at the beginning of the line
- a => append after cursor
- A => insert at the end of the line
- s => substitute character under the cursor
- S, cc => substitute a line
- C, c$ => substitute to the end of the line
- cw => substitute to the end of the word
- ciw => substitute whole word under the cursor
- r => replace single character
- R => replace more than one characters until \<ESC> is pressed
- [A] + [a|x] => [in|de]crease a number
- ~ => switch case
- . => repeat last edit command
- \<Ctrl> + [p|n] => autocomplete matching word in [back|for]ward direction
- \<Ctrl> + e => cancel autocomplete
- \<Ctrl> + e or \<Enter> => select autocomplete

## Cut and Paste
- dd => delete
- diw => delete word under the cursor
- [x|X] => delete character [under | before] the cursor
- bcw[]\<ESC>P => cut down one word (b to start of the word, cw replace to the end of the word), type [], \<ESC> and paste word just cut

## Marking text (Visual mode)
- v => visual mode
- V => line visual mode
- \<Ctrl> + v => visual block
- v[i|a]w => mark a [word | word include around space]
- v[i|a][w|s|p|\<punc>|t] => mark [inner | around ] [word | sentence | paragraph | punctuation | tags]
- i[b|B] => inner block with [()|{}]

## Marks
- :marks => list all marks
- m[a|b|...] => mark current line for mark [a|b|...] [note: case sensitive]
- '[a|b|...] => jump to mark [a|b|...]

## Multiple Files
- :tabe => open a vim tab
- \<Ctrl> + hl => change between tabs
- :[v]new => open a [vertical | horizontal] window
- \<Ctrl> + w + [hjkl] => move between vim windows
- :[sp|vs] file => open a file in a [horizontally | vertically] split window
- vim -[o|O] file => In terminal, open all files in a [horizontally | vertically] split windows
- vim -p file => In terminal, open N tab pages
- :ls => view all in vim buffer files
- :b[n|p|f|l|d] => goto [next | previous | first | last | delete] buffer
- :b[\<number>|\<filename>] => goto the [number | file] located buffer
- :tab ba => expand all in buffer tabs
- \<Ctrl> + ^ => exchange between two buffers

## Fold Lines
- zf => fold lines
- zd => unfold lines
- zfip => fold inline paragraph

## Future functions
- adjust cursor move speed
- change between multiple pagings
