### (head, body, left_arm, right_arm, left_leg, right_leg)

scoreboard players operation right_leg cw_poser_limb = @s cw_poser_limb
scoreboard players operation right_leg cw_poser_limb %= #10 constant
scoreboard players operation left_leg cw_poser_limb = @s cw_poser_limb
scoreboard players operation left_leg cw_poser_limb %= #100 constant
scoreboard players operation left_leg cw_poser_limb /= #10 constant
scoreboard players operation right_arm cw_poser_limb = @s cw_poser_limb
scoreboard players operation right_arm cw_poser_limb %= #1000 constant
scoreboard players operation right_arm cw_poser_limb /= #100 constant
scoreboard players operation left_arm cw_poser_limb = @s cw_poser_limb
scoreboard players operation left_arm cw_poser_limb %= #10000 constant
scoreboard players operation left_arm cw_poser_limb /= #1000 constant
scoreboard players operation body cw_poser_limb = @s cw_poser_limb
scoreboard players operation body cw_poser_limb %= #100000 constant
scoreboard players operation body cw_poser_limb /= #10000 constant
scoreboard players operation head cw_poser_limb = @s cw_poser_limb
scoreboard players operation head cw_poser_limb %= #1000000 constant
scoreboard players operation head cw_poser_limb /= #100000 constant
