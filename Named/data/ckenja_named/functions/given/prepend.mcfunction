
data modify storage ckenja_named: given.prepend append from storage ckenja_named: given.prepend[0]
data remove storage ckenja_named: given.prepend[0]
scoreboard players add #loop_counter ckj01_data 1
execute unless score #loop_counter ckj01_data matches ..0 run data modify storage ckenja_named: CustomName prepend from storage ckenja_named: given.prepend[0] 
execute if score #loop_counter ckj01_data matches ..0 run function ckenja_named:given/prepend