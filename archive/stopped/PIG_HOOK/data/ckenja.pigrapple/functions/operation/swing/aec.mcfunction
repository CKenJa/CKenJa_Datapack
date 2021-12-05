#pos代入
data merge storage ckenja.pigrapple: {tmp:{pos:[0.0,0.0,0.0]}}
execute store result storage ckenja.pigrapple: tmp.pos[0] double 0.00000001 run scoreboard players get $tmp_mot_x ckj04.data
execute store result storage ckenja.pigrapple: tmp.pos[1] double 0.00000001 run scoreboard players get $tmp_mot_y ckj04.data
execute store result storage ckenja.pigrapple: tmp.pos[2] double 0.00000001 run scoreboard players get $tmp_mot_z ckj04.data
data modify entity @s Pos set from storage ckenja.pigrapple: tmp.pos
#原点から自分向いて二分探索で鎖長にtp
execute positioned 0.0 0.0 0.0 facing entity @s feet run function ckenja.pigrapple:moving/
#座標を保存
data modify storage ckenja.pigrapple: tmp.Vec set from entity @s Pos
#data modify entity @s Pos set from storage ckenja.pigrapple: tmp.pos
#用済みはキル
kill @s
