execute as @e[tag=cw_poser_edit,limit=1,sort=nearest] at @s run function cw_poser:animate/get_info
scoreboard players add #dur cw_poser_ani 1
execute as @e[tag=cw_poser_edit,limit=1,sort=nearest] at @s run function cw_poser:animate/dur_selected

function cw_poser:animate/menu/directory