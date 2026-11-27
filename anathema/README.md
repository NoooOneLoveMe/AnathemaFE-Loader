# anathema prototype（loadstring 分支）

这个分支只做一件事：用 raw 地址把内核原型喂给执行器测试。**不影响 main 上的 loader。**

## 加载

```lua
-- raw（直接读）
loadstring(game:HttpGet("https://raw.githubusercontent.com/NoooOneLoveMe/AnathemaFE-Loader/anathema-proto/anathema/prototype.lua"))()

-- jsdelivr（CDN 缓存，换版本时要带 ?t= 时间戳）
loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/NoooOneLoveMe/AnathemaFE-Loader@anathema-proto/anathema/prototype.lua"))()
```

## 它会做什么

- 左上角挂一个诊断面板（可拖动）
- 「启动重动画」→ claim 仪式 → 进稳态，每帧在 `PreSimulation` 驱动帽子
- 手臂摆动来自内联的 `idle.uhanim`（2 秒循环，真旋转）
- 「停止」或 `__ANATHEMA_PROTO.stop()` → 全部还原

**全部可逆**：不杀真身、不写 `FallenPartsDestroyHeight`、不改工作区。

## 构建来源

`anathema/dist/anathema-prototype.lua`（本地仓库），11 个模块 + 一段 2542 字节动画内联。
SHA-256：`86C99AC2A48730B4B8883E08C39F8F4B0D21C4CDAB8344E512863EAD12EBA84E`

## 删除这个分支

```powershell
git push origin --delete anathema-proto
```

或直接在 GitHub 的分支列表里删。
