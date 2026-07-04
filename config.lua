-- config.lua
Config = {}

Config.Lokationer = {
    {
        label    = "Politi Garderobe",
        coords   = vector3(462.9779, -999.0988, 30.6895),
        radius   = 1.5,
        kategori = "politi",
        blip = {
            sprite  = 526,
            color   = 38,
            scale   = 0.7,
            label   = "Politi Station",
            enabled = true,
        }
    },
}

-- KOMPONENTER:
--   1  = Maske
--   2  = Haararbejde
--   3  = Arme/Handsker
--   4  = Bukser
--   5  = Taske (bag)
--   6  = Sko
--   7  = Tilbehoer
--   8  = Undershirt
--   9  = Vest
--  10  = Maerkat/Badge
--  11  = Jakke
-- PROPS:
--   0  = Hat/Hjelm
--   1  = Briller
--   2  = Orer
--   6  = Ure
--   7  = Armbaand

Config.Toj = {
    politi = {
        {
            label = "Politielev Uniform",
            icon  = "shirt",
            komponenter = {
                { component = 11, drawable = 525, texture = 0 }, -- Jakke
                { component = 8,  drawable = 50,  texture = 0 }, -- Undershirt
                { component = 4,  drawable = 194, texture = 0 }, -- Bukser
                { component = 6,  drawable = 25,  texture = 0 }, -- Sko
                { component = 3,  drawable = 85,  texture = 0 }, -- Arme/Handsker
                { component = 9,  drawable = 64,  texture = 0 }, -- Vest
                { component = 1,  drawable = 0,   texture = 0 }, -- Maske
                { component = 5,  drawable = 0,   texture = 0 }, -- Taske
                { component = 7,  drawable = 0,   texture = 0 }, -- Tilbehoer
                { component = 10, drawable = 50,  texture = 0 }, -- Maerkat/Badge
            },
            props = {
                { prop = 0, drawable = -1, texture = 0 }, -- Hat/Hjelm
                { prop = 1, drawable = -1, texture = 0 }, -- Briller
            }
        },
        {
            label = "Politibetjent Uniform",
            icon  = "shield",
            komponenter = {
                { component = 11, drawable = 94,  texture = 0 }, -- Jakke
                { component = 8,  drawable = 15,  texture = 0 }, -- Undershirt
                { component = 4,  drawable = 194, texture = 0 }, -- Bukser
                { component = 6,  drawable = 25,  texture = 0 }, -- Sko
                { component = 3,  drawable = 85,  texture = 0 }, -- Arme/Handsker
                { component = 9,  drawable = 25,  texture = 0 }, -- Vest
                { component = 1,  drawable = 0,   texture = 0 }, -- Maske
                { component = 5,  drawable = 0,   texture = 0 }, -- Taske
                { component = 7,  drawable = 0,   texture = 0 }, -- Tilbehoer
                { component = 10, drawable = 50,  texture = 0 }, -- Maerkat/Badge
            },
            props = {
                { prop = 0, drawable = -1,  texture = 0 }, -- Hat/Hjelm
                { prop = 1, drawable = -1,  texture = 0 }, -- Briller
            }
        },
        {
            label = "MC Uniform",
            icon  = "motorcycle",
            komponenter = {
                { component = 11, drawable = 533, texture = 0 }, -- Jakke
                { component = 8,  drawable = 50,  texture = 0 }, -- Undershirt
                { component = 4,  drawable = 194, texture = 0 }, -- Bukser
                { component = 6,  drawable = 25,  texture = 0 }, -- Sko
                { component = 3,  drawable = 85,  texture = 0 }, -- Arme/Handsker
                { component = 9,  drawable = 65,  texture = 0 }, -- Vest
                { component = 1,  drawable = 0,   texture = 0 }, -- Maske
                { component = 5,  drawable = 0,   texture = 0 }, -- Taske
                { component = 7,  drawable = 0,   texture = 0 }, -- Tilbehoer
                { component = 10, drawable = 50,  texture = 0 }, -- Maerkat/Badge
            },
            props = {
                { prop = 0, drawable = 114, texture = 0 }, -- Motorcykelhjelm
                { prop = 1, drawable = -1,  texture = 0 }, -- Briller
            }
        },
        {
            label = "Romeo Uniform",
            icon  = "car",
            komponenter = {
                { component = 11, drawable = 531, texture = 0 }, -- Jakke
                { component = 8,  drawable = 50,  texture = 2 }, -- Undershirt
                { component = 4,  drawable = 194,  texture = 2 }, -- Bukser
                { component = 6,  drawable = 25,  texture = 0 }, -- Sko
                { component = 3,  drawable = 35,  texture = 0 }, -- Arme/Handsker
                { component = 9,  drawable = 25,  texture = 0 }, -- Vest
                { component = 1,  drawable = 52,  texture = 0 }, -- Maske
                { component = 5,  drawable = 49,   texture = 0 }, -- Taske
                { component = 7,  drawable = 0,   texture = 0 }, -- Tilbehoer
                { component = 10, drawable = 19,   texture = 0 }, -- Maerkat/Badge
            },
            props = {
                { prop = 0, drawable = 117, texture = 0 }, -- Hat/Hjelm
                { prop = 1, drawable = 15,  texture = 0 }, -- Briller
            }
        },
        {
            label = "AKS Uniform",
            icon  = "shield-halved",
            komponenter = {
                { component = 11, drawable = 531,  texture = 1 }, -- Jakke
                { component = 8,  drawable = 50,  texture = 0 }, -- Undershirt
                { component = 4,  drawable = 194,  texture = 0 }, -- Bukser
                { component = 6,  drawable = 25,  texture = 0 }, -- Sko
                { component = 3,  drawable = 33,  texture = 0 }, -- Arme/Handsker
                { component = 9,  drawable = 18,  texture = 0 }, -- Vest
                { component = 1,  drawable = 52,   texture = 4 }, -- Maske
                { component = 5,  drawable = 49,   texture = 0 }, -- Taske
                { component = 7,  drawable = 0,   texture = 0 }, -- Tilbehoer
                { component = 10, drawable = 19,   texture = 0 }, -- Maerkat/Badge
            },
            props = {
                { prop = 0, drawable = 117, texture = 0 }, -- Hat/Hjelm
                { prop = 1, drawable = 25, texture = 0 }, -- Briller
            }
        },
        {
            label = "Indsatsleder Uniform",
            icon  = "bolt",
            komponenter = {
                { component = 11, drawable = 526,  texture = 0 }, -- Jakke
                { component = 8,  drawable = 50,  texture = 0 }, -- Undershirt
                { component = 4,  drawable = 194,  texture = 0 }, -- Bukser
                { component = 6,  drawable = 25,  texture = 0 }, -- Sko
                { component = 3,  drawable = 85,  texture = 0 }, -- Arme/Handsker
                { component = 9,  drawable = 25,  texture = 4 }, -- Vest
                { component = 1,  drawable = 0,   texture = 0 }, -- Maske
                { component = 5,  drawable = 0,   texture = 0 }, -- Taske
                { component = 7,  drawable = 0,   texture = 0 }, -- Tilbehoer
                { component = 10, drawable = 50,   texture = 0 }, -- Maerkat/Badge
            },
            props = {
                { prop = 0, drawable = 117, texture = 1 }, -- Hjelm
                { prop = 1, drawable = -1, texture = 0 }, -- Briller
            }
        },
        {
            label = "Cliv Uniform",
            icon  = "user-tie",
            komponenter = {
                { component = 11, drawable = 572,  texture = 9 }, -- Jakke
                { component = 8,  drawable = 50,   texture = 0 }, -- Undershirt
                { component = 4,  drawable = 7,  texture = 0 }, -- Bukser
                { component = 6,  drawable = 25,  texture = 0 }, -- Sko
                { component = 3,  drawable = 85,  texture = 0 }, -- Arme/Handsker
                { component = 9,  drawable = 53,   texture = 0 }, -- Vest
                { component = 1,  drawable = 0,   texture = 0 }, -- Maske
                { component = 5,  drawable = 0,   texture = 0 }, -- Taske
                { component = 7,  drawable = 0,   texture = 0 }, -- Tilbehoer
                { component = 10, drawable = 50,   texture = 0 }, -- Maerkat/Badge
            },
            props = {
                { prop = 0, drawable = -1, texture = 0 }, -- Hat/Hjelm
                { prop = 1, drawable = -1, texture = 0 }, -- Briller
            }
        },
        {
            label = "Ledelse/Kontor Uniform",
            icon  = "user",
            komponenter = {
                { component = 11, drawable = 94,  texture = 0 }, -- Jakke
                { component = 8,  drawable = 50,  texture = 0 }, -- Undershirt
                { component = 4,  drawable = 194,  texture = 0 }, -- Bukser
                { component = 6,  drawable = 25,  texture = 0 }, -- Sko
                { component = 3,  drawable = 85,  texture = 0 }, -- Arme/Handsker
                { component = 9,  drawable = 0,  texture = 0 }, -- Vest
                { component = 1,  drawable = 0,   texture = 0 }, -- Maske
                { component = 5,  drawable = 0,   texture = 0 }, -- Taske
                { component = 7,  drawable = 0,   texture = 0 }, -- Tilbehoer
                { component = 10, drawable = 50,   texture = 0 }, -- Maerkat/Badge
            },
            props = {
                { prop = 0, drawable = -1, texture = 0 }, -- Hat/Hjelm
                { prop = 1, drawable = -1, texture = 0 }, -- Briller
            }
        },
    },
}

return Config