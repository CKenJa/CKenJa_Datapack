#ckj03/before_entity/in_root
execute store result score #daytime ckj03_data run time query daytime
execute if score #daytime ckj03_data matches 0 run function ckj03:data/tick/day