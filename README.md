# vim-syntastic-generator

[中文文档](README_CHINESE.md)

This is a script which generates a list of c/cpp compiler flags from a project with an arbitrary build system. It can be used to:

* generate a c/cpp config file for use with [vim-syntastic/syntastic](https://github.com/vim-syntastic/syntastic)

It works by building the project with a fake toolchain, which simply and filters compiler flags to be stored in the resulting file.

It is reasonably fast.

## Installation

For [vim-plug](https://github.com/junegunn/vim-plug) users, add ```Plug 'cposture/vim-syntastic-generator'``` to your vimrc.

## Usage

* within bash: ```./config_gen.py PROJECT_DIRECTORY```, where ```PROJECT_DIRECTORY``` is the root directory of your project's build system (i.e. the one containing the root Makefile, etc.)

* within vim: You can also invoke it from within Vim using the ```:VimSyntasticConfig``` commands to generate a config file for the current directory. These commands accept the same arguments as ```./config_gen.py```, but do not require the project directory to be specified (it defaults to the current working directory).

## Requirements and Limitations
* Requirements:
    + Python 2

* Supported build systems:
    + make

## Documentation & Support
* run ```./config_gen.py --help``` to see the complete list of supported options.
* if you receive the error message ```ERROR: No commands were logged to the build logs```, try using the ```--verbose``` flag to see any error messages

## Development
Patches are welcome. Please submit pull requests against the ```develop``` branch.

## License
vim-syntastic-generator is published under the GNU GPLv3.
