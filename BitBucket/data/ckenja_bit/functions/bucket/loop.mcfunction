#回す
data modify storage ckenja_bit: Stack append from storage ckenja_bit: Stack[0]
data remove storage ckenja_bit: Stack[0]
#処理
execute if data storage ckenja_bit: Stack[0].tag{ctc:{id:"ckenja_bit:bit_bucket",from:"ckenja_bit"},ckenja:{ckenja_bit:{}}} run function ckenja_bit:bucket/main
execute store result score #tmp2 ckj01_data run data get storage ckenja_bit: Stack[0].Slot 
execute unless score #tmp2 ckj01_data = #tmp3 ckj01_data run function ckenja_bit:bucket/loop