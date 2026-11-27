# AnathemaFE v0.1（新 UI · 侧边栏）

**这是你要的那一版新 UI 的第一版**：侧边栏 7 页、中英切换、Movesets 的 Style Pack 过渡、Reanimate 页接引擎。

## 加载

```lua
-- raw（主用）
loadstring(game:HttpGet("https://raw.githubusercontent.com/NoooOneLoveMe/AnathemaFE-Loader/anathema-proto/anathema/anathema-v01.lua"))()

-- jsdelivr（备用，换版本带 ?v=）
loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/NoooOneLoveMe/AnathemaFE-Loader@anathema-proto/anathema/anathema-v01.lua"))()
```

停止：`__ANATHEMA.stop()`

## v0.1 里哪些是真的、哪些是占位

| 真做完了 | 占位（v0.2 补） |
|---|---|
| 侧边栏 7 页（Home / Reanimate / Movesets / Dances / Store / Credits / Settings） | Dances / Store / Credits / Settings 的**细节内容** |
| 窗口拖动 · 页脚版本号 · 中/EN 一键切换（只重刷文案，不重建页面） | 语言选择放进 Settings 页 |
| 页面栈：切页记住滚动位置 | 转场动画（现在是直接切） |
| **Reanimate 页**：状态条（phase/drift/目标数）· 大 Reanimate 按钮 · Respawn/Refresh/Stop · Hats/Limbs 分段 · 体型 ± 按钮 | Permadeath / 重生位置 / 帽子碰撞方法 / Fling 分区 / HatMap 预览 / 体型滑杆 |
| Reanimate 按钮**真的接引擎**（claim → live，状态条会变） | Respawn / Refresh 的具体行为 |
| **Movesets 页**：Hero + 标题/简介/键位 + 立绘占位 + 上一组/下一组 | 真实动作组数据（现在 3 个演示条目） |
| **Style Pack 过渡**：crimson ↔ mono 在 0.26s 内插值（颜色/渐变/字号/字距），字体在中点硬切 | 背景网格/扫描线实现 · 菱形立绘框 · 真实渲染图 |

## 测试步骤（3 分钟）

1. 加载 → 出现 900×520 窗口，左侧 "ANATHEMA" + 7 个侧栏项，页脚显示版本与 `中/EN`
2. 点侧栏 7 项 → 每页都能开；再点回 Movesets，滚动位置应该还在
3. 点页脚 `中/EN` → 导航文字立刻变英文（页面不重建、不闪）
4. 进 **Movesets** → 点「下一组 ▶」三次：**整页颜色/渐变/字号/字体在 0.26 秒内过渡**（crimson 深红宽体 ↔ mono 黑白创意字）
5. 进 **Reanimate** → 点大按钮：
   - 状态条应从 `未启动` 变 `接管中` 再到 `运行中`，并显示 drift 与目标数
   - 若显示 `启动失败：xxx`，把那句话发我
6. 点「Stop」→ 状态回 `已停止`

## 已知的、预期内的

| 现象 | 原因 |
|---|---|
| Reanimate 后帽子/身体没变化 | v0.1 的引擎只是驱动当前帽子的 CFrame，**还没接 hat map 摆位与动作播放**（那是 v0.2） |
| Movesets 的数据是假的 | 3 个演示条目，真实内容在 v0.2 从 `content/<id>.lua` 读 |
| 立绘是渐变块 + "RENDER(v0.2)" | 预渲染流水线还没做 |
| 切换页面没有动画 | 转场留给 v0.2（先保证不闪、不丢滚动位置） |
| 体型 ± 只改数字 | 还没接到引擎的 `CharacterScale` |

## 构建信息

| 项 | 值 |
|---|---|
| 模块数 | 21 |
| 字节 | 174166 |
| build | `90d91424c812c1eb` |
| SHA-256 | `445DCA16BC8F278169EE5404DEBB9E9D5D3D7E2017D31DE30A12194FE057E7BD` |
| 纯逻辑断言 | 48 条全过（含 router / style_pack / i18n 三件套） |

## 文件说明

| 文件 | 说明 |
|---|---|
| `anathema/anathema-v01.lua` | **本文件**：新 UI v0.1（侧边栏） |
| `anathema/uhhhhh-anathema.lua` | 上一版：Uhhhhhh 原版 UI + hat reanim 内核补丁（功能完整，UI 是旧的） |
| `anathema/prototype.lua` | 更早的独立诊断面板原型，**不要用** |
