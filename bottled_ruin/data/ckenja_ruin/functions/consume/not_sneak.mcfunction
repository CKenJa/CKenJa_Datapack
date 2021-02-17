#近くにポイントが存在しない：スタートポインタの召喚
#ただし稼働中の場合は動かさない。
execute unless score #start_x ckj03_data matches -2147483648..2147483647 unless entity @e[tag=ckenja_ruin_ruiner,distance=..128] run function ckenja_ruin:consume/set_start

#近くにスタートポインタが存在：エンドポインタの召喚
execute if score #start_x ckj03_data matches -2147483648..2147483647 run function ckenja_ruin:consume/set_end

#近くにスタートエンドポインタが存在：変換の開始
execute if score #end_x ckj03_data matches -2147483648..2147483647 run function ckenja_ruin:consume/summon