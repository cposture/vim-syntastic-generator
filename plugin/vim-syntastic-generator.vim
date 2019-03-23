let s:config_gen = expand("<sfile>:p:h:h") . "/config_gen.py"

command! -nargs=? -complete=file_in_path -bang VimSyntasticConfig call s:GenerateConfig(<bang>0, "<args>")

function! s:GenerateConfig(overwrite, flags)
    let l:cmd = "! " . s:config_gen . " " . a:flags

    if a:overwrite
        let l:cmd = l:cmd . " -f"
    endif

    " Only append the working directory if the last option is a flag
    let l:split_flags = split(a:flags)
    let l:output_dir = ''

    if len(l:split_flags) == 0 || l:split_flags[-1] =~ "^-"
        let l:output_dir = shellescape(getcwd())
        let l:cmd = l:cmd . " " . l:output_dir 
    else
        let l:output_dir = l:split_flags[-1]
    endif
    
    " print cmd string to debug
    echom l:cmd

    " Disable interactive prompts for consistency with Neovim
    execute l:cmd . " </dev/null"

    "
    let g:syntastic_cpp_config_file = l:output_dir 
endfunction

