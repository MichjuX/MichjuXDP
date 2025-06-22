execute as @a if score @s criteria matches 2 run effect give @s minecraft:levitation 1 50 false
execute as @a unless score @s criteria matches 2..3 run effect clear @s minecraft:levitation
execute as @a if score @s criteria matches 2..3 run scoreboard players add @s criteria 1
execute as @a if score @s criteria matches 2..3 run scoreboard players set @s sneakTimer 0