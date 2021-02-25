#近くにエンドポインタがいなければスタートポインタ削除
execute if score #tmp_end ckj03_data matches 0 run kill @e[type=area_effect_cloud,distance=..128,tag=ckenja_ruin_start_point]
#逆も然り
execute if score #tmp_end ckj03_data matches 1 run kill @e[type=area_effect_cloud,distance=..128,tag=ckenja_ruin_end_point]