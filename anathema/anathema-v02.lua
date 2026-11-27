-- AnathemaFE v0.2.0 · 单文件构建
-- 生成：reproducible-v01 · 模块 19 · build e25925d282483a8c
-- 用法：loadstring(game:HttpGet("<URL>"))()
-- 停止：__ANATHEMA.stop()
--
-- 本轮范围：
--   真实：侧边栏 7 页 · 中英切换 · Movesets 的 Style Pack 过渡 · Reanimate 页接引擎 · 状态条
--   占位：Respawn / Refresh / Fling / HatMap 预览 / 体型滑杆 / Dances / Store / Credits / Settings 细节

local __ANATHEMA_BUILD = {
	version = "0.2.0",
	stamp = "reproducible-v01",
	modules = 19,
	hash = "e25925d282483a8c",
}

do
	local registry, cache, loading = {}, {}, {}
	local ctx = {}
	ctx.build = __ANATHEMA_BUILD

	local function require(name)
		local hit = cache[name]
		if hit ~= nil then
			return hit
		end
		if loading[name] then
			error("[anathema] 循环依赖: " .. name, 2)
		end
		local factory = registry[name]
		if not factory then
			error("[anathema] 缺失模块: " .. name, 2)
		end
		loading[name] = true
		local ok, result = pcall(factory, ctx)
		loading[name] = nil
		if not ok then
			error("[anathema] 模块 " .. name .. " 失败: " .. tostring(result), 2)
		end
		cache[name] = result
		return result
	end

	ctx.require = require

	local build = __ANATHEMA_BUILD
	build.motion = "UHAN\2\0\3\0\0\0META\129\0\0\0{\"id\": \"anathema.idle\", \"title\": \"Idle (demo)\", \"author\": \"anathema\", \"fps\": 60, \"loop\": true, \"kind\": \"dance\", \"tags\": [\"demo\"]}TRCK\5\9\0\0\4\0idle\0\0\0@\5\0\0\0\0\0\0\0\6\0\0\0\5\0Torso\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\128\0\0\0\0\0\0\0\0\0\0\128?\4\0Head\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\128\0\0\0\0\0\0\0\0\0\0\128?\8\0Left Arm\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\128\0\0\0\0\0\0\0\0\0\0\128?\9\0Right Arm\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\128\0\0\128?\8\0Left Leg\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\128\0\0\128?\9\0Right Leg\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\128\0\0\0\0\0\0\0\0\0\0\128?\0\0\0?\6\0\0\0\5\0Torso\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0h\252\127?\217\145+\188\0\0\0\0\217\145+<h\252\127?\4\0Head\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\\`\127?{\220\142\189\0\0\0\0{\220\142=\\`\127?\8\0Left Arm\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\218\8b?\148^\240\190\0\0\0\0\148^\240>\218\8b?\9\0Right Arm\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\218\8b?\148^\240>\0\0\0\0\148^\240\190\218\8b?\8\0Left Leg\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0Mex?`\186w>\0\0\0\0`\186w\190Mex?\9\0Right Leg\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0Mex?`\186w\190\0\0\0\0`\186w>Mex?\0\0\128?\6\0\0\0\5\0Torso\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\160\241\127?p\143\171\188\0\0\0\0p\143\171<\160\241\127?\4\0Head\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\128\0\0\0\0\0\0\0\0\0\0\128?\8\0Left Arm\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\128\0\0\0\0\0\0\0\0\0\0\128?\9\0Right Arm\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\128\0\0\128?\8\0Left Leg\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\128\0\0\128?\9\0Right Leg\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\128\0\0\0\0\0\0\0\0\0\0\128?\0\0\192?\6\0\0\0\5\0Torso\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0h\252\127?\217\145+\188\0\0\0\0\217\145+<h\252\127?\4\0Head\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0/\166\127?:^V=\0\0\0\0:^V\189/\166\127?\8\0Left Arm\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\218\8b?\148^\240>\0\0\0\0\148^\240\190\218\8b?\9\0Right Arm\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\218\8b?\148^\240\190\0\0\0\0\148^\240>\218\8b?\8\0Left Leg\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0Mex?`\186w\190\0\0\0\0`\186w>Mex?\9\0Right Leg\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0Mex?`\186w>\0\0\0\0`\186w\190Mex?\0\0\0@\6\0\0\0\5\0Torso\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\128\0\0\0\0\0\0\0\0\0\0\128?\4\0Head\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\128\0\0\0\0\0\0\0\0\0\0\128?\8\0Left Arm\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\128\0\0\0\0\0\0\0\0\0\0\128?\9\0Right Arm\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\128\0\0\128?\8\0Left Leg\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\128\0\0\128?\9\0Right Leg\0\0\128?\5\0Cubic\5\0InOut\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\128?\0\0\0\128\0\0\0\0\0\0\0\0\0\0\128?THMBF\0\0\0\137PNG\13\10\26\10\0\0\0\13IHDR\0\0\0\1\0\0\0\1\8\6\0\0\0\31\21\196\137\0\0\0\13IDATx\218c\252\207\192P\15\0\4\133\1\128\132\169\140!\0\0\0\0IEND\174B`\130"
	build.motionBytes = 2542


	registry["api"] = function(...)
--!nocheck
-- anathema/api — 公开契约（**永远明文，不进混淆**）
--
-- 为什么单独存在：混淆会把变量名全部抹掉，栈里只剩 api.lua:NN。
-- 于是"哪里错了"只能靠**错误码 + 位置**来定位。这一层就是为此存在的。
--
-- 三条规矩：
--   1. 任何跨层调用（core / ui / content）都必须经过这里的错误码，不允许裸 error("xxx")。
--   2. 这里只放**常量与纯函数**，不放业务逻辑——它要能在任何环境（含离线测试）加载。
--   3. 版本号变更 = 破坏性变更。加字段不改版本，删/改字段必须升版本。

local api = {}

api.VERSION = 2
api.NAME = "anathema"

-- ===== 错误码 =====
-- 1xxx 引擎 · 2xxx UI · 3xxx 内容 · 4xxx 分发 · 9xxx 内部
api.CODES = {
	ENGINE_INIT = 1001,
	ENGINE_CONTRACT = 1002,   -- world 实现缺方法
	ENGINE_CLAIM_ABORT = 1003,
	ENGINE_WRITE = 1004,
	ENGINE_DRIFT = 1005,      -- 漂移超阈值（诊断用，不是致命）
	UI_MOUNT = 2001,
	UI_THEME = 2002,
	UI_I18N_MISSING = 2003,
	CONTENT_MISSING = 3001,
	CONTENT_PARSE = 3002,
	CONTENT_ASSET = 3003,
	DIST_MANIFEST = 4001,
	DIST_HASH = 4002,
	INTERNAL = 9001,
}

local LABELS = {}
for name, code in api.CODES do
	LABELS[code] = name
end

--- 错误码 → 名字（混淆后靠这个把数字翻回可读字符串）
function api.codeName(code)
	return LABELS[code] or ("UNKNOWN_" .. tostring(code))
end

--- 构造一个结构化错误。返回 table 而不是抛，让调用方决定要不要抛。
--- @param code number api.CODES 里的值
--- @param detail string? 人类可读的补充
--- @param extra table? 附加字段（如 module / phase）
function api.err(code, detail, extra)
	local e = {
		code = code,
		name = api.codeName(code),
		detail = detail,
	}
	if extra then
		for key, value in extra do
			e[key] = value
		end
	end
	return e
end

--- 把错误格式化成一行：`[anathema 1002 ENGINE_CONTRACT] world.now 缺失`
function api.errString(e)
	if type(e) ~= "table" then
		return "[anathema 9001 INTERNAL] " .. tostring(e)
	end
	local head = string.format("[anathema %d %s]", e.code or api.CODES.INTERNAL, e.name or api.codeName(e.code))
	return e.detail and (head .. " " .. tostring(e.detail)) or head
end

--- 抛错（只在"无法继续"时用；可恢复的错误返回 api.err）
function api.throw(code, detail, extra)
	error(api.errString(api.err(code, detail, extra)), 2)
end

-- ===== 层标识 =====
api.LAYERS = { core = true, ui = true, content = true }

--- require 的合法名字：core / ui / "content:<id>"
function api.isValidModuleName(name)
	if type(name) ~= "string" then
		return false, "module name 必须是 string"
	end
	if api.LAYERS[name] then
		return true
	end
	local id = string.match(name, "^content:([%w_%-%.]+)$")
	if id and #id > 0 and #id <= 64 then
		return true
	end
	return false, "非法模块名：" .. name
end

-- ===== 事件名（字符串常量，避免各处写错）=====
api.EVENTS = { "ready", "live", "stopped", "drift", "error", "contentChanged" }

