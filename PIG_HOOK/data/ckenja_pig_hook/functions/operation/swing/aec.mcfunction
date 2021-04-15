#pos代入
data merge storage ckenja_pig_hook: {tmp:{pos:[0.0,0.0,0.0]}}
execute store result storage ckenja_pig_hook: tmp.pos[0] double 0.00000001 run scoreboard players get $tmp_mot_x ckj03_data
execute store result storage ckenja_pig_hook: tmp.pos[1] double 0.00000001 run scoreboard players get $tmp_mot_y ckj03_data
execute store result storage ckenja_pig_hook: tmp.pos[2] double 0.00000001 run scoreboard players get $tmp_mot_z ckj03_data
data modify entity @s Pos set from storage ckenja_pig_hook: tmp.pos
#原点から自分向いて二分探索で鎖長にtp
execute positioned 0.0 0.0 0.0 facing as @s run function ckenja_pig_hook:moving/
#座標を保存
#data modify entity @s Pos set from storage ckenja_pig_hook: tmp.pos
#用済みはキル
kill @s
