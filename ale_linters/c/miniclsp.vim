" Author: Bojan Stipic
" Description: miniC language server

function! ale_linters#c#miniclsp#GetProjectRoot(buffer) abort
	" Get the name of the buffer,
	" make it a full path (:p),
	" and remove the last component (:h)
	return fnamemodify(bufname(a:buffer), ':p:h')
endfunction

call ale#linter#Define('c', {
\	'name': 'minic-lsp',
\	'lsp': 'stdio',
\	'executable': 'minic-lsp',
\	'command': '%e',
\	'project_root_callback': 'ale_linters#c#miniclsp#GetProjectRoot',
\})