--- 自检：返回一行诊断，用于启动时打印到控制台
function api.diagnostic()
	local count = 0
	for _ in api.CODES do
		count += 1
	end
	return string.format("anathema api v%d · %d 个错误码 · %d 个事件", api.VERSION, count, #api.EVENTS)
end

return api

	end

	registry["anim.format"] = function(...)
--!nocheck
-- prism/anim/format — 动画容器读取
--
-- 支持两种输入：
--   v1  STEVE KeyframeSequence 二进制（Uhhhhhh 的 .anim），小端：
--       string      = <u16 len><bytes>
--       pose        = <string name><f32 weight><string easing><string dir><f32 x12>
--       keyframe    = <f32 time><u32 n><pose x n>
--       file        = <string animname><u32 n><keyframe x n>
--   v2  .uhanim（本项目，chunk 化，向前兼容）
--       header      = "UHAN" <u16 2>
--       chunk       = <tag[4]><u32 len><payload>
--       META        = UTF-8 JSON（id / fps / author / tags / thumb / loop）
--       TRCK        = <string name><f32 duration><u32 n><keyframe x n>
--       THMB        = PNG 原始字节（可选，卡片渲染图内嵌）
--       HASH        = 8 字节 CRC32 前的原文（可选，仅编辑器用）
--       未知 tag 一律跳过 —— 这就是"加字段不破老客户端"的实现方式。
--
-- 这个模块刻意不构造 CFrame/Vector3：几何用纯数字表表示，
-- 于是它能在 luau.exe 下离线单测（见 tests/run.lua）。

local ctx = ...
local Track = {}
Track.__index = Track

local EASING_STYLE = {
	Linear = "Linear",
	Constant = "Constant",
	Elastic = "Elastic",
	Cubic = "Cubic",
	Bounce = "Bounce",
	CubicV2 = "CubicV2",
}

local function newReader(str, startOffset)
	local buf = type(str) == "buffer" and str or buffer.fromstring(str)
	local pos = startOffset or 0
	local reader = { buf = buf }

	function reader.left()
		return buffer.len(buf) - pos
	end

	function reader.u8()
		assert(reader.left() >= 1, "uhan: truncated (u8)")
		local v = buffer.readu8(buf, pos)
		pos += 1
		return v
	end

	function reader.u16()
		assert(reader.left() >= 2, "uhan: truncated (u16)")
		local v = buffer.readu16(buf, pos)
		pos += 2
		return v
	end

	function reader.u32()
		assert(reader.left() >= 4, "uhan: truncated (u32)")
		local v = buffer.readu32(buf, pos)
		pos += 4
		return v
	end

	function reader.f32()
		assert(reader.left() >= 4, "uhan: truncated (f32)")
		local v = buffer.readf32(buf, pos)
		pos += 4
		return v
	end

	function reader.str()
		local len = reader.u16()
		assert(reader.left() >= len, "uhan: truncated (string)")
		local v = len > 0 and buffer.readstring(buf, pos, len) or ""
		pos += len
		return v
	end

	function reader.bytes(len)
		assert(reader.left() >= len, "uhan: truncated (bytes)")
		local v = buffer.readstring(buf, pos, len)
		pos += len
		return v
	end

	function reader.tell()
		return pos
	end

	function reader.skip(len)
		pos += len
	end

	return reader
end

--- 12 个 float -> 位置 + 3x3 旋转（行主序）
local function splitCFrame(f)
	-- Roblox 的 CFrame 分量顺序：x y z r00 r01 r02 r10 r11 r12 r20 r21 r22
	return {
		x = f[1], y = f[2], z = f[3],
		rot = { f[4], f[5], f[6], f[7], f[8], f[9], f[10], f[11], f[12] },
	}
end

local function readPose(r)
	local name = r.str()
	local weight = r.f32()
	local easing = r.str()
	local dir = r.str()
	local raw = table.create(12)
	for i = 1, 12 do
		raw[i] = r.f32()
	end
	local split = splitCFrame(raw)
	return {
		name = name,
		weight = weight,
		-- 未知 easing 名一律按 Linear 处理：新版编辑器加了枚举也不会炸
		easing = EASING_STYLE[easing] or "Linear",
		direction = (dir == "Out" or dir == "InOut") and dir or "In",
		pos = { split.x, split.y, split.z },
		rot = split.rot,
	}
end

local function readKeyframe(r)
	local t = r.f32()
	local n = r.u32()
	assert(n < 4096, "uhan: pose count out of range")
	local poses = table.create(n)
	for i = 1, n do
		poses[i] = readPose(r)
	end
	return { t = t, poses = poses }
end

local function readTrack(r)
	local name = r.str()
	local frames = {}
	if r.__uhanV2 then
		local duration = r.f32()
		local n = r.u32()
		for i = 1, n do
			frames[i] = readKeyframe(r)
		end
		return { name = name, duration = duration, frames = frames }
	end
	local n = r.u32()
	for i = 1, n do
		frames[i] = readKeyframe(r)
	end
	local duration = #frames > 0 and frames[#frames].t or 0
	return { name = name, duration = duration, frames = frames }
end

local function finish(track, meta)
	track.meta = meta or {}
	track.id = track.meta.id
	track.fps = track.meta.fps or 60
	track.loop = track.meta.loop ~= false
	track.__index = Track
	return setmetatable(track, Track)
end

--- v1（Uhhhhhh / STEVE 格式）
function Track.fromV1(data)
	local r = newReader(data)
	local track = readTrack(r)
	return finish(track, { format = 1 })
end

--- META 解码：优先注入的 ctx.json（Roblox 侧就是 HttpService），
--- 其次尝试 HttpService，最后落到内置的扁平 JSON 解析。
--- 内置解析只认"单层 key: 字符串/数字/布尔"，这正是 CI 写 META 的唯一形态，
--- 有了它这个模块才能脱离 Roblox 单测。
local function decodeFlatJson(text)
	local out = {}
	for key, value in string.gmatch(text, '"([%w_%-%./]+)"%s*:%s*"([^"]*)"') do
		out[key] = value
	end
	for key, value in string.gmatch(text, '"([%w_%-%./]+)"%s*:%s*(%-?%d+%.?%d*)') do
		out[key] = tonumber(value)
	end
	for key, value in string.gmatch(text, '"([%w_%-%./]+)"%s*:%s*(%a+)') do
		if value == "true" then
			out[key] = true
		elseif value == "false" then
			out[key] = false
		elseif value == "null" then
			out[key] = nil
		end
	end
	return out
end

local function decodeMeta(text)
	if type(text) ~= "string" or #text == 0 then
		return {}
	end
	if ctx and type(ctx.json) == "function" then
		local ok, decoded = pcall(ctx.json, text)
		if ok and type(decoded) == "table" then
			return decoded
		end
	end
	local ok, decoded = pcall(function()
		return game:GetService("HttpService"):JSONDecode(text)
	end)
	if ok and type(decoded) == "table" then
		return decoded
	end
	return decodeFlatJson(text)
end

--- v2（.uhanim，chunk 化）
function Track.fromV2(data)
	local r = newReader(data)
	local magic = r.bytes(4)
	assert(magic == "UHAN", "uhan: bad magic")
	local version = r.u16()
	assert(version == 2, "uhan: unsupported version " .. tostring(version))
	local chunkCount = r.u32()
	assert(chunkCount < 64, "uhan: too many chunks")

	local meta, trackData, thumb = nil, nil, nil
	for _ = 1, chunkCount do
		local tag = r.bytes(4)
		local len = r.u32()
		if tag == "META" then
			meta = r.bytes(len)
		elseif tag == "TRCK" then
			-- 记住位置，读完 TRCK 后跳回去，保证未知 chunk 也能正确跳过
			trackData = len
			r.__uhanV2 = true
			local startPos = r.tell()
			local parsed = readTrack(r)
			parsed.__consumed = r.tell() - startPos
			trackData = parsed
			r.skip(len - parsed.__consumed)
			parsed.__consumed = nil
		elseif tag == "THMB" then
			thumb = r.bytes(len)
		else
			r.bytes(len) -- 未知 chunk：读掉即可
		end
	end

	assert(type(trackData) == "table", "uhan: missing TRCK chunk")
	local metaTable = decodeMeta(meta)
	metaTable.format = 2
	metaTable.thumbBytes = thumb
	return finish(trackData, metaTable)
end

--- 自动识别。dev 时用扩展名分流，运行期只看魔数，避免信任文件名。
function Track.fromBytes(data)
	if type(data) == "buffer" then
		if buffer.len(data) >= 4 and buffer.readstring(data, 0, 4) == "UHAN" then
			return Track.fromV2(data)
		end
		return Track.fromV1(data)
	end
	if type(data) ~= "string" then
		return nil, "uhan: expected string or buffer, got " .. typeof(data)
	end
	if #data >= 4 and string.sub(data, 1, 4) == "UHAN" then
		return Track.fromV2(data)
	end
	return Track.fromV1(data)
end

--- 采样：把任意时刻映射到"最近的关键帧 + 插值目标"，插值本身在 animator 里做。
function Track:span(t)
	local frames = self.frames
	local n = #frames
	if n == 0 then
		return nil
	end
	if n == 1 or t <= frames[1].t then
		return frames[1], frames[1], 0
	end
	if t >= frames[n].t then
		return frames[n], frames[n], 0
	end
	-- 二分：100+ 关键帧的曲子在 60fps 下每帧都会调，线性扫描是真实开销
	local lo, hi = 1, n
	while lo + 1 < hi do
		local mid = (lo + hi) // 2
		if frames[mid].t <= t then
			lo = mid
		else
			hi = mid
		end
	end
	local a, b = frames[lo], frames[hi]
	local span = b.t - a.t
	local alpha = span > 0 and (t - a.t) / span or 0
	return a, b, alpha
end

return Track

	end

	registry["anim.animator"] = function(...)
--!nocheck
-- prism/anim/animator — 采样与混合（纯数学，无 Roblox 依赖）
--
-- 为什么把插值单独抽出来：
--   Uhhhhhh 把 Step 直接写在 Reanimate 循环里，于是"动画对不对"只能靠肉眼看。
--   这里所有几何都是纯数字，tests/run.lua 里能断言 slerp 的中间值。

local ctx = ...
local Animator = {}
Animator.__index = Animator

-- ===== easing =====

local function cubicIn(a)
	return a * a * a
end
local function cubicOut(a)
	local b = 1 - a
	return 1 - b * b * b
end
local function cubicInOut(a)
	if a < 0.5 then
		return 4 * a * a * a
	end
	local b = -2 * a + 2
	return 1 - (b * b * b) / 2
end
local function elasticIn(a)
	if a == 0 or a == 1 then
		return a
	end
	local c = (2 * math.pi) / 3
	return -math.pow(2, 10 * a - 10) * math.sin((a * 10 - 10.75) * c)
end
local function bounceOut(a)
	local n, d = 7.5625, 2.75
	if a < 1 / d then
		return n * a * a
	elseif a < 2 / d then
		a -= 1.5 / d
		return n * a * a + 0.75
	elseif a < 2.5 / d then
		a -= 2.25 / d
		return n * a * a + 0.9375
	end
	a -= 2.625 / d
	return n * a * a + 0.984375
end

local EASE_IN = {
	Linear = function(a)
		return a
	end,
	Constant = function(a)
		return a < 1 and 0 or 1
	end,
	Cubic = cubicIn,
	CubicV2 = cubicIn,
	Elastic = elasticIn,
	Bounce = function(a)
		return 1 - bounceOut(1 - a)
	end,
}

local function mirrorIn(f)
	return f
end
local function mirrorOut(f)
	return function(a)
		return 1 - f(1 - a)
	end
end
local function mirrorInOut(f)
	return function(a)
		if a < 0.5 then
			return f(a * 2) / 2
		end
		return 1 - f((1 - a) * 2) / 2
	end
end

--- Roblox KeyframeSequence 的 Pose 语义：easing 属于"目标 pose"，
--- 也就是决定"从上一帧走向我这一帧"的曲线。
function Animator.ease(style, direction, alpha)
	local f = EASE_IN[style] or EASE_IN.Linear
	if direction == "Out" then
		f = mirrorOut(f)
	elseif direction == "InOut" then
		f = mirrorInOut(f)
	else
		f = mirrorIn(f)
	end
	return f(math.clamp(alpha, 0, 1))
end

-- ===== 四元数 =====
-- 位置直接线性插值就够；旋转必须 slerp，否则大角度转身会出现"皮筋"式缩水。

function Animator.matToQuat(rot)
	local m00, m01, m02 = rot[1], rot[2], rot[3]
	local m10, m11, m12 = rot[4], rot[5], rot[6]
	local m20, m21, m22 = rot[7], rot[8], rot[9]
	local trace = m00 + m11 + m22
	local w, x, y, z
	if trace > 0 then
		local s = math.sqrt(trace + 1) * 2
		w, x, y, z = 0.25 * s, (m21 - m12) / s, (m02 - m20) / s, (m10 - m01) / s
	elseif m00 > m11 and m00 > m22 then
		local s = math.sqrt(1 + m00 - m11 - m22) * 2
		w, x, y, z = (m21 - m12) / s, 0.25 * s, (m01 + m10) / s, (m02 + m20) / s
	elseif m11 > m22 then
		local s = math.sqrt(1 + m11 - m00 - m22) * 2
		w, x, y, z = (m02 - m20) / s, (m01 + m10) / s, 0.25 * s, (m12 + m21) / s
	else
		local s = math.sqrt(1 + m22 - m00 - m11) * 2
		w, x, y, z = (m10 - m01) / s, (m02 + m20) / s, (m12 + m21) / s, 0.25 * s
	end
	local len = math.sqrt(w * w + x * x + y * y + z * z)
	if len == 0 then
		return { w = 1, x = 0, y = 0, z = 0 }
	end
	return { w = w / len, x = x / len, y = y / len, z = z / len }
end

function Animator.slerp(a, b, t)
	local dot = a.w * b.w + a.x * b.x + a.y * b.y + a.z * b.z
	local bx, by, bz, bw = b.x, b.y, b.z, b.w
	if dot < 0 then
		dot, bx, by, bz, bw = -dot, -bx, -by, -bz, -bw
	end
	if dot > 0.9995 then
		-- 近乎同向：线性插值 + 归一化，省掉 acos/sin 的开销
		local w = a.w + (bw - a.w) * t
		local x = a.x + (bx - a.x) * t
		local y = a.y + (by - a.y) * t
		local z = a.z + (bz - a.z) * t
		local len = math.sqrt(w * w + x * x + y * y + z * z)
		return { w = w / len, x = x / len, y = y / len, z = z / len }
	end
	local theta0 = math.acos(math.clamp(dot, -1, 1))
	local theta = theta0 * t
	local sin0 = math.sin(theta0)
	local s0 = math.sin(theta0 - theta) / sin0
	local s1 = math.sin(theta) / sin0
	return {
		w = a.w * s0 + bw * s1,
		x = a.x * s0 + bx * s1,
		y = a.y * s0 + by * s1,
		z = a.z * s0 + bz * s1,
	}
end

--- 四元数 -> CFrame 需要的行主序 3x3（Roblox 层再用 CFrame.new(x,y,z, r00..r22)）
function Animator.quatToMat(q)
	local w, x, y, z = q.w, q.x, q.y, q.z
	return {
		1 - 2 * (y * y + z * z), 2 * (x * y - z * w), 2 * (x * z + y * w),
		2 * (x * y + z * w), 1 - 2 * (x * x + z * z), 2 * (y * z - x * w),
		2 * (x * z - y * w), 2 * (y * z + x * w), 1 - 2 * (x * x + y * y),
	}
end

-- ===== 播放器 =====

function Animator.new(track)
	local posCache, quatCache = {}, {}
	return setmetatable({
		track = track,
		time = 0,
		speed = 1,
		weight = 1,
		looped = track.loop ~= false,
		-- map: 把"输入时间"映射到"动画时间"，用于倒放 / 卡点 / 变速片段
		map = false,
		_posCache = posCache,
		_quatCache = quatCache,
	}, Animator)
end

local function cachedQuat(self, pose)
	local key = pose.rot
	local q = self._quatCache[key]
	if not q then
		q = Animator.matToQuat(key)
		self._quatCache[key] = q
	end
	return q
end

--- 求值：返回 { [poseName] = { pos={x,y,z}, quat={w,x,y,z}, weight=number } }
--- 同名 pose 在相邻两帧都存在时做插值；只在一侧存在时做权重淡入淡出。
function Animator:eval(inputTime)
	local track = self.track
	local t = inputTime == nil and self.time or inputTime
	local duration = track.duration
	if self.looped and duration > 0 then
		t = t % duration
		if t < 0 then
			t += duration
		end
	end
	local a, b, alpha = track:span(t)
	if not a then
		return {}
	end

	local out = {}

	local function ensure(name, pose)
		local entry = out[name]
		if not entry then
			entry = {
				pos = { pose.pos[1], pose.pos[2], pose.pos[3] },
				quat = cachedQuat(self, pose),
				weight = 0,
			}
			out[name] = entry
		end
		return entry
	end

	if a == b or alpha <= 0 then
		for _, pose in a.poses do
			local entry = ensure(pose.name, pose)
			entry.weight = pose.weight
		end
		return out
	end

	local seen = {}
	for _, pose in b.poses do
		seen[pose.name] = true
		local entry = ensure(pose.name, pose)
		local previous = nil
		for _, candidate in a.poses do
			if candidate.name == pose.name then
				previous = candidate
				break
			end
		end
		if previous then
			local e = Animator.ease(pose.easing, pose.direction, alpha)
			entry.pos[1] = previous.pos[1] + (pose.pos[1] - previous.pos[1]) * e
			entry.pos[2] = previous.pos[2] + (pose.pos[2] - previous.pos[2]) * e
			entry.pos[3] = previous.pos[3] + (pose.pos[3] - previous.pos[3]) * e
			entry.quat = Animator.slerp(cachedQuat(self, previous), entry.quat, e)
			entry.weight = previous.weight + (pose.weight - previous.weight) * e
		else
			entry.weight = pose.weight * alpha
		end
	end
	for _, pose in a.poses do
		if not seen[pose.name] then
			local entry = ensure(pose.name, pose)
			entry.weight = pose.weight * (1 - alpha)
		end
	end
	return out
end

--- 归一化到"整条轨道"的时间，用于 UI 进度条 / 预览帧。
function Animator:normalizedTime()
	local duration = self.track.duration
	if duration <= 0 then
		return 0
	end
	local t = self.time % duration
	return t / duration
end

function Animator:step(dt)
	self.time += dt * self.speed
	if self.looped and self.track.duration > 0 then
		self.time = self.time % self.track.duration
	end
	return self.time
end

return Animator

	end

	registry["engine.api"] = function(...)
--!nocheck
-- anathema/engine/api — 壳与芯之间的契约
--
-- 为什么值得单独一个文件：真实环境测试最怕的不是崩溃，是"看起来在跑其实什么都没写"。
-- 这个模块让 entry 在启动的第一秒就能判断：world 实现是不是齐全、netless 的输出形状对不对，
-- 并且把缺项变成一句能读的话，而不是 nil 索引。
--
-- 纯逻辑，可离线断言。

local ctx = ...
local api = {}

api.VERSION = 1

--- world 必须实现的方法（由 engine/rig.lua 在 Roblox 侧实现，测试里由 fake world 实现）
api.WORLD_METHODS = {
	"capabilities",   -- () -> { hiddenProperties, ownerProbe, customAsset, gethui, executor }
	"floorY",         -- () -> number（workspace.FallenPartsDestroyHeight，NaN 时返回 -500）
	"now",            -- () -> number（秒，单调）
	"buildRig",       -- () -> ok, err
	"destroyRig",     -- ()
	"hats",           -- () -> array of target
	"write",          -- (target, frame)
	"claimAction",    -- (kind, data)
	"log",            -- (level, message)
	"metrics",        -- () -> { costMs, targets, ... }
}

--- target 的必填键（hats() 的每一项）。
--- owner / grounded 不在此列：它们有默认值（false），缺了就该当成"没有所有权"而不是报错——
--- fail-closed 的语义在 netless 里，不在校验层。
api.TARGET_FIELDS = {
	key = "string",
	targetPos = "table",
	targetQuat = "table",
}

--- 可选键的类型（给了就必须对）
api.TARGET_OPTIONAL = {
	owner = "boolean",
	grounded = "boolean",
	partPos = "table",
	partQuat = "table",
	ltm = "number",
}

local function typeOf(value)
	return type(value)
end

local function checkFields(source, spec, label, errors)
	for field, expected in spec do
		local actual = source[field]
		if actual == nil then
			table.insert(errors, string.format("%s.%s 缺失", label, field))
		elseif expected ~= nil and typeOf(actual) ~= expected then
			table.insert(errors, string.format("%s.%s 应为 %s，实际 %s", label, field, expected, typeOf(actual)))
		end
	end
end

--- @return boolean ok, string[] errors
function api.validateWorld(world)
	local errors = {}
	if typeOf(world) ~= "table" then
		return false, { "world 必须是 table" }
	end
	for _, name in api.WORLD_METHODS do
		if typeOf(world[name]) ~= "function" then
			table.insert(errors, "world." .. name .. " 必须是函数")
		end
	end
	return #errors == 0, errors
end

--- netless.solve 返回帧的契约检查。
--- 关键约定：skip == true 时**不许**再写任何属性（写 nil 会把部件打散）。
function api.validateFrame(frame)
	local errors = {}
	if typeOf(frame) ~= "table" then
		return false, { "frame 必须是 table" }
	end
	if frame.skip == true then
		if frame.pos ~= nil or frame.vel ~= nil or frame.angVel ~= nil then
			table.insert(errors, "skip=true 时不应带 pos/vel/angVel")
		end
		return #errors == 0, errors
	end
	if typeOf(frame.pos) ~= "table" or #frame.pos ~= 3 then
		table.insert(errors, "pos 必须是 3 元表")
	end
	if typeOf(frame.quat) ~= "table" then
		table.insert(errors, "quat 缺失")
	end
	if typeOf(frame.vel) ~= "table" or #frame.vel ~= 3 then
		table.insert(errors, "vel 必须是 3 元表")
	end
	if typeOf(frame.angVel) ~= "table" or #frame.angVel ~= 3 then
		table.insert(errors, "angVel 必须是 3 元表")
	end
	return #errors == 0, errors
end

--- 检查一个 hats() 目标；返回规范化后的副本（缺省值补齐），以及错误。
function api.normalizeTarget(raw, index)
	local errors = {}
	local label = "target[" .. tostring(index) .. "]"
	if typeOf(raw) ~= "table" then
		return nil, { label .. " 必须是 table" }
	end
	checkFields(raw, api.TARGET_FIELDS, label, errors)
	-- 可选键：出现就必须是对的类型（不做隐式转换，避免 "true" 这种字符串混进来）
	for field, expected in api.TARGET_OPTIONAL do
		local value = raw[field]
		if value ~= nil and typeOf(value) ~= expected then
			table.insert(errors, string.format("%s.%s 应为 %s，实际 %s", label, field, expected, typeOf(value)))
		end
	end
	if #errors > 0 then
		return nil, errors
	end
	return {
		key = raw.key,
		handle = raw.handle,
		mesh = raw.mesh,
		texture = raw.texture,
		limb = raw.limb,
		owner = raw.owner == true,
		grounded = raw.grounded == true,
		targetPos = raw.targetPos,
		targetQuat = raw.targetQuat,
		partPos = raw.partPos,
		partQuat = raw.partQuat,
		ltm = raw.ltm or 0,
		repRootPart = raw.repRootPart,
	}, nil
end

function api.describe()
	return string.format("anathema engine api v%d（world 需实现 %d 个方法）", api.VERSION, #api.WORLD_METHODS)
end

return api

	end

	registry["engine.claim"] = function(...)
--!nocheck
-- anathema/engine/claim — claim 仪式状态机（纯逻辑，可离线测试）
--
-- 这一块在 Uhhhhhh 里是嵌在大循环里的 `task.wait` 序列（source/reanim.lua:6552-6602）：
--   claimarea = RootPart + LookVector*8，Y 抬到 max(地板+16, Y+4)
--   task.wait(0.1) → 每帧 heartbeat 锁住 handle：CFrame=claimarea、Velocity=(0,67,0)、RotVelocity=0
--                   顺带拆 JointInstance、禁用 Constraint、重建 Attachment
--   task.wait(0.15) → 杀真身（BustAvatarFetchCache / BreakJoints / Health=0 / Dead）
--
-- 问题不在步骤，在实现方式：yield 在里面，外部无法中断、无法复用、无法断言。
-- 这里把它改成「不 yield 的状态机」，由引擎每帧喂 dt 和外部条件，
-- 产出**边沿触发的动作**（做一次）和**持续动作**（每帧做），Roblox 层负责执行。
--
-- 关键收益：
--   * 可中断：中途掉线/角色被删，abort() 直接回 idle 并给清理动作
--   * 可测：时间推进、阶段切换、动作只出一次，全靠断言
--   * 可对照：同一份 dt 序列喂给两个实现，可以直接 diff 行为

local ctx = ...
local claim = {}

claim.VERSION = 1

-- 时间参数出处：source/reanim.lua:6554 (Wait1 0.1)、6585 (Wait2 0.15)
claim.DEFAULTS = {
	stage = 0.1,      -- staging：把帽子摆到 claimarea
	grab = 0.15,      -- grabbing：锁住 + 拆关节 + 杀真身前的缓冲
	lockSpeed = 67,   -- (0,67,0)：source:6567
	ahead = 8,        -- LookVector * 8：source:6552
	lift = 4,         -- Y + 4：source:6553
	floorMargin = 16, -- max(地板 + 16, ...)：source:6553
}

claim.STATES = { idle = true, staging = true, grabbing = true, live = true, lost = true }

--- @return table state
function claim.new()
	return {
		state = "idle",
		t = 0,          -- 进入当前阶段的时刻
		now = 0,        -- 内部时钟
		runs = 0,       -- 成功走过几轮（诊断用）
		lastAbort = nil,
	}
end

--- 计算 claim 落点。rootCFrame 用纯表：{ pos = {x,y,z}, look = {x,y,z} }
function claim.claimPoint(rootCFrame, floorY, cfg)
	cfg = cfg or claim.DEFAULTS
	local pos = rootCFrame.pos or rootCFrame.Position
	local look = rootCFrame.look or rootCFrame.LookVector
	if type(pos) ~= "table" or type(look) ~= "table" then
		return nil, "claimPoint: need pos and look"
	end
	local x = pos[1] + look[1] * cfg.ahead
	local y = pos[2] + look[2] * cfg.ahead
	local z = pos[3] + look[3] * cfg.ahead
	y = y + cfg.lift
	if type(floorY) == "number" and floorY == floorY then
		y = math.max(floorY + cfg.floorMargin, y)
	end
	return { x, y, z }
end

--- 开始一轮 claim。
--- @param s table claim.new()
--- @param now number 秒
function claim.begin(s, now)
	s.state = "staging"
	s.t = now or s.now
	s.now = s.t
	s.lastAbort = nil
	return s
end

--- 中止（掉所有权 / 角色没了 / 用户点了停止）。返回需要执行的清理动作。
function claim.abort(s, reason)
	if s.state == "idle" then
		return {}
	end
	s.state = "lost"
	s.lastAbort = reason or "aborted"
	return { { kind = "releaseHandles" }, { kind = "restoreHumanoid" } }
end

function claim.reset(s)
	s.state = "idle"
	s.t = 0
	s.runs = 0
	s.lastAbort = nil
	return s
end

--- 每帧推进。
--- @param s table
--- @param input table {
---   dt = number,
---   owner = boolean,          所有权的汇总（任一 handle 失去即 false 也行，由调用方决定口径）
---   rootCFrame = table?,      用于算 claimarea
---   floorY = number?,
---   characterAlive = boolean? }
--- @return table { state, actions = {...}, hold = {...}?, claimPoint = {...}? }
function claim.tick(s, input)
	local cfg = claim.DEFAULTS
	local dt = input.dt
	if type(dt) ~= "number" or dt ~= dt or dt <= 0 then
		return { state = s.state, actions = {}, note = "bad-dt" }
	end
	-- 单一时间基准：runtime 会传 world.now()，此时**不**自己累加，
	-- 否则 claim 的时钟与 netless 的 now 会各走一套，阶段阈值与抖动相位就会错位。
	-- 不传 now 时退回内部累加（离线测试与独立使用都靠这条）。
	if type(input.now) == "number" and input.now == input.now then
		s.now = input.now
	else
		s.now = s.now + dt
	end

	local actions = {}

	if s.state == "idle" then
		return { state = s.state, actions = actions }
	end

	if s.state == "lost" then
		-- 等调用方 reset；保持擦干净
		return { state = s.state, actions = actions }
	end

	-- 任何阶段：角色没了 / 失去所有权 → 中止
	if input.characterAlive == false then
		for _, action in claim.abort(s, "character-gone") do
			table.insert(actions, action)
		end
		return { state = s.state, actions = actions }
	end

	-- 落点：优先用外部锁存值（runtime 会算一次并锁住），避免角色转动/移动时
	-- place → lock → hold 三段追着不同的点跑（审计项 1）。
	local point = input.point
	if not point and input.rootCFrame then
		point = claim.claimPoint(input.rootCFrame, input.floorY, cfg)
	end

	if s.state == "staging" then
		-- 阶段动作只在**进入阶段的第一帧**出一次。
		-- 早期版本无条件 insert，于是 60 帧里有 5 帧都带着 placeHandles
		-- （测试用例「动作是边沿触发」抓到的），Roblox 层会重复搬运帽子。
		local fresh = (s._emitT ~= s.t) or (s._emitState ~= s.state)
		if fresh then
			s._emitT = s.t
			s._emitState = s.state
			table.insert(actions, {
				kind = "placeHandles",
				point = point,
				humanoidState = "Physics", -- source:6548
			})
		end
		if s.now - s.t >= cfg.stage then
			s.state = "grabbing"
			s.t = s.now
			table.insert(actions, { kind = "lockHandles", point = point })
		end
		return { state = s.state, actions = actions, claimPoint = point }
	end

	if s.state == "grabbing" then
		-- 持续动作：每帧锁住位置与速度（source:6564-6570 的 Heartbeat 循环）
		local hold = point and {
			kind = "holdHandles",
			point = point,
			velocity = { 0, cfg.lockSpeed, 0 },
			angular = { 0, 0, 0 },
			requireOwner = true,
		} or nil
		if s.now - s.t >= cfg.grab then
			s.state = "live"
			s.t = s.now
			s.runs += 1
			table.insert(actions, {
				kind = "killAvatar",
				bustCache = true,      -- source:6593
				breakJoints = true,    -- source:6594
				health = 0,            -- source:6597
				state = "Dead",        -- source:6598
			})
		end
		return { state = s.state, actions = actions, hold = hold, claimPoint = point }
	end

	-- live：继续每帧锁住；失去所有权就交给下一次 tick 的 abort
	local hold = point and {
		kind = "holdHandles",
		point = point,
		velocity = { 0, cfg.lockSpeed, 0 },
		angular = { 0, 0, 0 },
		requireOwner = true,
	} or nil
	if input.owner == false then
		for _, action in claim.abort(s, "lost-ownership") do
			table.insert(actions, action)
		end
	end
	return { state = s.state, actions = actions, hold = hold, claimPoint = point }
end

function claim.status(s)
	return {
		state = s.state,
		age = s.now - s.t,
		runs = s.runs,
		lastAbort = s.lastAbort,
	}
end

return claim

	end

	registry["engine.netless"] = function(...)
--!nocheck
-- prism/reanim/netless — "服务器认为你没动"的求解器
--
-- 这是整个项目的技术命门，也是唯一值得单独抽成纯函数的部分。
-- 语义基准：Uhhhhhh source/reanim.lua 的 SetUACFrameNetless（5833-5925）。
--
-- 纯函数化的收益已经兑现过一次：初版把默认速度写成 0.55，而参考实现是 25.01
-- （source__reanim.lua:3322，UI 滑块下限同为 25.01，见 7428），
-- 差 45 倍 —— 物理上服务器会立刻接管，测试却把错误量级钉成了断言。
-- 所以这里的每个数字都必须带出处。
--
-- 调用契约（M1 的 hats.lua / limb.lua 负责填）：
--   s.targetPos   必填，{x,y,z}        本帧想要的位置
--   s.targetQuat  必填，{w,x,y,z}      本帧想要的旋转
--   s.owner       必填，boolean         本帧是否持有网络所有权（ReceiveAge == 0）
--   s.floorY      必填，number          workspace.FallenPartsDestroyHeight（NaN 时传 -500）
--   s.now         可选，number          秒；缺省用 state 内部时钟（state.t + dt）
--   其余见 netless.DEFAULTS
--
-- 返回 frame：
--   skip == true → 本帧不要写 CFrame（无所有权 / 站地上 / dt 非法），其余字段为 nil
--   skip == false → 写 pos/quat/vel/angVel，并按 massless/props/canCollide 调属性

local ctx = ...
local netless = {}

local function v3(x, y, z)
	return { x, y, z }
end

local function mag(v)
	return math.sqrt(v[1] * v[1] + v[2] * v[2] + v[3] * v[3])
end

local function scale(v, s)
	return v3(v[1] * s, v[2] * s, v[3] * s)
end

local function add(a, b)
	return v3(a[1] + b[1], a[2] + b[2], a[3] + b[3])
end

local function sub(a, b)
	return v3(a[1] - b[1], a[2] - b[2], a[3] - b[3])
end

local function unit(v)
	local m = mag(v)
	if m == 0 then
		return v3(0, 0, 0)
	end
	return scale(v, 1 / m)
end

-- NaN 是 number，所以 `type(x) == "number"` 挡不住它。这一层必须显式做，
-- 否则 NaN 会一路穿过速度钳制/地板夹紧，最后写进 CFrame 变成"角色消失"
-- （GPT-6.2 审查指出的三个真漏洞，见 docs/rfcs/0003）。
local function isFinite(n)
	return type(n) == "number" and n == n and n ~= math.huge and n ~= -math.huge
end

netless.isFinite = isFinite

local function isVec3(v)
	return type(v) == "table"
		and isFinite(v[1])
		and isFinite(v[2])
		and isFinite(v[3])
end

--- 四元数校验：两种写法（命名表 / 四元数组）都必须**四个分量齐全且有限**。
--- 早期只查了 w，于是 `{w = 1}` 能过校验，到了 quatDelta 里读 x/y/z 得到 nil，
--- 直接抛算术错误——而且是在角速度分支之前，调用方连 skip 都拿不到。
local function isQuat(q)
	if type(q) ~= "table" then
		return false
	end
	if type(q.w) == "number" or type(q[1]) == "number" then
		return isFinite(q[1] or q.w)
			and isFinite(q[2] or q.x)
			and isFinite(q[3] or q.y)
			and isFinite(q[4] or q.z)
	end
	return false
end

netless.isQuat = isQuat

netless.vector = { v3 = v3, mag = mag, scale = scale, add = add, sub = sub, unit = unit }

-- 每个常数都标出处：source__reanim.lua 的行号
netless.DEFAULTS = {
	velocity = 25.01,     -- 3322 SaveData.NetlessVelocity or 25.01（滑块 25.01-30，7428）
	idleThreshold = 0.12, -- 5859 vel.Magnitude < 0.12 才加抖动
	maxSpeed = 16384,     -- 5846 speedlimit 基准
	bootGrace = 0.51,     -- 5879 timing - claimtime < 0.51
	pedeath = 5.67,       -- 5872 timing - claimtime < 5.67
	mode = "uac",         -- "uac" | "patchma"（5886 UsePatchmaLikeNetless）
	angular = false,      -- 3324 UseAngularVelocity 默认 false
	patchmaGain = 10,     -- 5892 vel.X * 10
	claimSpeed = 67,      -- 6566 claim 时上抛速度 (0, 67, 0)
	decayMassProps = { 0.01, 0, 0, 0, 0 }, -- 5877 PhysicalProperties.new(0.01, 0, 0, 0, 0)
}

--- 空状态
function netless.newState()
	return {
		t = 0,            -- 内部时钟（s.now 缺省时用）
		claim = nil,      -- 首次接管时间（秒）
		lastPos = nil,    -- 上一帧真实/期望位置
		lastQuat = nil,
		aligned = false,
		frames = 0,
		drift = 0,
		resync = false,
	}
end

--- 四元数角速度：angle * axis（不是分量相减）。
--- 必须归一化 + 取短弧，否则 q 与 -q 表示同一旋转会给 2π 级尖峰。
local function quatDelta(a, b)
	local aw, ax, ay, az = a[1] or a.w, a[2] or a.x, a[3] or a.y, a[4] or a.z
	local bw, bx, by, bz = b[1] or b.w, b[2] or b.x, b[3] or b.y, b[4] or b.z

	local alen = math.sqrt(aw * aw + ax * ax + ay * ay + az * az)
	if alen == 0 then
		return v3(0, 0, 0)
	end
	local blen = math.sqrt(bw * bw + bx * bx + by * by + bz * bz)
	if blen == 0 then
		return v3(0, 0, 0)
	end
	aw, ax, ay, az = aw / alen, ax / alen, ay / alen, az / alen
	bw, bx, by, bz = bw / blen, bx / blen, by / blen, bz / blen

	local w = bw * aw + bx * ax + by * ay + bz * az
	local x = bx * aw - bw * ax - by * az + bz * ay
	local y = by * aw - bw * ay - bz * ax + bx * az
	local z = bz * aw - bw * az - bx * ay + by * ax
	if w < 0 then
		w, x, y, z = -w, -x, -y, -z
	end
	w = math.clamp(w, -1, 1)
	local angle = 2 * math.acos(w)
	local sinHalf = math.sqrt(math.max(0, 1 - w * w))
	if sinHalf < 1e-6 then
		return v3(0, 0, 0)
	end
	local k = angle / sinHalf
	return v3(x * k, y * k, z * k)
end

netless.quatDelta = quatDelta

local function skipFrame(reason, extra)
	local frame = { skip = true, reason = reason, aligned = false }
	if extra then
		for key, value in extra do
			frame[key] = value
		end
	end
	return frame
end

--- @param state table netless.newState()
--- @param s table 本帧采样（见文件头契约）
--- @return table frame
function netless.solve(state, s)
	local base = netless.DEFAULTS
	-- per-call 覆盖：不能直接改共享的 DEFAULTS，否则同帧两顶帽子用不同参数做不到
	local function cfg(key)
		local value = s[key]
		if value ~= nil then
			return value
		end
		return base[key]
	end

	local dt = s.dt
	-- NaN/inf 都过不了 `dt <= 0`，所以必须先 isFinite
	if not isFinite(dt) or dt <= 0 then
		return skipFrame("dt")
	end
	if not isVec3(s.targetPos) or not isQuat(s.targetQuat) then
		return skipFrame("input")
	end
	if type(s.floorY) ~= "number" then
		return skipFrame("floorY")
	end

	local now = s.now
	if not isFinite(now) then
		now = (state.t or 0) + dt
	end
	if not isFinite(now) then
		-- 内部时钟被污染（历史某帧写过 NaN）：重建，别让污染永久化
		now = dt
		state.t = 0
	end
	state.t = now

	local pos = v3(s.targetPos[1], s.targetPos[2], s.targetPos[3])
	local quat = s.targetQuat
	local velocity = cfg("velocity")
	local maxSpeed = cfg("maxSpeed")
	local mode = cfg("mode") or "uac"

	-- 所有权：fail-closed。调用方漏传 owner（nil）也按"没拥有"处理，
	-- 否则会往服务器上硬写，被覆盖回来表现为抖动 + drift 尖峰。
	local owned = s.owner == true and not s.grounded
	if not owned then
		-- 用真实部件状态做基准，重新拿到所有权时才不会算出几秒的角差
		state.lastPos = isVec3(s.partPos) and s.partPos or pos
		state.lastQuat = isQuat(s.partQuat) and s.partQuat or quat
		state.claim = nil
		state.aligned = false

		-- 失权帧的落点预测（source__reanim.lua:6796-6801）
		local extra = nil
		if isVec3(s.partPos) and type(s.ping) == "number" and type(s.gravity) == "number" then
			local a = s.ping + 0.2 + math.sin(now * 30) * 0.2
			local move = isVec3(s.moveVel) and s.moveVel or v3(0, 0, 0)
			local predicted = add(
				add(s.partPos, scale(move, a)),
				v3(0, 0.5 * (-s.gravity) * a * a, 0)
			)
			extra = { predict = predicted, predictIn = a }
		end
		return skipFrame(s.grounded and "grounded" or "not-owner", extra)
	end

	-- 每帧抖动：25.01 + (sin(t*0.5)+1)/2 → 25.01~26.01（5850）
	local netlessSpeed = velocity + (math.sin(now * 0.5) + 1) / 2

	local lastPos = state.lastPos or pos
	local delta = sub(pos, lastPos)
	local speed = mag(delta) / dt

	-- 抖动：静止时加微小位移，骗过 anti-idle（5858-5860）
	local idle = scale(v3(
		math.sin(now * 14),
		math.sin(now * 15 + 1.0472),
		math.sin(now * 16 + 2.0944)
	), 0.001)

	if speed < base.idleThreshold then
		pos = add(pos, idle)
	elseif speed > maxSpeed then
		-- fling 时不做位置截断（5846-5849：speedlimit = math.huge）
		local limit = s.fling and math.huge or maxSpeed
		if limit ~= math.huge then
			delta = scale(unit(delta), limit * dt)
			pos = add(lastPos, delta)
		end
	end

	-- 地板保护放在最后：保证写进 CFrame 的 Y 永远不低于地板（5842-5845 无条件夹紧）
	local floorY = s.floorY
	if floorY ~= floorY then -- NaN
		floorY = -500
	end
	if pos[2] < floorY + 5 then
		pos[2] = floorY + 5
	end

	-- 最后一道闸：宁可这一帧不写，也不要把 NaN 写进 CFrame
	-- （NaN 位置会让部件从渲染里消失，且下一帧 lastPos 也变成 NaN，污染是永久的）
	if not (isFinite(pos[1]) and isFinite(pos[2]) and isFinite(pos[3])) then
		state.claim = nil
		state.lastPos = nil
		return skipFrame("nan")
	end

	local rvel = quatDelta(state.lastQuat or quat, quat)

	local claim = state.claim
	local massless, props
	local vel
	if not claim then
		claim = now
		vel = v3(0, netlessSpeed * 2, 0) -- 5905：起飞帧 (
		state.resync = state.frames > 0
		massless, props = false, nil           -- 5871-5874：< 5.67 秒不设 massless
	else
		local age = now - claim
		massless = age >= base.pedeath
		props = massless and base.decayMassProps or nil

		if age < base.bootGrace then
			vel = v3(0, netlessSpeed, 0) -- 5880
		elseif s.fling then
			vel = v3(maxSpeed, maxSpeed, maxSpeed) -- 5883
		else
			local move = isVec3(s.moveVel) and s.moveVel or v3(0, 0, 0)
			if mode == "patchma" then
				-- 5886-5892：先夹到 netless，再 ×10（顺序不能反）
				local horizontal = v3(move[1], 0, move[3])
				if mag(horizontal) > netlessSpeed then
					horizontal = scale(unit(horizontal), netlessSpeed)
				end
				vel = v3(horizontal[1] * base.patchmaGain, netlessSpeed, horizontal[3] * base.patchmaGain)
			else
				-- 5889-5899：位移速度 + 角色自身速度，水平夹到 netless
				local horizontal = add(v3(delta[1] / dt, 0, delta[3] / dt), v3(move[1], 0, move[3]))
				if mag(horizontal) > netlessSpeed then
					horizontal = scale(unit(horizontal), netlessSpeed)
				end
				vel = v3(horizontal[1], math.max(horizontal[2], netlessSpeed), horizontal[3])
			end
		end
	end

	local angVel
	if s.spin then
		angVel = v3(maxSpeed, maxSpeed, maxSpeed) -- 5909
	elseif cfg("angular") then
		angVel = v3(rvel[1] / dt + idle[1], rvel[2] / dt + idle[2], rvel[3] / dt + idle[3]) -- 5912
	else
		angVel = v3(idle[1], idle[2], idle[3]) -- 5914：只有噪声级
	end

	local drift = mag(sub(pos, s.targetPos))
	state.claim = claim
	state.lastPos = pos
	state.lastQuat = quat
	state.aligned = speed <= maxSpeed
	state.frames += 1
	state.drift = state.drift * 0.9 + drift * 0.1

	return {
		skip = false,
		pos = pos,
		quat = quat,
		vel = vel,
		angVel = angVel,
		massless = massless,
		props = props,
		-- 5594/7001/7025：这三项每帧都得跟着写，否则帽子撞场景、第一人称挡视线
		canCollide = false,
		ltm = s.ltm or 0,
		repRootPart = s.repRootPart,
		aligned = state.aligned,
		claim = claim,
		resync = state.resync,
		drift = state.drift,
	}
end

--- 从 CFrame 组件（12 个数，行主序 3x3 + 位置）反解四元数。
--- 放在这里而不是 netless 内部，是为了让调用侧的适配层只有一层。
function netless.quatFromCFrameComponents(c)
	local m00, m01, m02 = c[4], c[5], c[6]
	local m10, m11, m12 = c[7], c[8], c[9]
	local m20, m21, m22 = c[10], c[11], c[12]
	local trace = m00 + m11 + m22
	local w, x, y, z
	if trace > 0 then
		local s = math.sqrt(trace + 1) * 2
		w, x, y, z = 0.25 * s, (m21 - m12) / s, (m02 - m20) / s, (m10 - m01) / s
	elseif m00 > m11 and m00 > m22 then
		local s = math.sqrt(1 + m00 - m11 - m22) * 2
		w, x, y, z = (m21 - m12) / s, 0.25 * s, (m01 + m10) / s, (m02 + m20) / s
	elseif m11 > m22 then
		local s = math.sqrt(1 + m11 - m00 - m22) * 2
		w, x, y, z = (m02 - m20) / s, (m01 + m10) / s, 0.25 * s, (m12 + m21) / s
	else
		local s = math.sqrt(1 + m22 - m00 - m11) * 2
		w, x, y, z = (m10 - m01) / s, (m02 + m20) / s, (m12 + m21) / s, 0.25 * s
	end
	if w < 0 then
		w, x, y, z = -w, -x, -y, -z
	end
	local len = math.sqrt(w * w + x * x + y * y + z * z)
	if len == 0 then
		return { w = 1, x = 0, y = 0, z = 0 }
	end
	return { w = w / len, x = x / len, y = y / len, z = z / len }
end

return netless

	end

	registry["engine.motion"] = function(...)
--!nocheck
-- anathema/engine/motion — 把动画轨道采样成"每个 Motor6D 该用什么 C0"
--
-- 纯逻辑：输入是 prism 的 Track（anim.format）+ 时间，输出是纯数字表，
-- 由 engine/rig.lua 转成 CFrame 写给 Motor6D。测试里可以直接断言角度。
--
-- pose 名 → Motor6D 名的映射只支持 R6；R15 的映射表以后再加，
-- 加的时候只需要往 POSE_TO_MOTOR 里补键，采样逻辑不用动。

local ctx = ...
local Animator = ctx.require("anim.animator")

local motion = {}

motion.POSE_TO_MOTOR = {
	["Torso"] = "RootJoint",
	["Head"] = "Neck",
	["Left Arm"] = "Left Shoulder",
	["Right Arm"] = "Right Shoulder",
	["Left Leg"] = "Left Hip",
	["Right Leg"] = "Right Hip",
}

--- @param track table anim.format 的 Track
--- @return table handle
function motion.new(track)
	if not track or type(track.frames) ~= "table" then
		return nil, "motion.new: 需要 anim.format 的 Track"
	end
	return {
		track = track,
		sampler = Animator.new(track),
		time = 0,
		looped = track.loop ~= false,
	}
end

--- 采样某一时刻，返回 { [motorName] = { pos = {x,y,z}, quat = {w,x,y,z}, weight = n } }
--- 只输出映射到的 pose；未映射的 pose 会被计入 `unmapped`（诊断用）
function motion.sample(handle, time)
	if not handle then
		return nil
	end
	local poses = handle.sampler:eval(time)
	local out, unmapped = {}, {}
	for poseName, entry in poses do
		local motorName = motion.POSE_TO_MOTOR[poseName]
		if motorName then
			out[motorName] = {
				pos = { entry.pos[1], entry.pos[2], entry.pos[3] },
				quat = entry.quat,
				weight = entry.weight,
			}
		else
			table.insert(unmapped, poseName)
		end
	end
	return out, unmapped
end

--- 推进时间并采样。返回 (poses, unmapped)
function motion.advance(handle, dt, speed)
	if not handle then
		return nil
	end
	handle.sampler.speed = speed or handle.sampler.speed or 1
	handle.sampler.looped = handle.looped
	handle.time = handle.sampler:step(dt)
	return motion.sample(handle, handle.time)
end

--- 四元数 → 行主序 3x3（rig 层用 CFrame.new(x,y,z, r00..r22) 只需要这 9 个数）
function motion.quatToMat(q)
	local w = q.w or q[1] or 1
	local x = q.x or q[2] or 0
	local y = q.y or q[3] or 0
	local z = q.z or q[4] or 0
	return {
		1 - 2 * (y * y + z * z), 2 * (x * y - z * w), 2 * (x * z + y * w),
		2 * (x * y + z * w), 1 - 2 * (x * x + z * z), 2 * (y * z - x * w),
		2 * (x * z - y * w), 2 * (y * z + x * w), 1 - 2 * (x * x + y * y),
	}
end

--- 计算最终 C0：baseC0 * (平移 + 旋转)。
--- 返回 12 个数字（rig 层拼 CFrame），纯数学，可断言。
function motion.applyTo(baseComponents, entry)
	local bx, by, bz = baseComponents[1], baseComponents[2], baseComponents[3]
	local br = { baseComponents[4], baseComponents[5], baseComponents[6],
		baseComponents[7], baseComponents[8], baseComponents[9],
		baseComponents[10], baseComponents[11], baseComponents[12] }
	local pr = motion.quatToMat(entry.quat)
	-- 旋转相乘：base * pose
	local mr = {}
	for row = 0, 2 do
		for col = 0, 2 do
			local sum = 0
			for k = 0, 2 do
				sum += br[row * 3 + k + 1] * pr[k * 3 + col + 1]
			end
			mr[row * 3 + col + 1] = sum
		end
	end
	-- 平移：base * pose.position（base 的旋转作用在 pose 的平移上）
	local px, py, pz = entry.pos[1], entry.pos[2], entry.pos[3]
	local wx = br[1] * px + br[2] * py + br[3] * pz + bx
	local wy = br[4] * px + br[5] * py + br[6] * pz + by
	local wz = br[7] * px + br[8] * py + br[9] * pz + bz
	return { wx, wy, wz, mr[1], mr[2], mr[3], mr[4], mr[5], mr[6], mr[7], mr[8], mr[9] }
end

return motion

	end

	registry["engine.runtime"] = function(...)
--!nocheck
-- anathema/engine/runtime — 引擎编排：start / tick / stop / status
--
-- world 注入：runtime 不碰 Instance/CFrame，Roblox 接触面全在 engine/rig.lua，
-- 所以这台机器上能用 fake world 完整跑"启动 → claim → 稳态 → 掉所有权 → 恢复"。
--
-- 本文件被 GPT 审计过一轮，下面是它指出的问题与对应修法（都落在这里）：
--
--   1) claim 落点没真正锁定 —— 每帧用当前 rootCFrame 重算，角色一转帽子就追不同的点。
--      修：runtime 只算一次并锁存，claim.tick 接受 input.point 不再自己算。
--   2) 目标缓存 15 帧刷新 → 位移滞后 + 周期性瞬移（我自己加的"优化"引入的 bug）。
--      修：身份与动态观测都每帧取；只让 world 层去做实例缓存。
--   3) 错误计数是"累计"而非"连续"，且 start/stop 不清零 → 停机后重启立刻再停机。
--      修：consecutive（连续写失败，决定停机）与 total（诊断）分开；start 清零。
--   4) claim 动作执行失败但状态机照推进 → 帽子没锁住却显示 claim 完成。
--      修：关键动作失败即中止本轮 claim。
--   5) 进 failed 只改标志、不清理 → 真身透明/焊点被拆的状态残留。
--      修：统一走 fail()，做幂等清理。
--   6) 帽子被摘光时 phase 仍是 live，且刷新退化成每帧。
--      修：新增 waiting 相位 + 失效句柄不计入致命错误。
--   7) live 交接用"位置 lerp"但速度直通 → 位置平滑不代表动力学平滑。
--      修：不 lerp；进 live 时把 claimPoint 播种进 netless 的 lastPos，
--         让求解器自己的速度钳制完成过渡（它的本职）。

