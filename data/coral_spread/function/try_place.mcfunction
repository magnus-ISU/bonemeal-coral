# Replace water, seagrass, coral, and coral fans with coral blocks
execute if block ~ ~ ~ minecraft:water if predicate coral_spread:three_percent run function coral_spread:place_random_coral
execute if block ~ ~ ~ #coral_spread:coral_replaceable if predicate coral_spread:three_percent run function coral_spread:place_random_coral
