@{
    # Set these to change the app's behavior
    Options = @{
        # The game filename without the extension
        ProcessName = 'VA-11 Hall A'
        # Keep the window next to the game window
        Sticky = $false
        # Keep the window on top
        OnTop = $false
    }
    # Do NOT set anything following this line unless you know what you're doing
    # Currently unused
    Properties = @{
        Iced    = @{
            Name  = 'Iced'
            Char  = 'a'
            Color = '#2187aa'
        }
        Aged    = @{
            Name  = 'Aged'
            Char  = 's'
            Color = '#b851a5'
        }
        Blended = @{
            Name  = 'Blended'
            Char  = 'd'
            Color = '#8B0000'
        }
    }
    # Defines the key to press for each ingredient, and a color sample from the game UI
    Ingredients = @{
        Adelhyde = @{
            Name  = 'Adelhyde'
            Char  = 'q'
            Color = '#e22743'
            ColorRGB = @(226, 39, 67)
        }
        BronsonExtract = @{
            Name  = 'Bronson Extract'
            Char  = 'w'
            Color = '#fec73d'
            ColorRGB = @(254, 199, 61)
        }
        PowderedDelta = @{
            Name  = 'Powdered Delta'
            Char  = 'e'
            Color = '#87a6e3'
            ColorRGB = @(135, 166, 227)
        }
        Flanergide = @{
            Name  = 'Flanergide'
            Char  = 'r'
            Color = '#568B28'
            ColorRGB = @(86, 139, 40)
        }
        Karmotrine = @{
            Name  = 'Karmotrine'
            Char  = 't'
            Color = '#c5e4e4'
            ColorRGB = @(197, 228, 228)
        }
    }
    # List of drinks. DO NOT MODIFY!
    Drinks = @{
        BadTouch        = @{
            Name        = 'Bad Touch'
            Ingredients = @{
                Adelhyde       = 0
                BronsonExtract = 2
                PowderedDelta  = 2
                Flanergide     = 2
                Karmotrine     = 4
            }
            Iced        = $true
            Aged        = $false
            Blended     = $false
            Tags        = @('Sour', 'Classy', 'Vintage')
            Price       = 250
        }
        Beer            = @{
            Name        = 'Beer'
            Ingredients = @{
                Adelhyde       = 1
                BronsonExtract = 2
                PowderedDelta  = 1
                Flanergide     = 2
                Karmotrine     = 4
            }
            Iced        = $false
            Aged        = $false
            Blended     = $false
            Tags        = @('Bubbly', 'Classy', 'Vintage')
            Price       = 200
        }
        BleedingJane    = @{
            Name        = 'Bleeding Jane'
            Ingredients = @{
                Adelhyde       = 0
                BronsonExtract = 1
                PowderedDelta  = 3
                Flanergide     = 3
                Karmotrine     = 0
            }
            Iced        = $false
            Aged        = $false
            Blended     = $true
            Tags        = @('Spicy', 'Classic', 'Sobering')
            Price       = 200
        }
        BloomLight      = @{
            Name        = 'Bloom Light'
            Ingredients = @{
                Adelhyde       = 4
                BronsonExtract = 0
                PowderedDelta  = 1
                Flanergide     = 2
                Karmotrine     = 3
            }
            Iced        = $true
            Aged        = $true
            Blended     = $false
            Tags        = @('Spicy', 'Promo', 'Bland')
            Price       = 230
        }
        BlueFairy       = @{
            Name        = 'Blue Fairy'
            Ingredients = @{
                Adelhyde       = 4
                BronsonExtract = 0
                PowderedDelta  = 0
                Flanergide     = 1
                Karmotrine     = 'Optional'
            }
            Iced        = $false
            Aged        = $true
            Blended     = $false
            Tags        = @('Sweet', 'Girly', 'Soft')
            Price       = 170
        }
        Brandtini       = @{
            Name        = 'Brandtini'
            Ingredients = @{
                Adelhyde       = 6
                BronsonExtract = 0
                PowderedDelta  = 3
                Flanergide     = 0
                Karmotrine     = 1
            }
            Iced        = $false
            Aged        = $true
            Blended     = $false
            Tags        = @('Sweet', 'Classy', 'Happy')
            Price       = 250
    
        }
        CobaltVelvet    = @{
            Name        = 'Cobalt Velvet'
            Ingredients = @{
                Adelhyde       = 2
                BronsonExtract = 0
                PowderedDelta  = 0
                Flanergide     = 3
                Karmotrine     = 5
            }
            Iced        = $true
            Aged        = $false
            Blended     = $false
            Tags        = @('Bubbly', 'Classy', 'Burning')
            Price       = 280
        }
        CreviceSpike    = @{
            Name        = 'Crevice Spike'
            Ingredients = @{
                Adelhyde       = 0
                BronsonExtract = 0
                PowderedDelta  = 2
                Flanergide     = 4
                Karmotrine     = 'Optional'
            }
            Iced        = $false
            Aged        = $false
            Blended     = $true
            Tags        = @('Sour', 'Manly', 'Sobering')
            Price       = 140
        }
        FlamingMaoi     = @{
            Name        = 'Flaming Maoi'
            Ingredients = @{
                Adelhyde       = 1
                BronsonExtract = 1
                PowderedDelta  = 2
                Flanergide     = 3
                Karmotrine     = 5
            }
            Iced        = $false
            Aged        = $false
            Blended     = $false
            Tags        = @('Sour', 'Classic', 'Classy')
            Price       = 150
        }
        FluffyDream     = @{
            Name        = 'Fluffy Dream'
            Ingredients = @{
                Adelhyde       = 3
                BronsonExtract = 0
                PowderedDelta  = 3
                Flanergide     = 0
                Karmotrine     = 'Optional'
            }
            Iced        = $false
            Aged        = $true
            Blended     = $false
            Tags        = @('Sour', 'Girly', 'Soft')
            Price       = 170
        }
        FringeWeaver    = @{
            Name        = 'Fringe Weaver'
            Ingredients = @{
                Adelhyde       = 1
                BronsonExtract = 0
                PowderedDelta  = 0
                Flanergide     = 0
                Karmotrine     = 9
            }
            Iced        = $false
            Aged        = $true
            Blended     = $false
            Tags        = @('Bubbly', 'Classy', 'Strong')
            Price       = 260
        }
        FrothyWater     = @{
            Name        = 'Frothy Water'
            Ingredients = @{
                Adelhyde       = 1
                BronsonExtract = 1
                PowderedDelta  = 1
                Flanergide     = 1
                Karmotrine     = 0
            }
            Iced        = $false
            Aged        = $true
            Blended     = $false
            Tags        = @('Bubbly', 'Classic', 'Bland')
            Price       = 150
        }
        GrizzlyTemple   = @{
            Name        = 'Grizzly Temple'
            Ingredients = @{
                Adelhyde       = 3
                BronsonExtract = 3
                PowderedDelta  = 3
                Flanergide     = 0
                Karmotrine     = 1
            }
            Iced        = $false
            Aged        = $false
            Blended     = $true
            Tags        = @('Bitter', 'Promo', 'Bland')
            Price       = 220
        }
        GutPunch        = @{
            Name        = 'Gut Punch'
            Ingredients = @{
                Adelhyde       = 0
                BronsonExtract = 5
                PowderedDelta  = 0
                Flanergide     = 1
                Karmotrine     = 'Optional'
            }
            Iced        = $false
            Aged        = $true
            Blended     = $false
            Tags        = @('Bitter', 'Manly', 'Strong')
            Price       = 80
        }
        Marsblast       = @{
            Name        = 'Marsblast'
            Ingredients = @{
                Adelhyde       = 0
                BronsonExtract = 6
                PowderedDelta  = 1
                Flanergide     = 4
                Karmotrine     = 2
            }
            Iced        = $false
            Aged        = $false
            Blended     = $true
            Tags        = @('Spicy', 'Manly', 'Strong')
            Price       = 170
        }
        Mercuryblast    = @{
            Name        = 'Mercuryblast'
            Ingredients = @{
                Adelhyde       = 1
                BronsonExtract = 1
                PowderedDelta  = 3
                Flanergide     = 3
                Karmotrine     = 2
            }
            Iced        = $true
            Aged        = $false
            Blended     = $true
            Tags        = @('Sour', 'Classy', 'Burning')
            Price       = 250
        }
        Moonblast       = @{
            Name        = 'Moonblast'
            Ingredients = @{
                Adelhyde       = 6
                BronsonExtract = 0
                PowderedDelta  = 1
                Flanergide     = 1
                Karmotrine     = 2
            }
            Iced        = $true
            Aged        = $false
            Blended     = $true
            Tags        = @('Sweet', 'Girly', 'Happy')
            Price       = 180
        }
        PianoMan        = @{
            Name        = 'Piano Man'
            Ingredients = @{
                Adelhyde       = 2
                BronsonExtract = 3
                PowderedDelta  = 5
                Flanergide     = 5
                Karmotrine     = 3
            }
            Iced        = $true
            Aged        = $false
            Blended     = $false
            Tags        = @('Sour', 'Promo', 'Strong')
            Price       = 320
        }
        PianoWoman      = @{
            Name        = 'Piano Woman'
            Ingredients = @{
                Adelhyde       = 5
                BronsonExtract = 5
                PowderedDelta  = 2
                Flanergide     = 3
                Karmotrine     = 3
            }
            Iced        = $false
            Aged        = $true
            Blended     = $false
            Tags        = @('Sweet', 'Promo', 'Happy')
            Price       = 320
        }
        PileDriver      = @{
            Name        = 'Pile Driver'
            Ingredients = @{
                Adelhyde       = 0
                BronsonExtract = 3
                PowderedDelta  = 0
                Flanergide     = 3
                Karmotrine     = 4
            }
            Iced        = $false
            Aged        = $false
            Blended     = $false
            Tags        = @('Bitter', 'Manly', 'Burning')
            Price       = 160
        }
        SparkleStar     = @{
            Name        = 'Sparkle Star'
            Ingredients = @{
                Adelhyde       = 2
                BronsonExtract = 0
                PowderedDelta  = 1
                Flanergide     = 0
                Karmotrine     = 'Optional'
            }
            Iced        = $false
            Aged        = $true
            Blended     = $false
            Tags        = @('Sweet', 'Girly', 'Happy')
            Price       = 150
        }
        SugarRush       = @{
            Name        = 'Sugar Rush'
            Ingredients = @{
                Adelhyde       = 2
                BronsonExtract = 0
                PowderedDelta  = 1
                Flanergide     = 0
                Karmotrine     = 'Optional'
            }
            Iced        = $false
            Aged        = $false
            Blended     = $false
            Tags        = @('Sweet', 'Girly', 'Happy')
            Price       = 150
    
        }
        SunshineCloud   = @{
            Name        = 'Sunshine Cloud'
            Ingredients = @{
                Adelhyde       = 2
                BronsonExtract = 2
                PowderedDelta  = 0
                Flanergide     = 0
                Karmotrine     = 'Optional'
            }
            Iced        = $true
            Aged        = $false
            Blended     = $true
            Tags        = @('Bitter', 'Girly', 'Soft')
            Price       = 150
        }
        Suplex          = @{
            Name        = 'Suplex'
            Ingredients = @{
                Adelhyde       = 0
                BronsonExtract = 4
                PowderedDelta  = 0
                Flanergide     = 3
                Karmotrine     = 3
            }
            Iced        = $true
            Aged        = $false
            Blended     = $false
            Tags        = @('Bitter', 'Manly', 'Burning')
            Price       = 160
        }
        ZenStar         = @{
            Name        = 'Zen Star'
            Ingredients = @{
                Adelhyde       = 4
                BronsonExtract = 4
                PowderedDelta  = 4
                Flanergide     = 4
                Karmotrine     = 4
            }
            Iced        = $true
            Aged        = $false
            Blended     = $false
            Tags        = @('Sour', 'Promo', 'Bland')
            Price       = 210
        }
    }
}