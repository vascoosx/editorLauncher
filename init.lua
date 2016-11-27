-- package.configpath = package.path .. ';/Users/iop/editorLauncher/' --change to adequate path

require 'insert_mode'
require 'settings'

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
    hs.reload()
end)
hs.alert.show("Config loaded")

hs.hotkey.bind({"cmd"}, "i", function() 
    insert(conf.editor) 
end)

