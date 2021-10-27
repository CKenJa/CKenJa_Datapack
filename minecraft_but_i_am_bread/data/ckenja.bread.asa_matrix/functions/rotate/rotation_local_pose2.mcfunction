
# Calc_Vector
execute store result score #ckenja.bread.asa_matrix_x_x AsaMatrix store result score #ckenja.bread.asa_matrix_y_x AsaMatrix run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result score #ckenja.bread.asa_matrix_x_y AsaMatrix store result score #ckenja.bread.asa_matrix_y_y AsaMatrix run scoreboard players get #asa_child_pos_y AsaMatrix

# X
scoreboard players operation #ckenja.bread.asa_matrix_x_x AsaMatrix *= #ckenja.bread.asa_matrix_cosΨ AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_x_y AsaMatrix *= #ckenja.bread.asa_matrix_sinΨ AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_x_x AsaMatrix += #ckenja.bread.asa_matrix_x_y AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_x_x AsaMatrix /= #asam_const_1000 AsaMatrix

# Y
scoreboard players operation #ckenja.bread.asa_matrix_y_x AsaMatrix *= #ckenja.bread.asa_matrix_sinΨ AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_y_y AsaMatrix *= #ckenja.bread.asa_matrix_cosΨ AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_y_y AsaMatrix -= #ckenja.bread.asa_matrix_y_x AsaMatrix
scoreboard players operation #ckenja.bread.asa_matrix_y_y AsaMatrix /= #asam_const_1000 AsaMatrix

# Set_Vector
execute store result score #asa_child_pos_x AsaMatrix run scoreboard players get #ckenja.bread.asa_matrix_x_x AsaMatrix
execute store result score #asa_child_pos_y AsaMatrix run scoreboard players get #ckenja.bread.asa_matrix_y_y AsaMatrix