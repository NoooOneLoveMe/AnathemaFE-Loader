# AnathemaFE v0.2（UI 重写）

v0.1 被否决后重写。这次针对三条硬伤逐条修，并补齐了功能分区的结构。

## 加载

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/NoooOneLoveMe/AnathemaFE-Loader/anathema-proto/anathema/anathema-v02.lua"))()
```

停止：`__ANATHEMA.stop()`

## 这次修了什么

| 上一版的问题 | 这一版的修法 |
|---|---|
| **移动端完全无法拖动** | 拖动同时接受 `MouseButton1` 与 `Touch`，用 `UserInputService.InputChanged` + `input.Position` 计算；拖动时 `UIScale` 0.985 反馈。窗口尺寸按视口自适应（`kit.layoutFor`），手机默认接近全屏 |
| **图标是字体占位、加载不出来** | 图标改为**程序化绘制**：17 个图标 = 87 条归一化线段，每条线段是一个旋转过的细长 Frame，不依赖任何字体或 `rbxassetid` |
| **页面丑、没有层次** | 所有面统一：`surface` 底 + 1px `UIStroke` + `UICorner` + tokens 间距 + hover/press 反馈；主按钮 64px、卡片带标题/副标题/内边距；纸面灰阶来自 theme 语义角色 |
| **功能不分块、像长表** | Reanimate 页拆成 6 个区：状态条 / 大按钮 + Respawn·Refresh·Stop / 模式分段 / Reanim 设置卡 / Fling 卡（开关驱动子项显隐）/ HatMap 卡 / 体型滑杆 / 额外折叠卡 |
| **中英切换要重开** | 页脚 `中 / EN` 一键切换，只重刷文案不重建页面 |

## 结构

```
ui.kit   组件库（945 行）：window / navItem / button / card / row / switch /
         segmented / slider（触屏可拖）/ kbd / scrim / toast / icon（程序化）
ui.app   7 个页面（838 行）：Home / Reanimate / Movesets / Dances / Store / Credits / Settings
```

Movesets 页仍是 Style Pack 演示（crimson ↔ mono，0.26s 插值 + 中点切字体）。

## 仍然没做（v0.3）

- Movesets 用真实内容（现在 3 个演示条目）
- 立绘渲染图（现在是 `RENDER v0.3` 占位块）
- Respawn / Refresh / HatMap 预览的真实行为
- Dances / Store / Credits 的数据接入

## 构建

| 项 | 值 |
|---|---|
| 模块 | 19 |
| 字节 | 195486 |
| build | `feb9062856b9c583` |
| SHA-256 | `6A9654071D0AEF0AC01BBD0ED5BFB309E2EBAA4948B134173BCCCE6083BCE831` |
| 断言 | 48 条全过（router / style_pack / i18n / 引擎纯逻辑） |

## 其他文件

| 文件 | 说明 |
|---|---|
| `anathema/uhhhhh-anathema.lua` | Uhhhhhh 原版 UI + hat reanim 内核补丁（功能最完整的那一版） |
| `anathema/anathema-v01.lua` | 上一版 UI（已被否决，留作对照） |
