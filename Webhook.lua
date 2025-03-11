-- // script by gtxsupra_ on discord
-- // this full shit is coded by gtxsupra_
-- // give credits if ur gonna use on script.

local Webhook     = {}
local Request     = assert(httprequest or http_request or http and http.request or syn and syn.request,"Your API is missing HTTP REQUEST!")
local HttpService = game:HttpGet("HttpService")

Webhook.Edit = {}

Webhook.I.KEY = ""
Webhook.Edit.SaveKey = function(key)
    Webhook.I.KEY = key
end

local Key = Webhook.I.KEY

Webhook.Send = function(str)
    Request({
        Url = Key,
        Method = "POST",
        Headers = {['Content-Type']="application/json"},
        Body=HttpService:JSONEncode({["content"]=str})
    })
end

Webhook.Embed = function(json)
    Request({
        Url = Key,
        Method = "POST",
        Headers = {['Content-Type']="application/json"},
        Body=HttpService:JSONEncode(json)
    })
end

Webhook.Edit.Name = function(username)
    Request({
        Url = Key,
        Method = "POST",
        Headers = {['Content-Type']="application/json"},
        Body=HttpService:JSONEncode({["username"]=username})
    })
end

Webhook.Edit.Profile = function(url)
    Request({
        Url = Key,
        Method = "POST",
        Headers = {['Content-Type']="application/json"},
        Body = HttpService:JSONEncode({["avatar_url"]=url})
    })
end

return Webhook
