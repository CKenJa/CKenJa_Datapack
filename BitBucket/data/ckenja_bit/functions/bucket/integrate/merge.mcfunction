#カウント総和
execute store result score #tmp4 run data get storage ckenja_bit: Buckets[0].Count
execute store result score #tmp5 run data get storage ckenja_bit: Buckets[1].Count
scoreboard players operation #tmp4 ckj01_data += #tmp5 ckj01_data
execute store result storage ckenja_bit: Buckets[0].Count run scoreboard players get #tmp4 ckj01_data
#スロット比較
execute store result score #tmp4 run data get storage ckenja_bit: Buckets[0].Slot
execute store result score #tmp5 run data get storage ckenja_bit: Buckets[1].Slot
execute if score #tmp4 ckj01_data > #tmp5 ckj01_data run data modify storage ckenja_bit: Buckets[0].Slot set from ckenja_bit: Buckets[1].Slot
#統合
data remove storage ckenja_bit: Buckets[1]
#ループ
execute store result score #tmp4 ckj01_data run data get storage ckenja_bit: Buckets
execute unless score #tmp4 ckj01_data matches 1 run function ckenja_bit:bucket/integrate/merge
