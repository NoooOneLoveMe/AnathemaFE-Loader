# AnathemaFE Loader

公开运行入口，加载 AnathemaFE 的 Uhhhhhh-compatible 核心与本地 builtin 映射。

## Test

```lua
loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/NoooOneLoveMe/AnathemaFE-Loader/main/loader.lua"
))()
```

## Files

- `loader.lua`: stable public loadstring entry
- `core.lua`: Uhhhhhh `1.0.9 BETA` compatible runtime with AnathemaFE modern UI skin
- `d_limbmap.lua`: Limb Reanimator mapping
- `d_hatsmap.lua`: Hat Reanimator mapping

The private repository remains the development/source repository. The runtime artifact must be downloadable by the client, so `core.lua` and the two mapping files are public release artifacts.
