execute store result score #tmp3 ckj01_data run data get storage ckenja_bit: Stack[0].tag.ckenja_bit.Count
scoreboard players operation #tmp3 ckj01_data += #tmp4 ckj01_data
execute store result storage ckenja_bit: Stack[0].tag.ckenja_bit.Count byte 1 run scoreboard players get #tmp3 ckj01_data
kill @s