local QBCore = exports['qb-core']:GetCoreObject()
local Webhooks = {
    ['default'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['testwebhook'] = '',
    ['playermoney'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['playerinventory'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['robbing'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['cuffing'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['drop'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['trunk'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['stash'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['glovebox'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['banking'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['vehicleshop'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['vehicleupgrades'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['shops'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['dealers'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['storerobbery'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['bankrobbery'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['powerplants'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['death'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['joinleave'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['ooc'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['report'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['me'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['pmelding'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['112'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['bans'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['anticheat'] = 'https://discordapp.com/api/webhooks/1192100997561061428/q5nE6OvektadjCmkWRxesBqDJM02P3yIcuodo9UEob8ZWb8wPKSakqO7sDLvdiXmykrZ',
    ['weather'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['moneysafes'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['bennys'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['bossmenu'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['robbery'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['casino'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['traphouse'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['911'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['palert'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['house'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['qbjobs'] = 'https://discordapp.com/api/webhooks/1192103859028508672/U2BT4aYXX6Fjnb70YKJI9Mcz4mUWbd37ek2uYW2-W6Cnr3z9x8TGZWoUnmxzqMgZ1kfi',
    ['ps-adminmenu'] = 'https://discordapp.com/api/webhooks/1192097131629125676/16u10a8ryyT_rgWqL8eaC_s1JaD3nzZ6q0uAM6D2GAtsrlMzJz1s9XenV34a-Tlw28a4'
}

local colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ['lightgreen'] = 65309,
}

local logQueue = {}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local postData = {}
    local tag = tagEveryone or false
    if not Webhooks[name] then print('Tried to call a log that isn\'t configured with the name of ' ..name) return end
    local webHook = Webhooks[name] ~= '' and Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = colors[color] or colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://raw.githubusercontent.com/GhzGarage/qb-media-kit/main/Display%20Pictures/Logo%20-%20Display%20Picture%20-%20Stylized%20-%20Red.png',
            },
        }
    }

    if not logQueue[name] then logQueue[name] = {} end
    logQueue[name][#logQueue[name] + 1] = {webhook = webHook, data = embedData}

    if #logQueue[name] >= 10 then
        if tag then
            postData = {username = 'QB Logs', content = '@everyone', embeds = {}}
        else
            postData = {username = 'QB Logs', embeds = {}}
        end
        for i = 1, #logQueue[name] do postData.embeds[#postData.embeds + 1] = logQueue[name][i].data[1] end
        PerformHttpRequest(logQueue[name][1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
        logQueue[name] = {}
    end
end)

Citizen.CreateThread(function()
    local timer = 0
    while true do
        Wait(1000)
        timer = timer + 1
        if timer >= 60 then -- If 60 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = {username = 'QB Logs', embeds = {}}
                    for i = 1, #queue do
                        postData.embeds[#postData.embeds + 1] = queue[i].data[1]
                    end
                    PerformHttpRequest(queue[1].webhook, function() end, 'POST', json.encode(postData), {['Content-Type'] = 'application/json'})
                    logQueue[name] = {}
                end
            end
        end
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')