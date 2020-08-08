






data remove storage advanced_datapacks:craft work_space[0].recipes[]

#インプットをコピーする

data remove storage advanced_datapacks:craft work_space[0].input_nbt[]

function advanced_craft:recipe_system/output/reset_input


#インプットにempty以外が存在するならレシピ確認処理を行う
#レシピと照合する
#定型
data modify storage advanced_datapacks:craft work_space[0].recipes set from storage advanced_datapacks:craft recipes.type1
function advanced_craft:recipe_system/output/check_recipe/type_1
#不定型
#execute if score #recipe_check ADCmatch_recipe matches 1 run data modify storage advanced_datapacks:craft work_space[0].recipes set from storage advanced_datapacks:craft recipes.type2
#execute if score #recipe_check ADCmatch_recipe matches 1 run function advanced_craft:recipe_system/output/check_recipe/type_2
#動的
#execute if score #recipe_check ADCmatch_recipe matches 1 run data modify storage advanced_datapacks:craft work_space[0].recipes set from storage advanced_datapacks:craft recipes.type3
#execute if score #recipe_check ADCmatch_recipe matches 1 run function advanced_craft:recipe_system/output/check_recipe/type_3













#インプットにempty以外が存在するならレシピ確認処理を行う















