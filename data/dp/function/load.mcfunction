tellraw @a {text:"Loading datapack... ", color:"#ee720d", bold:true}

scoreboard objectives add isSneaking custom:sneak_time
scoreboard objectives add sneakTimer dummy
scoreboard objectives add criteria dummy

# Spelle
scoreboard objectives add spell_timer dummy
scoreboard objectives add selectedSlot dummy
scoreboard objectives add spellSelection dummy
scoreboard objectives add selectedSpell dummy

execute as @a[scores={criteria=0..}] run scoreboard players set @s criteria 0

# Dash
scoreboard objectives add dashCooldown dummy
scoreboard objectives add dashCooldownSeconds dummy
scoreboard objectives add isDashing dummy
execute as @a[scores={isDashing=0..}] run scoreboard players set @s isDashing 0

# Shrink
scoreboard objectives add shrinkCooldown dummy
scoreboard objectives add shrinkLoad dummy
scoreboard objectives add isShrinked dummy
scoreboard objectives add shrinkOnCooldown dummy
execute as @a run scoreboard players set @s isShrinked 0
execute as @a run scoreboard players set @s shrinkOnCooldown 0

tellraw @a {text:"Finished loading!", color:"green", bold:true}