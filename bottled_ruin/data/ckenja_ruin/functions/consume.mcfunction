#ポインタの存在を確認
execute store success score #tmp_start ckj03_data run execute if entity @e[type=area_effect_cloud,distance=..128,tag=ckenja_ruin_start_point]
execute store success score #tmp_end ckj03_data run execute if entity @e[type=area_effect_cloud,distance=..128,tag=ckenja_ruin_end_point]

execute if predicate ckj03:sneak run function ckenja_ruin:consume/cancel
execute unless predicate ckj03:sneak run function ckenja_ruin:consume/not_sneak
