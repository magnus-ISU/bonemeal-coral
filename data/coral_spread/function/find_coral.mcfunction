# Debug: starting raycast
tellraw @a [{"text":"[Coral Spread] ","color":"aqua"},{"text":"Starting raycast from player eyes...","color":"gray"}]

# Raycast to find the coral block the player bonemealed
# Check current position for coral block - return after finding to prevent multiple triggers
execute if block ~ ~ ~ #coral_spread:coral_blocks run function coral_spread:do_spread
execute if block ~ ~ ~ #coral_spread:coral_blocks run return 1
execute unless block ~ ~ ~ #coral_spread:coral_blocks positioned ^ ^ ^0.1 run function coral_spread:find_coral_step
