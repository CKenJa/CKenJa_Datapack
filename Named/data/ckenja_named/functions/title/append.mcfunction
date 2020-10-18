data modify storage ckenja_named: title.append append from storage ckenja_named: title.append[0]
data remove storage ckenja_named: title.append[0]
scoreboard players remove #random ckj01_data 1
execute if score #random ckj01_data matches ..0 run data modify storage ckenja_named: CustomName append from storage ckenja_named: title.append[0] 
execute unless score #random ckj01_data matches ..0 run function ckenja_named:title/append