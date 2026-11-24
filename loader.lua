-- AnathemaFE public Uhhhhhh-compatible runtime loader
local ROOT = "https://raw.githubusercontent.com/NoooOneLoveMe/AnathemaFE-Loader/main/"

local function fetch(path)
    local ok, body = pcall(function()
        return game:HttpGet(ROOT .. path)
    end)
    assert(ok and type(body) == "string" and #body > 0, "[AnathemaFE] download failed: " .. path)
    return body
end

-- Keep Uhhhhhh's local builtin-module contract intact.
pcall(function()
    makefolder("UhhhhhhReanim")
    makefolder("UhhhhhhReanim/BuiltinModules")
    writefile("UhhhhhhReanim/BuiltinModules/d_limbmap.lua", fetch("d_limbmap.lua"))
    writefile("UhhhhhhReanim/BuiltinModules/d_hatsmap.lua", fetch("d_hatsmap.lua"))
end)

local chunk, compileError = loadstring(fetch("core.lua"))
assert(chunk, "[AnathemaFE] core compile failed: " .. tostring(compileError))

local ran, runtimeError = xpcall(chunk, function(err)
    return debug.traceback("[AnathemaFE] runtime error: " .. tostring(err), 2)
end)
assert(ran, runtimeError)
