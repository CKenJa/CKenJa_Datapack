function cw_poser:select/decode

execute if score head cw_poser_limb matches 1 if entity @s[tag=cw_poser_rx] as @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] unless data entity @s Pose.Head run data modify entity @s Pose merge value {Head:[1f,0f,0f]}
execute if score head cw_poser_limb matches 1 if entity @s[tag=cw_poser_rx] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.Head[0] float 1 run scoreboard players get @s cw_poser_rot
execute if score head cw_poser_limb matches 1 if entity @s[tag=cw_poser_ry] as @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] unless data entity @s Pose.Head run data modify entity @s Pose merge value {Head:[0f,1f,0f]}
execute if score head cw_poser_limb matches 1 if entity @s[tag=cw_poser_ry] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.Head[1] float 1 run scoreboard players get @s cw_poser_rot
execute if score head cw_poser_limb matches 1 if entity @s[tag=cw_poser_rz] as @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] unless data entity @s Pose.Head run data modify entity @s Pose merge value {Head:[0f,0f,1f]}
execute if score head cw_poser_limb matches 1 if entity @s[tag=cw_poser_rz] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.Head[2] float 1 run scoreboard players get @s cw_poser_rot

execute if score body cw_poser_limb matches 1 if entity @s[tag=cw_poser_rx] as @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] unless data entity @s Pose.Body run data modify entity @s Pose merge value {Body:[1f,0f,0f]}
execute if score body cw_poser_limb matches 1 if entity @s[tag=cw_poser_rx] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.Body[0] float 1 run scoreboard players get @s cw_poser_rot
execute if score body cw_poser_limb matches 1 if entity @s[tag=cw_poser_ry] as @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] unless data entity @s Pose.Body run data modify entity @s Pose merge value {Body:[0f,1f,0f]}
execute if score body cw_poser_limb matches 1 if entity @s[tag=cw_poser_ry] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.Body[1] float 1 run scoreboard players get @s cw_poser_rot
execute if score body cw_poser_limb matches 1 if entity @s[tag=cw_poser_rz] as @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] unless data entity @s Pose.Body run data modify entity @s Pose merge value {Body:[0f,0f,1f]}
execute if score body cw_poser_limb matches 1 if entity @s[tag=cw_poser_rz] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.Body[2] float 1 run scoreboard players get @s cw_poser_rot

execute if score left_arm cw_poser_limb matches 1 if entity @s[tag=cw_poser_rx] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftArm[0] float 1 run scoreboard players get @s cw_poser_rot
execute if score left_arm cw_poser_limb matches 1 if entity @s[tag=cw_poser_ry] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftArm[1] float 1 run scoreboard players get @s cw_poser_rot
execute if score left_arm cw_poser_limb matches 1 if entity @s[tag=cw_poser_rz] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftArm[2] float 1 run scoreboard players get @s cw_poser_rot

execute if score right_arm cw_poser_limb matches 1 if entity @s[tag=cw_poser_rx] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightArm[0] float 1 run scoreboard players get @s cw_poser_rot
execute if score right_arm cw_poser_limb matches 1 if entity @s[tag=cw_poser_ry] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightArm[1] float 1 run scoreboard players get @s cw_poser_rot
execute if score right_arm cw_poser_limb matches 1 if entity @s[tag=cw_poser_rz] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightArm[2] float 1 run scoreboard players get @s cw_poser_rot

execute if score left_leg cw_poser_limb matches 1 if entity @s[tag=cw_poser_rx] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftLeg[0] float 1 run scoreboard players get @s cw_poser_rot
execute if score left_leg cw_poser_limb matches 1 if entity @s[tag=cw_poser_ry] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftLeg[1] float 1 run scoreboard players get @s cw_poser_rot
execute if score left_leg cw_poser_limb matches 1 if entity @s[tag=cw_poser_rz] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.LeftLeg[2] float 1 run scoreboard players get @s cw_poser_rot

execute if score right_leg cw_poser_limb matches 1 if entity @s[tag=cw_poser_rx] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightLeg[0] float 1 run scoreboard players get @s cw_poser_rot
execute if score right_leg cw_poser_limb matches 1 if entity @s[tag=cw_poser_ry] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightLeg[1] float 1 run scoreboard players get @s cw_poser_rot
execute if score right_leg cw_poser_limb matches 1 if entity @s[tag=cw_poser_rz] store result entity @e[type=armor_stand,tag=cw_poser_edit,sort=nearest,limit=1] Pose.RightLeg[2] float 1 run scoreboard players get @s cw_poser_rot