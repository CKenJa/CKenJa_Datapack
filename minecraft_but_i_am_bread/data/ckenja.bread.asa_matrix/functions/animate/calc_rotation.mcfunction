execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[1f,0f,0f]}}
data merge storage ckenja.bread.asa_matrix: {Pose:[], Rotate:[],Result:[0f,0f,0f]}
data modify storage ckenja.bread.asa_matrix: Pose append from entity @s Pose.Head[]
data modify storage ckenja.bread.asa_matrix: Rotate append from entity @s ArmorItems[3].tag.Rotate[]

execute store result score #ckenja.bread.asa_rotate_current AsaMatrix run data get storage ckenja.bread.asa_matrix: Pose[0] 1000
execute store result score #ckenja.bread.asa_rotate_add AsaMatrix run data get storage ckenja.bread.asa_matrix: Rotate[0] 1
scoreboard players operation #ckenja.bread.asa_rotate_current AsaMatrix += #ckenja.bread.asa_rotate_add AsaMatrix
execute if score #ckenja.bread.asa_rotate_current AsaMatrix matches ..-180000 run scoreboard players add #ckenja.bread.asa_rotate_current AsaMatrix 360000
execute store result storage ckenja.bread.asa_matrix: Result[0] float 0.001 run scoreboard players get #ckenja.bread.asa_rotate_current AsaMatrix

execute store result score #ckenja.bread.asa_rotate_current AsaMatrix run data get storage ckenja.bread.asa_matrix: Pose[1] 1000
execute store result score #ckenja.bread.asa_rotate_add AsaMatrix run data get storage ckenja.bread.asa_matrix: Rotate[1] 1
scoreboard players operation #ckenja.bread.asa_rotate_current AsaMatrix += #ckenja.bread.asa_rotate_add AsaMatrix
execute if score #ckenja.bread.asa_rotate_current AsaMatrix matches ..-180000 run scoreboard players add #ckenja.bread.asa_rotate_current AsaMatrix 360000
execute store result storage ckenja.bread.asa_matrix: Result[1] float 0.001 run scoreboard players get #ckenja.bread.asa_rotate_current AsaMatrix

execute store result score #ckenja.bread.asa_rotate_current AsaMatrix run data get storage ckenja.bread.asa_matrix: Pose[2] 1000
execute store result score #ckenja.bread.asa_rotate_add AsaMatrix run data get storage ckenja.bread.asa_matrix: Rotate[2] 1
scoreboard players operation #ckenja.bread.asa_rotate_current AsaMatrix += #ckenja.bread.asa_rotate_add AsaMatrix
execute if score #ckenja.bread.asa_rotate_current AsaMatrix matches ..-180000 run scoreboard players add #ckenja.bread.asa_rotate_current AsaMatrix 360000
execute store result storage ckenja.bread.asa_matrix: Result[2] float 0.001 run scoreboard players get #ckenja.bread.asa_rotate_current AsaMatrix

data modify entity @s Pose.Head set from storage ckenja.bread.asa_matrix: Result