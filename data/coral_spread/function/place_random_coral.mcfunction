# Place the same type of coral block as the one that was bonemealed
execute if score #coral_type coral_spread matches 0 run setblock ~ ~ ~ minecraft:tube_coral_block
execute if score #coral_type coral_spread matches 1 run setblock ~ ~ ~ minecraft:brain_coral_block
execute if score #coral_type coral_spread matches 2 run setblock ~ ~ ~ minecraft:bubble_coral_block
execute if score #coral_type coral_spread matches 3 run setblock ~ ~ ~ minecraft:fire_coral_block
execute if score #coral_type coral_spread matches 4 run setblock ~ ~ ~ minecraft:horn_coral_block
