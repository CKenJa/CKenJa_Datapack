#Fireball�݂�����Motion�ł͂Ȃ�power���g���悤�Ȃ��̂��΂���
#�΂̋ʎ��g���ǂ̈ʒu��AEC���o�����ő��x�����\
#�����͂��̃t�@���N�V�����ł͈�ؒ������Ȃ���I
#execute at @s run tp @s ~ ~ ~ facing entity @p eyes
#execute as @s at @s run summon area_effect_cloud ^ ^ ^0.1 {Particke:mobSpell,Radius:0f,Duratation:1,Tags:["pos"]}
#X��
execute as @s store result score @s Motion_Power run data get entity @s Pos[0] 300
execute as @e[tag=pos] store result score @s Motion_Power run data get entity @s Pos[0] 300
execute as @s at @s positioned ^ ^ ^1 run scoreboard players operation @s Motion_Power -= @e[tag=pos,limit=1,sort=nearest] Motion_Power
execute as @s at @s store result entity @s direction[0] double -0.01 run scoreboard players get @s Motion_Power

#Y��
execute as @s store result score @s Motion_Power run data get entity @s Pos[1] 300
execute as @e[tag=pos] store result score @s Motion_Power run data get entity @s Pos[1] 300
execute as @s at @s positioned ^ ^ ^1 run scoreboard players operation @s Motion_Power -= @e[tag=pos,limit=1,sort=nearest] Motion_Power
execute as @s at @s store result entity @s direction[1] double -0.01 run scoreboard players get @s Motion_Power

#Z��
execute as @s store result score @s Motion_Power run data get entity @s Pos[2] 300
execute as @e[tag=pos] store result score @s Motion_Power run data get entity @s Pos[2] 300
execute as @s at @s positioned ^ ^ ^1 run scoreboard players operation @s Motion_Power -= @e[tag=pos,limit=1,sort=nearest] Motion_Power
execute as @s at @s store result entity @s direction[2] double -0.01 run scoreboard players get @s Motion_Power
