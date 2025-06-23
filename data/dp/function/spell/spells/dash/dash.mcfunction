# Wyświetla akcję "dash" dla wszystkich graczy (jeśli chcesz tylko dla wykonującego, zmień @a na @s)
execute as @a if score @s selectedSpell matches 2 run title @s actionbar {"translate":"dash","color":"dark_aqua"}
execute as @a if score @s selectedSpell matches 2 at @s run function dp:spell/effects/dash


# Ustawia siłę dasza (jeśli to ma działać tylko dla wykonującego, użyj warunku)
execute as @a at @s run scoreboard players set $strength player_motion.api.launch 20000

# Resetuje cooldown TYLKO dla gracza, który ma dashCooldown=40
execute as @a if score @s dashCooldown matches 0 run scoreboard players set @s isDashing 0
execute as @a if score @s dashCooldown matches ..0 run scoreboard players set @s dashCooldown 40

execute as @a at @s if score @s dashCooldown matches 0..30 if score @s isSneaking matches 1 run playsound minecraft:block.bamboo.break

# Zamiana z ticków na sekundy
execute as @a if score @s dashCooldown matches ..0 run scoreboard players set @s dashCooldownSeconds 2
execute as @a if score @s dashCooldown matches 40 run scoreboard players set @s dashCooldownSeconds 2
execute as @a if score @s dashCooldown matches 20 run scoreboard players set @s dashCooldownSeconds 1


# Następnie wyświetl wynik w actionbar
execute as @a if score @s dashCooldown matches 0..39 run title @s actionbar [{"translate":"dash","color":"dark_aqua"},{"text": " (","color":"gray"},{"score":{"name":"@s","objective":"dashCooldownSeconds"},"color":"white"},{"text":"s)","color":"gray"}]
execute as @a if score @s dashCooldown matches 0..39 if score @s isSneaking matches 1 run title @s actionbar \
[{"text":"dash","color":"#fd6b6b", "obfuscated":true},\
{"text": " (","color":"#fd6b6b", "obfuscated":true},\
{"score":{"name":"@s","objective":"dashCooldownSeconds"},"color":"red", "obfuscated":false},\
{"text":"s","color":"#fd6b6b", "obfuscated":false},\
{"text":")","color":"#fd6b6b", "obfuscated":true}]


# Wywołuje dash TYLKO dla gracza, który kuca i NIE ma isDashing=1
execute as @a if score @s selectedSpell matches 2 if score @s isSneaking matches 1 unless score @s isDashing matches 1 run function dp:spell/spells/dash/execute_dash

# Dodaje cooldown TYLKO dla gracza, który MA isDashing=1 (czyli właśnie użył dasza)
execute if score @s isDashing matches 1 run scoreboard players remove @s dashCooldown 1