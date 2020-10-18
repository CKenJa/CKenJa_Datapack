
data modify storage ckenja_named: family.append append from storage ckenja_named: family.append[0]
data remove storage ckenja_named: family.append[0]
scoreboard players remove #loop_counter ckj01_data 1
execute if score #loop_counter ckj01_data matches ..0 run data modify storage ckenja_named: CustomName append from storage ckenja_named: family.append[0] 
execute unless score #loop_counter ckj01_data matches ..0 run function ckenja_named:family/append