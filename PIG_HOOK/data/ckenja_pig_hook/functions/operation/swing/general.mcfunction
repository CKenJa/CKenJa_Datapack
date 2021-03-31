#デバッグ要員
function ckj03:datatag/fetch
#とりまリードの長さは8m固定
#二分探索で、リード長の場所にAECを召喚後、フックとブタの距離を測る
tag @s add ckenja_pig_hook_arg
scoreboard players operation $tmp_id ckj03_data = @s ckj_pig_hook_id
execute as @e[tag=ckenja_pig_hook_hook,distance=..384] if score @s ckj_pig_hook_id = $tmp_id ckj03_data run function ckenja_pig_hook:operation/swing/hook
tag @s remove ckenja_pig_hook_arg
#

#原点Motion演算

#用済みはキル