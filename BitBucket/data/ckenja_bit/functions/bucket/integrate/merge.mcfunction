##回す
data modify storage ckenja_bit: Bucket append from storage ckenja_bit: Bucket[0]
data remove storage ckenja_bit: Bucket[0]
execute store result score #tmp4 ckj01_data run data get storage ckenja_bit: Bucket[0].Slot
#カウント総和
execute store result score #tmp5 ckj01_data run data get storage ckenja_bit: Buckets[0].tag.ckenja_bit.Count
execute store result score #tmp6 ckj01_data run data get storage ckenja_bit: Buckets[1].Count
scoreboard players operation #tmp5 ckj01_data += #tmp6 ckj01_data
##消えたほうは64個の通常アイテムになるので、64を引いておく
execute if score #tmp5 ckj01_data matches ..64 run scoreboard players remove #tmp5 ckj01_data 64
execute store result storage ckenja_bit: Buckets[0].tag.ckenja_bit.Count byte 1 run scoreboard players get #tmp5 ckj01_data
#スロット比較
execute store result score #tmp7 ckj01_data run data get storage ckenja_bit: Buckets[0].Slot
execute store result score #tmp8 ckj01_data run data get storage ckenja_bit: Buckets[1].Slot
execute if score #tmp7 ckj01_data > #tmp8 ckj01_data run data modify storage ckenja_bit: Buckets[0].Slot set from storage ckenja_bit: Buckets[1].Slot 
#消えた方は通常アイテムに
data remove storage ckenja_bit: Buckets[1].tag.ckenja_bit
execute if score #tmp5 ckj01_data matches ..64 run data modify storage ckenja_bit: Buckets[1].Count set value 64
#統合
execute unless score #tmp5 ckj01_data matches ..64 run data remove storage ckenja_bit: Buckets[1]
#ループ
execute unless score #tmp3 ckj01_data = #tmp4 ckj01_data run function ckenja_bit:bucket/integrate/merge
