#particle crit ~ ~ ~ 0 0 0 0 1
scoreboard players add @s cw_poser_sneak 1
execute if entity @e[type=armor_stand,tag=!cw_poser_editp,distance=..0.75] run function cw_poser:edit

execute unless score @s cw_poser_sneak matches 20.. unless entity @e[type=armor_stand,tag=!cw_poser_edit,distance=..0.75] positioned ^ ^ ^0.5 run function cw_poser:raycast