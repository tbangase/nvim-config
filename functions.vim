
function InitWorkspace()
  winc h                " Move to the left pane
  IndentLinesDisable    
  winc l                " Move to the right pane
  split
  winc j                " Move to the down pane
  17winc -
  " CocDiagnostics        " Open coc-diagnostic pane
  " vsplit                " Split the pane vertically
  terminal              
  IndentLinesDisable    " Disable indent lines in terminal
  winc k                " Move to the left pane
endfunction

autocmd vimenter * command InitWorkspace call InitWorkspace()

function Ready()
  winc h                " Move to the left pane
  IndentLinesDisable    
  winc l                " Move to the right pane
  split
  winc j                " Move to the down pane
  " CocDiagnostics        " Open coc-diagnostic pane
  " vsplit                " Split the pane vertically
  terminal              
  IndentLinesDisable    " Disable indent lines in terminal
  winc k                " Move to the edit pane
  call fzf#vim#files('.') " Open fzf
endfunction

autocmd vimenter * command Ready call Ready()

function Wide()
  50winc >
endfunction

autocmd vimenter * command Wide call Wide()

function WideSuper()
  200winc >
endfunction

autocmd vimenter * command WideSuper call WideSuper()

function Shrink()
  50winc <
endfunction

autocmd vimenter * command Shrink call Shrink()

function ShrinkSuper()
  200winc <
endfunction

autocmd vimenter * command ShrinkSuper call ShrinkSuper()


function Taller()
  5winc +
endfunction

autocmd vimenter * command Taller call Taller()

function Shorter()
  5winc -
endfunction

autocmd vimenter * command Shorter call Shorter()


