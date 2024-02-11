local script = {
    name = "fixFireBarries",
    displayName = "Fix Fire Barriers",
    tooltip = "Changes the settings of all frost helper fire  barriers to be silent and always on",
}

function script.run(room, args)
    for _, entity in ipairs(room.entities) do
        if entity._name == "FrostHelper/CustomFireBarrier" then
            entity.silent = true
            entity.ignoreCoreMode = true
        end
    end
end

return script
