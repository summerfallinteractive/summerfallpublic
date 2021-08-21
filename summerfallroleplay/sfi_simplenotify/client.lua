-- ACE Permissions to use this script
-- Clients can use this when got permissions - this is a developer feature, later changed to ESX Legacy Job permissions.
pinnedMessages = {}


local allowedToUse = false
Citizen.CreateThread(function()
    TriggerServerEvent("sfi_simplenotify.getIsAllowed")
end)

RegisterNetEvent("sfi_simplenotify.returnIsAllowed")
AddEventHandler("sfi_simplenotify.returnIsAllowed", function(isAllowed)
    allowedToUse = isAllowed
end)

-- Commands with permissions
RegisterCommand('chat', function(source, args, rawCommand)
if allowedToUse then
    theme = args[1]
    message = ""
    for k, v in ipairs(args) do
        if k > 1 then
            message = message .. ' ' .. v
        end
    end
    -- Simple notifications with different types
    if theme == "success" then
        exports.bulletin:SendSuccess(message, 5000)
    elseif theme == "info" then
        exports.bulletin:SendInfo(message, 5000)
    elseif theme == "warning" then
        exports.bulletin:SendWarning(message, 5000)
    elseif theme == "error" then
        exports.bulletin:SendError(message, 5000)
    end
else -- If the player not have ace permission, send a warning message
    exports.bulletin:Send({
        message = "Te ezt a funkciót nem használhatod!",
        timeout = 5000,
        theme = 'warning',
        exitAnim = 'fadeOut'
    })
    end
end, false)

-- Creating a Dispatch Notify Command (WIP)

RegisterCommand('addp', function(source, args)
    if allowedToUse then
        --[[for k, v in ipairs(args) do
            if k > 1 then
                message = message .. ' ' .. v
            end
        end--]]
        exports.bulletin:SendAdvanced({
            message = table.concat(args, " "),
            title = "SEGÉLYHÍVÓ KÖZPONT",
            subject = "Értesítés",
            timeout = 5000,
            theme = 'info',
            type = 'advanced',
            icon = 'CHAR_CALL911',
            exitAnim = 'fadeOut'
            })
    else

        exports.bulletin:SendError("Te ezt a funkciót nem használhatod!", 5000)
    end
end, false)

RegisterCommand('addppin', function(source, args)
    if allowedToUse then
        --[[for k, v in ipairs(args) do
            if k > 1 then
                message = message .. ' ' .. v
            end
        end--]]
        local id = exports.bulletin:SendPinned({
            message = table.concat(args, " "),
            title = "SEGÉLYHÍVÓ KÖZPONT",
            subject = "Értesítés",
            timeout = 5000,
            theme = 'info',
            type = 'advanced',
            icon = 'CHAR_CALL911',
            exitAnim = 'fadeOut'
            })
        if pinnedMessages.dp == nil then
            pinnedMessages.dp = {id}
        else
            table.insert(pinnedMessages.dp, id)
        end    
    else

        exports.bulletin:SendError("Te ezt a funkciót nem használhatod!", 5000)
    end
end, false)

RegisterCommand("removedppin", function(source, args)
    if pinnedMessages.dp ~= nil then
        exports.bulletin:Unpin(pinnedMessages.dp)
    end    
end, false)

RegisterCommand('adtx', function(source, args)
    if allowedToUse then
        exports.bulletin:SendAdvanced({
            message = table.concat(args, " "),
            title = "TAXI SZOLGÁLAT",
            subject = "Értesítés",
            timeout = 5000,
            theme = 'default',
            icon = 'CHAR_TAXI'
        })
    else
        exports.bulletin:SendError("Te ezt a funkciót nem használhatod!", 5000)
    end   
end, false)

RegisterCommand('adtxpin', function(source, args)
    if allowedToUse then
        --[[for k, v in ipairs(args) do
            if k > 1 then
                message = message .. ' ' .. v
            end
        end--]]
        local id = exports.bulletin:SendPinned({
            message = table.concat(args, " "),
            title = "TAXI SZOLGÁLAT",
            subject = "Értesítés",
            timeout = 5000,
            theme = 'default',
            type = 'advanced',
            icon = 'CHAR_TAXI',
            exitAnim = 'fadeOut'
            })
        if pinnedMessages.tx == nil then
            pinnedMessages.tx = {id}
        else
            table.insert(pinnedMessages.tx, id)
        end    
    else

        exports.bulletin:SendError("Te ezt a funkciót nem használhatod!", 5000)
    end
end, false)

RegisterCommand("removetxpin", function(source, args)
    if pinnedMessages.tx ~= nil then
        exports.bulletin:Unpin(pinnedMessages.tx)
    end    
end, false)

-- YOU CAN CREATE NEW COMMANDS --
-- BELOW THIS COMMENT SECTION  --
--            HERE             --

--[[RegisterCommand('example', function(source, args)
    if allowedToUse then
        exports.bulletin:SendAdvanced({
            message = table.concat(args, " "),
            title = "EXAMPLE JOB",
            subject = "Notification",
            timeout = 5000,
            theme = 'info',
            icon = 'CHAR_CALL911',
            exitAnim = 'fadeOut'
            })
    else

        exports.bulletin:SendError("ERROR MESSAGE HERE", 5000)
    end
end, false)

RegisterCommand('examplepin', function(source, args)
    if allowedToUse then
        local id = exports.bulletin:SendPinned({
            message = table.concat(args, " "),
            title = "EXAMPLE JOB",
            subject = "Pinned Notification",
            timeout = 5000,
            theme = 'info',
            type = 'advanced',
            icon = 'CHAR_CALL911',
            exitAnim = 'fadeOut'
            })
        if pinnedMessages.EXAMPLEID == nil then
            pinnedMessages.EXAMPLEID = {id}
        else
            table.insert(pinnedMessages.EXAMPLEID, id)
        end    
    else

        exports.bulletin:SendError("ERROR MESSAGE HERE", 5000)
    end
end, false)

RegisterCommand("removeEXAMPLEpin", function(source, args)
    if pinnedMessages.EXAMPLEID ~= nil then
        exports.bulletin:Unpin(pinnedMessages.EXAMPLEID)
    end    
end, false)--]]


-- This is a test command to see the table.concat function is working or not.
-- In this developer release this function might not working - do not use.

--[[RegisterCommand('sendtest-success', function(source, args)
    exports.bulletin:SendSuccess(table.concat(args, " "), 5000)
end, false)--]]