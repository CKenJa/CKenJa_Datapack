summon minecraft:armor_stand ~ ~ ~ {Glowing:1b,Invisible:1b,Tags:["ckenja_maximus_initial","ckenja_maximus"]}
scoreboard players operation @s ckenja_maximus = #id ckenja_maximus
execute as @e[tag=ckenja_maximus_initial] run function ckenja_maximus:use/backup/summon2
tag @s add ckenja_maximus
say a