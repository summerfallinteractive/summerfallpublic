RegisterServerEvent("sfi_simplenotify.getIsAllowed")
AddEventHandler("sfi_simplenotify.getIsAllowed", function()
    -- Creating ACE Command Injection
    if IsPlayerAceAllowed(source, "sfi.chat") and
    -- IsPlayerAceAllowed(source, "sfi.COMMANDNAME") and -- In here you can put the new permission for commands
        IsPlayerAceAllowed(source, "sfi.addp") then
        TriggerClientEvent("sfi_simplenotify.returnIsAllowed", source, true)
    else
        TriggerClientEvent("sfi_simplenotify.returnIsAllowed", source, false)
    end
end)