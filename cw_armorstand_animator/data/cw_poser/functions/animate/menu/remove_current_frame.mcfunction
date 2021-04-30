execute if score @s cw_poser_ani matches 0 run scoreboard players operation @s cw_poser_ani = #frames cw_poser_ani
scoreboard players operation #frames cw_poser_ani = @s cw_poser_ani
execute as @e[type=armor_stand,sort=nearest,limit=1] run function cw_poser:animate/remove_selected
scoreboard players remove @s[scores={cw_poser_ani=1..}] cw_poser_ani 1
execute as @e[tag=cw_poser_edit,sort=nearest,limit=1] run function cw_poser:animate/get_pose_selected
### return to last frame after deletion
#execute as @e[type=armor_stand,limit=1,sort=nearest] run function cw_poser:animate/get_info
#scoreboard players remove #frames cw_poser_ani 1
#scoreboard players operation @s cw_poser_ani = #frames cw_poser_ani

function cw_poser:animate/menu/directory