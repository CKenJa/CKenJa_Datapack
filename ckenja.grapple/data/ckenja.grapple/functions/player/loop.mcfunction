#> ckenja.grapple:player/loop
#
#
#
# @within function ckenja.grapple:player/shot

scoreboard players add $length ckenja.grapple 1
particle crit ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^1 unless block ~ ~ ~ air run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["ckenja.grapple.hook"],ArmorItems:[{},{},{},{id:"minecraft:carrot",Count:1b}]}
execute positioned ^ ^ ^1 if block ~ ~ ~ air if score $length ckenja.grapple matches ..32 run function ckenja.grapple:player/loop
