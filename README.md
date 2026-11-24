# AnathemaFE Loader

Public runtime entry for the private `NoooOneLoveMe/AnathemaFE` source repository.

## Test

```lua
loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/NoooOneLoveMe/AnathemaFE-Loader/main/loader.lua"
))()
```

The client can only execute code that is publicly downloadable. The private repository remains the development/source repository; `core.lua` is the current release artifact and should be replaced with the obfuscated build when the obfuscation pipeline is ready.

## Files

- `loader.lua`: stable public loadstring entry
- `core.lua`: current runtime artifact
- `.github/workflows/sync-core.yml`: optional private-source sync workflow

## Sync secret

Add a repository secret named `ANATHEMA_SOURCE_TOKEN` with read access to `NoooOneLoveMe/AnathemaFE`, then run the `Sync private AnathemaFE core` workflow manually. The workflow publishes the selected release artifact to this public runtime repository.
