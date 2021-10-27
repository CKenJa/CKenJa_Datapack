scoreboard players operation #ckenja.bread.asa_move_pos_temp_x AsaMatrix += #ckenja.bread.asa_parent_pos_x AsaMatrix
scoreboard players operation #ckenja.bread.asa_move_pos_temp_y AsaMatrix += #ckenja.bread.asa_parent_pos_y AsaMatrix
scoreboard players operation #ckenja.bread.asa_move_pos_temp_z AsaMatrix += #ckenja.bread.asa_parent_pos_z AsaMatrix

data merge storage ckenja.bread.asa_matrix: {Pos:[0d,0d,0d]}
execute store result storage ckenja.bread.asa_matrix: Pos[0] double 0.001 run scoreboard players get #ckenja.bread.asa_move_pos_temp_x AsaMatrix
execute store result storage ckenja.bread.asa_matrix: Pos[1] double 0.001 run scoreboard players get #ckenja.bread.asa_move_pos_temp_y AsaMatrix
execute store result storage ckenja.bread.asa_matrix: Pos[2] double 0.001 run scoreboard players get #ckenja.bread.asa_move_pos_temp_z AsaMatrix
data modify entity @s Pos set from storage ckenja.bread.asa_matrix: Pos
execute at @s run tp @s ~ ~ ~ ~ ~