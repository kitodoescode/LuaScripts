-- set the function for spoof
local function spoofx(string spoofname, int version)
  local x = identifyexecutor;
  local y = getexecutorname;
  local hook = hookfunction(x, function() -- use hook to return the spoofed name and version when the function "identifyexecutor()" is received
    print(spoofname, version) -- prints the spoofed name
  end)
  local hook2 = hookfunction(y, function() -- use hook to return the spoofed name when the function "getexecutorname()" is received
    print(spoofname) -- prints the spoofed name
  end)
end
-- setup spoof script
spoofx("Niggaware", 6)

identifyexecutor()
getexecutorname()
