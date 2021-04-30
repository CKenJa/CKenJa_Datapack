execute unless score @s cw_poser_rot matches -180..180 run function cw_poser:rot/decode
execute unless score @s cw_poser_rot matches -180..180 run scoreboard players operation @s cw_poser_rot = #dec cw_poser_rot

scoreboard players add @s cw_poser_rot 1
scoreboard players set @s[scores={cw_poser_rot=181..}] cw_poser_rot -179

function cw_poser:rot/encode
scoreboard players operation @s cw_poser_wheel = #enc cw_poser_rot

function cw_poser:rot/update