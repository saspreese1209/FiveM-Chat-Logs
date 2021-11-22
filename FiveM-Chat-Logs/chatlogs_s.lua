local discord_webhook = {
    url = "YOUR WEBHOOK HERE",
    image = "https://cdn.discordapp.com/attachments/912256624599642122/912256936500678696/D8A4F18C-636E-4B73-B66E-71CECFC6888D.jpg"
}

AddEventHandler("chatMessage", function (source, author, text)
    PerformHttpRequest(discord_webhook.url,
    function(err, text, headert), end, 
    'POST', 
    json.encode({username = author, content = text, avatar_url = discord_webhook.image}), {["Content-Type"] = 'application/json'} )
end)