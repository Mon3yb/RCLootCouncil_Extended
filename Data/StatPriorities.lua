local _, ns = ...

ns.STAT_PRIORITIES = {
    DEATHKNIGHT = {
        fallback_order = {"Blood", "Frost", "Unholy"},
        specs = {
            Blood = "H >= C >= M = V",
            Frost = "C >= M >> H > V",
            Unholy = "M >= C >> H >> V",
        },
    },
    DEMONHUNTER = {
        fallback_order = {"Havoc", "Vengeance"},
        specs = {
            Havoc = "C > M >> H > V",
            Vengeance = "H = C = V >= M",
            Devourer = "H >= M >> C >> V",
        },
    },
    DRUID = {
        fallback_order = {"Balance", "Feral", "Guardian", "Restoration"},
        specs = {
            Balance = "M > C = H > V",
            Feral = "M > H > C > V",
            Guardian = "H > V > C > M",
            Restoration = "H = M > V >> C",
        },
    },
    EVOKER = {
        fallback_order = {"Devastation", "Augmentation", "Preservation"},
        specs = {
            Devastation = "C >= H = M > V",
            Augmentation = "C > H > M > V",
            Preservation = "M > C = H > V",
        },
    },
    HUNTER = {
        fallback_order = {"Beast Mastery", "Marksmanship", "Survival"},
        specs = {
            Beast Mastery = "M > H > C > V",
            Marksmanship = "C > M > H > V",
            Survival = "M > C > H > V",
        },
    },
    MAGE = {
        fallback_order = {"Arcane", "Fire", "Frost"},
        specs = {
            Arcane = "M >> H > C = V",
            Fire = "H >= M > V >> C",
            Frost = "M >= C > H >= V",
        },
    },
    MONK = {
        fallback_order = {"Brewmaster", "Mistweaver", "Windwalker"},
        specs = {
            Brewmaster = "C = V = M > H",
            Mistweaver = "H > C > V >> M",
            Windwalker = "H > C >= M >> V",
        },
    },
    PALADIN = {
        fallback_order = {"Holy", "Protection", "Retribution"},
        specs = {
            Holy = "M > C = H > V",
            Protection = "H = V > C > M",
            Retribution = "M > C > H > V",
        },
    },
    PRIEST = {
        fallback_order = {"Discipline", "Holy", "Shadow"},
        specs = {
            Discipline = "H > C > M > V",
            Holy = "C > V = M > H",
            Shadow = "H > M > C > V",
        },
    },
    ROGUE = {
        fallback_order = {"Assassination", "Outlaw", "Subtlety"},
        specs = {
            Assassination = "C > H > M > V",
            Outlaw = "H = C > V > M",
            Subtlety = "M > H >= C > V",
        },
    },
    SHAMAN = {
        fallback_order = {"Elemental", "Enhancement", "Restoration"},
        specs = {
            Elemental = "M > H = C > V",
            Enhancement = "M > H > C > V",
            Restoration = "C > V = M > H",
        },
    },
    WARLOCK = {
        fallback_order = {"Affliction", "Demonology", "Destruction"},
        specs = {
            Affliction = "M > C > H > V",
            Demonology = "H = C > M > V",
            Destruction = "H > M >=C > V",
        },
    },
    WARRIOR = {
        fallback_order = {"Arms", "Fury", "Protection"},
        specs = {
            Arms = "C > H > M > V",
            Fury = "M > H > C > V",
            Protection = "H > C >= V > M",
        },
    },
}
