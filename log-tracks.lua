
function on_track_change(name, value)
    local startmsg
    if value ~= nil then
        if value == "a71722" then
            startmsg = "Start of stream for "..value.." "os.date("%x")
            print("value of startmsg", startmsg)
        else
            file = io.open("/home/bobossler/mpv-capture/tracks.txt", "a")
            file:write(value,"\n")
            file:close()
        end
    end
end
mp.observe_property("media-title", "string", on_track_change)
 
