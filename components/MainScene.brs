sub init()
    marketLabel = m.top.findNode("marketLabel")

    jsonText = ReadAsciiFile("pkg:/market_feed.json")

    if jsonText = invalid or jsonText = ""
        marketLabel.text = "Error: market_feed.json not found"
        return
    end if

    data = ParseJson(jsonText)

    if data = invalid
        marketLabel.text = "Error: could not parse market_feed.json"
        return
    end if

    displayText = "Last Updated: " + data.updated + chr(10) + chr(10)

    for each market in data.markets
        displayText = displayText + market.name + ": " + market.price + " (" + market.change + ")" + chr(10)
    end for

    marketLabel.text = displayText
end sub
