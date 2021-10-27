
# Calc_Vector
execute store result score #ckenja.bread.asa_matrix_x_x AsaMatrix store result score #ckenja.bread.asa_matrix_z_x AsaMatrix run scoreboard players get #ckenja.bread.asa_move_pos_x AsaMatrix
execute store result score #ckenja.bread.asa_matrix_x_z AsaMatrix store result score #ckenja.bread.asa_matrix_z_z AsaMatrix run scoreboard players get #ckenja.bread.asa_move_pos_z AsaMatrix
execute store result score #ckenja.bread.asa_move_pos_temp_y AsaMatrix run scoreboard players get #ckenja.bread.asa_move_pos_y AsaMatrix

# X
scoreboard players operation #ckenja.bread.asa_matrix_x_x AsaMatrix *= #ckenja.bread.asa_matrix_cosλ AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_x_z AsaMatrix *= #ckenja.bread.asa_matrix_sinλ AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_x_x AsaMatrix -= #ckenja.bread.asa_matrix_x_z AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_x_x AsaMatrix /= #ckenja.bread.asam_const_1000 AsaMatrix

# Z
scoreboard players operation #ckenja.bread.asa_matrix_z_x AsaMatrix *= #ckenja.bread.asa_matrix_sinλ AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_z_z AsaMatrix *= #ckenja.bread.asa_matrix_cosλ AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_z_z AsaMatrix += #ckenja.bread.asa_matrix_z_x AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_z_z AsaMatrix /= #ckenja.bread.asam_const_1000 AsaMatrix

# Set_Vector
execute store result score #ckenja.bread.asa_move_pos_temp_x AsaMatrix run scoreboard players get #ckenja.bread.asa_matrix_x_x AsaMatrix
execute store result score #ckenja.bread.asa_move_pos_temp_z AsaMatrix run scoreboard players get #ckenja.bread.asa_matrix_z_z AsaMatrix