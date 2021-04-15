#AECにPos代入(フック位置)
data merge storage ckenja_pig_hook: {tmp:{pos:[0.0,0.0,0.0]}}
execute store result storage ckenja_pig_hook: tmp.pos[0] double 0.00000001 run scoreboard players get $tmp_mot_x ckj03_data
execute store result storage ckenja_pig_hook: tmp.pos[1] double 0.00000001 run scoreboard players get $tmp_mot_y ckj03_data
execute store result storage ckenja_pig_hook: tmp.pos[2] double 0.00000001 run scoreboard players get $tmp_mot_z ckj03_data
data modify entity @s Pos set from storage ckenja_pig_hook: tmp.pos
#実行場所はそのまま慣性をpos代入
execute positioned as @s run function ckenja_pig_hook:operation/swing/aec2
