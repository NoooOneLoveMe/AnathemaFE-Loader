-- AnathemaFE public runtime loader
-- The private source repository is not accessed by the client.
local CORE_URL = "https://raw.githubusercontent.com/NoooOneLoveMe/AnathemaFE-Loader/main/core.lua"

local ok, source = pcall(function()
    return game:HttpGet(CORE_URL)
end)
assert(ok and type(source) == "string" and #source > 0, "[AnathemaFE] public core download failed")

local chunk, compileError = loadstring(source)
assert(chunk, "[AnathemaFE] core compile failed: " .. tostring(compileError))

local ran, runtimeError = xpcall(chunk, function(err)
    return debug.traceback("[AnathemaFE] runtime error: " .. tostring(err), 2)
end)
assert(ran, runtimeError)
