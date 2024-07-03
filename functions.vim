
function InitWorkspace()
  winc h                " Move to the left pane
  IndentLinesDisable    
  winc l                " Move to the right pane
  CocDiagnostics        " Open coc-diagnostic pane
  3winc -
  " vsplit                " Split the pane vertically
  " split
  " winc j                " Move to the down pane
  " 17winc -
  " terminal              
  IndentLinesDisable    " Disable indent lines in terminal
  winc k                " Move to the up pane
endfunction
autocmd vimenter * command InitWorkspace call InitWorkspace()

function Path()
  echo expand('%:p')
endfunction
autocmd vimenter * command Path call Path()

function FigTerm()
  te
endfunction
autocmd vimenter * command FigTerm call FigTerm()

function PreviewMarkdownPretty()
  PreviewMarkdown
  IndentLinesDisable
  winc x
endfunction
autocmd vimenter * command PM call PreviewMarkdownPretty()

function Ready()
  winc h                " Move to the left pane
  normal zh
  IndentLinesDisable    
  winc l                " Move to the right pane
  split
  100winc +
  winc j                " Move to the down pane
  5winc +
  " CocDiagnostics        " Open coc-diagnostic pane
  " vsplit                " Split the pane vertically
  terminal
  IndentLinesDisable    " Disable indent lines in terminal
  winc h                " Move to the explorer pane
endfunction

function ReadyFiles()
  call Ready()
  winc l                " Move to the edit pane
  call fzf#vim#files('.')
endfunction

autocmd vimenter * command Ready call ReadyFiles()

function ReadyGrep()
  call Ready()
  winc l                " Move to the edit pane
  RG
endfunction
autocmd vimenter * command ReadyGrep call ReadyGrep()

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


