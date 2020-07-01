#summon
execute store result score $LightChecker LightChecker if entity @e[tag=LightChecker]
execute unless score $LightChecker LightChecker matches 2 run function light_checker:summon
#toggle
execute as @a[tag=!LC_toggle,predicate=light_checker:toggle] run tag @s add LC_toggle
execute as @a[tag=LC_toggle] run function light_checker:toggle
scoreboard players reset @a[scores={LightChecker=1..}] LightChecker
#main
execute as @a[tag=!LC_off,predicate=light_checker:holding] positioned as @s positioned ~0.5 ~ ~0.5 align xyz rotated as @e[limit=2,tag=LightChecker] rotated ~ 0 positioned ^ ^ ^4 rotated as @e[limit=2,tag=LightChecker] rotated ~ 0 positioned ^ ^ ^2 rotated as @e[limit=2,tag=LightChecker] rotated ~ 0 positioned ^ ^ ^1 rotated as @e[limit=2,tag=LightChecker] rotated ~ 0 positioned ^ ^ ^0.5 rotated as @e[limit=2,tag=LightChecker] positioned ^4 ^ ^ rotated as @e[limit=2,tag=LightChecker] positioned ^2 ^ ^ rotated as @e[limit=2,tag=LightChecker] positioned ^1 ^ ^ rotated as @e[limit=1,sort=random,tag=LightChecker] positioned ^0.5 ^ ^ rotated as @e[limit=1,sort=random,tag=LightChecker] positioned ^ ^ ^2 rotated as @e[limit=1,sort=random,tag=LightChecker] positioned ^ ^ ^1 rotated as @e[limit=1,sort=random,tag=LightChecker] positioned ^ ^ ^0.5 if block ~ ~ ~ #light_checker:show unless block ~ ~-1 ~ #light_checker:show run function light_checker:particle