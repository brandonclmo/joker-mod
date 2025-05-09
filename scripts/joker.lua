local Joker = {
    name = "Jaker",           -- Display name (e.g., "The Gambler's Grin")
    slug = "jaker",           -- Internal ID (no spaces, e.g., "gamblers_grin")
    config = {                     -- Custom variables for your effect
        custom_value = 1,
        threshold = 10
    },
    spritePos = {x = 0, y = 0},    -- Sprite sheet coordinates (adjust to your spritesheet)
    loc_txt = {                    -- In-game text
        name = "Joker",          -- Name of the character
        text = {
            "Gives 0.2x Multi everytime a straight isnt played",       -- desc 
            "Glory to the jakes"       
        }
    },
    rarity = 4,                    -- 1: Common, 2: Uncommon, 3: Rare, 4: Legendary
    cost = -1,                    -- Base buy price in the shop
    unlocked = true,               -- If false, hides until unlocked
    discovered = true              -- If false, hides until discovered
}




function Joker.card_eval(self, card, context)
    if context  and context.hand_type ~= 'Straight' then
        context.mult = (context.mult or 1) * 0.2
    end 
    return context 
end 
