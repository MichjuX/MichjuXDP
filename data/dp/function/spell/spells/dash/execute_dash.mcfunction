execute at @s run function player_motion:api/launch_looking
execute at @s run particle cloud ~ ~ ~ 1 1 1 0 100 normal
execute at @s run playsound minecraft:entity.ender_dragon.flap player @s ~ ~ ~ 1 1

execute as @a at @s if score @s isSneaking matches 1 unless score @s isDashing matches 1 run scoreboard players set @s isDashing 1