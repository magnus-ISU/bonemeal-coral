# Continue raycast - step forward and check for coral
# Pierce through air, water, seagrass, coral, and coral fans
execute if block ~ ~ ~ #coral_spread:coral_blocks run function coral_spread:do_spread
execute if block ~ ~ ~ #coral_spread:coral_blocks run return 1
execute unless block ~ ~ ~ #coral_spread:coral_blocks unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ #coral_spread:coral_replaceable run return 0
execute unless block ~ ~ ~ #coral_spread:coral_blocks positioned ^ ^ ^0.1 run function coral_spread:find_coral_step
