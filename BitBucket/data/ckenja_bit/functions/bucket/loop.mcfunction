#回す
data modify storage ckenja_bit: Inventory append from storage ckenja_bit: Inventory[0]
data remove storage ckenja_bit: Inventory[0]
#処理
execute store result score #tmp3 ckj01_data run data get storage ckenja_bit: Inventory[0].Slot 
execute if data storage ckenja_bit: Inventory[0].tag{ctc:{id:"ckenja_bit:bit_bucket",from:"ckenja_bit"},ckenja:{ckenja_bit:{}}} run function ckenja_bit:bucket/main
execute unless score #tmp2 ckj01_data = #tmp3 ckj01_data run function ckenja_bit:bucket/loop
