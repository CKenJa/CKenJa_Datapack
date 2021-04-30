function cw_poser:animate/get_info
scoreboard players remove #frames cw_poser_ani 1

### remove removes the frame ur ON ###
execute as @p if score @s cw_poser_ani > #frames cw_poser_ani run scoreboard players operation @s cw_poser_ani = #frames cw_poser_ani
execute as @p if score @s cw_poser_ani matches 0 run scoreboard players operation @s cw_poser_ani = #frames cw_poser_ani
execute as @p if score @s cw_poser_ani matches 1.. run scoreboard players operation #frames cw_poser_ani = @s cw_poser_ani
function cw_poser:animate/remove_selected

scoreboard players remove @p[scores={cw_poser_ani=..1}] cw_poser_ani 1
scoreboard players operation @p cw_poser_anip = @p cw_poser_ani

function cw_poser:animate/get_pose_selected

execute as @p run function cw_poser:display/directory