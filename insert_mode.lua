function doubleClick()
    local clickState = hs.eventtap.event.properties.mouseEventClickState
    hs.eventtap.event.newMouseEvent(hs.eventtap.event.types["leftMouseDown"], point):setProperty(clickState, 1):post()
    hs.eventtap.event.newMouseEvent(hs.eventtap.event.types["leftMouseUp"], point):setProperty(clickState, 1):post()
    hs.timer.usleep(1000)
    hs.eventtap.event.newMouseEvent(hs.eventtap.event.types["leftMouseDown"], point):setProperty(clickState, 2):post()
    hs.eventtap.event.newMouseEvent(hs.eventtap.event.types["leftMouseUp"], point):setProperty(clickState, 2):post()
end

function insert(editor)
    point = hs.mouse.getAbsolutePosition()
    doubleClick()
    hs.eventtap.keyStroke({"cmd"}, "a")
    hs.eventtap.keyStroke({"cmd"}, "c")
    local m = hs.task.new(string.format("%s/utils/paster.sh", conf.home), nil, {editor})
    m:start()
end
