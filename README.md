# editorLauncher
A tool that allows you to edit any web form including google spreadsheet cells with your favorite editor. By using this tool you will have something like vim's "insert mode" for your browser. Just point your pointer to an editable place and press `command` + ` i` .

# How to install and use

## Requirements

### OSX users

- [HammerSpoon](http://www.hammerspoon.org/)
- GUI editor such as [Typora](http://www.typora.io/)
- Lua

#### Installation

1. clone this repository 

   `git clone git@github.com:vascoosx/editorLauncher.git `

2. change your `init.lua` (should be `~/.hammerspoon/init.lua`) so as to include functions in `insert_mode`  and configuration in `settings` like this:

```
package.path = package.path .. ';<path/to/editorLauncher/>' 
require 'insert_mode'
require 'settings'
```
3. adjust `settings.lua` to suit your needs.

### Windows users

- AutoHotKey
- PowerShell

#### installation
Right click `windows/editorLauncher` and select `Run Script`

## Usage

1. point your mouse pointer to an editable place and press `command` + ` i` . 
2. edit your text
3. quit your application. Now you will have your newly edited text in your clipboard
4. move your pointer to the place you want to paste your new text
5. paste (`command` +`v` ) to your desired location. 

Note that if you have just edited your text without having moved your mouse you should be able to skip step 4.
