execute as @a if score @s selectedSpell matches 3 run title @s actionbar {"translate":"shrink","color":"dark_aqua"}


execute as @a at @s if score @s selectedSpell matches 3 if score @s shrinkLoad matches 40 if score @s isShrinked matches 0 if score @s shrinkOnCooldown matches 0 if score @s isSneaking matches 1 run function dp:spell/spells/shrink/shrink
execute as @a at @s if score @s selectedSpell matches 3 if score @s shrinkLoad matches 40 if score @s isShrinked matches 1 if score @s shrinkOnCooldown matches 0 if score @s isSneaking matches 1 run function dp:spell/spells/shrink/unshrink

execute as @a at @s if score @s shrinkOnCooldown matches 1 run scoreboard players add @s shrinkCooldown 1
execute as @a at @s if score @s shrinkCooldown matches 20 run scoreboard players set @s shrinkOnCooldown 0
execute as @a at @s if score @s shrinkCooldown matches 20 run scoreboard players set @s shrinkCooldown 0

execute as @a at @s if score @s isSneaking matches 1 run scoreboard players add @s shrinkLoad 1

# Efekty wizualne
execute as @a at @s if score @s selectedSpell matches 3 if score @s isSneaking matches 1 if score @s shrinkLoad matches 20.. if score @s isShrinked matches 0 run particle minecraft:falling_obsidian_tear ~ ~1.5 ~ 0.5 0.5 0.5 3 100 normal
execute as @a at @s if score @s selectedSpell matches 3 if score @s isSneaking matches 1 if score @s shrinkLoad matches 20.. if score @s isShrinked matches 1 run particle minecraft:falling_obsidian_tear ~ ~0.1 ~ 0.05 0.1 0.05 3 10 normal


# Efekty dźwiękowe
execute as @a at @s if score @s selectedSpell matches 3 if score @s isSneaking matches 1 if score @s shrinkLoad matches 40 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.1 1

execute as @a at @s unless score @s isSneaking matches 1 run scoreboard players set @s shrinkLoad 0







