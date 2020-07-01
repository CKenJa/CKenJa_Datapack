execute unless entity @s[scores={HealthVariable=..1}] run effect give @s minecraft:resistance 1 4 true
effect give @s[type=!minecraft:wither_skeleton] minecraft:wither 1 1 true
effect give @s[type=minecraft:wither_skeleton] minecraft:instant_health 1 0 true
execute store result score @s HealthVariable run data get entity @s Health
scoreboard players operation @s HealthVariable -= @s Damage
execute store result entity @s[scores={HealthVariable=1..}] Health float 1 run scoreboard players get @s HealthVariable
kill @s[scores={HealthVariable=..0}]
scoreboard players reset @s Damage
scoreboard players reset @s HealthVariable