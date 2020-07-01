execute if score @s LightChecker matches 1.. positioned as @s run data modify entity @e[limit=1,sort=nearest,type=minecraft:item,nbt={Age:0s}] PickupDelay set value 0
execute if score @s LightChecker matches 1.. store success score @s LightChecker run tag @s[tag=!LC_off] add LC_off
tag @s[tag=LC_off,scores={LightChecker=0}] remove LC_off
tag @s[predicate=!light_checker:toggle] remove LC_toggle