local ctx = ...
local api = ctx.require("engine.api")
local claim = ctx.require("engine.claim")
local netless = ctx.require("engine.netless")

local runtime = {}
runtime.__index = runtime

runtime.DEFAULTS = {
	maxConsecutiveErrors = 5,  -- 连续写失败几次判 failed
	maxClaimActionErrors = 2,  -- 连续关键动作失败几次中止本轮 claim
	driftWarn = 0.05,          -- 与 ROADMAP 验收线一致
	driftSpike = 0.25,
}

runtime.PHASES = {
	idle = true, claiming = true, live = true, waiting = true, failed = true,
}

--- @param world table 见 engine/api.WORLD_METHODS
function runtime.new(world, options)
	local ok, errors = api.validateWorld(world)
	if not ok then
		return nil, errors
	end
	return setmetatable({
		world = world,
		options = options or {},
		phase = "idle",
		claim = claim.new(),
		targets = {},
		states = {},        -- key -> netless state
		claimPoint = nil,   -- **锁存**的 claim 落点
		liveAt = nil,
		stats = {
			ticks = 0,
			writes = 0,
			skips = 0,
			consecutiveErrors = 0,
			totalErrors = 0,
			claimActionErrors = 0,
			driftEwma = 0,
			driftMax = 0,
			spikes = 0,
			costMs = 0,
			lastError = nil,
		},
		log = {},
	}, runtime)
end

local function cfg(self, key)
	return self.options[key] or runtime.DEFAULTS[key]
end

function runtime:pushLog(level, message)
	table.insert(self.log, string.format("%s  %s", tostring(level), tostring(message)))
	if #self.log > 40 then
		table.remove(self.log, 1)
	end
	pcall(self.world.log, level, message)
end

function runtime:recordError(message)
	local stats = self.stats
	stats.totalErrors += 1
	stats.consecutiveErrors += 1
	stats.lastError = message
	self:pushLog("error", message)
	if stats.consecutiveErrors >= cfg(self, "maxConsecutiveErrors") then
		self:fail("连续写入失败达上限")
	end
end

--- 统一失败出口：先清理再置标志（幂等）
function runtime:fail(reason)
	if self.phase == "failed" then
		return
	end
	self.stats.lastError = self.stats.lastError or reason
	self:pushLog("error", "进入 failed：" .. tostring(reason))
	for _, action in claim.abort(self.claim, reason) do
		pcall(self.world.claimAction, action.kind, action)
	end
	claim.reset(self.claim)
	pcall(self.world.destroyRig)
	self.targets = {}
	self.states = {}
	self.claimPoint = nil
	self.phase = "failed"
end

function runtime:start()
	if self.phase == "claiming" or self.phase == "live" or self.phase == "waiting" then
		return false, "already-running"
	end
	-- 从 failed 重启：上一轮已经在 fail() 里清理过，这里只需重置计数
	self.stats.consecutiveErrors = 0
	self.stats.claimActionErrors = 0
	self.stats.lastError = nil

	local ok, err = self.world.buildRig()
	if not ok then
		self.stats.lastError = "buildRig: " .. tostring(err)
		self:fail(self.stats.lastError)
		return false, self.stats.lastError
	end

	self.targets = self.world.hats() or {}
	self.states = {}
	for _, target in self.targets do
		if target and target.key then
			self.states[target.key] = netless.newState()
		end
	end

	self.claimPoint = nil
	self.liveAt = nil
	claim.begin(self.claim, self.world.now())
	self.phase = "claiming"
	self:pushLog("info", string.format("claim 开始（%d 个目标）", #self.targets))
	return true
end

function runtime:stop(reason)
	for _, action in claim.abort(self.claim, reason or "manual") do
		pcall(self.world.claimAction, action.kind, action)
	end
	claim.reset(self.claim)
	self.phase = "idle"
	self.targets = {}
	self.states = {}
	self.claimPoint = nil
	self.liveAt = nil
	self.stats.consecutiveErrors = 0
	pcall(self.world.destroyRig)
	self:pushLog("info", "已停止：" .. tostring(reason or "manual"))
	return true
end

--- 执行 claim 动作；关键动作失败会影响本轮 claim 的合法性，所以返回 ok
local function runActions(self, actions, critical)
	local allOk = true
	for _, action in actions do
		local ok, err = pcall(self.world.claimAction, action.kind, action)
		if not ok then
			allOk = false
			self.stats.claimActionErrors += 1
			self.stats.lastError = string.format("claimAction(%s): %s", tostring(action.kind), tostring(err))
			self:pushLog("error", self.stats.lastError)
		elseif critical then
			self.stats.claimActionErrors = 0
		end
	end
	return allOk
end

local function syncStates(self)
	-- 目标身份变了就补/删 netless state，避免反复摘戴帽子把 states 撑大
	local present = {}
	for _, target in self.targets do
		if target and target.key then
			present[target.key] = true
			if not self.states[target.key] then
				self.states[target.key] = netless.newState()
			end
		end
	end
	for key in self.states do
		if not present[key] then
			self.states[key] = nil
		end
	end
end

function runtime:stepClaiming(dt, now)
	-- 落点只算一次（审计项 1）：之后 place/lock/hold 都用同一个点
	if not self.claimPoint and self.world.rootCFrame then
		local ok, value = pcall(self.world.rootCFrame)
		if ok and value then
			self.claimPoint = claim.claimPoint(value, self.world.floorY())
		end
	end

	local rigAlive = true
	if self.world.characterAlive then
		local ok, value = pcall(self.world.characterAlive)
		rigAlive = ok and value ~= false
	end

	local rootCFrame = nil
	if self.world.rootCFrame then
		local ok, value = pcall(self.world.rootCFrame)
		rootCFrame = ok and value or nil
	end

	local result = claim.tick(self.claim, {
		dt = dt,
		now = now,
		owner = true,
		point = self.claimPoint,        -- 锁存点交给状态机，别让它自己重算
		rootCFrame = rootCFrame,
		floorY = self.world.floorY(),
		characterAlive = rigAlive,
	})

	local critical = false
	for _, action in result.actions do
		if action.kind == "placeHandles" or action.kind == "lockHandles" then
			critical = true
		end
	end
	local ok = runActions(self, result.actions, critical)
	if not ok and self.stats.claimActionErrors >= cfg(self, "maxClaimActionErrors") then
		self:fail("claim 关键动作连续失败：" .. tostring(self.stats.lastError))
		return
	end

	if result.hold then
		local held, holdErr = pcall(self.world.claimAction, "holdHandles", result.hold)
		if not held then
			self.stats.claimActionErrors += 1
			self.stats.lastError = "holdHandles: " .. tostring(holdErr)
			self:pushLog("error", self.stats.lastError)
			if self.stats.claimActionErrors >= cfg(self, "maxClaimActionErrors") then
				self:fail("锁住帽子失败")
				return
			end
		end
	end

	if self.claim.state == "live" then
		self.phase = "live"
		self.liveAt = now
		-- 审计项 7：不 lerp 位置；把 claimarea 播种进 lastPos，
		-- 让 netless 自己的速度钳制完成过渡（那是它的本职）
		for _, state in self.states do
			state.lastPos = self.claimPoint
			state.claim = nil      -- 让它重新走一次起飞窗口，而不是继承 claim 前的时间戳
		end
		self:pushLog("info", "claim 完成，进入稳态")
	elseif self.claim.state == "lost" then
		self:fail("claim 中止：" .. tostring(self.claim.lastAbort))
	end
end

function runtime:stepLive(dt, now)
	local floorY = self.world.floorY()

	-- 审计项 2：每帧取动态观测（位置/朝向/所有权）。alloc 优化留给 world 层做实例缓存，
	-- 不能靠"降低采样频率"来省，那会直接变成位移滞后 + 周期性瞬移。
	self.targets = self.world.hats() or {}
	syncStates(self)

	if #self.targets == 0 then
		-- 审计项 6：帽子被摘光不是错误，是"等目标"
		if self.phase ~= "waiting" then
			self.phase = "waiting"
			self:pushLog("warn", "当前没有可驱动的帽子（等目标）")
		end
		return
	end
	if self.phase == "waiting" then
		self.phase = "live"
		self:pushLog("info", "目标恢复，继续驱动")
	end

	for index, raw in self.targets do
		local target, errors = api.normalizeTarget(raw, index)
		if not target then
			self.stats.lastError = table.concat(errors, "; ")
			self:pushLog("warn", "目标被跳过：" .. self.stats.lastError)
			continue
		end
		local state = self.states[target.key]
		if not state then
			state = netless.newState()
			self.states[target.key] = state
		end

		local frame = netless.solve(state, {
			dt = dt,
			now = now,
			owner = target.owner,
			grounded = target.grounded,
			floorY = floorY,
			targetPos = target.targetPos,
			targetQuat = target.targetQuat,
			partPos = target.partPos,
			partQuat = target.partQuat,
			moveVel = target.moveVel,
			ltm = target.ltm,
			repRootPart = target.repRootPart,
			fling = target.fling,
			spin = target.spin,
		})

		if not frame then
			self.stats.skips += 1
			continue
		end
		local okFrame, frameErrors = api.validateFrame(frame)
		if not okFrame then
			self.stats.lastError = "frame 契约不符：" .. table.concat(frameErrors, "; ")
			self:pushLog("error", self.stats.lastError)
			continue
		end
		if frame.skip then
			self.stats.skips += 1
			continue
		end

		local wrote, writeResult = pcall(self.world.write, target, frame)
		if not wrote then
			self:recordError("write: " .. tostring(writeResult))
			if self.phase == "failed" then
				return
			end
		elseif writeResult == false then
			-- 句柄失效属于正常生命周期（摘帽子/换装），不计入致命错误
			self.stats.skips += 1
		else
			self.stats.writes += 1
			self.stats.consecutiveErrors = 0
		end

		local drift = frame.drift or 0
		self.stats.driftEwma = self.stats.driftEwma * 0.95 + drift * 0.05
		if drift > self.stats.driftMax then
			self.stats.driftMax = drift
		end
		if drift > cfg(self, "driftSpike") then
			self.stats.spikes += 1
		end
	end
end

function runtime:tick(dt)
	if self.phase == "idle" or self.phase == "failed" then
		return { phase = self.phase }
	end
	if type(dt) ~= "number" or dt ~= dt or dt <= 0 then
		return { phase = self.phase, note = "bad-dt" }
	end

	local startedAt = nil
	if self.world.clock then
		local ok, value = pcall(self.world.clock)
		startedAt = ok and value or nil
	end

	local now = self.world.now()
	self.stats.ticks += 1

	-- 可选钩子：world 若有动画推进，就在这里跑（rig 用它把采样写回 Motor6D）
	if self.world.advanceMotion then
		local applied, err = pcall(self.world.advanceMotion, dt)
		if not applied and not self.stats.warnedMotion then
			self.stats.warnedMotion = true
			self:pushLog("warn", "advanceMotion 失败：" .. tostring(err))
		end
	end

	if self.phase == "claiming" then
		local ok, err = pcall(self.stepClaiming, self, dt, now)
		if not ok then
			self:recordError("stepClaiming: " .. tostring(err))
		end
	elseif self.phase == "live" or self.phase == "waiting" then
		local ok, err = pcall(self.stepLive, self, dt, now)
		if not ok then
			self:recordError("stepLive: " .. tostring(err))
		end
	end

	if startedAt and self.world.clock then
		local ok, endedAt = pcall(self.world.clock)
		if ok and type(endedAt) == "number" then
			local cost = (endedAt - startedAt) * 1000
			self.stats.costMs = self.stats.costMs * 0.9 + cost * 0.1
		end
	end

	return { phase = self.phase, stats = self.stats }
end

function runtime:status()
	local caps = nil
	local ok, value = pcall(self.world.capabilities)
	if ok then
		caps = value
	end
	return {
		phase = self.phase,
		claim = claim.status(self.claim),
		targets = #self.targets,
		stats = self.stats,
		capabilities = caps,
		log = self.log,
		driftWarn = self.stats.driftEwma > cfg(self, "driftWarn"),
	}
end

return runtime

	end

	registry["engine.rig"] = function(...)
--!nocheck
-- anathema/engine/rig — world 的 Roblox 实现
--
-- 唯一碰 Instance / CFrame 的引擎文件。策略：每步 pcall + 回传原因，能力不足就降级但**不静默**。
--
-- S1.5 的行为（与 S1 的差别）：
--   * 真的会动了：把 content/idle.uhanim 采样成本地 Motor6D 的 C0，玩家自己看得见手臂摆动；
--   * 帽子不再"原地不动"：claim 打断焊点后，每帧的目标位置由"挂点 CFrame × 原始偏移"算出，
--     所以帽子会跟着肢体走 —— 这就是 reanimation 的观感；
--   * 不做的事：不隐藏真身、不杀真身、不碰 FallenPartsDestroyHeight。
--     原因：原型必须可逆，且要能"用眼睛验收"。真身隐藏留给 S3（那时有 ghost rig）。

local ctx = ...
local api = ctx.require("engine.api")
local Track = ctx.require("anim.format")
local motion = ctx.require("engine.motion")

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local rig = {}

local function grab(name)
	local ok, value = pcall(function()
		return getfenv(0)[name] or _G[name]
	end)
	return ok and value or nil
end

local G = {
	cloneref = grab("cloneref") or function(object)
		return object
	end,
	sethiddenproperty = grab("sethiddenproperty"),
	gethui = grab("gethui") or grab("get_hidden_gui"),
	identifyexecutor = grab("identifyexecutor") or grab("get_executorname"),
}

local state = {
	player = nil,
	character = nil,
	hats = {},          -- { key, handle, limb(Instance), offsetCFrame, accessory }
	motors = {},        -- name -> { motor = Motor6D, base = {12 numbers} }
	motion = nil,       -- motion handle
	motionEnabled = true,
	warned = {},
}

local function log(level, message)
	warn(string.format("[anathema/%s] %s", tostring(level), tostring(message)))
end

local function components(cf)
	local x, y, z, r00, r01, r02, r10, r11, r12, r20, r21, r22 = cf:GetComponents()
	return { x, y, z, r00, r01, r02, r10, r11, r12, r20, r21, r22 }
end

local function cframeOf(pos, quat)
	local w, x, y, z = quat.w or quat[1], quat.x or quat[2], quat.y or quat[3], quat.z or quat[4]
	if w == nil then
		return CFrame.new(pos[1], pos[2], pos[3])
	end
	local m = motion.quatToMat({ w = w, x = x, y = y, z = z })
	return CFrame.new(pos[1], pos[2], pos[3], m[1], m[2], m[3], m[4], m[5], m[6], m[7], m[8], m[9])
end

local function quatOf(cf)
	local _, _, _, r00, r01, r02, r10, r11, r12, r20, r21, r22 = cf:GetComponents()
	local trace = r00 + r11 + r22
	local w, qx, qy, qz
	if trace > 0 then
		local s = math.sqrt(trace + 1) * 2
		w, qx, qy, qz = 0.25 * s, (r21 - r12) / s, (r02 - r20) / s, (r10 - r01) / s
	elseif r00 > r11 and r00 > r22 then
		local s = math.sqrt(1 + r00 - r11 - r22) * 2
		w, qx, qy, qz = (r21 - r12) / s, 0.25 * s, (r01 + r10) / s, (r02 + r20) / s
	elseif r11 > r22 then
		local s = math.sqrt(1 + r11 - r00 - r22) * 2
		w, qx, qy, qz = (r02 - r20) / s, (r01 + r10) / s, 0.25 * s, (r12 + r21) / s
	else
		local s = math.sqrt(1 + r22 - r00 - r11) * 2
		w, qx, qy, qz = (r10 - r01) / s, (r02 + r20) / s, (r12 + r21) / s, 0.25 * s
	end
	if w < 0 then
		w, qx, qy, qz = -w, -qx, -qy, -qz
	end
	local len = math.sqrt(w * w + qx * qx + qy * qy + qz * qz)
	if len == 0 then
		return { w = 1, x = 0, y = 0, z = 0 }
	end
	return { w = w / len, x = qx / len, y = qy / len, z = qz / len }
end

--- 找到帽子挂在哪个 BasePart 上（优先 Weld，其次父级）
local function limbOf(handle)
	for _, child in handle:GetChildren() do
		if child:IsA("Weld") or child:IsA("Motor6D") then
			local other = (child.Part1 == handle) and child.Part0 or child.Part1
			if other and other:IsA("BasePart") then
				return other, child
			end
		end
	end
	local ancestor = handle.Parent
	while ancestor do
		if ancestor:IsA("BasePart") then
			return ancestor, nil
		end
		ancestor = ancestor.Parent
	end
	return nil, nil
end

-- ===== world 契约 =====

function rig.capabilities()
	return {
		hiddenProperties = G.sethiddenproperty ~= nil,
		ownerProbe = true,
		customAsset = grab("getcustomasset") ~= nil,
		gethui = G.gethui ~= nil,
		motion = state.motion ~= nil,
		executor = tostring((function()
			local ok, name = pcall(G.identifyexecutor)
			return ok and name or "unknown"
		end)()),
	}
end

function rig.floorY()
	local value = Workspace.FallenPartsDestroyHeight
	if type(value) ~= "number" or value ~= value then
		return -500
	end
	return value
end

function rig.now()
	return os.clock()
end

function rig.clock()
	return os.clock()
end

function rig.log(level, message)
	log(level, message)
end

function rig.metrics()
	return { hats = #state.hats, motors = 0, motion = state.motion ~= nil }
end

function rig.characterAlive()
	return state.character ~= nil and state.character.Parent ~= nil
end

function rig.rootCFrame()
	local root = state.character and state.character:FindFirstChild("HumanoidRootPart")
	if not root then
		return nil
	end
	local cf = root.CFrame
	return { pos = { cf.X, cf.Y, cf.Z }, look = { cf.LookVector.X, cf.LookVector.Y, cf.LookVector.Z } }
end

function rig.buildRig()
	local player = Players.LocalPlayer
	local character = player.Character
	if not character then
		return false, "没有角色"
	end
	state.player = player
	state.character = character

	-- 1) 帽子：记下"挂在哪条肢体 + 原始偏移"，claim 打断焊点后靠这个偏移跟手
	state.hats = {}
	for _, descendant in character:GetDescendants() do
		if descendant:IsA("Accessory") then
			local handle = descendant:FindFirstChild("Handle")
			if handle and handle:IsA("BasePart") then
				local limb = limbOf(handle)
				if limb then
					table.insert(state.hats, {
						key = descendant.Name .. "#" .. tostring(#state.hats + 1),
						accessory = descendant,
						handle = handle,
						limb = limb,
						offset = limb.CFrame:ToObjectSpace(handle.CFrame),
					})
				end
			end
		end
	end

	-- 2) 关节：记下每个 Motor6D 的原始 C0，动画在此基础上叠加
	state.motors = {}
	local root = character:FindFirstChild("HumanoidRootPart")
	if root then
		for _, child in root:GetChildren() do
			if child:IsA("Motor6D") then
				state.motors[child.Name] = { motor = child, base = components(child.C0) }
			end
		end
	end

	-- 3) 动画：从构建产物里取 content/idle.uhanim（build.py 内联）
	state.motion = nil
	local build = ctx.build
	if build and build.motion and #build.motion > 0 then
		local ok, track = pcall(Track.fromBytes, build.motion)
		if ok and track then
			local handle, err = motion.new(track)
			if handle then
				state.motion = handle
			else
				log("warn", "动画初始化失败：" .. tostring(err))
			end
		else
			log("warn", "动画解析失败：" .. tostring(track))
		end
	end

	log("info", string.format("rig 就绪：%d 顶帽子 / %d 个关节 / 动画=%s / 能力=%s",
		#state.hats, (function()
			local count = 0
			for _ in state.motors do
				count += 1
			end
			return count
		end)(),
		state.motion and "有" or "无",
		G.sethiddenproperty and "完整" or "降级"))
	return true
end

function rig.destroyRig()
	-- 还原关节
	for _, entry in state.motors do
		pcall(function()
			entry.motor.C0 = CFrame.new(unpack(entry.base))
		end)
	end
	state.motors = {}
	state.hats = {}
	state.motion = nil
	state.character = nil
	return true
end

--- 每帧推进动画并写回关节（rig 内部调用，runtime 也会调）
function rig.advanceMotion(dt)
	if not state.motionEnabled or not state.motion then
		return 0
	end
	local poses = motion.advance(state.motion, dt)
	if not poses then
		return 0
	end
	local applied = 0
	for motorName, entry in poses do
		local record = state.motors[motorName]
		if record and record.motor.Parent then
			local c = motion.applyTo(record.base, entry)
			record.motor.C0 = CFrame.new(c[1], c[2], c[3], c[4], c[5], c[6], c[7], c[8], c[9], c[10], c[11], c[12])
			applied += 1
		end
	end
	return applied
end

function rig.setMotionEnabled(enabled)
	state.motionEnabled = enabled == true
	if not state.motionEnabled then
		for _, entry in state.motors do
			pcall(function()
				entry.motor.C0 = CFrame.new(unpack(entry.base))
			end)
		end
	end
	return state.motionEnabled
end

--- @return table[] 见 api.TARGET_FIELDS
function rig.hats()
	local out = {}
	for _, entry in state.hats do
		local handle = entry.handle
		local limb = entry.limb
		if handle and handle.Parent and limb and limb.Parent then
			-- 目标 = 挂点 CFrame × 原始偏移（这就是"帽子跟着肢体走"）
			local target = limb.CFrame * entry.offset
			local actual = handle.CFrame
			table.insert(out, {
				key = entry.key,
				handle = handle,
				owner = handle.ReceiveAge == 0,
				grounded = false,
				targetPos = { target.X, target.Y, target.Z },
				targetQuat = quatOf(target),
				partPos = { actual.X, actual.Y, actual.Z },
				partQuat = quatOf(actual),
				ltm = 0,
			})
		end
	end
	return out
end

function rig.write(target, frame)
	local handle = target.handle
	if not handle or not handle.Parent then
		return false, "handle 已失效"
	end
	if frame.vel then
		handle.AssemblyLinearVelocity = Vector3.new(frame.vel[1], frame.vel[2], frame.vel[3])
	end
	handle.CFrame = cframeOf(frame.pos, frame.quat)
	if frame.angVel then
		handle.AssemblyAngularVelocity = Vector3.new(frame.angVel[1], frame.angVel[2], frame.angVel[3])
	end
	if frame.massless ~= nil then
		handle.Massless = frame.massless == true
	end
	if frame.props and handle.CustomPhysicalProperties ~= nil then
		handle.CustomPhysicalProperties = PhysicalProperties.new(
			frame.props[1], frame.props[2], frame.props[3], frame.props[4], frame.props[5])
	end
	if frame.canCollide ~= nil then
		handle.CanCollide = frame.canCollide
	end
	return true
