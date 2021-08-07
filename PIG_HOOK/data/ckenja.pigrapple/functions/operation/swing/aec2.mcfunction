#pos代入(ブタmotion)
data merge storage ckenja.pigrapple: {tmp:{Pos:[0.0,0.0,0.0]}}
execute store result storage ckenja.pigrapple: tmp.Pos[0] double 0.00000001 run scoreboard players get $tmp_pos_x ckj04.data
execute store result storage ckenja.pigrapple: tmp.Pos[1] double 0.00000001 run scoreboard players get $tmp_pos_y ckj04.data
execute store result storage ckenja.pigrapple: tmp.Pos[2] double 0.00000001 run scoreboard players get $tmp_pos_z ckj04.data
data modify entity @s Pos set from storage ckenja.pigrapple: tmp.Pos
#自分向いて二分探索で鎖長にtp
execute facing entity @s feet run function ckenja.pigrapple:moving
