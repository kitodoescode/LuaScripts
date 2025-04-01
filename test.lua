local testUrl = "https://example.com"
local function testHttp(methodName, func, ...)
    local success, result = pcall(func, testUrl)
    if success then
        print(string.format("%s worked! Response length: %d", methodName, #result))
    else
        print(string.format("%s failed: %s", methodName, result))
    end
end
print("Testing global httpGet..."); testHttp("global httpGet", httpGet)
print("\nTesting game.httpGet..."); if game and game.httpGet then testHttp("game.httpGet", game.httpGet) else print("game.httpGet not available") end
print("\nTesting getgenv().httpGet..."); if getgenv and getgenv().httpGet then testHttp("getgenv().httpGet", getgenv().httpGet) else print("getgenv().httpGet not available") end
print("\nTesting http table..."); if http then testHttp("http.httpGet", http.httpGet) else print("http table not available") end
print("\nTesting case variations..."); if httpGet then testHttp("global httpGet", httpGet) end; if httpget then testHttp("global httpget", httpget) end; if Httpget then testHttp("global Httpget", Httpget) end; if HttpGet then testHttp("global HttpGet", HttpGet) end
if http then if http.httpGet then testHttp("http.httpGet", http.httpGet) end; if http.httpget then testHttp("http.httpget", http.httpget) end; if http.Httpget then testHttp("http.Httpget", http.Httpget) end; if http.HttpGet then testHttp("http.HttpGet", http.HttpGet) end end
