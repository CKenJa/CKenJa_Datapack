scoreboard players add @s cw_poser_ani 1
execute as @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] run function cw_poser:animate/get_pose_selected
scoreboard players remove @s cw_poser_ani 1

function cw_poser:animate/menu/directory