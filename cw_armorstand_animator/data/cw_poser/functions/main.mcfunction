execute store result score #players cw_poser_sett if entity @a[gamemode=creative]

execute as @a[gamemode=creative] if score @s cw_poser_wheel matches 1.. run function cw_poser:display/whell_check
execute as @a[gamemode=creative] if score @s cw_poser_ani matches 1.. run function cw_poser:animate/menu/pick_frame

execute as @a[gamemode=creative,scores={cw_poser_sneak=1..}] at @s positioned ~ ~0.75 ~ run function cw_poser:raycast
scoreboard players set @a cw_poser_sneak 0


### animation frames ###
execute as @e[tag=animate,type=armor_stand] unless score @s cw_poser_dur matches 1.. run function cw_poser:animate/animate
scoreboard players remove @e[tag=animate,type=armor_stand,scores={cw_poser_dur=1..}] cw_poser_dur 1

say yey