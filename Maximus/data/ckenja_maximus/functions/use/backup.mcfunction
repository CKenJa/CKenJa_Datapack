#初回だけ実行
execute as @s[tag=!ckenja_id] run function ckenja:id/register
execute as @s[tag=!ckenja_maximus] run function ckenja_maximus:use/backup/summon1
execute store result score #health ckenja_maximus run data get entity @s Attributes[0].Base 1
execute store result score #speed ckenja_maximus run data get entity @s Attributes[2].Base 1000
execute store result score #jump ckenja_maximus run data get entity @s Attributes[7].Base 100
execute store result score #variant ckenja_maximus run data get entity @s Variant 1
execute at @s run execute as @e[type=minecraft:armor_stand,tag=ckenja_maximus] run execute if score @s ckenja_maximus = #id ckenja_maximus run function ckenja_maximus/use/backup/sync