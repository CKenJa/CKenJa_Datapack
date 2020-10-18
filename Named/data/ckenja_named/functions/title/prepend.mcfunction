data modify storage ckenja_named: title.prepend append from storage ckenja_named: title.prepend[0]
data remove storage ckenja_named: title.prepend[0]
scoreboard players add #random ckj01_data 1
execute unless score #random ckj01_data matches ..0 run data modify storage ckenja_named: CustomName prepend from storage ckenja_named: title.prepend[0] 
execute if score #random ckj01_data matches ..0 run function ckenja_named:title/prepend