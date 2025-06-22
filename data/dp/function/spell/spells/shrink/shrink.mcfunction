say shrink

execute as @a at @s if score @s isShrinked matches 0 run scoreboard players add @s shrinkLoad 1

execute as @a at @s if score @s isShrinked matches 0 if score @s isSneaking matches 1 run attribute @s minecraft:scale base set 0.2

execute as @a at @s if score @s isShrinked matches 0 if score @s isSneaking matches 1 run scoreboard players set @s isShrinked 1
execute as @a at @s run scoreboard players set @s shrinkOnCooldown 1
execute as @a at @s run scoreboard players set @s shrinkLoad 0

