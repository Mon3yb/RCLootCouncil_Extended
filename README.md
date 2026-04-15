# RCLootCouncil_Extended
![RCLootCouncil Preview](https://media.forgecdn.net/attachments/1623/346/bildschirmfoto_20260409_175032-png.png)

This is a standalone companion addon for `RCLootCouncil` that adds more information to the voting frame.

## What It Does

- Adds new columns to the RCLootCouncil voting frame.
  - Spec based stat priorities
  - Spec based trinket rankings
- Uses the candidate's current spec first if available.
- Shows the full list for all specs in a tooltip

## AI Disclaimer

- This addons was developed using OpenAI's Codex
- I do check the source code and make manual changes but if you hate AI, you better skip this addon

## Dependencies

This addon requires RCLootCouncil. It does nothing on its own.

## Where To Edit The Data
You can edit all priorities and rankings in the following files:
- `Data/StatPriorities.lua`
- `Data/TrinketRanking.lua`

The data structure for each class in StatPriorities.lua looks like this:
```lua
["Death Knight"] = {
        fallback_order = {"Blood", "Frost", "Unholy"},
        specs = {
            Blood = "H >= C >= M = V",
            Frost = "C >= M >> H > V",
            Unholy = "M >= C >> H >> V",
        },
    },
```
The data structure in TrinketRanking.lua looks like this:
```lua
   ["Death Knight"] = {
        fallback_order = {"Blood", "Frost", "Unholy"},
        specs = {
            ["Blood"] = {
                { itemID = 249343, name = "Gaze of the Alnseer", Rank = "S" },
                { itemID = 249344, name = "Light Company Guidon", Rank = "S" },
            },
            ["Frost"] = {
                { itemID = 249344, name = "Light Company Guidon", Rank = "S"  },
                { itemID = 249343, name = "Gaze of the Alnseer", Rank = "S"  },
            },
            ["Unholy"] = {
                { itemID = 249344, name = "Light Company Guidon", Rank = "S"  },
                { itemID = 249343, name = "Gaze of the Alnseer",  Rank = "S"  },
            },
        },
    },
```

- Class- and specnames with spaces need to be in the format `["Beast Mastery"]` for lua to detect it as a single entry. It will fail otherwise.
- fallback_order is used in case that the addon cannot detect the current spec of a player. It is more or less the order of specs on Wowhead.

## Known Limitations

- No sorting for the custom column.
- No configuration UI.
- Spec names assume English spec keys.
