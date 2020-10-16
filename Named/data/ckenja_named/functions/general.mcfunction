data remove storage ckenja_named: CustomName.[{}]
#名前
execute store result score #radom ckj01_data run data get entity @s UUID[0] 1
scoreboard players add #ramdom ckj01_data 1
scoreboard players operation #ramdom ckj01_data /= #16777216 ckj01_data
execute if score #random ckj01_data matches ..64 run function ckenja_named:given/_64
execute if score #random ckj01_data matches 64.. run function ckenja_named:given/64_
#苗字
execute store result score #radom ckj01_data run data get entity @s UUID[1] 1
scoreboard players add #ramdom ckj01_data 1
scoreboard players operation #ramdom ckj01_data /= #16777216 ckj01_data
execute if score #random ckj01_data matches ..64 run function ckenja_named:family/_64
execute if score #random ckj01_data matches 64.. run function ckenja_named:family/64_
#称号
execute store result score #radom ckj01_data run data get entity @s UUID[2] 1
scoreboard players add #ramdom ckj01_data 1
scoreboard players operation #ramdom ckj01_data /= #16777216 ckj01_data
execute if score #random ckj01_data matches ..64 run function ckenja_named:title/_64
execute if score #random ckj01_data matches 64.. run function ckenja_named:title/64_
#強化
#execute store result score #radom ckj01_data run data get entity @s UUID[3] 1
#scoreboard players add #ramdom ckj01_data 1
#scoreboard players operation #ramdom ckj01_data /= #16777216 ckj01_data
#execute if score #random ckj01_data matches ..64 run function ckenja_named:enhanced/_64
#execute if score #random ckj01_data matches 64.. run function ckenja_named:enhanced/64_
#反映
data modify entity @s CustomName set from storage ckenja_named CustomName