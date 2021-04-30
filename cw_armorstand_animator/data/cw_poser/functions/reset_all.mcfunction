data modify entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose set value {Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}

tag @s remove cw_poser_rx
tag @s remove cw_poser_ry
tag @s remove cw_poser_rz

scoreboard players set @s cw_poser_wheel -1

function cw_poser:display/directory