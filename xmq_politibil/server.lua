local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP", "xmq_politibil")
vRPclient = Tunnel.getInterface("vRP","xmq_politibil")

RegisterServerEvent("xmq:cartjekjob")
AddEventHandler("xmq:cartjekjob", function()
    local user_id = vRP.getUserId({source})
    local source = source
    if vRP.hasPermission({user_id,cfg.permission}) then
        -- ikk gør noget lmao
    else
        local dname = "[ xMqrcus Scripts ]"
		local dmessage = "**Stjålet Politibil** \n```\nID: ".. tostring(user_id).. "\n```"
		PerformHttpRequest(cfg.webhook, function(err, text, headers) end, 'POST', json.encode({username = dname, content = dmessage}), { ['Content-Type'] = 'application/json' })
    end
end)