#ckj04/before_entity/in_root
execute store result score #daytime ckj04.data run time query daytime
execute if score #daytime ckj04_data matches 0 run function ckj04:data/tick/day