# Debug: advancement triggered
tellraw @s [{"text":"[Coral Spread] ","color":"aqua"},{"text":"Advancement triggered! Player bonemealed coral in warm ocean.","color":"yellow"}]

# Revoke advancement so it can trigger again
advancement revoke @s only coral_spread:bonemeal_coral

# Store the position of the coral block the player is looking at
execute at @s anchored eyes positioned ^ ^ ^ run function coral_spread:find_coral
