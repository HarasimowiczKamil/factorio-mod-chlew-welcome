-------------- include Class libs ----------------
-- require "core/Class"
Position = require '__stdlib__/stdlib/area/position'

-------------- include Debug libs ----------------
require "core.Debug"

-------------- include other libs ---------------
require "mod-gui"

script.on_event(defines.events.on_player_joined_game, function (event)
    local msg = settings.global["chlew-welcome-message"].value;
    if msg then
        if game ~= nil then
            game.players[event.player_index].print(msg)
          end
    end
end)
