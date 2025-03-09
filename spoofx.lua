-- set the function for spoof
local function spoofx(string spoofname, int version)
  local x = identifyexecutor;
  local y = getexecutorname;
  local hook = hookfunction(x, function() -- use hook to return the spoofed name when the function "identifyexecutor()" is detected
    print(spoofname, version) -- prints the spoofed name
  end)
  local hook = hookfunction(y, function() -- use hook to return the spoofed name when the function "identifyexecutor()" is detected
    print(spoofname) -- prints the spoofed name
  end)
end
-- setup spoof script
spoofx("Niggaware", 6)

identifyexecutor()
getexecutorname()
