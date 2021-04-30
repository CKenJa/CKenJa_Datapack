execute if score head cw_poser_limb matches 1 store result score @s[tag=cw_poser_rx] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.Head[0]
execute if score head cw_poser_limb matches 1 store result score @s[tag=cw_poser_ry] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.Head[1]
execute if score head cw_poser_limb matches 1 store result score @s[tag=cw_poser_rz] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.Head[2]

execute if score left_arm cw_poser_limb matches 1 store result score @s[tag=cw_poser_rx] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftArm[0]
execute if score left_arm cw_poser_limb matches 1 store result score @s[tag=cw_poser_ry] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftArm[1]
execute if score left_arm cw_poser_limb matches 1 store result score @s[tag=cw_poser_rz] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftArm[2]

execute if score right_arm cw_poser_limb matches 1 store result score @s[tag=cw_poser_rx] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightArm[0]
execute if score right_arm cw_poser_limb matches 1 store result score @s[tag=cw_poser_ry] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightArm[1]
execute if score right_arm cw_poser_limb matches 1 store result score @s[tag=cw_poser_rz] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightArm[2]

execute if score body cw_poser_limb matches 1 store result score @s[tag=cw_poser_rx] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.Body[0]
execute if score body cw_poser_limb matches 1 store result score @s[tag=cw_poser_ry] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.Body[1]
execute if score body cw_poser_limb matches 1 store result score @s[tag=cw_poser_rz] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.Body[2]

execute if score left_leg cw_poser_limb matches 1 store result score @s[tag=cw_poser_rx] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftLeg[0]
execute if score left_leg cw_poser_limb matches 1 store result score @s[tag=cw_poser_ry] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftLeg[1]
execute if score left_leg cw_poser_limb matches 1 store result score @s[tag=cw_poser_rz] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftLeg[2]

execute if score right_leg cw_poser_limb matches 1 store result score @s[tag=cw_poser_rx] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightLeg[0]
execute if score right_leg cw_poser_limb matches 1 store result score @s[tag=cw_poser_ry] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightLeg[1]
execute if score right_leg cw_poser_limb matches 1 store result score @s[tag=cw_poser_rz] cw_poser_rot run data get entity @e[tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightLeg[2]

function cw_poser:rot/encode
scoreboard players operation @s cw_poser_wheel = #enc cw_poser_rot