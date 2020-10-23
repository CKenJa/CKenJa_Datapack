scoreboard players operation #tmp ckj01_data += #daytime ckj01_data
scoreboard players operation #tmp ckj01_data += #180400 ckj01_data
scoreboard players operation #tmp ckj01_data /= #24000 ckj01_data
scoreboard players operation #tmp ckj01_data %= #8 ckj01_data
execute store success score #full_moon ckj01_data run execute if score #tmp ckj01_data matches 0