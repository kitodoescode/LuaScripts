function customexec(name, version)
    if identifyexecutor then
        hookfunction(identifyexecutor, function()
            return name, version
        end)
    end

    if getexecutorname then
        hookfunction(getexecutorname, function()
            return name
        end)
    end

    local original_request = request or http_request
    if original_request then
        hookfunction(original_request, function(options)
            if options and options.Headers and options.Headers["User-Agent"] then
                options.Headers["User-Agent"] = name .. "-Windows " .. version
            end
            return original_request(options)
        end)
    end
end
