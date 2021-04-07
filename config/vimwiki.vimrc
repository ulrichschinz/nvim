" list of wikis
let g:vimwiki_list = [{'path': '~/projects/wiki/work', 'syntax': 'markdown', 'ext': 'md'},
      \{'path': '~/projects/wiki.schinz.it', 'syntax': 'markdown', 'ext': 'md'}]

let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Make vimwiki markdown links as [text](text.md) instead of [text](text)
let g:vimwiki_markdown_link_ext = 1

let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 1
