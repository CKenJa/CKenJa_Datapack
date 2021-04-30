### (head, body, left_arm, right_arm, left_leg, right_leg)

scoreboard players operation @s cw_poser_limb = head cw_poser_limb
scoreboard players operation @s cw_poser_limb *= #10 constant
scoreboard players operation @s cw_poser_limb += body cw_poser_limb
scoreboard players operation @s cw_poser_limb *= #10 constant
scoreboard players operation @s cw_poser_limb += left_arm cw_poser_limb
scoreboard players operation @s cw_poser_limb *= #10 constant
scoreboard players operation @s cw_poser_limb += right_arm cw_poser_limb
scoreboard players operation @s cw_poser_limb *= #10 constant
scoreboard players operation @s cw_poser_limb += left_leg cw_poser_limb
scoreboard players operation @s cw_poser_limb *= #10 constant
scoreboard players operation @s cw_poser_limb += right_leg cw_poser_limb