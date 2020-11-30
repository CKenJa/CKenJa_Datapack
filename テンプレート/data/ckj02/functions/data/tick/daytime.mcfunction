#ckj02/before_entity/in_root
execute store result score #daytime ckj02_data run time query daytime
execute if score #daytime ckj02_data matches 0 run function ckj02:data/tick/day