end

function rig.claimAction(kind, data)
	if kind == "placeHandles" or kind == "lockHandles" then
		local point = data.point
		if not point then
			return false, "缺 claimarea"
		end
		for _, entry in state.hats do
			local handle = entry.handle
			if handle and handle.Parent then
				handle.CFrame = CFrame.new(point[1], point[2], point[3])
				handle.AssemblyLinearVelocity = Vector3.new(0, 67, 0)
				handle.AssemblyAngularVelocity = Vector3.ZERO
				-- 打断焊点：帽子从此由我们驱动，不再被真身拖着
				for _, child in handle:GetChildren() do
					if child:IsA("JointInstance") then
						pcall(function()
							child:Destroy()
						end)
					end
				end
			end
		end
		return true
	elseif kind == "holdHandles" then
		local point = data.point
		if not point then
			return false, "缺 claimarea"
		end
		for _, entry in state.hats do
			local handle = entry.handle
			if handle and handle.Parent and handle.ReceiveAge == 0 then
				handle.CFrame = CFrame.new(point[1], point[2], point[3])
				handle.AssemblyLinearVelocity = Vector3.new(0, 67, 0)
				handle.AssemblyAngularVelocity = Vector3.ZERO
			end
		end
		return true
	elseif kind == "killAvatar" then
		if not state.warned.kill then
			state.warned.kill = true
			log("info", "S1.5 跳过 killAvatar：不自杀，真身保留")
		end
		return true
	elseif kind == "releaseHandles" or kind == "restoreHumanoid" then
		return true
	end
	return false, "未知动作：" .. tostring(kind)
end

return rig

	end

	registry["ui.tokens"] = function(...)
--!nocheck
-- prism/ui/tokens — 设计令牌（纯数据，不含 Roblox 类型）
--
-- 颜色一律用 "#RRGGBB" 字符串 + 0..1 透明度，由 theme.lua 转成 Color3。
-- 这样 tokens 可以在 luau.exe 里被测试、被工具脚本读出来生成设计文档。

local ctx = ...
local tokens = {}

tokens.version = 1

tokens.space = {
	xxs = 2,
	xs = 4,
	sm = 6,
	md = 10,
	lg = 16,
	xl = 24,
	xxl = 36,
}

tokens.radius = {
	xs = 3,
	sm = 6,
	md = 10,
	lg = 14,
	xl = 20,
	pill = 999,
}

tokens.type = {
	display = { size = 30, weight = "Bold", line = 36, tracking = -0.2 },
	title = { size = 22, weight = "Bold", line = 28, tracking = -0.1 },
	heading = { size = 17, weight = "SemiBold", line = 22, tracking = 0 },
	body = { size = 14, weight = "Medium", line = 19, tracking = 0 },
	label = { size = 12, weight = "SemiBold", line = 16, tracking = 0.2 },
	caption = { size = 11, weight = "Medium", line = 14, tracking = 0.4 },
	mono = { size = 12, weight = "Medium", line = 16, tracking = 0.6, mono = true },
}

-- 动效：只暴露 4 档，避免每个组件自己发明时长
tokens.motion = {
	instant = 0.06,
	fast = 0.12,
	base = 0.18,
	slow = 0.32,
	page = 0.26,
}

-- 注意：in / out 是 Lua 保留字，作为表键必须写成 ["in"]，
-- 这里统一用 easeIn/easeOut，避免下游写成 t.ease.in 直接语法错误。
tokens.ease = {
	standard = "Quart",
	easeOut = "Quint",
	easeIn = "Quad",
	spring = "Back",
}

tokens.elevation = {
	flat = 0,
	raised = 1,
	overlay = 2,
	modal = 3,
	toast = 4,
}

-- 层级：所有 ZIndex 都从这里取，禁止在组件里写魔法数字
tokens.layer = {
	background = 1,
	card = 2,
	sidebar = 10,
	titlebar = 20,
	dropdown = 40,
	toast = 60,
	modal = 100,
	debug = 200,
}

-- 语义色角色。主题只提供这 14 个，组件不许直接写颜色值。
tokens.roles = {
	"bg",          -- 窗口底
	"surface",     -- 卡片
	"surfaceAlt",  -- 卡片内嵌区块
	"surfaceHover",
	"outline",     -- 1px 描边
	"outlineSoft",
	"text",
	"textMuted",
	"textDim",
	"accent",
	"accentText",
	"accentSoft",  -- accent 的 12% 版本，用于 hover 底色
	"danger",
	"success",
	"warning",
	"scrim",       -- 模态遮罩
}

return tokens

	end

	registry["ui.theme"] = function(...)
--!nocheck
-- prism/ui/theme — 主题注册表 + Color3 解析 + 字体映射
--
-- 与 Uhhhhhh 的差别：它是 SetUITheme(index) 里几百行 if，
-- 加一套主题要改 3 处；这里主题只是"16 个颜色 + 2 个中性方向"，
-- 换主题 = 换一张表，其余全自动派生（hover / soft / dim 都由 seed 算出来）。

local ctx = ...
local tokens = ctx.require("ui.tokens")

local theme = {}

-- ===== 颜色工具 =====

local function hexToRgb(hex)
	hex = string.gsub(hex, "#", "")
	local r = tonumber(string.sub(hex, 1, 2), 16) or 255
	local g = tonumber(string.sub(hex, 3, 4), 16) or 255
	local b = tonumber(string.sub(hex, 5, 6), 16) or 255
	return r, g, b
end

local function toColor3(hex)
	local r, g, b = hexToRgb(hex)
	return Color3.fromRGB(r, g, b)
end

local function mix(a, b, alpha)
	local ar, ag, ab = hexToRgb(a)
	local br, bg, bb = hexToRgb(b)
	return Color3.fromRGB(
		math.floor(ar + (br - ar) * alpha + 0.5),
		math.floor(ag + (bg - ag) * alpha + 0.5),
		math.floor(ab + (bb - ab) * alpha + 0.5)
	)
end

theme.toColor3 = toColor3
theme.mix = mix

-- ===== 内置主题 =====
-- seed 是"作者唯一要填的东西"：bg / surface / accent / text / mode。
-- 其余角色在 build() 里派生，保证任何配色都不会出现对比度事故。

theme.presets = {
	["Prism Dark"] = { bg = "#0B0D12", surface = "#141821", accent = "#7B5CFF", text = "#E9ECF5", mode = "dark" },
	["Ink"] = { bg = "#0A0A0A", surface = "#151515", accent = "#F2F2F2", text = "#F7F7F7", mode = "dark" },
	["Sakura"] = { bg = "#150E12", surface = "#221620", accent = "#FF7BA9", text = "#FBEDF3", mode = "dark" },
	["Terminal"] = { bg = "#05080A", surface = "#0B1210", accent = "#43E08F", text = "#DDF6E8", mode = "dark" },
	["Porcelain"] = { bg = "#F4F5F9", surface = "#FFFFFF", accent = "#5B4BFF", text = "#14161C", mode = "light" },
}

theme.names = {}
do
	local names = {}
	for name in theme.presets do
		table.insert(names, name)
	end
	table.sort(names)
	theme.names = names
end

local function build(preset)
	local dark = preset.mode ~= "light"
	local bg = preset.bg
	local surface = preset.surface
	local accent = preset.accent
	local text = preset.text

	local roles = {
		bg = bg,
		surface = surface,
		surfaceAlt = dark and "#1B2029" or "#EDEFF6",
		surfaceHover = dark and "#20262F" or "#E4E7F1",
		outline = dark and "#2A3140" or "#D7DBE6",
		outlineSoft = dark and "#1F242E" or "#E6E9F2",
		text = text,
		textMuted = dark and "#A7B0C3" or "#5B6376",
		textDim = dark and "#6E7688" or "#8A91A3",
		accent = accent,
		accentText = dark and "#0B0D12" or "#FFFFFF",
		accentSoft = dark and "#241E3A" or "#E8E5FF",
		danger = "#FF5D6C",
		success = "#39D98A",
		warning = "#FFC24B",
		scrim = "#000000",
	}
	return {
		name = preset.name,
		mode = preset.mode,
		preset = preset,
		roles = roles,
	}
end

--- 做一个主题对象：theme.color("accent") / theme.alpha("accent", 0.12) / theme.font("title")
function theme.create(name)
	local preset = theme.presets[name] or theme.presets[theme.names[1]]
	preset.name = preset.name or name
	local object = build(preset)
	object.name = name

	local cache = {}
	function object.color(role)
		local cached = cache[role]
		if cached then
			return cached
		end
		local hex = object.roles[role]
		if not hex then
			warn("[prism] unknown color role: " .. tostring(role))
			hex = "#FF00FF" -- 品红显形，便于一眼看出漏了令牌
		end
		cached = toColor3(hex)
		cache[role] = cached
		return cached
	end

	function object.mixColor(role, other, alpha)
		return mix(object.roles[role] or "#FF00FF", object.roles[other] or "#000000", alpha)
	end

	function object.withAlpha(role, alpha)
		local color = object.color(role)
		return Color3.new(color.R, color.G, color.B), alpha
	end

	function object.font(token)
		local spec = tokens.type[token] or tokens.type.body
		local fontEnum
		if spec.mono then
			fontEnum = Enum.Font.Code
		elseif spec.weight == "Bold" then
			fontEnum = Enum.Font.GothamBold
		elseif spec.weight == "SemiBold" then
			fontEnum = Enum.Font.GothamMedium
		else
			fontEnum = Enum.Font.Gotham
		end
		return fontEnum, spec.size, spec.line
	end

	function object.motionToken(token)
		return tokens.motion[token] or tokens.motion.base
	end

	function object.tween(token, ease)
		return TweenInfo.new(object.motionToken(token), Enum.EasingStyle[ease or tokens.ease.standard], Enum.EasingDirection.Out)
	end

	return object
end

return theme

	end

	registry["ui.router"] = function(...)
--!nocheck
-- anathema / src / ui / router.lua
-- 页面路由（栈式）。纯逻辑实现，不依赖任何 Roblox 运行时对象，可离线断言。
--
-- 接口：
--   router.new() -> r
--   r:push(id, meta)          -> true | false, reason
--   r:pop()                   -> id | nil
--   r:replace(id, meta)       -> true | false, reason
--   r:current()               -> id, meta
--   r:stack()                 -> { id1, id2, ... }   副本
--   r:depth()                 -> number
--   r:rememberScroll(id, y)
--   r:recallScroll(id)        -> number           默认 0
--   r:history(limit)          -> { id... }        去重、最新在前、最多 20 条
--   router._selftest()        -> { ok = true } | { ok = false, reason = ... }

local router = {}

-- 常量
local HISTORY_MAX = 20
local HISTORY_DEFAULT = HISTORY_MAX

-- 内部工具：页面 id 合法性（非空字符串）
local function isValidId(id)
	return type(id) == "string" and #id > 0
end

-- 内部工具：复制 meta 表（浅拷贝），保证入参与内部状态隔离
local function copyMeta(meta)
	local out = {}
	if type(meta) ~= "table" then
		return out
	end
	for k, v in pairs(meta) do
		out[k] = v
	end
	return out
end

-- 内部工具：判定两个 id 是否"同一个页面"
local function sameId(a, b)
	return a == b
end

