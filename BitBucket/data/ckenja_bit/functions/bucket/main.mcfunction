#代入
execute if score @s ckenja_bit matches 1 run function ckenja_bit:bucket/assign/general
#インベントリ変更時
execute if score @s ckenja_bit_ic matches 1 run function ckenja_bit:bucket/inventory_changed