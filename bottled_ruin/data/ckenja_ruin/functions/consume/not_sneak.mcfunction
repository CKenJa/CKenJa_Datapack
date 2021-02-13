#近くにポイントが存在しない：スタートポインタの召喚
#ただし稼働中の場合は動かさない。
execute if score #tmp_start ckj03_data matches 0 if score #tmp_end ckj03_data matches 0 unless entity @e[tag=ckenja_ruin_ruiner,distance=..128] run function ckenja_ruin:consume/set_start

#近くにスタートポインタが存在：エンドポインタの召喚
execute if score #tmp_start ckj03_data matches 1 if score #tmp_end ckj03_data matches 0 run function ckenja_ruin:consume/set_end

#近くにスタートエンドポインタが存在：変換の開始
execute if score #tmp_start ckj03_data matches 1 if score #tmp_end ckj03_data matches 1 run function ckenja_ruin:consume/summon

#近くにエンドポインタのみが存在：エンドポインタ削除
execute if score #tmp_start ckj03_data matches 0 if score #tmp_end ckj03_data matches 1 run kill @e[type=area_effect_cloud,distance=..128,tag=ckenja_ruin_start_point]

#execute store resultで複数の同種ポインタが検出された場合全てのエンティティを削除するりょりなんてめんどくさい