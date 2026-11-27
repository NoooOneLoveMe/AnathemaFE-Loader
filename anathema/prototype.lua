-- anathema prototype · 单文件构建
-- 生成时间：2026-11-27 11:07:44
-- 模块数：11
-- 用法：loadstring(game:HttpGet("<URL>"))()
--      或直接把本文件内容粘进执行器
--
-- 停止：__ANATHEMA_PROTO.stop()

local __ANATHEMA_BUILD = {
	stamp = "2026-11-27 11:07:44",
	modules = 11,
	hash = "689800a195db7346",
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

	registry["engine.hats"] = function(...)
--!nocheck
-- prism/reanim/hats — 帽子库：校验 / 归一化 / 索引 / O(1) 查询
--
-- 纯逻辑，不含 Roblox 类型（CFrame 一律写成 12 个数字），所以能进
-- tools/run_tests.py 的 PURE_MODULES 离线跑断言。
--
-- 数据来源：content/hats.lua 返回 { schema = 1, count = N, entries = {...} }。
-- 与 Uhhhhhh 的 d_hatsmap.lua 的差别：那边是「顺序敏感的线性扫描 + 作者手写分类桶」，
-- 这里是「归一化后建哈希索引 + 通配分离」，查一次是两次哈希，且作者调换条目顺序不影响结果。
--
-- 语义出处（Uhhhhhh source/reanim.lua）：
--   * AssetIdMatch 空串视为通配             :5217-5221
--   * LimbNames 与默认 humanoidrootpart     :5157, 5241
--   * C0/C1 相乘并取 C1 逆                 :5716
--   * group 等值匹配                        :5640
--   * Offset 就是 C1                        :5283
--   * PhysicsRepRootPart                    :7025

local ctx = ...
local hats = {}

hats.SCHEMA = 1
hats.MAX_ENTRIES = 1024
hats.MAX_PROBLEMS = 64
hats.MAX_ATTACHMENTS = 16
hats.DEFAULT_GROUP = "RIG"
hats.MIN_SCALE = 0.05
hats.MAX_SCALE = 20

-- 12 个分量：x y z r00 r01 r02 r10 r11 r12 r20 r21 r22
hats.IDENTITY = { 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 }

hats.LIMBS = {
	["HumanoidRootPart"] = true,
	["Torso"] = true,
	["Head"] = true,
	["Left Arm"] = true,
	["Right Arm"] = true,
	["Left Leg"] = true,
	["Right Leg"] = true,
}

-- ===== 基础校验 =====

--- 归一化资产 id：只认裸数字 / rbxassetid:// / rbxasset:// / ?id=
--- @return string? id 或 nil（illegal）
function hats.normalizeAssetId(value)
	if type(value) == "number" then
		if value <= 0 or value ~= value or value > 1e15 then
			return nil
		end
		return string.format("%d", value)
	end
	if type(value) ~= "string" then
		return nil
	end
	local id = string.match(value, "^%s*(%d+)%s*$")
		or string.match(value, "rbxassetid://(%d+)")
		or string.match(value, "rbxasset://(%d+)")
		or string.match(value, "[%?&]id=(%d+)")
	if not id or #id == 0 or #id > 24 then
		return nil
	end
	return id
end

local function isFinite(n)
	return type(n) == "number" and n == n and n ~= math.huge and n ~= -math.huge
end

local function rowDot(a, i, b, j)
	return a[i] * b[j] + a[i + 1] * b[j + 1] + a[i + 2] * b[j + 2]
end

local function rowLen(a, i)
	return math.sqrt(a[i] * a[i] + a[i + 1] * a[i + 1] + a[i + 2] * a[i + 2])
end

--- 12 个数的 CFrame：位置任意，旋转必须是右手正交基（|行|=1、两两垂直、det=+1）。
--- 为什么必须查：解算要对 C1 取逆（source:5716），非正交会得到剪切矩阵，
--- 症状是帽子逐帧漂移，正好顶掉 drift < 0.05 的验收线。
--- @return boolean ok, string? reason
function hats.checkCFrame(t)
	if type(t) ~= "table" then
		return false, "not a table"
	end
	if #t ~= 12 then
		return false, "expected 12 numbers, got " .. tostring(#t)
	end
	for i = 1, 12 do
		if not isFinite(t[i]) then
			return false, "component " .. i .. " is not a finite number"
		end
		if math.abs(t[i]) > 1e6 then
			return false, "component " .. i .. " out of range"
		end
	end
	local EPS = 1e-3
	for row = 4, 10, 3 do
		local len = rowLen(t, row)
		if math.abs(len - 1) > EPS then
			return false, string.format("row %d not unit length (%.4f)", (row - 1) / 3, len)
		end
	end
	if math.abs(rowDot(t, 4, t, 7)) > EPS then
		return false, "rows 1/2 not orthogonal"
	end
	if math.abs(rowDot(t, 4, t, 10)) > EPS then
		return false, "rows 1/3 not orthogonal"
	end
	if math.abs(rowDot(t, 7, t, 10)) > EPS then
		return false, "rows 2/3 not orthogonal"
	end
	-- det = r0 · (r1 × r2)
	local cx = t[8] * t[12] - t[9] * t[11]
	local cy = t[9] * t[10] - t[7] * t[12]
	local cz = t[7] * t[11] - t[8] * t[10]
	local det = t[4] * cx + t[5] * cy + t[6] * cz
	if math.abs(det - 1) > 1e-2 then
		return false, string.format("determinant %.4f is not +1 (left-handed?)", det)
	end
	return true
end

-- ===== 编译 =====

local function pushProblem(report, message)
	report.skipped += 1
	if #report.problems < hats.MAX_PROBLEMS then
		table.insert(report.problems, message)
	else
		report.truncated = true
	end
end

--- 警告：条目仍然可用，只是某个字段回落了默认值。不计入 skipped，
--- 否则「跳过 N 条」会把"能用的坏字段"也算进去，诊断面板就会说谎。
local function pushWarning(report, message)
	report.warnings = (report.warnings or 0) + 1
	if #report.problems < hats.MAX_PROBLEMS then
		table.insert(report.problems, "[warn] " .. message)
	else
		report.truncated = true
	end
end

local function sanitizeFrame(value, report, where)
	if value == nil then
		return table.clone(hats.IDENTITY)
	end
	local ok, reason = hats.checkCFrame(value)
	if not ok then
		pushProblem(report, where .. ": " .. tostring(reason))
		return nil
	end
	local copy = table.create(12)
	for i = 1, 12 do
		copy[i] = value[i]
	end
	return copy
end

--- 编译一份帽子库。
--- @param db table content/hats.lua 的返回值
--- @return table index, table report
function hats.compile(db)
	local report = { ok = false, skipped = 0, warnings = 0, problems = {}, truncated = false, count = 0 }
	local index = {
		exact = {},      -- "mesh|texture" -> entry
		wildcard = {},   -- mesh -> entry（texture == ""）
		byGroup = {},
		byLimb = {},
		all = {},
		count = 0,
		problems = report.problems,
		skipped = 0,
	}

	if type(db) ~= "table" then
		pushProblem(report, "hats: top level must be a table")
		report.ok = false
		return index, report
	end
	if db.schema ~= hats.SCHEMA then
		pushProblem(report, string.format("hats: unsupported schema %s (want %d)", tostring(db.schema), hats.SCHEMA))
		report.ok = false
		return index, report
	end
	if type(db.entries) ~= "table" then
		pushProblem(report, "hats: entries must be a table")
		report.ok = false
		return index, report
	end
	if type(db.count) == "number" and db.count ~= #db.entries then
		-- 数量不符 = 被截断或被替换，整表拒载（先夹上限再分配）
		pushProblem(report, string.format("hats: count %d != #entries %d", db.count, #db.entries))
		report.ok = false
		return index, report
	end
	if #db.entries > hats.MAX_ENTRIES then
		pushProblem(report, string.format("hats: %d entries exceeds limit %d", #db.entries, hats.MAX_ENTRIES))
		report.ok = false
		return index, report
	end

	for i = 1, #db.entries do
		local raw = db.entries[i]
		local where = string.format("hats[%d]", i)
		if type(raw) ~= "table" then
			pushProblem(report, where .. ": entry must be a table")
			continue
		end

		local mesh = hats.normalizeAssetId(raw.mesh)
		if not mesh then
			pushProblem(report, where .. " mesh: expected numeric asset id")
			continue
		end

		local texture = ""
		if raw.texture ~= nil and raw.texture ~= "" then
			local normalized = hats.normalizeAssetId(raw.texture)
			if not normalized then
				pushWarning(report, where .. " texture: illegal id, treated as wildcard")
			else
				texture = normalized
			end
		end

		local limb = raw.limb
		if not hats.LIMBS[limb] then
			pushProblem(report, where .. " limb: must be a real part name, got " .. tostring(limb))
			continue
		end

		local key = mesh .. "|" .. texture
		if index.exact[key] or index.wildcard[mesh] then
			local clash = index.exact[key] ~= nil
			if clash or (texture == "" and index.wildcard[mesh]) then
				pushProblem(report, where .. " duplicate key " .. key .. " (kept the first)")
				continue
			end
		end

		local C0 = sanitizeFrame(raw.C0, report, where .. " C0")
		if raw.C0 ~= nil and C0 == nil then
			continue
		end
		local C1 = sanitizeFrame(raw.C1, report, where .. " C1")
		if raw.C1 ~= nil and C1 == nil then
			continue
		end

		local attachments = nil
		if raw.attachments ~= nil then
			if type(raw.attachments) ~= "table" then
				pushProblem(report, where .. " attachments: must be a table")
				continue
			end
			local count = 0
			local built = {}
			local bad = false
			for name, frame in raw.attachments do
				count += 1
				if type(name) ~= "string" or not string.match(name, "^[A-Za-z_][%w_]*$") or #name > 32 then
					pushProblem(report, where .. " attachments: illegal name " .. tostring(name))
					bad = true
					break
				end
				local ok, reason = hats.checkCFrame(frame)
				if not ok then
					pushProblem(report, where .. " attachments." .. name .. ": " .. tostring(reason))
					bad = true
					break
				end
				local copy = table.create(12)
				for j = 1, 12 do
					copy[j] = frame[j]
				end
				built[name] = copy
			end
			if bad then
				continue
			end
			if count > hats.MAX_ATTACHMENTS then
				pushProblem(report, where .. " attachments: too many (" .. count .. ")")
				continue
			end
			attachments = count > 0 and built or nil
		end

		local group = raw.group
		if group == nil then
			group = hats.DEFAULT_GROUP
		elseif type(group) ~= "string" or not string.match(group, "^[%w_]+$") or #group > 32 then
			pushWarning(report, where .. " group: illegal name, fell back to " .. hats.DEFAULT_GROUP)
			group = hats.DEFAULT_GROUP
		end

		local scale = raw.scale
		if scale == nil then
			scale = 1
		elseif not isFinite(scale) or scale <= 0 then
			pushWarning(report, where .. " scale: must be a positive number, fell back to 1")
			scale = 1
		else
			scale = math.clamp(scale, hats.MIN_SCALE, hats.MAX_SCALE)
		end

		local repRootPart = raw.repRootPart
		if repRootPart ~= nil and not hats.LIMBS[repRootPart] then
			pushWarning(report, where .. " repRootPart: must be a real part name")
			repRootPart = nil
		end

		local entry = {
			index = i,
			key = key,
			mesh = mesh,
			texture = texture,
			limb = limb,
			C0 = C0,
			C1 = C1,
			attachments = attachments,
			group = group,
			scale = scale,
			repRootPart = repRootPart,
		}

		index.all[#index.all + 1] = entry
		if texture == "" then
			index.wildcard[mesh] = entry
		else
			index.exact[key] = entry
		end

		local groupBucket = index.byGroup[group]
		if not groupBucket then
			groupBucket = {}
			index.byGroup[group] = groupBucket
		end
		groupBucket[#groupBucket + 1] = entry

		local limbBucket = index.byLimb[limb]
		if not limbBucket then
			limbBucket = {}
			index.byLimb[limb] = limbBucket
		end
		limbBucket[#limbBucket + 1] = entry
	end

	index.count = #index.all
	index.skipped = report.skipped
	report.count = index.count
	report.ok = index.count > 0
	return index, report
end

-- ===== 查询 =====

--- O(1) 命中：exact 优先于 wildcard（与 Uhhhhhh 的 first-match-wins 等价，
--- 但不受作者条目顺序影响）。
function hats.resolve(index, mesh, texture)
	if not index then
		return nil
	end
	local m = hats.normalizeAssetId(mesh)
	if not m then
		return nil
	end
	if type(texture) == "string" and texture ~= "" then
		local t = hats.normalizeAssetId(texture)
		if t then
			local hit = index.exact[m .. "|" .. t]
			if hit then
				return hit
			end
		end
	end
	return index.exact[m .. "|"] or index.wildcard[m]
end

function hats.stats(index)
	if not index then
		return { count = 0, skipped = 0, groups = 0, limbs = 0 }
	end
	local groups, limbs = 0, 0
	for _ in index.byGroup do
		groups += 1
	end
	for _ in index.byLimb do
		limbs += 1
	end
	return {
		count = index.count,
		skipped = index.skipped,
		groups = groups,
		limbs = limbs,
		problems = #index.problems,
	}
end

--- 人读摘要，给状态栏/诊断面板
function hats.summary(index)
	local s = hats.stats(index)
	return string.format("hats %d loaded / %d skipped / %d groups / %d limbs", s.count, s.skipped, s.groups, s.limbs)
end

return hats

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

	registry["shell.panel"] = function(...)
--!nocheck
-- anathema/shell/panel — 原型诊断面板（不是产品 UI，是"看得见的仪表"）
--
-- S1/S2 阶段用它验证内核：phase / 目标数 / drift / 写次数 / 跳过 / 错误 / 能力 / 日志。
-- S3 把 Uhhhhhh 的 UI 接进来之后，这个面板降级为"开发者面板"（默认隐藏）。

local ctx = ...

local panel = {}

local COLORS = {
	bg = Color3.fromRGB(19, 19, 27),
	card = Color3.fromRGB(31, 31, 44),
	border = Color3.fromRGB(49, 49, 67),
	text = Color3.fromRGB(245, 244, 251),
	muted = Color3.fromRGB(174, 173, 194),
	accent = Color3.fromRGB(189, 171, 255),
	ok = Color3.fromRGB(155, 226, 188),
	warn = Color3.fromRGB(250, 202, 141),
	bad = Color3.fromRGB(255, 122, 132),
}

local function make(className, parent, properties)
	local instance = Instance.new(className)
	for key, value in pairs(properties or {}) do
		instance[key] = value
	end
	instance.Parent = parent
	return instance
end

local function row(parent, order, height)
	return make("TextLabel", parent, {
		Name = "Row" .. tostring(order),
		LayoutOrder = order,
		Size = UDim2.new(1, 0, 0, height or 16),
		BackgroundTransparency = 1,
		Font = Enum.Font.Code,
		TextSize = 12,
		TextColor3 = COLORS.text,
		TextXAlignment = Enum.TextXAlignment.Left,
		Text = "",
	})
end

--- @param parent Instance? 不给就自己找 gethui/CoreGui
function panel.mount(parent, runtime)
	local host = parent
	if not host then
		-- 执行器的 gethui 有的挂在 getfenv(0)，有的只在 _G，还有的都没有（Studio）
		local function try(fn)
			if type(fn) ~= "function" then
				return nil
			end
			local ok, value = pcall(fn)
			return ok and value or nil
		end
		local env = getfenv(0)
		host = try(env.gethui) or try(env.get_hidden_gui)
			or try(rawget(_G, "gethui")) or try(rawget(_G, "get_hidden_gui"))
		if not host then
			host = game:GetService("CoreGui")
		end
	end

	local gui = make("ScreenGui", host, {
		Name = "AnathemaProtoPanel",
		ResetOnSpawn = false,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		DisplayOrder = 90,
		IgnoreGuiInset = true,
	})

	local root = make("Frame", gui, {
		Name = "Root",
		Size = UDim2.fromOffset(300, 0),
		Position = UDim2.fromOffset(24, 24),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = COLORS.bg,
		BorderSizePixel = 0,
	})
	make("UICorner", root, { CornerRadius = UDim.new(0, 12) })
	make("UIStroke", root, { Color = COLORS.border, Transparency = 0.2 })
	make("UIPadding", root, {
		PaddingTop = UDim.new(0, 12), PaddingBottom = UDim.new(0, 12),
		PaddingLeft = UDim.new(0, 14), PaddingRight = UDim.new(0, 14),
	})
	make("UIListLayout", root, {
		Padding = UDim.new(0, 6),
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local title = make("TextLabel", root, {
		LayoutOrder = 0, Size = UDim2.new(1, 0, 0, 22), BackgroundTransparency = 1,
		Font = Enum.Font.GothamBold, TextSize = 15, TextColor3 = COLORS.text,
		TextXAlignment = Enum.TextXAlignment.Left, Text = "ANATHEMA · 内核原型",
	})

	local phaseRow = row(root, 1, 18)
	phaseRow.Font = Enum.Font.GothamBold
	phaseRow.TextSize = 13

	local statsRows = {}
	for index = 1, 6 do
		statsRows[index] = row(root, 10 + index)
	end

	local logLabel = make("TextLabel", root, {
		LayoutOrder = 30, Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1, Font = Enum.Font.Code, TextSize = 11,
		TextColor3 = COLORS.muted, TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top, Text = "",
	})

	local function button(text, order, color, onClick)
		local instance = make("TextButton", root, {
			LayoutOrder = order, Size = UDim2.new(1, 0, 0, 30),
			BackgroundColor3 = color, BorderSizePixel = 0, AutoButtonColor = true,
			Font = Enum.Font.GothamMedium, TextSize = 13, TextColor3 = COLORS.text, Text = text,
		})
		make("UICorner", instance, { CornerRadius = UDim.new(0, 8) })
		instance.Activated:Connect(function()
			local ok, err = pcall(onClick)
			if not ok then
				warn("[anathema/panel] " .. tostring(err))
			end
		end)
		return instance
	end

	local startButton = button("启动重动画", 40, COLORS.accent, function()
		local ok, err = runtime:start()
		if not ok and err ~= "already-running" then
			startButton.Text = "启动失败：" .. tostring(err)
		end
	end)
	startButton.TextColor3 = COLORS.bg

	button("停止", 41, COLORS.card, function()
		runtime:stop("panel")
	end)

	-- 动画开关：直接问 world（rig 才有 setMotionEnabled），面板不依赖 rig 的模块路径
	local motionOn = true
	local motionButton
	motionButton = button("动作：开", 42, COLORS.card, function()
		motionOn = not motionOn
		if runtime.world.setMotionEnabled then
			pcall(runtime.world.setMotionEnabled, motionOn)
		end
		motionButton.Text = motionOn and "动作：开" or "动作：关"
	end)

	-- 拖动
	local dragging, dragStart, startPos = false, nil, nil
	root.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = root.Position
		end
	end)
	root.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if not dragging then
			return
		end
		local delta = input.Position - dragStart
		root.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end)

	local function setRow(label, key, value, color)
		label.Text = string.format("%-9s %s", key, value)
		if color then
			label.TextColor3 = color
		end
	end

	function panel.update()
		local status = runtime:status()
		local phaseColor = COLORS.muted
		if status.phase == "live" then
			phaseColor = COLORS.ok
		elseif status.phase == "claiming" then
			phaseColor = COLORS.warn
		elseif status.phase == "failed" then
			phaseColor = COLORS.bad
		end
		phaseRow.Text = "状态  " .. string.upper(status.phase)
		phaseRow.TextColor3 = phaseColor

		local stats = status.stats
		setRow(statsRows[1], "phase", string.format("%s · claim=%s", status.phase, status.claim.state),
			phaseColor)
		setRow(statsRows[2], "targets", tostring(status.targets), COLORS.text)
		setRow(statsRows[3], "drift", string.format("%.4f  (max %.3f, spikes %d)",
			stats.driftEwma, stats.driftMax, stats.spikes),
			stats.driftEwma > 0.05 and COLORS.warn or COLORS.ok)
		setRow(statsRows[4], "writes", string.format("%d  skip=%d  err=%d",
			stats.writes, stats.skips, stats.writeErrors),
			stats.writeErrors > 0 and COLORS.bad or COLORS.text)
		setRow(statsRows[5], "cost", string.format("%.2f ms/frame", stats.costMs), COLORS.muted)
		local caps = status.capabilities or {}
		setRow(statsRows[6], "caps", string.format("%s · hiddenProp=%s",
			tostring(caps.executor), tostring(caps.hiddenProperties)),
			caps.hiddenProperties and COLORS.muted or COLORS.warn)

		local lines = {}
		for index = math.max(1, #status.log - 4), #status.log do
			local entry = status.log[index]
			table.insert(lines, string.format("· %s", tostring(entry.message)))
		end
		logLabel.Text = table.concat(lines, "\n")
	end

	panel.update()
	return { gui = gui, root = root, update = panel.update }
end

return panel

	end

	registry["entry"] = function(...)
--!nocheck
-- anathema/entry — loadstring 入口
--
-- 真实环境测试用。行为：
--   1. 建 runtime（world = engine/rig）
--   2. 挂诊断面板（shell/panel）
--   3. 两条循环：引擎走 PreSimulation（物理步之前），面板走 RenderStepped
--   4. 暴露 _G.__ANATHEMA_PROTO，方便在控制台里 poke：.runtime .view .stop()
--
-- 刻意不做的事：不自动开跑、不隐藏玩家 UI、不杀真身。
-- 全部可逆 —— 点"停止"或重开脚本，角色原样恢复。

local ctx = ...
local rig = ctx.require("engine.rig")
local runtimeModule = ctx.require("engine.runtime")
local panel = ctx.require("shell.panel")

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

return function(options)
	local existing = rawget(_G, "__ANATHEMA_PROTO")
	if type(existing) == "table" and existing.alive then
		warn("[anathema] 已在运行；先调用 __ANATHEMA_PROTO.stop()")
		return existing
	end

	local runtime, errors = runtimeModule.new(rig, options)
	if not runtime then
		error("[anathema] world 契约不完整：" .. table.concat(errors or { "unknown" }, "; "))
	end

	local view = panel.mount(nil, runtime)
	local connections = {}
	local alive = true

	local function disconnectAll()
		for _, connection in connections do
			pcall(function()
				connection:Disconnect()
			end)
		end
		connections = {}
	end

	-- 引擎：物理步之前写 CFrame/速度（晚一阶段就会被服务器覆盖）
	table.insert(connections, RunService.PreSimulation:Connect(function(dt)
		if not alive then
			return
		end
		local ok, err = pcall(runtime.tick, runtime, dt)
		if not ok then
			warn("[anathema] tick 失败：" .. tostring(err))
		end
	end))

	-- 面板：每 0.1 秒刷一次，别每帧刷 UI
	local accumulator = 0
	table.insert(connections, RunService.RenderStepped:Connect(function(dt)
		accumulator += dt
		if accumulator < 0.1 then
			return
		end
		accumulator = 0
		pcall(view.update)
	end))

	-- 角色重生：rig 失效，先停再提示
	local function onCharacterAdded()
		if not alive then
			return
		end
		runtime:stop("respawned")
		warn("[anathema] 角色重生，已停止；点面板的「启动重动画」重新开始")
	end
	local characterConnection = nil
	local function watchCharacter(character)
		if characterConnection then
			characterConnection:Disconnect()
		end
		characterConnection = character.CharacterAdded:Connect(onCharacterAdded)
	end
	if Players.LocalPlayer.Character then
		watchCharacter(Players.LocalPlayer)
	end
	local playerConnection = Players.LocalPlayer.CharacterAdded:Connect(function()
		watchCharacter(Players.LocalPlayer)
		onCharacterAdded()
	end)
	table.insert(connections, playerConnection)
	if characterConnection then
		table.insert(connections, characterConnection)
	end

	local handle = {
		alive = true,
		runtime = runtime,
		view = view,
		options = options,
		stop = function()
			if not alive then
				return
			end
			alive = false
			pcall(runtime.stop, runtime, "manual")
			disconnectAll()
			pcall(function()
				view.gui:Destroy()
			end)
			handle.alive = false
			rawset(_G, "__ANATHEMA_PROTO", nil)
			warn("[anathema] 已完全停止并清理")
		end,
	}

	rawset(_G, "__ANATHEMA_PROTO", handle)
	warn("[anathema] 面板已挂载。点「启动重动画」开始；__ANATHEMA_PROTO.stop() 清理")
	return handle
end

	end

	local entry = require("entry")
	local ok, result = pcall(entry, {})
	if not ok then
		warn("[anathema] 启动失败: " .. tostring(result))
		return
	end
	return result
end
