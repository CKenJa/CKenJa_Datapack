execute as @e[tag=cw_poser_edit,sort=nearest,limit=1] if data entity @s ArmorItems[0].tag.ani_frames run function cw_poser:animate/get_info
tag @e[tag=cw_poser_edit,sort=nearest,limit=1] remove cw_poser_edit

execute unless entity @e[tag=cw_poser_edit] if score feedback cw_poser_sett matches 1 run gamerule sendCommandFeedback true

tag @s remove cw_poser_rx
tag @s remove cw_poser_ry
tag @s remove cw_poser_rz

scoreboard players reset @s cw_poser_ani
scoreboard players reset @s cw_poser_anip
scoreboard players reset @s cw_poser_rot
scoreboard players reset @s cw_poser_wheel
scoreboard players reset @s cw_poser_wheelp
scoreboard players reset @s cw_poser_limb
scoreboard players reset @s cw_poser_sneak

tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]