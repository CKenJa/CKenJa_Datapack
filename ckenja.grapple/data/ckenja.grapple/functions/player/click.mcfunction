#> ckenja.grapple:player/click
#
#
#
# @within function ckenja.grapple:player/

scoreboard players set @s ckenja.grapple 0

execute store result score $hook.if ckenja.grapple run execute if entity @e[tag=ckenja.grapple.hook]
execute if score $hook.if ckenja.grapple matches 0 run function ckenja.grapple:player/shot
execute if score $hook.if ckenja.grapple matches 1.. run kill @e[tag=ckenja.grapple.hook]
