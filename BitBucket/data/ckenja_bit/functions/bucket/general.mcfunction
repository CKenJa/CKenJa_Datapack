#tmp:バケツ数 #tmp2:マーカースロット番号
#データ初期化
data remove storage ckenja_bit: Inventory
data remove storage ckenja_bit: Stack
#storage
data modify storage ckenja_bit: Inventory set from entity @s Inventory
#宣言
execute if predicate ckj01:sneak if data entity @s SelectedItem.tag{ctc:{id:"ckenja_bit:bit_bucket",from:"ckenja_bit"},ckenja:{ckenja_bit:{}}} if data storage ckenja_bit: Inventory[{Slot:-106b}] run function ckenja_bit:bucket/decleare/general
#bucketごとに処理をする方法が思いつかない
#tmp.Inventoryを回して、bucketがあったら処理をする。
data modify storage ckenja_bit: Stack set from storage ckenja_bit: Inventory
execute store result score #tmp2 ckj01_data run data get storage ckenja_bit: Inventory[0].Slot
function ckenja_bit:bucket/loop