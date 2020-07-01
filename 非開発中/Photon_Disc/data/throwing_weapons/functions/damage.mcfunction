data merge entity @s {ActiveEffects:[{Id:19b,Amplifier:4b,Duration:1}]}
execute store result score @s HealthVariable run data get entity @s Health
scoreboard players operation @s HealthVariable -= @s Damage
execute store result entity @s[scores={HealthVariable=1..}] Health float 1 run scoreboard players get @s HealthVariable
kill @s[scores={HealthVariable=..0}]
scoreboard players reset @s Damage
scoreboard players reset @s HealthVariable