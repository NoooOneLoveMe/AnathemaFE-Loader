# anathema × Uhhhhhh（loadstring 分支）

**这是你要的那一版**：Uhhhhhh 的 UI、模块系统、moveset/dance、主题、音乐、帽子碰撞、fling——
**全部原样保留**，只替换了 hat reanim 的每帧路径。

## 加载（原版一模一样的用法）

```lua
-- 补丁版（推荐）
loadstring(game:HttpGet("https://raw.githubusercontent.com/NoooOneLoveMe/AnathemaFE-Loader/anathema-proto/anathema/uhhhhh-anathema.lua"))()
```

界面上和原版 Uhhhhhh 完全一致：点 **Reanimate** 就是原来的按钮，进 Hat / Limb 模式、选 moveset/dance、
开帽子碰撞、fling——行为不变。

## 改了什么（只有 4 处）

| 补丁 | 位置 | 内容 |
|---|---|---|
| **P1** | `SetUACFrameNetless` 入口 | `dt` 做 NaN 校验。NaN 也是 number，`dt <= 0` 拦不住，一帧 Infinity 位移会把帽子甩飞 |
| **P2** | 同上 | 位置 NaN 闸门。NaN 写进 CFrame 会让部件从渲染消失，且 `lastcf` 被污染后**永久**失效 |
| **P3** | 写完 CFrame 之后 | 每帧记录 `|写入位置 − 目标位置|`，暴露到 `_G.ANATHEMA` |
| **P4** | `GetHatMappedMeshAndTexture` | 帽子映射从「每顶帽子每帧线性扫整个 HatMap + 三次字符串比较」(O(n²)) 改成一次性建索引 + 哈希查找 (O(1))，首个匹配语义完全一致 |

**没有改**：UI、`GiveFunctionsToFunction`、模块加载、`AnimLib`、`LimbReanimator`、claim 流程、
帽子碰撞策略、`content/` 资源、存档格式。

## 怎么确认它在跑

控制台执行：

```lua
print(_G.ANATHEMA)
```

应该看到（跑一段之后数字会涨）：

```lua
{
  version = 1, patch = "P1-P4",
  hatFrames = 0,          -- 目前没用到（留给后续补丁）
  writeFrames = 1234,     -- 帽子写了多少帧
  skips = 0,              -- 未命中映射的次数（正常应为 0 或很小的数）
  driftEwma = 0.012,      -- 漂移指数平均
  driftMax = 0.34,        -- 峰值
  hatLookups = 5678,      -- 映射查询次数
  hatIndexBuilds = 3,     -- 索引重建次数（换帽子会 +1）
}
```

判断标准：

- `writeFrames` 在涨 → 每帧路径活着
- `hatIndexBuilds` 很小（1–5）→ 没有每帧重建索引
- `driftEwma` 稳定在 0.05 以下 → 跟手正常
- `skips` 持续快速增长 → 帽子库里缺条目（正常，我只补了内核）

## 后续补丁（按收益排序，等你反馈后做）

1. **claim 仪式去 `task.wait`**（原版用 0.1 + 0.15 秒 yield，不可中断）
2. **hat collide 的每帧候选择优**（现在每帧对全部帽子做距离/朝向排序）
3. **LimbReanimator 的 RootPart 模式切换**（StreamingEnabled 下有重复重建）
4. **漂移面板**（把 `_G.ANATHEMA` 画到 UI 上，设置页加一栏）

## 文件说明

| 文件 | 说明 |
|---|---|
| `anathema/uhhhhh-anathema.lua` | **本文件**：Uhhhhhh + P1–P4 补丁（338793 字节，build `3d6a16e7`） |
| `anathema/prototype.lua` | 上一版走错方向的独立原型（自绘诊断面板，不含 Uhhhhhh UI）。保留仅供参考，**不要用它测功能** |

## 删除分支

```powershell
git push origin --delete anathema-proto
```
