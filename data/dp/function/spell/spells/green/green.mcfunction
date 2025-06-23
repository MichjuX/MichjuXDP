execute as @a if score @s selectedSpell matches 4 run title @s actionbar {"translate":"green","color":"green"}

execute as @a at @s if score @s selectedSpell matches 4 if score @s isSneaking matches 1 run scoreboard players add @s greenLoad 1
execute as @a at @s unless score @s isSneaking matches 1 run scoreboard players set @s greenLoad 0

execute as @a at @s if score @s selectedSpell matches 4 if score @s greenLoad matches 40.. if score @s isSneaking matches 1 run scoreboard players set @s green 1
execute as @a at @s if score @s selectedSpell matches 4 if score @s greenLoad matches ..40 run scoreboard players set @s green 0
