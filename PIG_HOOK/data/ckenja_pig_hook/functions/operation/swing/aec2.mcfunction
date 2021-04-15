#pos代入(ブタmotion)
data merge storage ckenja_pig_hook: {tmp:{Pos:[0.0,0.0,0.0]}}}
execute store result storage ckenja_pig_hook: tmp.Pos[0] double 0.00000001 run scoreboard players get $tmp_mot_x ckj03_data
execute store result storage ckenja_pig_hook: tmp.Pos[1] double 0.00000001 run scoreboard players get $tmp_mot_y ckj03_data
execute store result storage ckenja_pig_hook: tmp.Pos[2] double 0.00000001 run scoreboard players get $tmp_mot_z ckj03_data
data modify entity @s Pos set from storage ckenja_pig_hook: tmp.Pos
#自分向いて二分探索で鎖長にtp
execute facing as @s run function ckenja_pig_hook:moving