-- 创建一个新的路由器实例
function router.new()
	local self = {}

	-- 栈：数组，元素为 { id = string, meta = table }
	local pages = {}

	-- 滚动位置记录：id -> number（只记最近一次）
	local scroll = {}

	-- 访问历史：数组，索引 1 为最新
	local hist = {}

	-- 内部：向历史头部插入 id，去重并裁剪到上限
	local function histPush(id)
		for i = #hist, 1, -1 do
			if sameId(hist[i], id) then
				table.remove(hist, i)
			end
		end
		table.insert(hist, 1, id)
		while #hist > HISTORY_MAX do
			table.remove(hist, #hist)
		end
	end

	-- 压栈。同 id 连续 push 合并（不增长栈），只更新 meta。
	function self:push(id, meta)
		if not isValidId(id) then
			return false, "invalid-id"
		end

		local top = pages[#pages]
		if top ~= nil and sameId(top.id, id) then
			-- 合并：更新栈顶 meta，同时把未给出的字段保留
			local merged = copyMeta(top.meta)
			if type(meta) == "table" then
				for k, v in pairs(meta) do
					merged[k] = v
				end
			end
			top.meta = merged
			histPush(id)
			return true
		end

		pages[#pages + 1] = { id = id, meta = copyMeta(meta) }
		histPush(id)
		return true
	end

	-- 出栈，返回被弹出的 id；栈空返回 nil 且不报错。
	function self:pop()
		local n = #pages
		if n == 0 then
			return nil
		end
		local top = pages[n]
		pages[n] = nil
		return top.id
	end

	-- 替换栈顶；栈空时等价 push。
	function self:replace(id, meta)
		if not isValidId(id) then
			return false, "invalid-id"
		end

		local n = #pages
		if n == 0 then
			return self:push(id, meta)
		end

		pages[n] = { id = id, meta = copyMeta(meta) }
		histPush(id)
		return true
	end

	-- 当前栈顶 id 与 meta（meta 返回副本，避免外部篡改内部状态）。
	function self:current()
		local n = #pages
		if n == 0 then
			return nil, nil
		end
		local top = pages[n]
		return top.id, copyMeta(top.meta)
	end

	-- 栈内容副本（仅 id，自底向顶）。
	function self:stack()
		local out = table.create and table.create(#pages) or {}
		for i = 1, #pages do
			out[i] = pages[i].id
		end
		return out
	end

	-- 栈深度。
	function self:depth()
		return #pages
	end

	-- 记录某页滚动位置（覆盖写，只保留最近一次）。
	function self:rememberScroll(id, y)
		if not isValidId(id) then
			return false, "invalid-id"
		end
		if type(y) ~= "number" then
			return false, "invalid-y"
		end
		scroll[id] = y
		return true
	end

	-- 读取某页滚动位置，未记录返回 0。
	function self:recallScroll(id)
		if not isValidId(id) then
			return 0
		end
		local y = scroll[id]
		if type(y) ~= "number" then
			return 0
		end
		return y
	end

	-- 最近访问过的页 id：去重、最新在前，最多 HISTORY_MAX 条。
	-- limit 可选，用于再截断；非法 limit 视为默认上限。
	function self:history(limit)
		local cap = HISTORY_DEFAULT
		if type(limit) == "number" and limit == limit and limit > 0 then
			cap = math.floor(limit)
			if cap > HISTORY_MAX then
				cap = HISTORY_MAX
			end
			if cap < 1 then
				cap = 1
			end
		end

		local out = {}
		local count = #hist
		if count > cap then
			count = cap
		end
		for i = 1, count do
			out[i] = hist[i]
		end
		return out
	end

	return self
end

-- 自检：不依赖外部，返回 { ok = true } 或 { ok = false, reason = ... }
function router._selftest()
	local function fail(reason)
		return { ok = false, reason = reason }
	end

	-- 1) 新实例基本状态
	local r = router.new()
	if type(r) ~= "table" then
		return fail("new 未返回 table")
	end
	if r:depth() ~= 0 then
		return fail("初始 depth 应为 0")
	end
	if r:pop() ~= nil then
		return fail("空栈 pop 应返回 nil")
	end
	local cid, cmeta = r:current()
	if cid ~= nil or cmeta ~= nil then
		return fail("空栈 current 应返回 nil, nil")
	end

	-- 2) push / depth / current
	if r:push("home") ~= true then
		return fail("push 首个页面应返回 true")
	end
	if r:depth() ~= 1 then
		return fail("push 后 depth 应为 1")
	end
	cid, cmeta = r:current()
	if cid ~= "home" then
		return fail("current id 应为 home")
	end
	if type(cmeta) ~= "table" then
		return fail("current meta 应为 table")
	end
	cmeta.mutated = true
	local _, freshMeta = r:current()
	if freshMeta.mutated ~= nil then
		return fail("current 返回的 meta 应为独立副本")
	end

	-- 3) 非法 id
	local ok, reason = r:push("")
	if ok ~= false or reason ~= "invalid-id" then
		return fail("空字符串 id 应被拒绝并返回 invalid-id")
	end
	ok, reason = r:push(nil)
	if ok ~= false or reason ~= "invalid-id" then
		return fail("nil id 应被拒绝并返回 invalid-id")
	end
	ok, reason = r:push(123)
	if ok ~= false or reason ~= "invalid-id" then
		return fail("非字符串 id 应被拒绝并返回 invalid-id")
	end
	if r:depth() ~= 1 then
		return fail("非法 push 不应改变 depth")
	end

	-- 4) 连续同 id push 合并，但更新 meta
	r:push("shop", { titleKey = "shop.title" })
	if r:depth() ~= 2 then
		return fail("push 新页面后 depth 应为 2")
	end
	local okSame = r:push("shop", { scrollY = 42 })
	if okSame ~= true then
		return fail("同 id 连续 push 应返回 true")
	end
	if r:depth() ~= 2 then
		return fail("同 id 连续 push 不应增长栈")
	end
	local sid, smeta = r:current()
	if sid ~= "shop" then
		return fail("合并后 current 仍应为 shop")
	end
	if smeta.scrollY ~= 42 then
		return fail("合并应更新 meta.scrollY")
	end
	if smeta.titleKey ~= "shop.title" then
		return fail("合并应保留原有 meta.titleKey")
	end

	-- 5) 非同 id 的 push 正常增长
	r:push("detail")
	if r:depth() ~= 3 then
		return fail("不同 id push 应增长 depth 到 3")
	end

	-- 6) pop
	if r:pop() ~= "detail" then
		return fail("pop 应返回 detail")
	end
	if r:depth() ~= 2 then
		return fail("pop 后 depth 应为 2")
	end

	-- 7) replace 不增加深度，且替换栈顶
	if r:replace("settings") ~= true then
		return fail("replace 应返回 true")
	end
	if r:depth() ~= 2 then
		return fail("replace 不应改变 depth")
	end
	local rid = r:current()
	if rid ~= "settings" then
		return fail("replace 后 current 应为 settings")
	end

	-- 8) replace 非法 id 不改变状态
	ok, reason = r:replace("")
	if ok ~= false or reason ~= "invalid-id" then
		return fail("replace 非法 id 应返回 invalid-id")
	end
	if r:current() ~= "settings" then
		return fail("replace 非法 id 不应改变栈顶")
	end

	-- 9) stack 返回副本
	local s = r:stack()
	if #s ~= 2 or s[1] ~= "home" or s[2] ~= "settings" then
		return fail("stack 内容与顺序错误")
	end
	s[1] = "hacked"
	s[3] = "extra"
	local s2 = r:stack()
	if s2[1] ~= "home" or #s2 ~= 2 then
		return fail("外部修改 stack 副本不应影响内部")
	end

	-- 10) 空栈 replace 等价 push
	local e = router.new()
	if e:replace("only") ~= true then
		return fail("空栈 replace 应等价 push")
	end
	if e:depth() ~= 1 or e:current() ~= "only" then
		return fail("空栈 replace 后应存在一个页面")
	end

	-- 11) 滚动位置
	local sr = router.new()
	if sr:recallScroll("home") ~= 0 then
		return fail("未记录的滚动位置应为 0")
	end
	sr:rememberScroll("home", 128)
	if sr:recallScroll("home") ~= 128 then
		return fail("rememberScroll 后应返回 128")
	end
	sr:rememberScroll("home", 256)
	if sr:recallScroll("home") ~= 256 then
		return fail("rememberScroll 应只记最近一次")
	end

	-- 12) history 去重、最新在前、最多 20 条
	local h = router.new()
	h:push("a")
	h:push("b")
	h:push("a")
	local hist = h:history()
	if #hist ~= 2 then
		return fail("history 应去重到 2 条")
	end
	if hist[1] ~= "a" or hist[2] ~= "b" then
		return fail("history 应最新在前且去重")
	end
	local histLimited = h:history(1)
	if #histLimited ~= 1 or histLimited[1] ~= "a" then
		return fail("history(1) 应只返回最新一条")
	end

	local big = router.new()
	for i = 1, 40 do
		big:push("p" .. tostring(i))
	end
	local bigHist = big:history()
	if #bigHist ~= HISTORY_MAX then
		return fail("history 最多保留 20 条，实际 " .. tostring(#bigHist))
	end
	if bigHist[1] ~= "p40" then
		return fail("history 首项应为最近访问 p40")
	end
	if bigHist[HISTORY_MAX] ~= "p21" then
		return fail("history 末项应为 p21")
	end
	local bigHistOver = big:history(100)
	if #bigHistOver ~= HISTORY_MAX then
		return fail("history(100) 应被裁剪到 20 条")
	end

	-- 13) 栈到底
	local d = router.new()
	d:push("x")
	d:push("y")
	if d:pop() ~= "y" then
		return fail("pop 应返回 y")
	end
	if d:pop() ~= "x" then
		return fail("pop 应返回 x")
	end
	if d:pop() ~= nil then
		return fail("栈空后 pop 应返回 nil")
	end
	if d:depth() ~= 0 then
		return fail("全部弹出后 depth 应为 0")
	end

	return { ok = true }
end

return router

	end

	registry["ui.style_pack"] = function(...)
--!nocheck
-- anathema/ui/style_pack — Style Pack：内置预设 + 校验 + 两个 Pack 之间的插值
--
-- 为什么单独一个文件：布局只有一套（位置 / 层级 / 间距全部来自 ui.tokens，
-- 不可被内容改动），每个动作组只挂一个 Pack；切组 = 在 Pack A → Pack B 之间过渡。
-- 本文件是**纯逻辑**：不碰任何 Roblox 运行时对象（实例、渲染服务、补间、坐标、
-- 引擎颜色类型一律不出现），颜色只以 "#RRGGBB" 字符串存在 —— 所以能在 luau.exe
-- 里离线跑断言。
--
-- 过渡规则（写死，所有 Pack 走同一套过渡器）：
--   颜色 6+2 个   逐通道解析 r/g/b 后线性插值，再四舍五入格式化回 "#RRGGBB"
--   gradientStops 数量不等时把短的一方按"末尾重复"补齐到长的一方，再逐标插值
--   数值          线性插值
--   枚举 5 个     t < 0.5 取 a，t >= 0.5 取 b（字体/大小写/边框/过渡/背景处理不可插值）
--   立绘 render   t < 0.5 取 a 的，否则取 b 的（渲染层自己做双层交叉淡入）
--   blend 返回**新表**，绝不修改入参。

local style_pack = {}

-- ===== 基础工具 =====

local function clamp(value, low, high)
	if value < low then
		return low
	end
	if value > high then
		return high
	end
	return value
end

local function lerp(a, b, t)
	return a + (b - a) * t
end

-- 保留 6 位小数：消掉 0.06 + 0.06 * 0.5 这类浮点尾巴，让离线断言可以用等号
local function round6(value)
	local scaled = value * 1000000
	if scaled >= 0 then
		return math.floor(scaled + 0.5) / 1000000
	end
	return -math.floor(-scaled + 0.5) / 1000000
end

--- 解析 "#RRGGBB"（也接受不带 # 的 6 位与 3 位缩写）-> r, g, b（0..255 整数）
--- 非法输入按黑色处理：UI 不能因为作者写错一个颜色就整页挂掉。
function style_pack.parse(hex)
	local text = type(hex) == "string" and hex or ""
	text = string.gsub(text, "^#", "")
	if #text == 3 then
		text = string.rep(string.sub(text, 1, 1), 2)
			.. string.rep(string.sub(text, 2, 2), 2)
			.. string.rep(string.sub(text, 3, 3), 2)
	end
	if #text ~= 6 or string.find(text, "[^%x]") then
		return 0, 0, 0
	end
	return tonumber(string.sub(text, 1, 2), 16),
		tonumber(string.sub(text, 3, 4), 16),
		tonumber(string.sub(text, 5, 6), 16)
end

--- 格式化 -> "#RRGGBB"：四舍五入并 clamp 到 0..255
function style_pack.format(r, g, b)
	local function channel(value)
		local number = tonumber(value) or 0
		number = math.floor(number + 0.5)
		return clamp(number, 0, 255)
	end
	return string.format("#%02X%02X%02X", channel(r), channel(g), channel(b))
end

--- 是不是一个合法颜色字面量（"#RRGGBB" / "#RGB" / 不带 #）
local function isHex(value)
	if type(value) ~= "string" then
		return false
	end
	local text = string.gsub(value, "^#", "")
	if #text == 3 then
		return string.find(text, "^%x%x%x$") ~= nil
	end
	return #text == 6 and string.find(text, "^%x%x%x%x%x%x$") ~= nil
end

-- sRGB 线性化（WCAG 2.x）
local function linearize(channel)
	local c = clamp(tonumber(channel) or 0, 0, 255) / 255
	if c <= 0.03928 then
		return c / 12.92
	end
	return ((c + 0.055) / 1.055) ^ 2.4
end

--- 相对亮度 0..1（WCAG 公式，含 sRGB 线性化）
function style_pack.luminance(hex)
	local r, g, b = style_pack.parse(hex)
	return 0.2126 * linearize(r) + 0.7152 * linearize(g) + 0.0722 * linearize(b)
end

--- 对比度：(L1 + 0.05) / (L2 + 0.05)，L1 >= L2
function style_pack.contrast(hexA, hexB)
	local la, lb = style_pack.luminance(hexA), style_pack.luminance(hexB)
	if la < lb then
		la, lb = lb, la
	end
	return (la + 0.05) / (lb + 0.05)
end

--- 颜色插值：逐通道线性插值，取整后格式化
local function blendColor(hexA, hexB, t)
	local r1, g1, b1 = style_pack.parse(hexA)
	local r2, g2, b2 = style_pack.parse(hexB)
	return style_pack.format(lerp(r1, r2, t), lerp(g1, g2, t), lerp(b1, b2, t))
end

-- ===== 字段与 kind 表 =====
-- kind 决定 blend 怎么处理该字段；新增字段必须在这里登记，否则 blend 会漏掉它。
local FIELD_KIND = {
	bg = "color",
	bgTint = "color",
	accent = "color",
	text = "color",
	glow = "color",
	stroke = "color",
	frameStroke = "color",
	renderTint = "color",

	gradientStops = "stops",

	gradientRotation = "number",
	titleSize = "number",
	tracking = "number",
	density = "number",
	speed = "number",
	duration = "number",

	fontSet = "pick",
	letterCase = "pick",
	frameShape = "pick",
	transition = "pick",
	bgTreatment = "pick",
	render = "pick", -- 立绘：中点切换，再由渲染层做双层交叉淡入
}

-- 输出表的稳定字段顺序（便于人读断言失败时的 diff）
local FIELD_ORDER = {
	"bg", "bgTint", "accent", "text", "glow", "stroke",
	"gradientStops", "gradientRotation",
	"fontSet", "titleSize", "tracking", "letterCase",
	"frameShape", "frameStroke",
	"bgTreatment", "density", "speed",
	"transition", "duration",
	"render", "renderTint",
}

-- ===== 枚举白名单（未知值一律拒绝，见 spec 6.3）=====
local FONT_SETS = { wide = true, creative = true, clean = true, mono = true, display = true }
local LETTER_CASES = { upper = true, normal = true }
local FRAME_SHAPES = { diamond = true, square = true, none = true }
local BG_TREATMENTS = { grid = true, scanline = true, particles = true, none = true }
local TRANSITIONS = { fade = true, slide = true, wipe = true }

local ENUM_SET = {
	fontSet = FONT_SETS,
	letterCase = LETTER_CASES,
	frameShape = FRAME_SHAPES,
	bgTreatment = BG_TREATMENTS,
	transition = TRANSITIONS,
}

-- 色标数量上下限（spec：4~8 个）
style_pack.STOPS_MIN = 4
style_pack.STOPS_MAX = 8
-- 自动安全模式阈值（WCAG AA 正文）
style_pack.CONTRAST_MIN = 4.5

style_pack.FONT_SETS = FONT_SETS
style_pack.BG_TREATMENTS = BG_TREATMENTS
style_pack.FRAME_SHAPES = FRAME_SHAPES
style_pack.TRANSITIONS = TRANSITIONS
style_pack.LETTER_CASES = LETTER_CASES

-- ===== 色标工具 =====

local function copyStops(stops)
	local out = {}
	if type(stops) == "table" then
		for index = 1, #stops do
			local stop = stops[index]
			if isHex(stop) then
				out[#out + 1] = stop
			end
		end
	end
	return out
end

--- 把短的一方按"末尾重复"补齐到目标长度
local function padStops(stops, target)
	local out = copyStops(stops)
	local last = out[#out]
	while #out < target do
		out[#out + 1] = last
	end
	return out
end

--- 读取色标：非法 / 缺失时退回给定兜底
local function readStops(stops, fallback)
	local out = copyStops(stops)
	if #out == 0 then
		return copyStops(fallback)
	end
	return out
end

-- ===== 默认值（字段缺省一律落回这里）=====

local DEFAULTS = {
	bg = "#0B0D12",
	bgTint = "#16182A",
	accent = "#7B5CFF",
	text = "#E9ECF5",
	glow = "#7B5CFF",
	stroke = "#2A3140",
	gradientStops = { "#0B0D12", "#181428", "#241E3A", "#0B0D12" },
	gradientRotation = 90,
	fontSet = "clean",
	titleSize = 34,
	tracking = 0.02,
	letterCase = "normal",
	frameShape = "square",
	frameStroke = "#2A3140",
	bgTreatment = "none",
	density = 0,
	speed = 0,
	transition = "fade",
	duration = 0.22,
	render = nil,
	renderTint = "#FFFFFF",
}

style_pack.DEFAULTS = DEFAULTS

-- ===== 结构化错误（与 api.CODES.UI_THEME = 2002 对齐）=====

--- 构造一条 UI_THEME 错误；本文件不依赖 api.lua，所以在这里内联字段
function style_pack.err(detail)
	return { code = 2002, name = "UI_THEME", detail = detail }
end

-- ===== 内置 5 套预设 =====
-- 只读约定：resolve 返回的是副本，调用方随便改都不会污染这里。

local PRESETS = {}

-- 紫罗兰 + 干净无衬线 + 无背景处理（与 prism 现有观感一致）
PRESETS.default = {
	bg = "#0B0D12",
	bgTint = "#16182A",
	accent = "#7B5CFF",
	text = "#E9ECF5",
	glow = "#7B5CFF",
	stroke = "#2A3140",
	gradientStops = { "#0B0D12", "#181428", "#241E3A", "#0B0D12" },
	gradientRotation = 90,
	fontSet = "clean",
	titleSize = 34,
	tracking = 0.02,
	letterCase = "normal",
	frameShape = "square",
	frameStroke = "#2A3140",
	bgTreatment = "none",
	density = 0,
	speed = 0,
	transition = "fade",
	duration = 0.22,
	render = nil,
	renderTint = "#FFFFFF",
}

-- 深红 + 斜向网格 + 宽体字 + 菱形立绘框 + 红辉光（24H 的 Dual Solaris）
PRESETS.crimson = {
	bg = "#1A0508",
	bgTint = "#3D0A12",
	accent = "#FF2E43",
	text = "#FFE9EC",
	glow = "#FF2E43",
	stroke = "#7A1520",
	gradientStops = { "#2A0710", "#140405", "#3D0A12", "#1A0508" },
	gradientRotation = 90,
	fontSet = "wide",
	titleSize = 40,
	tracking = 0.06,
	letterCase = "upper",
	frameShape = "diamond",
	frameStroke = "#FF2E43",
	bgTreatment = "grid",
	density = 0.6,
	speed = 0.15,
	transition = "wipe",
	duration = 0.26,
	render = "render.dual_solaris",
	renderTint = "#FFFFFF",
}

-- 黑→白渐变 + 字距拉大 + 方形立绘框 + 极简（Genesis 的 Lightning Cannon）
PRESETS.mono = {
	bg = "#0A0A0A",
	bgTint = "#1C1C1C",
	accent = "#FFFFFF",
	text = "#F2F2F2",
	glow = "#FFFFFF",
	stroke = "#3A3A3A",
	gradientStops = { "#000000", "#2A2A2A", "#C8C8C8", "#FFFFFF" },
	gradientRotation = 90,
	fontSet = "creative",
	titleSize = 36,
	tracking = 0.12,
	letterCase = "upper",
	frameShape = "square",
	frameStroke = "#FFFFFF",
	bgTreatment = "scanline",
	density = 0.25,
	speed = 0.05,
	transition = "fade",
	duration = 0.3,
	render = "render.lightning_cannon",
	renderTint = "#FFFFFF",
}

-- 冷蓝 + 扫描线 + 细体
PRESETS.ice = {
	bg = "#061520",
	bgTint = "#0E2C42",
	accent = "#5FD3FF",
	text = "#E6F6FF",
	glow = "#8FE6FF",
	stroke = "#1E4A66",
	gradientStops = { "#061520", "#0E2C42", "#1B5573", "#0A1A26" },
	gradientRotation = 90,
	fontSet = "clean",
	titleSize = 34,
	tracking = 0.04,
	letterCase = "normal",
	frameShape = "square",
	frameStroke = "#5FD3FF",
	bgTreatment = "scanline",
	density = 0.3,
	speed = 0.08,
	transition = "slide",
	duration = 0.24,
	render = nil,
	renderTint = "#BFEFFF",
}

-- 纯黑 + 等宽字 + 绿色 accent
PRESETS.terminal = {
	bg = "#05080A",
	bgTint = "#0B1210",
	accent = "#43E08F",
	text = "#DDF6E8",
	glow = "#43E08F",
	stroke = "#1C3A2C",
	gradientStops = { "#000000", "#07130D", "#0E2A1C", "#05080A" },
	gradientRotation = 180,
	fontSet = "mono",
	titleSize = 30,
	tracking = 0.08,
	letterCase = "upper",
	frameShape = "none",
	frameStroke = "#43E08F",
	bgTreatment = "particles",
	density = 0.2,
	speed = 0.4,
	transition = "fade",
	duration = 0.2,
	render = nil,
	renderTint = "#C8F5DC",
}

style_pack.PRESETS = PRESETS

-- ===== 名字列表（稳定排序）=====

--- 全部预设名，按字母序（稳定，便于 UI 里做列表顺序）
function style_pack.names()
	local list = {}
	for name in PRESETS do
		list[#list + 1] = name
	end
	table.sort(list)
	return list
end

--- 名字是否指向真实预设
function style_pack.isKnown(name)
	return type(name) == "string" and PRESETS[name] ~= nil
end

-- ===== 复制 / 归一化 =====

--- 结构化深拷贝（gradientStops 独立成新表，避免共享数组被就地改）
local function copyPack(source)
	local out = {}
	if type(source) ~= "table" then
		return out
	end
	for key, value in source do
		if key == "gradientStops" then
			out.gradientStops = copyStops(value)
		else
			out[key] = value
		end
	end
	return out
end

local function numberOr(value, fallback)
	local number = tonumber(value)
	if number == nil then
		return fallback
	end
	-- 过滤 nan / inf：它们会污染插值结果且字符串化后不可读
	if number ~= number or number == math.huge or number == -math.huge then
		return fallback
	end
	return number
end

--- 归一化：补齐缺省字段、枚举白名单回退、数值范围钳制、色标数量拉到 4~8
local function finalize(pack)
	for _, key in FIELD_ORDER do
		local kind = FIELD_KIND[key]
		local value = pack[key]

		if kind == "color" then
			if not isHex(value) then
				value = DEFAULTS[key]
			end
			pack[key] = value

		elseif kind == "stops" then
			local stops = readStops(value, DEFAULTS.gradientStops)
			if #stops < style_pack.STOPS_MIN then
				stops = padStops(stops, style_pack.STOPS_MIN)
			elseif #stops > style_pack.STOPS_MAX then
				local trimmed = {}
				for index = 1, style_pack.STOPS_MAX do
					trimmed[index] = stops[index]
				end
				stops = trimmed
			end
			pack.gradientStops = stops

		elseif kind == "number" then
			local number = numberOr(value, DEFAULTS[key])
			if key == "gradientRotation" then
				number = clamp(number, 0, 360)
			elseif key == "density" then
				number = clamp(number, 0, 1)
			else
				number = math.max(number, 0)
			end
			pack[key] = number

		elseif kind == "pick" then
			if key == "render" then
				-- render 允许 nil：表示"该 Pack 无预览图"，渲染层用程序化渐变占位
				if value ~= nil and type(value) ~= "string" then
					value = DEFAULTS.render
				end
				pack.render = value
			else
				local whitelist = ENUM_SET[key]
				if whitelist == nil or not whitelist[value] then
					value = DEFAULTS[key]
				end
				pack[key] = value
			end
		end
	end
	return pack
end

--- 单条 override 的就地应用；返回 nil 表示成功，返回字符串表示被拒绝的原因
local function applyOverride(pack, key, value)
	local kind = FIELD_KIND[key]
	if kind == nil then
		-- spec 6.1：只能覆盖 Pack 字段，不能加新字段
		return "未知字段 '" .. tostring(key) .. "'，Style Pack 不接受新字段"
	end

	if kind == "color" then
		if not isHex(value) then
			return "字段 " .. key .. " 必须是 \"#RRGGBB\"，收到 " .. tostring(value)
		end
		local text = value
		if string.sub(text, 1, 1) ~= "#" then
			text = "#" .. text
		end
		pack[key] = text
		return nil
	end

	if kind == "number" then
		local number = numberOr(value, nil)
		if number == nil then
			return "字段 " .. key .. " 必须是有限数字，收到 " .. tostring(value)
		end
		pack[key] = number
		return nil
	end

	if kind == "stops" then
		if type(value) ~= "table" then
			return "字段 gradientStops 必须是数组，收到 " .. tostring(value)
		end
		local stops = {}
		for index = 1, #value do
			local stop = value[index]
			if not isHex(stop) then
				return "gradientStops[" .. tostring(index) .. "] 不是合法颜色：" .. tostring(stop)
			end
			stops[index] = stop
		end
		if #stops == 0 then
			return "字段 gradientStops 不能为空数组"
		end
		pack.gradientStops = stops
		return nil
	end

	-- kind == "pick"
	if key == "render" then
		if value ~= nil and type(value) ~= "string" then
			return "字段 render 必须是 string 或 nil，收到 " .. tostring(value)
		end
		pack.render = value
		return nil
	end

	local whitelist = ENUM_SET[key]
	if whitelist == nil or not whitelist[value] then
		return "字段 " .. key .. " 不在白名单内：" .. tostring(value)
	end
	pack[key] = value
	return nil
end

-- ===== 解析：名字 + 覆盖 -> Pack =====

--- 按名字取预设并叠加 overrides。
--- 未知名字 -> default + err(UI_THEME)；页面照常显示，不抛错。
--- name 为 nil 表示"作者没指定风格"，按 default 处理且不算错误。
--- @return table pack, table? err
function style_pack.resolve(name, overrides)
	local err = nil
	local preset = nil

	if name == nil then
		preset = PRESETS.default
	elseif type(name) == "string" and PRESETS[name] ~= nil then
		preset = PRESETS[name]
	else
		preset = PRESETS.default
		err = style_pack.err("未知风格预设 " .. tostring(name) .. "，已回退 default")
	end

	local pack = copyPack(preset)

	if overrides ~= nil then
		if type(overrides) ~= "table" then
			err = err or style_pack.err("styleOverrides 必须是 table，收到 " .. type(overrides))
		else
			-- 先按名字排序再应用：同一份 overrides 无论哈希顺序如何都得到一致结果
			local keys = {}
			for key in overrides do
				keys[#keys + 1] = key
			end
			table.sort(keys, function(left, right)
				return tostring(left) < tostring(right)
			end)
			for _, key in keys do
				local problem = applyOverride(pack, key, overrides[key])
				if problem ~= nil then
					err = err or style_pack.err(problem)
				end
			end
		end
	end

	return finalize(pack), err
end

--- 校验一份 Pack 是否完全合规（离线测试用；resolve 已经保证它通过）
--- @return boolean ok, string? detail
function style_pack.validate(pack)
	if type(pack) ~= "table" then
		return false, "pack 必须是 table"
	end
	for _, key in FIELD_ORDER do
		local kind = FIELD_KIND[key]
		local value = pack[key]
		if kind == "color" then
			if not isHex(value) then
				return false, key .. " 不是合法颜色"
			end
		elseif kind == "stops" then
			if type(value) ~= "table" then
				return false, "gradientStops 必须是数组"
			end
			if #value < style_pack.STOPS_MIN or #value > style_pack.STOPS_MAX then
				return false, "gradientStops 数量必须在 4~8 之间，实际 " .. tostring(#value)
			end
			for index = 1, #value do
				if not isHex(value[index]) then
					return false, "gradientStops[" .. tostring(index) .. "] 不是合法颜色"
				end
			end
		elseif kind == "number" then
			if type(value) ~= "number" or value ~= value then
				return false, key .. " 必须是数字"
			end
			if key == "gradientRotation" and (value < 0 or value > 360) then
				return false, "gradientRotation 必须在 0~360"
			end
			if key == "density" and (value < 0 or value > 1) then
				return false, "density 必须在 0~1"
			end
		elseif kind == "pick" then
			if key == "render" then
				if value ~= nil and type(value) ~= "string" then
					return false, "render 必须是 string 或 nil"
				end
			else
				local whitelist = ENUM_SET[key]
				if whitelist == nil or not whitelist[value] then
					return false, key .. " 不在白名单内：" .. tostring(value)
				end
			end
		end
	end
	return true, nil
end

-- ===== 插值：两个 Pack -> 过渡态 =====

--- 把 a、b 在 t 处插值成新 state。t 先 clamp 到 [0,1]。
--- 纯函数：只读 a / b，返回新表；gradientStops 也是新数组。
--- @param a table Pack A
--- @param b table Pack B
--- @param t number 0..1
--- @return table state
function style_pack.blend(a, b, t)
	if type(a) ~= "table" then
		a = DEFAULTS
	end
	if type(b) ~= "table" then
		b = a
	end
	t = clamp(numberOr(t, 0), 0, 1)

	-- 先补默认值：允许调用方只传部分字段
	local left = finalize(copyPack(a))
	local right = finalize(copyPack(b))

	local state = {}

	for _, key in FIELD_ORDER do
		local kind = FIELD_KIND[key]

		if kind == "color" then
			state[key] = blendColor(left[key], right[key], t)

		elseif kind == "number" then
			state[key] = round6(lerp(left[key], right[key], t))

		elseif kind == "stops" then
			-- 数量不等：短的一方按"末尾重复"补齐到长的一方，再逐色标插值
			local count = math.max(#left.gradientStops, #right.gradientStops)
			local stopsLeft = padStops(left.gradientStops, count)
			local stopsRight = padStops(right.gradientStops, count)
			local stops = {}
			for index = 1, count do
				stops[index] = blendColor(stopsLeft[index], stopsRight[index], t)
			end
			state.gradientStops = stops

		elseif kind == "pick" then
			-- 不可插值项在中点硬切
			if t < 0.5 then
				state[key] = left[key]
			else
				state[key] = right[key]
			end
		end
	end

	return state
end

-- ===== 自动安全模式 =====

--- text 对 bg 的对比度 < 4.5 时，把 text 推到纯白或纯黑（取对比更高的一侧）。
--- 返回新表，不改入参；已经达标时原样返回副本。
function style_pack.contrastGuard(state)
	local out = finalize(copyPack(state))

	local bg = out.bg
	if style_pack.contrast(out.text, bg) >= style_pack.CONTRAST_MIN then
		return out
	end

	local white, black = "#FFFFFF", "#000000"
	if style_pack.contrast(white, bg) >= style_pack.contrast(black, bg) then
		out.text = white
	else
		out.text = black
	end
	return out
end

return style_pack

	end

	registry["ui.i18n.zh"] = function(...)
--!nocheck
-- anathema 简体中文文案表
-- 结构：扁平表，key 用点分命名空间（nav.home / reanim.start ...），value 一律为 string
-- 模板占位用 {name} 形式，由 index.lua 的 i18n.t(key, vars) 替换
-- 纯逻辑：不引用任何 Roblox API，可在 luau.exe 中离线 require

return {
    -- 导航（7 项）
    ["nav.home"] = "首页",
    ["nav.reanimate"] = "重动画",
    ["nav.movesets"] = "动作组",
    ["nav.dances"] = "舞蹈",
    ["nav.store"] = "市场",
    ["nav.credits"] = "致谢",
    ["nav.settings"] = "设置",

    -- Reanimate 页
    ["reanim.title"] = "重动画",
    ["reanim.start"] = "启动重动画",
    ["reanim.stop"] = "停止",
    ["reanim.respawn"] = "重生",
    ["reanim.refresh"] = "重建帽子映射",
    ["reanim.mode.hats"] = "帽子",
    ["reanim.mode.limbs"] = "肢体",
    ["reanim.scale"] = "角色体型",
    ["reanim.speed"] = "倍速",
    ["reanim.target"] = "目标",
    ["reanim.target.self"] = "自身",
    ["reanim.target.player"] = "指定玩家",
    ["reanim.status.idle"] = "未启动",
    ["reanim.status.claiming"] = "接管中",
    ["reanim.status.live"] = "运行中",
    ["reanim.status.failed"] = "已停机",
    ["reanim.status.waiting"] = "等待目标",
    ["reanim.status.stopped"] = "已停止",
    ["reanim.status.error"] = "出错",
    ["reanim.drift"] = "漂移",
    ["reanim.drift.reset"] = "归零漂移",
    ["reanim.hint"] = "选好模式后按启动，会按当前角色重建关节映射。",
    ["reanim.needTarget"] = "请先选择目标玩家",
    ["reanim.sockets.empty"] = "该角色没有可接管的关节",
    ["reanim.stopAll"] = "全部停止",

    -- Movesets 页
    ["movesets.title"] = "动作组",
    ["movesets.use"] = "使用这组",
    ["movesets.config"] = "配置",
    ["movesets.count"] = "共 {n} 组",
    ["movesets.search"] = "搜索动作组",
    ["movesets.empty"] = "还没有动作组，先导入一组。",
    ["movesets.speed"] = "播放速度 {speed}x",
    ["movesets.loop"] = "循环播放",
    ["movesets.preview"] = "预览",
    ["movesets.applied"] = "已应用：{name}",
    ["movesets.delete"] = "删除",
    ["movesets.import"] = "导入",
    ["movesets.slot"] = "第 {i} / {n} 组",

    -- 舞蹈页
    ["dances.title"] = "舞蹈",
    ["dances.play"] = "播放",
    ["dances.stop"] = "停止",
    ["dances.loop"] = "循环",
    ["dances.speed"] = "速度",
    ["dances.empty"] = "没有可用舞蹈。",
    ["dances.count"] = "共 {n} 支舞蹈",

    -- 市场页
    ["store.title"] = "市场",
    ["store.buy"] = "购买",
    ["store.owned"] = "已拥有",
    ["store.search"] = "搜索商品",
    ["store.price"] = "{price} 积分",
    ["store.empty"] = "商品暂未上架。",
    ["store.coming"] = "即将推出",

    -- 致谢页
    ["credits.title"] = "致谢",
    ["credits.version"] = "版本 {version}",
    ["credits.thanks"] = "感谢 {name} 的测试与反馈。",
    ["credits.source"] = "源码",
    ["credits.copy"] = "复制链接",

    -- 设置页
    ["settings.title"] = "设置",
    ["settings.language"] = "界面语言",
    ["settings.theme"] = "主题",
    ["settings.audio"] = "音频",
    ["settings.theme.dark"] = "深色",
    ["settings.theme.light"] = "浅色",
    ["settings.volume"] = "音量 {value}%",
    ["settings.devMode"] = "开发模式",
    ["settings.missingKeys"] = "缺键记录（{n}）",
    ["settings.missing.none"] = "没有发现缺键",
    ["settings.clearMissing"] = "清空记录",
    ["settings.save"] = "保存",
    ["settings.reset"] = "恢复默认",
    ["settings.language.hint"] = "切换后立即生效。",

    -- 常见动作
    ["common.retry"] = "重试",
    ["common.cancel"] = "取消",
    ["common.ok"] = "确定",
    ["common.confirm"] = "确认",
    ["common.close"] = "关闭",
    ["common.back"] = "返回",
    ["common.prev"] = "上一个",
    ["common.next"] = "下一个",
    ["common.yes"] = "是",
    ["common.no"] = "否",
    ["common.on"] = "开",
    ["common.off"] = "关",
    ["common.loading"] = "加载中…",
    ["common.comingSoon"] = "即将推出",
    ["common.error"] = "出错了：{message}",
    ["common.search"] = "搜索",
    ["common.empty"] = "暂无内容",
    ["common.copy"] = "复制",
    ["common.copied"] = "已复制",
    ["common.enabled"] = "已启用",
    ["common.disabled"] = "已禁用",
}

	end

	registry["ui.i18n.en"] = function(...)
--!nocheck
-- anathema English string table
-- Structure: flat table, dotted namespace keys (nav.home / reanim.start ...), values are strings
-- Placeholders use the {name} form and are filled by i18n.t(key, vars) in index.lua
-- Key set must match zh.lua one-to-one; comments stay Chinese per project convention

return {
    -- 导航（7 项）
    ["nav.home"] = "Home",
    ["nav.reanimate"] = "Reanimate",
    ["nav.movesets"] = "Movesets",
    ["nav.dances"] = "Dances",
    ["nav.store"] = "Store",
    ["nav.credits"] = "Credits",
    ["nav.settings"] = "Settings",

    -- Reanimate 页
    ["reanim.title"] = "Reanimate",
    ["reanim.start"] = "Start reanimate",
    ["reanim.stop"] = "Stop",
    ["reanim.respawn"] = "Respawn",
    ["reanim.refresh"] = "Rebuild hat map",
    ["reanim.mode.hats"] = "Hats",
    ["reanim.mode.limbs"] = "Limbs",
    ["reanim.scale"] = "Body scale",
    ["reanim.speed"] = "Speed",
    ["reanim.target"] = "Target",
    ["reanim.target.self"] = "Self",
    ["reanim.target.player"] = "Other player",
    ["reanim.status.idle"] = "Idle",
    ["reanim.status.claiming"] = "Claiming",
    ["reanim.status.live"] = "Live",
    ["reanim.status.failed"] = "Failed",
    ["reanim.status.waiting"] = "Waiting for targets",
    ["reanim.status.stopped"] = "Stopped",
    ["reanim.status.error"] = "Error",
    ["reanim.drift"] = "Drift",
    ["reanim.drift.reset"] = "Reset drift",
    ["reanim.hint"] = "Pick a mode, then start; joints are re-mapped for the current character.",
    ["reanim.needTarget"] = "Pick a target player first",
    ["reanim.sockets.empty"] = "This character has no claimable joints",
    ["reanim.stopAll"] = "Stop all",

    -- Movesets 页
    ["movesets.title"] = "Movesets",
    ["movesets.use"] = "Use this set",
    ["movesets.config"] = "Configure",
    ["movesets.count"] = "{n} sets",
    ["movesets.search"] = "Search movesets",
    ["movesets.empty"] = "No movesets yet — import one first.",
    ["movesets.speed"] = "Playback speed {speed}x",
    ["movesets.loop"] = "Loop",
    ["movesets.preview"] = "Preview",
    ["movesets.applied"] = "Applied: {name}",
    ["movesets.delete"] = "Delete",
    ["movesets.import"] = "Import",
    ["movesets.slot"] = "Set {i} of {n}",

    -- 舞蹈页
    ["dances.title"] = "Dances",
    ["dances.play"] = "Play",
    ["dances.stop"] = "Stop",
    ["dances.loop"] = "Loop",
    ["dances.speed"] = "Speed",
    ["dances.empty"] = "No dances available.",
    ["dances.count"] = "{n} dances",

    -- 市场页
    ["store.title"] = "Store",
    ["store.buy"] = "Buy",
    ["store.owned"] = "Owned",
    ["store.search"] = "Search items",
    ["store.price"] = "{price} credits",
    ["store.empty"] = "Nothing in the store yet.",
    ["store.coming"] = "Coming soon",

    -- 致谢页
    ["credits.title"] = "Credits",
    ["credits.version"] = "Version {version}",
    ["credits.thanks"] = "Thanks to {name} for testing and feedback.",
    ["credits.source"] = "Source",
    ["credits.copy"] = "Copy link",

    -- 设置页
    ["settings.title"] = "Settings",
    ["settings.language"] = "Language",
    ["settings.theme"] = "Theme",
    ["settings.audio"] = "Audio",
    ["settings.theme.dark"] = "Dark",
    ["settings.theme.light"] = "Light",
    ["settings.volume"] = "Volume {value}%",
    ["settings.devMode"] = "Dev mode",
    ["settings.missingKeys"] = "Missing keys ({n})",
    ["settings.missing.none"] = "No missing keys found",
    ["settings.clearMissing"] = "Clear log",
    ["settings.save"] = "Save",
    ["settings.reset"] = "Reset to defaults",
    ["settings.language.hint"] = "Applies immediately.",

    -- 常见动作
    ["common.retry"] = "Retry",
    ["common.cancel"] = "Cancel",
    ["common.ok"] = "OK",
    ["common.confirm"] = "Confirm",
    ["common.close"] = "Close",
    ["common.back"] = "Back",
    ["common.prev"] = "Previous",
    ["common.next"] = "Next",
    ["common.yes"] = "Yes",
    ["common.no"] = "No",
    ["common.on"] = "On",
    ["common.off"] = "Off",
    ["common.loading"] = "Loading…",
    ["common.comingSoon"] = "Coming soon",
    ["common.error"] = "Error: {message}",
    ["common.search"] = "Search",
    ["common.empty"] = "Nothing here",
    ["common.copy"] = "Copy",
    ["common.copied"] = "Copied",
    ["common.enabled"] = "Enabled",
    ["common.disabled"] = "Disabled",
}

	end

	registry["ui.i18n"] = function(...)
--!nocheck
-- anathema i18n 入口：中英双语、扁平点分 key、缺键必须看得见
-- 纯逻辑：只用 Lua 标准库，不引用任何 Roblox API（game: / Instance / RunService 都没有），
-- 因此可以在 luau.exe 里离线 require 并直接跑。
--
-- 加载策略：先尝试 require 同目录的 zh / en 模块；如果环境里没有 require（离线），
-- 就退回下面的内联副本。内联副本与 zh.lua / en.lua 逐条一致，
-- 键集合可通过 i18n.keys() 做 lint 比对。

-- 内联兜底：简体中文
local FALLBACK_ZH = {
    -- 导航（7 项）
    ["nav.home"] = "首页",
    ["nav.reanimate"] = "重动画",
    ["nav.movesets"] = "动作组",
    ["nav.dances"] = "舞蹈",
    ["nav.store"] = "市场",
    ["nav.credits"] = "致谢",
    ["nav.settings"] = "设置",

    -- Reanimate 页
    ["reanim.title"] = "重动画",
    ["reanim.start"] = "启动重动画",
    ["reanim.stop"] = "停止",
    ["reanim.respawn"] = "重生",
    ["reanim.refresh"] = "重建帽子映射",
    ["reanim.mode.hats"] = "帽子",
    ["reanim.mode.limbs"] = "肢体",
    ["reanim.scale"] = "角色体型",
    ["reanim.speed"] = "倍速",
    ["reanim.target"] = "目标",
    ["reanim.target.self"] = "自身",
    ["reanim.target.player"] = "指定玩家",
    ["reanim.status.idle"] = "未启动",
    ["reanim.status.claiming"] = "接管中",
    ["reanim.status.live"] = "运行中",
    ["reanim.status.stopped"] = "已停止",
    ["reanim.status.error"] = "出错",
    ["reanim.drift"] = "漂移",
    ["reanim.drift.reset"] = "归零漂移",
    ["reanim.hint"] = "选好模式后按启动，会按当前角色重建关节映射。",
    ["reanim.needTarget"] = "请先选择目标玩家",
    ["reanim.sockets.empty"] = "该角色没有可接管的关节",
    ["reanim.stopAll"] = "全部停止",

    -- Movesets 页
    ["movesets.title"] = "动作组",
    ["movesets.use"] = "使用这组",
    ["movesets.config"] = "配置",
    ["movesets.count"] = "共 {n} 组",
    ["movesets.search"] = "搜索动作组",
    ["movesets.empty"] = "还没有动作组，先导入一组。",
    ["movesets.speed"] = "播放速度 {speed}x",
    ["movesets.loop"] = "循环播放",
    ["movesets.preview"] = "预览",
    ["movesets.applied"] = "已应用：{name}",
    ["movesets.delete"] = "删除",
    ["movesets.import"] = "导入",
    ["movesets.slot"] = "第 {i} / {n} 组",

    -- 舞蹈页
    ["dances.title"] = "舞蹈",
    ["dances.play"] = "播放",
    ["dances.stop"] = "停止",
    ["dances.loop"] = "循环",
    ["dances.speed"] = "速度",
    ["dances.empty"] = "没有可用舞蹈。",
    ["dances.count"] = "共 {n} 支舞蹈",

    -- 市场页
    ["store.title"] = "市场",
    ["store.buy"] = "购买",
    ["store.owned"] = "已拥有",
    ["store.search"] = "搜索商品",
    ["store.price"] = "{price} 积分",
    ["store.empty"] = "商品暂未上架。",
    ["store.coming"] = "即将推出",

    -- 致谢页
    ["credits.title"] = "致谢",
    ["credits.version"] = "版本 {version}",
    ["credits.thanks"] = "感谢 {name} 的测试与反馈。",
    ["credits.source"] = "源码",
    ["credits.copy"] = "复制链接",

    -- 设置页
    ["settings.title"] = "设置",
    ["settings.language"] = "界面语言",
    ["settings.theme"] = "主题",
    ["settings.audio"] = "音频",
    ["settings.theme.dark"] = "深色",
    ["settings.theme.light"] = "浅色",
    ["settings.volume"] = "音量 {value}%",
    ["settings.devMode"] = "开发模式",
    ["settings.missingKeys"] = "缺键记录（{n}）",
    ["settings.missing.none"] = "没有发现缺键",
    ["settings.clearMissing"] = "清空记录",
    ["settings.save"] = "保存",
    ["settings.reset"] = "恢复默认",
    ["settings.language.hint"] = "切换后立即生效。",

    -- 常见动作
    ["common.retry"] = "重试",
    ["common.cancel"] = "取消",
    ["common.ok"] = "确定",
    ["common.confirm"] = "确认",
    ["common.close"] = "关闭",
    ["common.back"] = "返回",
    ["common.prev"] = "上一个",
    ["common.next"] = "下一个",
    ["common.yes"] = "是",
    ["common.no"] = "否",
    ["common.on"] = "开",
    ["common.off"] = "关",
    ["common.loading"] = "加载中…",
    ["common.comingSoon"] = "即将推出",
    ["common.error"] = "出错了：{message}",
    ["common.search"] = "搜索",
    ["common.empty"] = "暂无内容",
    ["common.copy"] = "复制",
    ["common.copied"] = "已复制",
    ["common.enabled"] = "已启用",
    ["common.disabled"] = "已禁用",
}

-- 内联兜底：英文
local FALLBACK_EN = {
    -- 导航（7 项）
    ["nav.home"] = "Home",
    ["nav.reanimate"] = "Reanimate",
    ["nav.movesets"] = "Movesets",
    ["nav.dances"] = "Dances",
    ["nav.store"] = "Store",
    ["nav.credits"] = "Credits",
    ["nav.settings"] = "Settings",

    -- Reanimate 页
    ["reanim.title"] = "Reanimate",
    ["reanim.start"] = "Start reanimate",
    ["reanim.stop"] = "Stop",
    ["reanim.respawn"] = "Respawn",
    ["reanim.refresh"] = "Rebuild hat map",
    ["reanim.mode.hats"] = "Hats",
    ["reanim.mode.limbs"] = "Limbs",
    ["reanim.scale"] = "Body scale",
    ["reanim.speed"] = "Speed",
    ["reanim.target"] = "Target",
    ["reanim.target.self"] = "Self",
    ["reanim.target.player"] = "Other player",
    ["reanim.status.idle"] = "Idle",
    ["reanim.status.claiming"] = "Claiming",
    ["reanim.status.live"] = "Live",
    ["reanim.status.stopped"] = "Stopped",
    ["reanim.status.error"] = "Error",
    ["reanim.drift"] = "Drift",
    ["reanim.drift.reset"] = "Reset drift",
    ["reanim.hint"] = "Pick a mode, then start; joints are re-mapped for the current character.",
    ["reanim.needTarget"] = "Pick a target player first",
    ["reanim.sockets.empty"] = "This character has no claimable joints",
    ["reanim.stopAll"] = "Stop all",

    -- Movesets 页
    ["movesets.title"] = "Movesets",
    ["movesets.use"] = "Use this set",
    ["movesets.config"] = "Configure",
    ["movesets.count"] = "{n} sets",
    ["movesets.search"] = "Search movesets",
    ["movesets.empty"] = "No movesets yet — import one first.",
    ["movesets.speed"] = "Playback speed {speed}x",
    ["movesets.loop"] = "Loop",
    ["movesets.preview"] = "Preview",
    ["movesets.applied"] = "Applied: {name}",
    ["movesets.delete"] = "Delete",
    ["movesets.import"] = "Import",
    ["movesets.slot"] = "Set {i} of {n}",

    -- 舞蹈页
    ["dances.title"] = "Dances",
    ["dances.play"] = "Play",
    ["dances.stop"] = "Stop",
    ["dances.loop"] = "Loop",
    ["dances.speed"] = "Speed",
    ["dances.empty"] = "No dances available.",
    ["dances.count"] = "{n} dances",

    -- 市场页
    ["store.title"] = "Store",
    ["store.buy"] = "Buy",
    ["store.owned"] = "Owned",
    ["store.search"] = "Search items",
    ["store.price"] = "{price} credits",
    ["store.empty"] = "Nothing in the store yet.",
    ["store.coming"] = "Coming soon",

    -- 致谢页
    ["credits.title"] = "Credits",
    ["credits.version"] = "Version {version}",
    ["credits.thanks"] = "Thanks to {name} for testing and feedback.",
    ["credits.source"] = "Source",
    ["credits.copy"] = "Copy link",

    -- 设置页
    ["settings.title"] = "Settings",
    ["settings.language"] = "Language",
    ["settings.theme"] = "Theme",
    ["settings.audio"] = "Audio",
    ["settings.theme.dark"] = "Dark",
    ["settings.theme.light"] = "Light",
    ["settings.volume"] = "Volume {value}%",
    ["settings.devMode"] = "Dev mode",
    ["settings.missingKeys"] = "Missing keys ({n})",
    ["settings.missing.none"] = "No missing keys found",
    ["settings.clearMissing"] = "Clear log",
    ["settings.save"] = "Save",
    ["settings.reset"] = "Reset to defaults",
    ["settings.language.hint"] = "Applies immediately.",

    -- 常见动作
    ["common.retry"] = "Retry",
    ["common.cancel"] = "Cancel",
    ["common.ok"] = "OK",
    ["common.confirm"] = "Confirm",
    ["common.close"] = "Close",
    ["common.back"] = "Back",
    ["common.prev"] = "Previous",
    ["common.next"] = "Next",
    ["common.yes"] = "Yes",
    ["common.no"] = "No",
    ["common.on"] = "On",
    ["common.off"] = "Off",
    ["common.loading"] = "Loading…",
    ["common.comingSoon"] = "Coming soon",
    ["common.error"] = "Error: {message}",
    ["common.search"] = "Search",
    ["common.empty"] = "Nothing here",
    ["common.copy"] = "Copy",
    ["common.copied"] = "Copied",
    ["common.enabled"] = "Enabled",
    ["common.disabled"] = "Disabled",
}

local i18n = {}

-- 开发模式：缺键立刻记入 missing() 并显示 ⟦key⟧；发布前把它置为 false
i18n.DEV = true

local LOCALE_ORDER = { "zh", "en" }
local DEFAULT_LOCALE = "zh"
local FALLBACK_LOCALE = "en"
local MISSING_LIMIT = 50
local MARK_LEFT = "⟦"
local MARK_RIGHT = "⟧"
local VAR_PATTERN = "{([^{}]+)}"

-- 运行期状态
local loaded = false
local currentLocale = DEFAULT_LOCALE
local tables = { zh = {}, en = {} }
local missingList = {}
local missingSeen = {}
local missingCount = 0

-- 只保留 string -> string 的条目，脏数据直接丢掉
local function cloneStrings(src)
    local out = {}
    if type(src) ~= "table" then
        return out
    end
    for k, v in pairs(src) do
        if type(k) == "string" and type(v) == "string" then
            out[k] = v
        end
    end
    return out
end

local function countStrings(src)
    local n = 0
    if type(src) ~= "table" then
        return n
    end
    for _, v in pairs(src) do
        if type(v) == "string" then
            n = n + 1
        end
    end
    return n
end

-- 尝试 require；离线环境里 require 不存在或不可用都算失败，交给内联兜底
-- 注意：anathema 的打包器里没有全局 require，模块是通过 ctx.require("ui.i18n.zh") 取；
-- 所以这里先试 ctx.require，再退回全局 require（离线 luau.exe / Studio 场景）。
local ctx = ...
local function tryRequire(name)
    if ctx and type(ctx.require) == "function" then
        local ok, mod = pcall(ctx.require, name)
        if ok and type(mod) == "table" and countStrings(mod) > 0 then
            return mod
        end
    end
    if type(require) ~= "function" then
        return nil
    end
    local ok, mod = pcall(require, name)
    if ok and type(mod) == "table" and countStrings(mod) > 0 then
        return mod
    end
    return nil
end

local function loadLocale(id)
    local candidates = { "ui.i18n." .. id, "./" .. id, id, "../i18n/" .. id, "src/ui/i18n/" .. id }
    for i = 1, #candidates do
        local mod = tryRequire(candidates[i])
        if mod ~= nil then
            return cloneStrings(mod)
        end
    end
    if id == "zh" then
        return cloneStrings(FALLBACK_ZH)
    end
    return cloneStrings(FALLBACK_EN)
end

-- 加载 zh / en；成功返回 true, nil，失败返回 false, 原因
function i18n.load()
    local zh = loadLocale("zh")
    local en = loadLocale("en")
    if countStrings(zh) == 0 then
        return false, "zh 语言表为空"
    end
    if countStrings(en) == 0 then
        return false, "en 语言表为空"
    end
    tables = { zh = zh, en = en }
    loaded = true
    if type(tables[currentLocale]) ~= "table" or countStrings(tables[currentLocale]) == 0 then
        currentLocale = DEFAULT_LOCALE
    end
    return true, nil
end

local function ensureLoaded()
    if loaded then
        return true, nil
    end
    return i18n.load()
end

-- 当前语言查不到时的处理：开发模式不回退（缺口必须暴露），发布模式回退 en
local function resolve(key)
    local primary = tables[currentLocale]
    if type(primary) == "table" then
        local value = primary[key]
        if type(value) == "string" then
            return value
        end
    end
    if i18n.DEV then
        return nil
    end
    if currentLocale ~= FALLBACK_LOCALE then
        local fallback = tables[FALLBACK_LOCALE]
        if type(fallback) == "table" then
            local value = fallback[key]
            if type(value) == "string" then
                return value
            end
        end
    end
    return nil
end

-- 记录缺键：去重，最多 MISSING_LIMIT 条
local function noteMissing(key)
    if missingSeen[key] then
        return
    end
    if missingCount >= MISSING_LIMIT then
        return
    end
    missingSeen[key] = true
    missingCount = missingCount + 1
    missingList[missingCount] = key
end

-- 可用语言列表（按固定顺序返回新表，外部改它不会影响内部状态）
function i18n.locales()
    local out = {}
    for i = 1, #LOCALE_ORDER do
        out[i] = LOCALE_ORDER[i]
    end
    return out
end

-- 切换语言；未知 id 返回 false 且不切换
function i18n.setLocale(id)
    if type(id) ~= "string" then
        return false
    end
    ensureLoaded()
    local target = tables[id]
    if type(target) ~= "table" or countStrings(target) == 0 then
        return false
    end
    currentLocale = id
    return true
end

-- 当前语言 id
function i18n.locale()
    return currentLocale
end

-- 取文案：key 缺失 -> 记入 missing() 并返回 ⟦key⟧
-- vars 为 nil 时原样返回模板；有 vars 时替换所有 {xxx}，缺变量保留 {xxx} 原样
function i18n.t(key, vars)
    ensureLoaded()
    local k = key
    if type(k) ~= "string" then
        k = tostring(key)
    end
    local template = resolve(k)
    if template == nil then
        noteMissing(k)
        return MARK_LEFT .. k .. MARK_RIGHT
    end
    if type(vars) ~= "table" then
        return template
    end
    local rendered = string.gsub(template, VAR_PATTERN, function(name)
        local value = vars[name]
        if value == nil then
            return nil -- 返回 nil 表示保留匹配到的 {name} 原样
        end
        return tostring(value)
    end)
    return rendered
end

-- key 集合，供 lint 比对：{ zh = { key = text }, en = { key = text } }
function i18n.keys()
    ensureLoaded()
    return { zh = cloneStrings(tables.zh), en = cloneStrings(tables.en) }
end

-- 运行期记录到的缺键（去重、按首次出现排序、最多 50 条）
function i18n.missing()
    local out = {}
    for i = 1, missingCount do
        out[i] = missingList[i]
    end
    return out
end

function i18n.clearMissing()
    missingList = {}
    missingSeen = {}
    missingCount = 0
end

-- 当前语言能否翻出这个 key（与 t() 是否会产生 ⟦⟧ 一致）
function i18n.has(key)
    ensureLoaded()
    if type(key) ~= "string" then
        return false
    end
    return resolve(key) ~= nil
end

return i18n

	end

	registry["ui.kit"] = function(...)
--!nocheck
-- anathema/ui/kit — 设计系统与组件库（v2 重写）
--
-- 上一版被否的三条，这里逐条修：
--   1. 移动端拖不动 → 拖动同时接受 MouseButton1 与 Touch，走 UserInputService.InputChanged
--   2. 图标是字体占位 → 图标全部用"旋转线段 Frame"程序化绘制，不依赖任何字体/图片
--   3. 视觉没层次 → 每个面都有：surface 底 + 1px 描边 + 圆角 + tokens 间距 + hover/press 反馈

local ctx = ...
local tokens = ctx.require("ui.tokens")
local themeModule = ctx.require("ui.theme")

local kit = {}

-- 关键修复：themeModule 是**模块**（只有 create/toColor3），不是主题实例。
-- 上一版直接写 theme().color(...) → 调用 nil → 挂载即崩 → 用户看到"执行了没反应"。
local themeInstance = nil
local function theme()
	if not themeInstance then
		themeInstance = themeModule.create("Prism Dark")
	end
	return themeInstance
end
kit.setTheme = function(instance)
	themeInstance = instance
end
kit.getTheme = function()
	return theme()
end

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- ===== 小工具 =====
local function make(class, parent, props)
	local instance = Instance.new(class)
	for key, value in pairs(props or {}) do
		instance[key] = value
	end
	instance.Parent = parent
	return instance
end

local function space(name, fallback)
	local value = tokens.space and tokens.space[name]
	return value or fallback or 8
end

local function radius(name, fallback)
	local value = tokens.radius and tokens.radius[name]
	if type(value) == "number" then
		return value
	end
	return fallback or 8
end

local function motion(name, fallback)
	local value = tokens.motion and tokens.motion[name]
	return value or fallback or 0.15
end

local function round(instance, token)
	make("UICorner", instance, { CornerRadius = UDim.new(0, radius(token)) })
	return instance
end

local function stroke(instance, colorRole, transparency, thickness)
	local existing = instance:FindFirstChildOfClass("UIStroke")
	local uiStroke = existing or make("UIStroke", instance, {})
	uiStroke.Color = theme().color(colorRole)
	uiStroke.Thickness = thickness or 1
	uiStroke.Transparency = transparency or 0.35
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	return uiStroke
end

local function tween(instance, props, motionName)
	TweenService:Create(instance, TweenInfo.new(motion(motionName), Enum.EasingStyle.Quart, Enum.EasingDirection.Out), props):Play()
end

kit.make = make
kit.round = round
kit.stroke = stroke
kit.tween = tween

-- ===== 图标（程序化：归一化线段 → 旋转 Frame）=====
-- 每条线段 {x1, y1, x2, y2}，坐标 0..1，父容器为正方形
local SEG = {
	home = { { 0.5, 0.12, 0.12, 0.44 }, { 0.5, 0.12, 0.88, 0.44 }, { 0.2, 0.44, 0.2, 0.86 }, { 0.8, 0.44, 0.8, 0.86 }, { 0.2, 0.86, 0.8, 0.86 } },
	reanimate = { { 0.5, 0.1, 0.9, 0.5 }, { 0.9, 0.5, 0.5, 0.9 }, { 0.5, 0.9, 0.1, 0.5 }, { 0.1, 0.5, 0.5, 0.1 }, { 0.42, 0.34, 0.66, 0.5 }, { 0.66, 0.5, 0.42, 0.66 }, { 0.42, 0.66, 0.42, 0.34 } },
	movesets = { { 0.16, 0.16, 0.46, 0.16 }, { 0.54, 0.16, 0.84, 0.16 }, { 0.16, 0.54, 0.46, 0.54 }, { 0.54, 0.54, 0.84, 0.54 }, { 0.16, 0.16, 0.16, 0.46 }, { 0.84, 0.16, 0.84, 0.46 }, { 0.16, 0.54, 0.16, 0.84 }, { 0.84, 0.54, 0.84, 0.84 } },
	dances = { { 0.6, 0.14, 0.6, 0.7 }, { 0.6, 0.14, 0.86, 0.22 }, { 0.4, 0.7, 0.6, 0.7 }, { 0.4, 0.7, 0.44, 0.84 }, { 0.44, 0.84, 0.56, 0.84 }, { 0.56, 0.84, 0.6, 0.7 } },
	store = { { 0.16, 0.34, 0.84, 0.34 }, { 0.16, 0.34, 0.22, 0.88 }, { 0.84, 0.34, 0.78, 0.88 }, { 0.22, 0.88, 0.78, 0.88 }, { 0.36, 0.34, 0.38, 0.18 }, { 0.38, 0.18, 0.5, 0.12 }, { 0.5, 0.12, 0.62, 0.18 }, { 0.62, 0.18, 0.64, 0.34 } },
	credits = { { 0.5, 0.14, 0.62, 0.26 }, { 0.62, 0.26, 0.62, 0.38 }, { 0.62, 0.38, 0.5, 0.5 }, { 0.5, 0.5, 0.38, 0.38 }, { 0.38, 0.38, 0.38, 0.26 }, { 0.38, 0.26, 0.5, 0.14 }, { 0.2, 0.86, 0.34, 0.62 }, { 0.66, 0.62, 0.8, 0.86 }, { 0.2, 0.86, 0.8, 0.86 } },
	settings = { { 0.5, 0.3, 0.7, 0.4 }, { 0.7, 0.4, 0.7, 0.6 }, { 0.7, 0.6, 0.5, 0.7 }, { 0.5, 0.7, 0.3, 0.6 }, { 0.3, 0.6, 0.3, 0.4 }, { 0.3, 0.4, 0.5, 0.3 }, { 0.42, 0.22, 0.58, 0.22 }, { 0.42, 0.78, 0.58, 0.78 }, { 0.22, 0.42, 0.22, 0.58 }, { 0.78, 0.42, 0.78, 0.58 } },
	close = { { 0.26, 0.26, 0.74, 0.74 }, { 0.74, 0.26, 0.26, 0.74 } },
	minimize = { { 0.24, 0.5, 0.76, 0.5 } },
	chevronLeft = { { 0.62, 0.22, 0.38, 0.5 }, { 0.38, 0.5, 0.62, 0.78 } },
	chevronRight = { { 0.38, 0.22, 0.62, 0.5 }, { 0.62, 0.5, 0.38, 0.78 } },
	play = { { 0.34, 0.22, 0.72, 0.5 }, { 0.72, 0.5, 0.34, 0.78 }, { 0.34, 0.78, 0.34, 0.22 } },
	stop = { { 0.3, 0.3, 0.7, 0.3 }, { 0.7, 0.3, 0.7, 0.7 }, { 0.7, 0.7, 0.3, 0.7 }, { 0.3, 0.7, 0.3, 0.3 } },
	refresh = { { 0.3, 0.3, 0.62, 0.24 }, { 0.62, 0.24, 0.76, 0.44 }, { 0.76, 0.44, 0.68, 0.68 }, { 0.68, 0.68, 0.42, 0.74 }, { 0.42, 0.74, 0.24, 0.58 } },
	respawn = { { 0.5, 0.16, 0.5, 0.62 }, { 0.5, 0.16, 0.34, 0.34 }, { 0.5, 0.16, 0.66, 0.34 }, { 0.24, 0.8, 0.76, 0.8 } },
	drag = { { 0.34, 0.3, 0.4, 0.3 }, { 0.6, 0.3, 0.66, 0.3 }, { 0.34, 0.5, 0.4, 0.5 }, { 0.6, 0.5, 0.66, 0.5 }, { 0.34, 0.7, 0.4, 0.7 }, { 0.6, 0.7, 0.66, 0.7 } },
	warning = { { 0.5, 0.14, 0.86, 0.8 }, { 0.86, 0.8, 0.14, 0.8 }, { 0.14, 0.8, 0.5, 0.14 }, { 0.5, 0.4, 0.5, 0.6 }, { 0.5, 0.7, 0.5, 0.72 } },
}

--- 程序化图标：每条线段用一个旋转过的细长 Frame 画出来
function kit.icon(parent, name, size, color)
	local holder = make("Frame", parent, {
		Name = "Icon_" .. tostring(name),
		Size = UDim2.fromOffset(size or 20, size or 20),
		BackgroundTransparency = 1,
	})
	local segments = SEG[name]
	local lineColor = color or theme().color("textMuted")
	if not segments then
		make("Frame", holder, {
			Name = "Dot",
			Size = UDim2.fromOffset(4, 4),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = lineColor,
			BorderSizePixel = 0,
		})
		return holder
	end
	local thickness = math.max(1.4, (size or 20) / 13)
	for _, seg in segments do
		local x1, y1, x2, y2 = seg[1], seg[2], seg[3], seg[4]
		local dx, dy = (x2 - x1), (y2 - y1)
		local length = math.sqrt(dx * dx + dy * dy)
		if length > 0 then
			local line = make("Frame", holder, {
				Name = "Seg",
				Size = UDim2.new(length, 0, 0, thickness),
				Position = UDim2.fromScale((x1 + x2) / 2, (y1 + y2) / 2),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Rotation = math.deg(math.atan2(dy, dx)),
				BackgroundColor3 = lineColor,
				BorderSizePixel = 0,
			})
			make("UICorner", line, { CornerRadius = UDim.new(1, 0) })
		end
	end
	return holder
end

-- ===== 布局 =====
function kit.layoutFor(viewportSize)
	local x = (viewportSize and viewportSize.X) or 1280
	local y = (viewportSize and viewportSize.Y) or 720
	local isCompact = (x < 900) or (y < 560)
	if isCompact then
		return { width = math.max(320, x - 24), height = math.max(320, y - 24), isCompact = true }
	end
	return { width = math.min(x - 80, 1040), height = math.min(y - 80, 700), isCompact = false }
end

-- ===== 窗口（手机可拖）=====
function kit.window(parent, opts)
	opts = opts or {}
	if opts.theme then
		themeInstance = opts.theme
	end
	local layout = kit.layoutFor(workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize)

	local gui = make("ScreenGui", parent, {
		Name = "AnathemaV2",
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		DisplayOrder = 70,
	})

	local root = make("Frame", gui, {
		Name = "Window",
		Size = UDim2.fromOffset(opts.width or layout.width, opts.height or layout.height),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = theme().color("bg"),
		BorderSizePixel = 0,
		ClipsDescendants = true,
	})
	round(root, "lg")
	stroke(root, "outlineSoft", 0.25, 1.5)

	local scale = make("UIScale", root, { Scale = 1 })

	local compact = opts.compact == true or layout.isCompact
	local win = { gui = gui, root = root, isCompact = compact }

	local function sidebarWidth()
		return win.isCompact and 60 or 168
	end

	local sidebar = make("Frame", root, {
		Name = "Sidebar",
		Size = UDim2.new(0, sidebarWidth(), 1, 0),
		BackgroundColor3 = theme().color("surface"),
		BorderSizePixel = 0,
	})
	make("UIListLayout", sidebar, {
		Padding = UDim.new(0, space("xs", 4)),
		SortOrder = Enum.SortOrder.LayoutOrder,
	})
	make("UIPadding", sidebar, {
		PaddingTop = UDim.new(0, space("md", 10)),
		PaddingLeft = UDim.new(0, space("sm", 6)),
		PaddingRight = UDim.new(0, space("sm", 6)),
		PaddingBottom = UDim.new(0, space("md", 10)),
	})

	local footer = make("Frame", root, {
		Name = "Footer",
		Size = UDim2.new(1, -sidebarWidth(), 0, 32),
		Position = UDim2.new(0, sidebarWidth(), 1, -32),
		BackgroundColor3 = theme().color("surface"),
		BackgroundTransparency = 0.4,
		BorderSizePixel = 0,
	})

	local content = make("Frame", root, {
		Name = "Content",
		Size = UDim2.new(1, -sidebarWidth(), 1, -32),
		Position = UDim2.fromOffset(sidebarWidth(), 0),
		BackgroundTransparency = 1,
	})

	win.gui = gui
	win.root = root
	win.sidebar = sidebar
	win.footer = footer
	win.content = content
	win.title = opts.title or "ANATHEMA"
	win.version = opts.version or "v0.2"

	function win.setTitle(value)
		win.title = tostring(value)
	end

	function win.setCompact(value)
		win.isCompact = value == true
		sidebar.Size = UDim2.new(0, sidebarWidth(), 1, 0)
		footer.Size = UDim2.new(1, -sidebarWidth(), 0, 32)
		footer.Position = UDim2.new(0, sidebarWidth(), 1, -32)
		content.Size = UDim2.new(1, -sidebarWidth(), 1, -32)
		content.Position = UDim2.fromOffset(sidebarWidth(), 0)
	end

	-- ===== 拖动：鼠标 + 触屏 =====
	local dragging, dragStart, startPos = false, nil, nil
	local connections = {}
	local function track(connection)
		table.insert(connections, connection)
		return connection
	end

	local function isDragInput(input)
		return input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch
	end

	track(root.InputBegan:Connect(function(input)
		if not isDragInput(input) then
			return
		end
		dragging = true
		dragStart = input.Position
		startPos = root.Position
		tween(scale, { Scale = 0.985 }, "fast")
	end))

	track(UserInputService.InputChanged:Connect(function(input)
		if not dragging then
			return
		end
		-- 触屏拖动时 InputChanged 的 UserInputType 是 Touch，鼠标是 MouseMovement
		local okType = input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch
		if not okType then
			return
		end
		local delta = input.Position - dragStart
		root.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end))

	local function endDrag(input)
		if not isDragInput(input) or not dragging then
			return
		end
		dragging = false
		tween(scale, { Scale = 1 }, "fast")
	end
	track(root.InputEnded:Connect(endDrag))
	track(UserInputService.InputEnded:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.Touch
			or input.UserInputType == Enum.UserInputType.MouseButton1) then
			dragging = false
			tween(scale, { Scale = 1 }, "fast")
		end
	end))

	function win.onDrag(fn)
		win._onDrag = fn
	end

	function win.destroy()
		for _, connection in connections do
			pcall(function()
				connection:Disconnect()
			end)
		end
		connections = {}
		pcall(function()
			gui:Destroy()
		end)
	end

	-- 品牌行
	local brand = make("TextLabel", sidebar, {
		Name = "Brand",
		Size = UDim2.new(1, 0, 0, 40),
		BackgroundTransparency = 1,
		Font = Enum.Font.GothamBlack,
		TextSize = win.isCompact and 11 or 15,
		TextColor3 = theme().color("accent"),
		Text = win.isCompact and "A" or win.title,
		TextXAlignment = win.isCompact and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left,
		LayoutOrder = 0,
	})
	win.brand = brand

	return win
end

-- ===== 导航项 =====
function kit.navItem(parent, opts)
	opts = opts or {}
	local instance = make("TextButton", parent, {
		Name = "Nav_" .. tostring(opts.id or opts.label or "item"),
		Size = UDim2.new(1, 0, 0, 40),
		BackgroundColor3 = theme().color("surface"),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Text = "",
	})
	round(instance, "sm")

	local mark = make("Frame", instance, {
		Name = "Mark",
		Size = UDim2.new(0, 3, 0, 20),
		Position = UDim2.new(0, 0, 0.5, -10),
		BackgroundColor3 = theme().color("accent"),
		BorderSizePixel = 0,
		Visible = opts.active == true,
	})
	round(mark, 2)

	local iconHolder = make("Frame", instance, {
		Name = "IconHolder",
		Size = UDim2.fromOffset(22, 22),
		Position = UDim2.new(0, opts.compact and 19 or 12, 0.5, -11),
		BackgroundTransparency = 1,
	})
	local icon = kit.icon(iconHolder, opts.icon, 22, theme().color(opts.active and "text" or "textMuted"))
	icon.Position = UDim2.fromScale(0, 0)

	local label = make("TextLabel", instance, {
		Name = "Label",
		Size = UDim2.new(1, -44, 1, 0),
		Position = UDim2.fromOffset(42, 0),
		BackgroundTransparency = 1,
		Font = Enum.Font.GothamMedium,
		TextSize = 13,
		TextColor3 = theme().color(opts.active and "text" or "textMuted"),
		TextXAlignment = Enum.TextXAlignment.Left,
		Text = opts.label or "",
		TextTruncate = Enum.TextTruncate.AtEnd,
		Visible = not opts.compact,
	})

	local item = { instance = instance, mark = mark, label = label, icon = icon }

	function item.setActive(active)
		item.mark.Visible = active == true
		instance.BackgroundTransparency = active and 0.15 or 1
		instance.BackgroundColor3 = theme().color("surfaceAlt")
		label.TextColor3 = theme().color(active and "text" or "textMuted")
	end

	function item.setLabel(value)
		label.Text = tostring(value)
	end

	instance.MouseEnter:Connect(function()
		if not item.mark.Visible then
			tween(instance, { BackgroundTransparency = 0.6 }, "fast")
		end
	end)
	instance.MouseLeave:Connect(function()
		if not item.mark.Visible then
			tween(instance, { BackgroundTransparency = 1 }, "fast")
		end
	end)
	instance.Activated:Connect(function()
		if opts.onClick then
			local ok, err = pcall(opts.onClick, item)
			if not ok then
				warn("[kit] navItem onClick: " .. tostring(err))
			end
		end
	end)

	return item
end

-- ===== 按钮 =====
local VARIANTS = {
	primary = { bg = "accent", fg = "accentText", stroke = nil },
	soft = { bg = "surfaceAlt", fg = "text", stroke = "outlineSoft" },
	ghost = { bg = "surface", fg = "textMuted", stroke = nil, transparent = true },
	danger = { bg = "danger", fg = "accentText", stroke = nil },
}

function kit.button(parent, opts)
	opts = opts or {}
	local variant = VARIANTS[opts.variant or "primary"] or VARIANTS.primary
	local height = opts.height or 36

	local instance = make("TextButton", parent, {
		Name = "Btn_" .. tostring(opts.id or opts.text or "btn"),
		Size = UDim2.new(1, 0, 0, height),
		BackgroundColor3 = theme().color(variant.bg),
		BackgroundTransparency = variant.transparent and 1 or 0,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Font = Enum.Font.GothamMedium,
		TextSize = opts.textSize or 13,
		TextColor3 = theme().color(variant.fg),
		Text = opts.text or "",
	})
	round(instance, "sm")
	if variant.stroke then
		stroke(instance, variant.stroke, 0.4, 1)
	end

	local scale = make("UIScale", instance, { Scale = 1 })
	local enabled = true

	local handle = { instance = instance, scale = scale }

	function handle.setText(value)
		instance.Text = tostring(value or "")
	end

	function handle.setEnabled(value)
		enabled = value ~= false
		instance.TextTransparency = enabled and 0 or 0.5
		instance.BackgroundTransparency = enabled
			and (variant.transparent and 1 or 0)
			or 0.6
	end

	function handle.setActive(active)
		if active then
			instance.BackgroundColor3 = theme().color("accentSoft")
			instance.TextColor3 = theme().color("text")
			stroke(instance, "accent", 0.2, 1)
		else
			instance.BackgroundColor3 = theme().color(variant.bg)
			instance.TextColor3 = theme().color(variant.fg)
			if variant.stroke then
				stroke(instance, variant.stroke, 0.4, 1)
			end
		end
	end

	instance.MouseEnter:Connect(function()
		if not enabled then
			return
		end
		if variant.transparent then
			tween(instance, { BackgroundTransparency = 0.4 }, "fast")
			stroke(instance, "accent", 0.3, 1)
		else
			tween(instance, { BackgroundColor3 = theme().color("surfaceHover") }, "fast")
		end
		instance.TextColor3 = theme().color(variant.fg)
	end)
	instance.MouseLeave:Connect(function()
		if not enabled then
			return
		end
		if variant.transparent then
			tween(instance, { BackgroundTransparency = 1 }, "fast")
		else
			tween(instance, { BackgroundColor3 = theme().color(variant.bg) }, "fast")
		end
	end)
	instance.MouseButton1Down:Connect(function()
		if enabled then
			tween(scale, { Scale = 0.97 }, "instant")
		end
	end)
	instance.MouseButton1Up:Connect(function()
		tween(scale, { Scale = 1 }, "fast")
	end)
	instance.Activated:Connect(function()
		if not enabled then
			return
		end
		if opts.onClick then
			local ok, err = pcall(opts.onClick, handle)
			if not ok then
				warn("[kit] button onClick: " .. tostring(err))
			end
		end
	end)

	return handle
end

-- ===== 卡片 =====
function kit.card(parent, opts)
	opts = opts or {}
	local instance = make("Frame", parent, {
		Name = "Card_" .. tostring(opts.id or opts.title or "card"),
		Size = UDim2.new(1, 0, 0, opts.height or 0),
		AutomaticSize = opts.height and Enum.AutomaticSize.None or Enum.AutomaticSize.Y,
		BackgroundColor3 = theme().color("surface"),
		BorderSizePixel = 0,
	})
	round(instance, "md")
	stroke(instance, "outlineSoft", 0.4, 1)
	if opts.padded ~= false then
		make("UIPadding", instance, {
			PaddingTop = UDim.new(0, space("md", 10)),
			PaddingBottom = UDim.new(0, space("md", 10)),
			PaddingLeft = UDim.new(0, space("md", 10)),
			PaddingRight = UDim.new(0, space("md", 10)),
		})
	end
	local list = make("UIListLayout", instance, {
		Padding = UDim.new(0, space("sm", 6)),
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local title = make("TextLabel", instance, {
		Name = "Title",
		Size = UDim2.new(1, 0, 0, 20),
		BackgroundTransparency = 1,
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextColor3 = theme().color("text"),
		TextXAlignment = Enum.TextXAlignment.Left,
		Text = opts.title or "",
		LayoutOrder = 0,
		Visible = opts.title ~= nil,
	})
	local subtitle = make("TextLabel", instance, {
		Name = "Subtitle",
		Size = UDim2.new(1, 0, 0, 16),
		BackgroundTransparency = 1,
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme().color("textDim"),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		Text = opts.subtitle or "",
		LayoutOrder = 1,
		Visible = opts.subtitle ~= nil,
	})

	local body = make("Frame", instance, {
		Name = "Body",
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = 2,
	})
	make("UIListLayout", body, {
		Padding = UDim.new(0, space("sm", 6)),
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local card = { instance = instance, body = body, list = list, title = title, subtitle = subtitle }
	function card.setTitle(value)
		title.Text = tostring(value or "")
		title.Visible = value ~= nil
	end
	function card.setSubtitle(value)
		subtitle.Text = tostring(value or "")
		subtitle.Visible = value ~= nil
	end
	return card
end

-- ===== 行容器 =====
function kit.row(parent, opts)
	opts = opts or {}
	local frame = make("Frame", parent, {
		Name = "Row",
		Size = UDim2.new(1, 0, 0, opts.height or 36),
		BackgroundTransparency = 1,
	})
	make("UIListLayout", frame, {
		FillDirection = Enum.FillDirection.Horizontal,
		Padding = UDim.new(0, space(opts.gap or "sm", 6)),
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Center,
	})
	return { instance = frame }
end

-- ===== 开关 =====
function kit.switch(parent, opts)
	opts = opts or {}
	local row = make("TextButton", parent, {
		Name = "Switch",
		Size = UDim2.new(1, 0, 0, 40),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Text = "",
	})
	local label = make("TextLabel", row, {
		Size = UDim2.new(1, -52, 1, 0),
		BackgroundTransparency = 1,
		Font = Enum.Font.Gotham,
		TextSize = 13,
		TextColor3 = theme().color("text"),
		TextXAlignment = Enum.TextXAlignment.Left,
		Text = opts.label or "",
		TextTruncate = Enum.TextTruncate.AtEnd,
	})
	local track = make("Frame", row, {
		Name = "Track",
		Size = UDim2.fromOffset(40, 22),
		Position = UDim2.new(1, -40, 0.5, -11),
		BackgroundColor3 = theme().color(opts.value and "accent" or "surfaceHover"),
		BorderSizePixel = 0,
	})
	round(track, "pill")
	local knob = make("Frame", track, {
		Name = "Knob",
		Size = UDim2.fromOffset(16, 16),
		Position = UDim2.new(opts.value and 1 or 0, opts.value and -18 or 2, 0.5, -8),
		BackgroundColor3 = theme().color("accentText"),
		BorderSizePixel = 0,
	})
	round(knob, "pill")

	local value = opts.value == true
	local handle = { instance = row }

	function handle.get()
		return value
	end

	function handle.set(next)
		value = next == true
		tween(track, { BackgroundColor3 = theme().color(value and "accent" or "surfaceHover") }, "fast")
		tween(knob, { Position = UDim2.new(value and 1 or 0, value and -18 or 2, 0.5, -8) }, "fast")
	end

	row.Activated:Connect(function()
		handle.set(not value)
		if opts.onChange then
			local ok, err = pcall(opts.onChange, value)
			if not ok then
				warn("[kit] switch onChange: " .. tostring(err))
			end
		end
	end)

	return handle
end

-- ===== 分段控件 =====
function kit.segmented(parent, opts)
	opts = opts or {}
	local container = make("Frame", parent, {
		Name = "Segmented",
		Size = UDim2.new(1, 0, 0, 34),
		BackgroundColor3 = theme().color("surfaceAlt"),
		BorderSizePixel = 0,
	})
	round(container, "sm")
	make("UIListLayout", container, {
		FillDirection = Enum.FillDirection.Horizontal,
		Padding = UDim.new(0, 2),
		SortOrder = Enum.SortOrder.LayoutOrder,
	})
	make("UIPadding", container, { PaddingLeft = UDim.new(0, 2), PaddingRight = UDim.new(0, 2) })

	local items = opts.items or {}
	local buttons = {}
	local value = opts.value or (items[1] and items[1][1])

	local function paint()
		for id, entry in pairs(buttons) do
			local active = (id == value)
			entry.button.BackgroundColor3 = theme().color(active and "accentSoft" or "surfaceAlt")
			entry.label.TextColor3 = theme().color(active and "text" or "textMuted")
			if active then
				stroke(entry.button, "accent", 0.2, 1)
			end
		end
	end

	for index, item in ipairs(items) do
		local id, text = item[1], item[2] or item[1]
		local button = make("TextButton", container, {
			Name = "Seg_" .. tostring(id),
			Size = UDim2.new(1 / math.max(#items, 1), -2, 1, -4),
			BackgroundColor3 = theme().color("surfaceAlt"),
			BorderSizePixel = 0,
			AutoButtonColor = false,
			Text = "",
			LayoutOrder = index,
		})
		round(button, "xs")
		local label = make("TextLabel", button, {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextColor3 = theme().color("textMuted"),
			Text = text,
		})
		buttons[id] = { button = button, label = label }
		button.Activated:Connect(function()
			if value == id then
				return
			end
			value = id
			paint()
			if opts.onChange then
				local ok, err = pcall(opts.onChange, id)
				if not ok then
					warn("[kit] segmented onChange: " .. tostring(err))
				end
			end
		end)
	end
	paint()

	local handle = { instance = container }
	function handle.setValue(id)
		value = id
		paint()
	end
	function handle.getValue()
		return value
	end
	return handle
end

-- ===== 滑杆（鼠标 + 触屏）=====
function kit.slider(parent, opts)
	opts = opts or {}
	local minValue = opts.min or 0
	local maxValue = opts.max or 1
	local step = opts.step or 0.01
	local value = opts.value or minValue
	local unit = opts.unit or ""

	local container = make("Frame", parent, {
		Name = "Slider",
		Size = UDim2.new(1, 0, 0, 40),
		BackgroundTransparency = 1,
	})
	local showValue = make("TextLabel", container, {
		Size = UDim2.new(0, 64, 0, 16),
		Position = UDim2.new(1, -64, 0, 0),
		BackgroundTransparency = 1,
		Font = Enum.Font.Code,
		TextSize = 12,
		TextColor3 = theme().color("text"),
		TextXAlignment = Enum.TextXAlignment.Right,
		Text = "",
	})
	local track = make("Frame", container, {
		Name = "Track",
		Size = UDim2.new(1, 0, 0, 4),
		Position = UDim2.new(0, 0, 0.5, 6),
		BackgroundColor3 = theme().color("surfaceHover"),
		BorderSizePixel = 0,
	})
	round(track, "pill")
	local fill = make("Frame", track, {
		Name = "Fill",
		Size = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = theme().color("accent"),
		BorderSizePixel = 0,
	})
	round(fill, "pill")
	local knob = make("Frame", container, {
		Name = "Knob",
		Size = UDim2.fromOffset(14, 14),
		Position = UDim2.new(0, 0, 0.5, 1),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = theme().color("accent"),
		BorderSizePixel = 0,
	})
	round(knob, "pill")

	local function paint()
		local ratio = (value - minValue) / math.max(maxValue - minValue, 1e-6)
		ratio = math.clamp(ratio, 0, 1)
		fill.Size = UDim2.new(ratio, 0, 1, 0)
		knob.Position = UDim2.new(ratio, 0, 0.5, 1)
		showValue.Text = string.format("%.2f%s", value, unit)
	end

	local function setFromPosition(positionX)
		local absolute = track.AbsolutePosition.X
		local width = math.max(track.AbsoluteSize.X, 1)
		local ratio = math.clamp((positionX - absolute) / width, 0, 1)
		local raw = minValue + ratio * (maxValue - minValue)
		value = math.floor(raw / step + 0.5) * step
		value = math.clamp(value, minValue, maxValue)
		paint()
		if opts.onChange then
			local ok, err = pcall(opts.onChange, value)
			if not ok then
				warn("[kit] slider onChange: " .. tostring(err))
			end
		end
	end

	-- 触屏与鼠标都要能拖
	local dragging = false
	local connections = {}
	local function track_(connection)
		table.insert(connections, connection)
	end

	local hit = make("TextButton", container, {
		Name = "Hit",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = "",
		AutoButtonColor = false,
	})
	hit.ZIndex = 3

	track_(hit.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			setFromPosition(input.Position.X)
		end
	end))
	track_(UserInputService.InputChanged:Connect(function(input)
		if not dragging then
			return
		end
		if input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch then
			setFromPosition(input.Position.X)
		end
	end))
	track_(UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch then
			if dragging then
				dragging = false
				if value ~= nil and opts.onCommit then
					pcall(opts.onCommit, value)
				end
			end
		end
	end))

	paint()

	local handle = { instance = container, connections = connections }
	function handle.setValue(next)
		value = math.clamp(next, minValue, maxValue)
		paint()
	end
	function handle.getValue()
		return value
	end
	return handle
end

-- ===== 键帽 / 遮罩 / 吐司 =====
function kit.kbd(parent, key)
	local frame = make("Frame", parent, {
		Name = "Kbd",
		Size = UDim2.fromOffset(math.max(24, #tostring(key) * 8 + 10), 22),
		BackgroundColor3 = theme().color("surfaceAlt"),
		BorderSizePixel = 0,
	})
	round(frame, "xs")
	stroke(frame, "outline", 0.2, 1)
	local label = make("TextLabel", frame, {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Font = Enum.Font.Code,
		TextSize = 11,
		TextColor3 = theme().color("text"),
		Text = tostring(key),
	})
	return frame
end

function kit.scrim(parent, alpha)
	local scrim = make("TextButton", parent, {
		Name = "Scrim",
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = theme().color("scrim"),
		BackgroundTransparency = 1 - (alpha or 0.45),
		BorderSizePixel = 0,
		Text = "",
		AutoButtonColor = false,
		ZIndex = (tokens.layer and tokens.layer.modal) or 100,
	})
	return scrim
end

local toastCount = 0
function kit.toast(parent, message, kind)
	toastCount += 1
	local palette = {
		info = "surfaceAlt",
		error = "danger",
		success = "success",
	}
	local card = make("Frame", parent, {
		Name = "Toast",
		Size = UDim2.new(0, 260, 0, 44),
		Position = UDim2.new(1, -276, 1, -68 - toastCount * 52),
		BackgroundColor3 = theme().color(palette[kind] or "surfaceAlt"),
		BorderSizePixel = 0,
		ZIndex = (tokens.layer and tokens.layer.toast) or 60,
	})
	round(card, "sm")
	stroke(card, "outline", 0.3, 1)
	make("TextLabel", card, {
		Size = UDim2.new(1, -20, 1, 0),
		Position = UDim2.fromOffset(10, 0),
		BackgroundTransparency = 1,
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme().color(kind == "error" and "accentText" or "text"),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		Text = tostring(message or ""),
	})
	task.delay(2.5, function()
		toastCount = math.max(0, toastCount - 1)
		if card.Parent then
			card:Destroy()
		end
	end)
	return card
end

return kit

	end

	registry["ui.app"] = function(...)
--!nocheck
-- anathema/ui/app — 7 个页面（v2 重写，基于 ui.kit）
--
-- 布局全部来自 kit + tokens，页面只是把区块拼起来。
-- Reanimate 页按 6 个功能区组织，不是长列表。

local ctx = ...
local kit = ctx.require("ui.kit")
local tokens = ctx.require("ui.tokens")
local routerModule = ctx.require("ui.router")
local stylePack = ctx.require("ui.style_pack")
local i18n = ctx.require("ui.i18n")

local app = {}

local NAV = {
	{ id = "home", icon = "home", key = "nav.home" },
	{ id = "reanimate", icon = "reanimate", key = "nav.reanimate" },
	{ id = "movesets", icon = "movesets", key = "nav.movesets" },
	{ id = "dances", icon = "dances", key = "nav.dances" },
	{ id = "store", icon = "store", key = "nav.store" },
	{ id = "credits", icon = "credits", key = "nav.credits" },
	{ id = "settings", icon = "settings", key = "nav.settings" },
}

local MOVESETS = {
	{ id = "demo.dual_solaris", style = "crimson", title = "DUAL SOLARIS", desc = "双剑幻影 · 深红预设", keys = { { "Q", "冲刺" }, { "E", "冲击" }, { "R", "终结" } } },
	{ id = "demo.lightning", style = "mono", title = "LIGHTNING CANNON", desc = "背炮形态 · 黑白预设", keys = { { "Q", "蓄能" }, { "E", "炮击" }, { "R", "过载" } } },
	{ id = "demo.default", style = "default", title = "ANATHEMA DEFAULT", desc = "默认风格", keys = { { "Q", "通用冲刺" }, { "E", "通用冲击" }, { "R", "通用终结" } } },
}

local function hex(value, fallback)
	if type(value) == "string" and #value == 7 then
		local r = tonumber(string.sub(value, 2, 3), 16)
		local g = tonumber(string.sub(value, 4, 5), 16)
		local b = tonumber(string.sub(value, 6, 7), 16)
		if r and g and b then
			return Color3.fromRGB(r, g, b)
		end
	end
	return fallback
end

local FONTS = {
	wide = Enum.Font.GothamBlack,
	creative = Enum.Font.Antique,
	clean = Enum.Font.Gotham,
	mono = Enum.Font.Code,
	display = Enum.Font.Arcade,
}

-- ===== 页面构建 =====
local function pageFrame(parent, name)
	local frame = Instance.new("ScrollingFrame")
	frame.Name = "Page_" .. name
	frame.Size = UDim2.new(1, 0, 1, 0)
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	frame.CanvasSize = UDim2.new()
	frame.AutomaticCanvasSize = Enum.AutomaticSize.Y
	frame.ScrollingDirection = Enum.ScrollingDirection.Y
	frame.ScrollBarThickness = 4
	frame.Visible = false
	frame.Parent = parent
	local layout = Instance.new("UIListLayout")
	layout.Padding = UDim.new(0, tokens.space.md)
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Parent = frame
	local padding = Instance.new("UIPadding")
	padding.PaddingTop = UDim.new(0, tokens.space.lg)
	padding.PaddingBottom = UDim.new(0, tokens.space.lg)
	padding.PaddingLeft = UDim.new(0, tokens.space.lg)
	padding.PaddingRight = UDim.new(0, tokens.space.lg)
	padding.Parent = frame
	return frame
end

local function heading(parent, text, order)
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 0, 30)
	label.BackgroundTransparency = 1
	label.Font = Enum.Font.GothamBold
	label.TextSize = 20
	label.TextColor3 = Color3.new(1, 1, 1)
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Text = text
	label.LayoutOrder = order or 0
	label.Parent = parent
	return label
end

local function note(parent, text, order)
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 0, 18)
	label.BackgroundTransparency = 1
	label.Font = Enum.Font.Gotham
	label.TextSize = 12
	label.TextColor3 = Color3.fromRGB(150, 150, 165)
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Text = text
	label.TextTruncate = Enum.TextTruncate.AtEnd
	label.LayoutOrder = order or 0
	label.Parent = parent
	return label
end

-- 前向声明：这些页面构建器在 app.mount 里被调用，但定义在文件后面。
-- 如果用 `local function buildX`,在 mount 体内会解析成全局(null)→ 运行时 "call a nil value"。
local buildHome, buildReanimate, buildMovesets, buildDances, buildStore, buildCredits, buildSettings
local requireTheme

--- @param opts table { parent, runtime, theme }
function app.mount(opts)
	opts = opts or {}
	local parent = opts.parent
	if not parent then
		local ok, value = pcall(function()
			local fn = (getfenv(0).gethui or getfenv(0).get_hidden_gui or rawget(_G, "gethui"))
			return fn and fn() or nil
		end)
		parent = (ok and value) or game:GetService("CoreGui")
	end

	local theme = opts.theme or requireTheme()
	local runtime = opts.runtime

	local win = kit.window(parent, {
		theme = theme,
		title = "ANATHEMA",
		version = (ctx.build and ctx.build.version) or "0.2.0",
	})

	local router = routerModule.new()
	local pages = {}
	local current = nil
	local navItems = {}

	-- 侧边栏
	local navList = {}
	for index, entry in ipairs(NAV) do
		local item = kit.navItem(win.sidebar, {
			id = entry.id,
			icon = entry.icon,
			label = i18n.t(entry.key),
			active = false,
			compact = win.isCompact,
			onClick = function()
				app.navigate(entry.id)
			end,
		})
		item.instance.LayoutOrder = index
		navItems[entry.id] = item
	end

	-- 页脚
	local footerLabel = Instance.new("TextLabel")
	footerLabel.Size = UDim2.new(1, -90, 1, 0)
	footerLabel.Position = UDim2.fromOffset(12, 0)
	footerLabel.BackgroundTransparency = 1
	footerLabel.Font = Enum.Font.Code
	footerLabel.TextSize = 11
	footerLabel.TextColor3 = theme.color("textDim")
	footerLabel.TextXAlignment = Enum.TextXAlignment.Left
	footerLabel.Text = "v" .. ((ctx.build and ctx.build.version) or "0.2.0") .. "  ·  anathema"
	footerLabel.Parent = win.footer

	local localeButton = kit.button(win.footer, {
		id = "locale",
		text = (i18n.locale() == "zh") and "中 / EN" or "EN / 中",
		variant = "ghost",
		height = 22,
		textSize = 11,
		onClick = function(handle)
			local nextLocale = (i18n.locale() == "zh") and "en" or "zh"
			i18n.setLocale(nextLocale)
			handle.setText((nextLocale == "zh") and "中 / EN" or "EN / 中")
			for id, item in pairs(navItems) do
				for _, entry in ipairs(NAV) do
					if entry.id == id then
						item.setLabel(i18n.t(entry.key))
					end
				end
			end
		end,
	})
	localeButton.instance.Size = UDim2.fromOffset(72, 22)
	localeButton.instance.Position = UDim2.new(1, -84, 0.5, -11)

	local pageHandles = {}

	local function ensure(id)
		if pages[id] then
			return pages[id]
		end
		local frame = pageFrame(win.content, id)
		local handle = nil
		if id == "home" then
			handle = buildHome(frame, theme, runtime)
		elseif id == "reanimate" then
			handle = buildReanimate(frame, theme, runtime)
		elseif id == "movesets" then
			handle = buildMovesets(frame, theme)
		elseif id == "dances" then
			handle = buildDances(frame, theme)
		elseif id == "store" then
			handle = buildStore(frame, theme)
		elseif id == "credits" then
			handle = buildCredits(frame, theme)
		elseif id == "settings" then
			handle = buildSettings(frame, theme, runtime)
		end
		pages[id] = { frame = frame, handle = handle }
		if handle then
			pageHandles[id] = handle
		end
		return pages[id]
	end

	function app.navigate(id)
		if current == id then
			return true
		end
		if current and pages[current] then
			router:rememberScroll(current, pages[current].frame.CanvasPosition.Y)
			pages[current].frame.Visible = false
		end
		local page = ensure(id)
		page.frame.Visible = true
		local scroll = router:recallScroll(id)
		if scroll and scroll > 0 then
			page.frame.CanvasPosition = Vector2.new(0, scroll)
		end
		current = id
		router:replace(id, { titleKey = "nav." .. id })
		for key, item in pairs(navItems) do
			item.setActive(key == id)
		end
		return true
	end

	-- 先建首页，再挂循环
	app.navigate("home")

	local handle = {
		win = win,
		root = win.root,
		pages = pageHandles,
		navigate = app.navigate,
	}

	function handle.update()
		for _, pageHandle in pairs(pageHandles) do
			if pageHandle and pageHandle.update then
				local ok, err = pcall(pageHandle.update)
				if not ok then
					warn("[app] 页面刷新失败：" .. tostring(err))
				end
			end
		end
	end

	function handle.destroy()
		win.destroy()
	end

	return handle
end

requireTheme = function()
	return ctx.require("ui.theme").create("Prism Dark")
end

app._requireTheme = requireTheme

-- ===== 各页 =====
buildHome = function(frame, theme, runtime)
	local hero = Instance.new("Frame")
	hero.Size = UDim2.new(1, 0, 0, 200)
	hero.BackgroundColor3 = theme.color("surface")
	hero.BorderSizePixel = 0
	hero.LayoutOrder = 0
	hero.Parent = frame
	kit.round(hero, "lg")
	kit.stroke(hero, "outlineSoft", 0.3, 1)
	local gradient = Instance.new("UIGradient")
	gradient.Color = ColorSequence.new(theme.color("surface"), theme.color("bg"))
	gradient.Rotation = 90
	gradient.Parent = hero

	local title = Instance.new("TextLabel")
	title.Size = UDim2.new(1, -40, 0, 52)
	title.Position = UDim2.fromOffset(20, 26)
	title.BackgroundTransparency = 1
	title.Font = Enum.Font.GothamBlack
	title.TextSize = 38
	title.TextColor3 = theme.color("text")
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Text = "ANATHEMA"
	title.Parent = hero

	local subtitle = Instance.new("TextLabel")
	subtitle.Size = UDim2.new(1, -40, 0, 20)
	subtitle.Position = UDim2.fromOffset(20, 82)
	subtitle.BackgroundTransparency = 1
	subtitle.Font = Enum.Font.Gotham
	subtitle.TextSize = 13
	subtitle.TextColor3 = theme.color("textMuted")
	subtitle.TextXAlignment = Enum.TextXAlignment.Left
	subtitle.Text = "Uhhhhhh 的全功能 · 侧边栏 Hub · v0.2 重写"
	subtitle.Parent = hero

	local statusLabel = Instance.new("TextLabel")
	statusLabel.Size = UDim2.new(1, -40, 0, 18)
	statusLabel.Position = UDim2.fromOffset(20, 160)
	statusLabel.BackgroundTransparency = 1
	statusLabel.Font = Enum.Font.Code
	statusLabel.TextSize = 11
	statusLabel.TextColor3 = theme.color("textDim")
	statusLabel.TextXAlignment = Enum.TextXAlignment.Left
	statusLabel.Text = "engine: " .. (runtime and "connected" or "not wired")
	statusLabel.Parent = hero

	local quick = kit.card(frame, { id = "quick", title = "快速入口" })
	quick.instance.LayoutOrder = 1
	for _, spec in ipairs({
		{ text = "开始重动画", page = "reanimate" },
		{ text = "浏览动作组", page = "movesets" },
		{ text = "打开设置", page = "settings" },
	}) do
		local btn = kit.button(quick.body, {
			text = spec.text,
			variant = "soft",
			height = 38,
			onClick = function()
				if app.navigate then
					app.navigate(spec.page)
				end
			end,
		})
		btn.instance.LayoutOrder = #quick.body:GetChildren()
	end

	return {
		update = function()
			if runtime then
				local ok, status = pcall(function()
					return runtime:status()
				end)
				if ok and status then
					statusLabel.Text = string.format("phase %s · drift %.3f · %d 目标",
						tostring(status.phase), status.stats and status.stats.driftEwma or 0, status.targets or 0)
				end
			end
		end,
	}
end

buildReanimate = function(frame, theme, runtime)
	local statusCard = kit.card(frame, { id = "status" })
	statusCard.instance.LayoutOrder = 0
	local statusRow = kit.row(statusCard.body, { gap = "sm", height = 22 })
	local phaseLabel = note(statusRow.instance, "未启动", 1)
	phaseLabel.Size = UDim2.new(0, 120, 1, 0)
	phaseLabel.TextColor3 = theme.color("textDim")
	local driftLabel = note(statusRow.instance, "drift 0.000", 2)
	driftLabel.Size = UDim2.new(0, 160, 1, 0)

	local big = kit.button(statusCard.body, {
		id = "start",
		text = i18n.t("reanim.start"),
		variant = "primary",
		height = 64,
		textSize = 18,
		onClick = function()
			if not runtime then
				kit.toast(frame, "引擎未接入", "error")
				return
			end
			local ok, err = runtime:start()
			if not ok and err ~= "already-running" then
				kit.toast(frame, "启动失败：" .. tostring(err), "error")
			end
		end,
	})
	big.instance.LayoutOrder = 2

	local rowButtons = kit.row(statusCard.body, { gap = "sm", height = 36 })
	rowButtons.instance.LayoutOrder = 3
	for _, spec in ipairs({
		{ id = "respawn", text = i18n.t("reanim.respawn"), variant = "soft" },
		{ id = "refresh", text = i18n.t("reanim.refresh"), variant = "soft" },
		{ id = "stop", text = i18n.t("reanim.stop"), variant = "soft" },
	}) do
		local btn = kit.button(rowButtons.instance, {
			id = spec.id,
			text = spec.text,
			variant = spec.variant,
			height = 34,
			onClick = function()
				if spec.id == "stop" then
					if runtime then
						runtime:stop("ui")
					end
				else
					kit.toast(frame, spec.text .. "（v0.2 接线中）", "info")
				end
			end,
		})
		btn.instance.Size = UDim2.new(0.333, -4, 0, 34)
		btn.instance.LayoutOrder = #rowButtons.instance:GetChildren()
	end

	local modeCard = kit.card(frame, { id = "mode", title = "动画模式" })
	modeCard.instance.LayoutOrder = 1
	local modeSeg = kit.segmented(modeCard.body, {
		items = { { "hats", i18n.t("reanim.mode.hats") }, { "limbs", i18n.t("reanim.mode.limbs") } },
		value = "hats",
		onChange = function() end,
	})
	modeSeg.instance.LayoutOrder = 1

	local settingsCard = kit.card(frame, { id = "settings", title = "Reanim 设置" })
	settingsCard.instance.LayoutOrder = 2
	kit.switch(settingsCard.body, {
		label = "Permadeath",
		value = false,
		onChange = function() end,
	}).instance.LayoutOrder = 1
	note(settingsCard.body, "已被 Roblox 修复，仅部分游戏可用", 2).LayoutOrder = 2
	local respawnSeg = kit.segmented(settingsCard.body, {
		items = { { "void", "虚空" }, { "behind", "身后" }, { "near", "随机近点" }, { "spawn", "出生点" } },
		value = "void",
	})
	respawnSeg.instance.LayoutOrder = 3
	kit.switch(settingsCard.body, { label = "帽子碰撞", value = true }).instance.LayoutOrder = 4
	kit.switch(settingsCard.body, { label = "躯干 Off", value = false }).instance.LayoutOrder = 5

	local flingCard = kit.card(frame, { id = "fling", title = "Fling" })
	flingCard.instance.LayoutOrder = 3
	local flingDetails
	flingDetails = kit.card(flingCard.body, { id = "flingDetails", padded = false })
	flingDetails.instance.LayoutOrder = 2
	flingDetails.instance.AutomaticSize = Enum.AutomaticSize.Y
	flingDetails.body.LayoutOrder = 1
	flingDetails.body.Size = UDim2.new(1, 0, 0, 0)
	local flingSwitch = kit.switch(flingCard.body, {
		label = "启用 Fling",
		value = false,
		onChange = function(value)
			flingDetails.instance.Visible = value
		end,
	})
	flingSwitch.instance.LayoutOrder = 1
	flingDetails.instance.Visible = false
	kit.switch(flingDetails.body, { label = "旋转" }).instance.LayoutOrder = 1
	kit.switch(flingDetails.body, { label = "工具 Fling" }).instance.LayoutOrder = 2

	local hatCard = kit.card(frame, { id = "hatmap", title = "Hat Map" })
	hatCard.instance.LayoutOrder = 4
	note(hatCard.body, "已载 46 · 跳过 0", 1).LayoutOrder = 1
	local rebuild = kit.button(hatCard.body, {
		text = "重建映射",
		variant = "soft",
		height = 34,
		onClick = function()
			kit.toast(frame, "重建中…", "info")
		end,
	})
	rebuild.instance.LayoutOrder = 2

	local scaleCard = kit.card(frame, { id = "scale", title = i18n.t("reanim.scale") })
	scaleCard.instance.LayoutOrder = 5
	local scaleSlider = kit.slider(scaleCard.body, { value = 1, min = 0.5, max = 3, step = 0.05, unit = "x" })
	scaleSlider.instance.LayoutOrder = 1

	local extraCard = kit.card(frame, { id = "extra", title = "额外" })
	extraCard.instance.LayoutOrder = 6
	for index, label in ipairs({ "SeatSit", "Infinite Jump", "Scale Gravity", "Tool Grab", "显示 Hitbox" }) do
		kit.switch(extraCard.body, { label = label, value = false }).instance.LayoutOrder = index
	end

	return {
		update = function()
			if not runtime then
				return
			end
			local ok, status = pcall(function()
				return runtime:status()
			end)
			if not ok or not status then
				return
			end
			phaseLabel.Text = i18n.t("reanim.status." .. tostring(status.phase))
			phaseLabel.TextColor3 = theme.color(
				status.phase == "live" and "success"
				or status.phase == "failed" and "danger"
				or status.phase == "claiming" and "warning"
				or "textDim"
			)
			driftLabel.Text = string.format("drift %.3f · %d 目标",
				status.stats and status.stats.driftEwma or 0, status.targets or 0)
		end,
	}
end

buildMovesets = function(frame, theme)
	local index = 1
	local currentPack = nil
	local blending = false

	local hero = Instance.new("Frame")
	hero.Size = UDim2.new(1, 0, 0, 300)
	hero.BackgroundColor3 = theme.color("surface")
	hero.BorderSizePixel = 0
	hero.ClipsDescendants = true
	hero.LayoutOrder = 0
	hero.Parent = frame
	kit.round(hero, "lg")
	local heroStroke = kit.stroke(hero, "outlineSoft", 0.3, 1)
	local heroGradient = Instance.new("UIGradient")
	heroGradient.Color = ColorSequence.new(theme.color("surface"), theme.color("bg"))
	heroGradient.Rotation = 90
	heroGradient.Parent = hero

	local title = Instance.new("TextLabel")
	title.Size = UDim2.new(1, -240, 0, 56)
	title.Position = UDim2.fromOffset(20, 22)
	title.BackgroundTransparency = 1
	title.Font = Enum.Font.GothamBlack
	title.TextSize = 34
	title.TextColor3 = theme.color("text")
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Text = ""
	title.Parent = hero

	local desc = Instance.new("TextLabel")
	desc.Size = UDim2.new(1, -240, 0, 40)
	desc.Position = UDim2.fromOffset(20, 82)
	desc.BackgroundTransparency = 1
	desc.Font = Enum.Font.Gotham
	desc.TextSize = 13
	desc.TextColor3 = theme.color("textMuted")
	desc.TextXAlignment = Enum.TextXAlignment.Left
	desc.TextYAlignment = Enum.TextYAlignment.Top
	desc.TextWrapped = true
	desc.Text = ""
	desc.Parent = hero

	local keysHolder = Instance.new("Frame")
	keysHolder.Size = UDim2.new(0, 260, 0, 110)
	keysHolder.Position = UDim2.fromOffset(20, 130)
	keysHolder.BackgroundTransparency = 1
	keysHolder.Parent = hero
	local keysLayout = Instance.new("UIListLayout")
	keysLayout.Padding = UDim.new(0, 6)
	keysLayout.Parent = keysHolder
	local keyRows = {}
	for i = 1, 3 do
		local row = Instance.new("Frame")
		row.Size = UDim2.new(1, 0, 0, 26)
		row.BackgroundTransparency = 1
		row.LayoutOrder = i
		row.Parent = keysHolder
		local kbd = kit.kbd(row, "Q")
		kbd.Position = UDim2.fromOffset(0, 2)
		local name = Instance.new("TextLabel")
		name.Size = UDim2.new(1, -40, 1, 0)
		name.Position = UDim2.fromOffset(40, 0)
		name.BackgroundTransparency = 1
		name.Font = Enum.Font.Gotham
		name.TextSize = 13
		name.TextColor3 = theme.color("text")
		name.TextXAlignment = Enum.TextXAlignment.Left
		name.Text = ""
		name.Parent = row
		keyRows[i] = { kbd = kbd, name = name }
	end

	local renderHost = Instance.new("Frame")
	renderHost.Size = UDim2.fromOffset(200, 240)
	renderHost.Position = UDim2.new(1, -220, 0, 30)
	renderHost.BackgroundColor3 = theme.color("surfaceAlt")
	renderHost.BorderSizePixel = 0
	renderHost.Parent = hero
	kit.round(renderHost, "md")
	kit.stroke(renderHost, "outlineSoft", 0.4, 1)
	local renderLabel = Instance.new("TextLabel")
	renderLabel.Size = UDim2.fromScale(1, 1)
	renderLabel.BackgroundTransparency = 1
	renderLabel.Font = Enum.Font.Code
	renderLabel.TextSize = 11
	renderLabel.TextColor3 = theme.color("textDim")
	renderLabel.Text = "RENDER\nv0.3"
	renderLabel.Parent = renderHost

	local controls = kit.row(frame, { gap = "sm", height = 36 })
	controls.instance.LayoutOrder = 1
	local prevBtn = kit.button(controls.instance, {
		text = "◀ 上一组",
		variant = "soft",
		height = 34,
		onClick = function()
			if not blending then
				show(index - 1, true)
			end
		end,
	})
	prevBtn.instance.Size = UDim2.fromOffset(120, 34)
	local nextBtn = kit.button(controls.instance, {
		text = "下一组 ▶",
		variant = "soft",
		height = 34,
		onClick = function()
			if not blending then
				show(index + 1, true)
			end
		end,
	})
	nextBtn.instance.Size = UDim2.fromOffset(120, 34)
	local useBtn = kit.button(controls.instance, {
		text = i18n.t("movesets.use"),
		variant = "primary",
		height = 34,
		onClick = function(handle)
			handle.setText("已选中")
			task.delay(1.2, function()
				handle.setText(i18n.t("movesets.use"))
			end)
		end,
	})
	useBtn.instance.Size = UDim2.fromOffset(140, 34)

	local function applyState(state)
		hero.BackgroundColor3 = hex(state.bg, theme.color("surface"))
		heroGradient.Color = ColorSequence.new(
			hex(state.gradientStops[1], theme.color("surface")),
			hex(state.gradientStops[#state.gradientStops], theme.color("bg"))
		)
		heroGradient.Rotation = state.gradientRotation or 90
		heroStroke.Color = hex(state.stroke, theme.color("outlineSoft"))
		title.TextColor3 = hex(state.text, theme.color("text"))
		title.TextSize = math.floor(state.titleSize or 34)
		title.Font = FONTS[state.fontSet] or Enum.Font.GothamBlack
		useBtn.instance.BackgroundColor3 = hex(state.accent, theme.color("accent"))
		renderHost.BackgroundColor3 = hex(state.bgTint, theme.color("surfaceAlt"))
	end

	local function show(target, animate)
		index = ((target - 1) % #MOVESETS) + 1
		local item = MOVESETS[index]
		local nextPack = select(1, stylePack.resolve(item.style))
		title.Text = item.title
		desc.Text = item.desc
		for i, pair in ipairs(item.keys) do
			keyRows[i].kbd:FindFirstChildOfClass("TextLabel").Text = pair[1]
			keyRows[i].name.Text = pair[2]
		end

		local function finish(pack)
			local state = pack
			local ok, guarded = pcall(stylePack.contrastGuard, state)
			if ok then
				state = guarded
			end
			applyState(state)
		end

		if not animate or not currentPack then
			currentPack = nextPack
			finish(nextPack)
			return
		end

		blending = true
		local from = currentPack
		task.spawn(function()
			for step = 1, 14 do
				local t = step / 14
				local ok, state = pcall(stylePack.blend, from, nextPack, t)
				if ok then
					applyState(state)
				end
				task.wait(0.018)
			end
			currentPack = nextPack
			finish(nextPack)
			blending = false
		end)
	end

	show(1, false)

	return { update = function() end }
end

buildDances = function(frame, theme)
	heading(frame, i18n.t("nav.dances"), 0)
	local card = kit.card(frame, { id = "danceList", title = "舞蹈" })
	card.instance.LayoutOrder = 1
	for index, name in ipairs({ "Ragdoll", "Rat Dance", "Caramelldansen", "Lag Train" }) do
		local row = kit.row(card.body, { gap = "sm", height = 34 })
		row.instance.LayoutOrder = index
		local label = note(row.instance, name, 1)
		label.Size = UDim2.new(1, -100, 1, 0)
		label.TextColor3 = theme.color("text")
		local play = kit.button(row.instance, {
			text = "播放",
			variant = "ghost",
			height = 30,
			onClick = function()
				kit.toast(frame, name .. "（v0.3 接内容）", "info")
			end,
		})
		play.instance.Size = UDim2.fromOffset(80, 30)
	end
	local bindCard = kit.card(frame, { id = "bindings", title = "Dance Keybinds" })
	bindCard.instance.LayoutOrder = 2
	for index, pair in ipairs({ { "1", "Ragdoll" }, { "2", "Rat Dance" }, { "3", "Lag Train" } }) do
		local row = kit.row(bindCard.body, { gap = "sm", height = 26 })
		row.instance.LayoutOrder = index
		kit.kbd(row.instance, pair[1])
		note(row.instance, pair[2], 2).Size = UDim2.new(1, -40, 1, 0)
	end
	return { update = function() end }
end

buildStore = function(frame, theme)
	heading(frame, i18n.t("nav.store"), 0)
	local grid = kit.card(frame, { id = "storeGrid", title = "内容" })
	grid.instance.LayoutOrder = 1
	for index, name in ipairs({ "Clockshell [2]", "Dual Solaris V2", "Lightning Cannon" }) do
		local row = kit.row(grid.body, { gap = "sm", height = 60 })
		row.instance.LayoutOrder = index
		local thumb = Instance.new("Frame")
		thumb.Size = UDim2.fromOffset(96, 54)
		thumb.BackgroundColor3 = theme.color("surfaceAlt")
		thumb.BorderSizePixel = 0
		thumb.Parent = row.instance
		kit.round(thumb, "sm")
		local info = Instance.new("TextLabel")
		info.Size = UDim2.new(1, -110, 1, 0)
		info.Position = UDim2.fromOffset(104, 0)
		info.BackgroundTransparency = 1
		info.Font = Enum.Font.GothamMedium
		info.TextSize = 13
		info.TextColor3 = theme.color("text")
		info.TextXAlignment = Enum.TextXAlignment.Left
		info.Text = name
		info.Parent = row.instance
	end
	return { update = function() end }
end

buildCredits = function(frame, theme)
	heading(frame, i18n.t("nav.credits"), 0)
	local card = kit.card(frame, { id = "credits", title = "致谢" })
	card.instance.LayoutOrder = 1
	for index, item in ipairs({
		{ "Uhhhhhh / STEVETHEREALONE", "引擎起点 · hat map" },
		{ "FEVerse · 24-Hours · Genesis FE", "UI 与分发形态参考" },
		{ "prism", "tokens / theme / netless / hats（MIT）" },
	}) do
		local row = kit.row(card.body, { gap = "sm", height = 34 })
		row.instance.LayoutOrder = index
		local label = note(row.instance, item[1], 1)
		label.Size = UDim2.new(1, 0, 0, 16)
		label.TextColor3 = theme.color("text")
		local sub = note(row.instance, item[2], 2)
		sub.Size = UDim2.new(1, 0, 0, 14)
		sub.Position = UDim2.fromOffset(0, 16)
	end
	return { update = function() end }
end

buildSettings = function(frame, theme, runtime)
	heading(frame, i18n.t("nav.settings"), 0)
	local tabCard = kit.card(frame, { id = "tabs" })
	tabCard.instance.LayoutOrder = 1
	local content = kit.card(frame, { id = "settingBody" })
	content.instance.LayoutOrder = 2

	local sections = {
		appearance = function()
			kit.segmented(content.body, {
				items = { { "dark", "Prism Dark" }, { "ink", "Ink" }, { "sakura", "Sakura" } },
				value = "dark",
			}).instance.LayoutOrder = 1
			kit.switch(content.body, { label = "侧边栏折叠", value = false }).instance.LayoutOrder = 2
		end,
		audio = function()
			kit.slider(content.body, { value = 0.35, min = 0, max = 1, step = 0.05, unit = "" }).instance.LayoutOrder = 1
			kit.slider(content.body, { value = 0.3, min = 0, max = 1, step = 0.05, unit = "" }).instance.LayoutOrder = 2
		end,
		language = function()
			kit.segmented(content.body, {
				items = { { "zh", "简体中文" }, { "en", "English" } },
				value = i18n.locale(),
				onChange = function(id)
					i18n.setLocale(id)
					kit.toast(frame, "语言已切换，返回首页查看", "success")
				end,
			}).instance.LayoutOrder = 1
		end,
		logs = function()
			note(content.body, "Changelogs: v0.2 重写 UI 外壳（侧边栏 / 组件库 / 移动端拖动）", 1).LayoutOrder = 1
			note(content.body, "Init Logs: 引擎 " .. (runtime and "已连接" or "未连接"), 2).LayoutOrder = 2
		end,
		danger = function()
			local btn = kit.button(content.body, {
				text = "清空缓存",
				variant = "danger",
				height = 34,
				onClick = function(handle)
					handle.setText("再点一次确认")
					task.delay(2, function()
						handle.setText("清空缓存")
					end)
				end,
			})
			btn.instance.LayoutOrder = 1
		end,
	}

	local current = nil
	local function render(section)
		for _, child in ipairs(content.body:GetChildren()) do
			if not child:IsA("UIListLayout") then
				child:Destroy()
			end
		end
		current = section
		local builder = sections[section]
		if builder then
			builder()
		end
	end

	kit.segmented(tabCard.body, {
		items = { { "appearance", "外观" }, { "audio", "音频" }, { "language", "语言" }, { "logs", "日志" }, { "danger", "危险" } },
		value = "appearance",
		onChange = render,
	}).instance.LayoutOrder = 1

	render("appearance")
	return { update = function() end }
end

return app

	end

	registry["entry_v3"] = function(...)
--!nocheck
-- anathema/entry_v3 — v0.2 入口（新 UI + 引擎）
--
-- 与 v0.1 的差别：UI 换成 ui.kit + ui.app（侧边栏重写、程序化图标、移动端可拖）。
-- 停止：__ANATHEMA.stop()

local ctx = ...
local app = ctx.require("ui.app")
local runtimeModule = ctx.require("engine.runtime")
local rig = ctx.require("engine.rig")
local themeModule = ctx.require("ui.theme")

local RunService = game:GetService("RunService")

return function(options)
	options = options or {}

	-- 单例守卫要能自愈：上一版中途报错会留下 __ANATHEMA.alive = true，
	-- 那时新版本会静默不挂载（用户看到的就是"执行了没反应"）。
	local existing = rawget(_G, "__ANATHEMA")
	if type(existing) == "table" then
		local stillMounted = false
		local okRoot = pcall(function()
			stillMounted = existing.app ~= nil
				and existing.app.root ~= nil
				and existing.app.root.Parent ~= nil
		end)
		if not okRoot or not stillMounted then
			warn("[anathema] 检测到残留状态，先清理再挂载")
			if type(existing.stop) == "function" then
				pcall(existing.stop)
			end
			rawset(_G, "__ANATHEMA", nil)
			existing = nil
		end
	end
	if type(existing) == "table" and existing.alive then
		warn("[anathema] 已在运行；先 __ANATHEMA.stop()")
		return existing
	end

	local runtime, engineError = runtimeModule.new(rig, options)
	if not runtime then
		warn("[anathema] 引擎未就绪：" .. table.concat(engineError or {}, "; "))
	end

	local theme = themeModule.create(options.themeName or "Prism Dark")

	local okMount, mounted = pcall(app.mount, {
		theme = theme,
		runtime = runtime,
	})
	if not okMount then
		warn("[anathema] UI 挂载失败: " .. tostring(mounted))
		-- 这里不 return：引擎仍可单独跑；错误已经由打包器兜底卡片显示过
		mounted = nil
	end
	if not mounted then
		return nil, "mount-failed"
	end

	local connections = {}
	local alive = true
	local accumulator = 0

	if runtime then
		table.insert(connections, RunService.PreSimulation:Connect(function(dt)
			if not alive then
				return
			end
			local ok, err = pcall(runtime.tick, runtime, dt)
			if not ok then
				warn("[anathema] tick 失败：" .. tostring(err))
			end
		end))
	end

	table.insert(connections, RunService.RenderStepped:Connect(function(dt)
		accumulator += dt
		if accumulator < 0.1 then
			return
		end
		accumulator = 0
		if alive then
			pcall(mounted.update)
		end
	end))

	local function stop()
		if not alive then
			return
		end
		alive = false
		if runtime then
			pcall(runtime.stop, runtime, "manual")
		end
		for _, connection in connections do
			pcall(function()
				connection:Disconnect()
			end)
		end
		pcall(mounted.destroy)
		rawset(_G, "__ANATHEMA", nil)
		warn("[anathema] 已停止并清理")
	end

	local handle = {
		alive = true,
		app = mounted,
		runtime = runtime,
		engineError = engineError,
		navigate = mounted.navigate,
		stop = stop,
	}
	rawset(_G, "__ANATHEMA", handle)
	warn("[anathema] v0.2 已挂载 · __ANATHEMA.stop() 清理")
	return handle
end

	end

	-- 打包器级兜底：即使所有模块都炸，也必须让用户**看到**错误，而不是"没反应"
	local function __anathema_fatal(message)
		warn("[anathema] 启动失败: " .. tostring(message))
		local ok = pcall(function()
			local function host()
				local env = getfenv(0)
				local fn = env.gethui or env.get_hidden_gui or rawget(_G, "gethui")
				if type(fn) == "function" then
					return fn()
				end
				return game:GetService("CoreGui")
			end
			local gui = Instance.new("ScreenGui")
			gui.Name = "AnathemaFatal"
			gui.IgnoreGuiInset = true
			gui.DisplayOrder = 2000000000
			gui.Parent = host()
			local card = Instance.new("Frame")
			card.Size = UDim2.fromOffset(460, 150)
			card.Position = UDim2.new(0.5, 0, 0.5, 0)
			card.AnchorPoint = Vector2.new(0.5, 0.5)
			card.BackgroundColor3 = Color3.fromRGB(28, 22, 26)
			card.BorderSizePixel = 0
			card.Parent = gui
			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 12)
			corner.Parent = card
			local stroke = Instance.new("UIStroke")
			stroke.Color = Color3.fromRGB(255, 100, 110)
			stroke.Thickness = 1.5
			stroke.Parent = card
			local title = Instance.new("TextLabel")
			title.Size = UDim2.new(1, -28, 0, 24)
			title.Position = UDim2.fromOffset(14, 12)
			title.BackgroundTransparency = 1
			title.Font = Enum.Font.GothamBold
			title.TextSize = 15
			title.TextColor3 = Color3.fromRGB(255, 120, 130)
			title.TextXAlignment = Enum.TextXAlignment.Left
			title.Text = "ANATHEMA 启动失败"
			title.Parent = card
			local body = Instance.new("TextLabel")
			body.Size = UDim2.new(1, -28, 0, 96)
			body.Position = UDim2.fromOffset(14, 40)
			body.BackgroundTransparency = 1
			body.Font = Enum.Font.Code
			body.TextSize = 11
			body.TextWrapped = true
			body.TextYAlignment = Enum.TextYAlignment.Top
			body.TextXAlignment = Enum.TextXAlignment.Left
			body.TextColor3 = Color3.fromRGB(230, 230, 240)
			body.Text = tostring(message)
			body.Parent = card
		end)
		if not ok then
			print("[anathema] fatal: " .. tostring(message))
		end
	end

	local entryOk, entry = pcall(require, "entry_v3")
	if not entryOk then
		__anathema_fatal("加载入口失败: " .. tostring(entry))
		return
	end
	local runOk, result = pcall(entry, {})
	if not runOk then
		__anathema_fatal("入口执行失败: " .. tostring(result))
		return
	end
	return result
end
