function cw_poser:display/directory

function cw_poser:rot/decode
scoreboard players operation #dec1 cw_poser_rot = #dec cw_poser_rot
function cw_poser:rot/encode
execute unless score @s cw_poser_wheel = #enc cw_poser_rot run scoreboard players reset @s cw_poser_rot
execute unless score @s cw_poser_rot matches -180..180 run scoreboard players operation @s cw_poser_rot = #dec1 cw_poser_rot
execute unless score @s cw_poser_wheel matches -1 run function cw_poser:rot/update