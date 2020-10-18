data remove storage ckenja_named: CustomName
#名前
execute store result score #random ckj01_data run data get entity @s UUID[0] 1
scoreboard players add #random ckj01_data 1
scoreboard players operation #random ckj01_data /= #ckenja_named_denominator ckj01_data
execute if score #random ckj01_data matches ..0 run function ckenja_named:given/prepend
execute unless score #random ckj01_data matches ..0 run function ckenja_named:given/append
#execute if score #random ckj01_data matches ..63 run function ckenja_named:given/_63
#execute if score #random ckj01_data matches 64.. run function ckenja_named:given/64_
#苗字
execute store result score #random ckj01_data run data get entity @s UUID[1] 1
scoreboard players add #random ckj01_data 1
scoreboard players operation #random ckj01_data /= #ckenja_named_denominator ckj01_data
execute if score #random ckj01_data matches ..0 run function ckenja_named:family/prepend
execute unless score #random ckj01_data matches ..0 run function ckenja_named:family/append
#execute if score #random ckj01_data matches ..63 run function ckenja_named:family/_63
#execute if score #random ckj01_data matches 64.. run function ckenja_named:family/64_
#称号
execute store result score #random ckj01_data run data get entity @s UUID[2] 1
scoreboard players add #random ckj01_data 1
scoreboard players operation #random ckj01_data /= #ckenja_named_denominator ckj01_data
execute if score #random ckj01_data matches ..0 run function ckenja_named:title/prepend
execute unless score #random ckj01_data matches ..0 run function ckenja_named:title/append
#execute if score #random ckj01_data matches ..63 run function ckenja_named:title/_63
#execute if score #random ckj01_data matches 64.. run function ckenja_named:title/64_
#強化
execute store result score #random ckj01_data run data get entity @s UUID[3] 1
scoreboard players add #random ckj01_data 1
scoreboard players operation #random ckj01_data /= #ckenja_named_denominator ckj01_data
#execute if score #random ckj01_data matches ..63 run function ckenja_named:enhanced/_63
#execute if score #random ckj01_data matches 64.. run function ckenja_named:enhanced/64_
#反映
data modify entity @s CustomName set from storage ckenja_named CustomName