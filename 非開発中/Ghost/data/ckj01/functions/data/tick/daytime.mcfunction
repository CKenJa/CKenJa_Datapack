#ckj01/before_entity/in
execute store result score #daytime ckj01_data run time query daytime
execute if score #daytime ckj01_data matches 0 run function ckj01:data/tick/day