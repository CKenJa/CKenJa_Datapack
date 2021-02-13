execute if entity @e[tag=ckenja_piglinvation_initial] run function ckenja_piglinvation:entity/nexus/init
#触媒ゲットまで待機
#アマスタArmアイテム検知仕様と思ったけど面倒
execute if entity @s[tag=ckenja_piglinvation_catalyst] run function ckenja_piglinvation:entity/nexus/catalyst
#召喚☆
execute if entity @s[tag=ckenja_piglinvation_wave_start] run function ckenja_piglinvation:entity/nexus/wave_start
#waveなう。終了条件検知
execute if entity @s[tag=ckenja_piglinvation_wave_now] run function ckenja_piglinvation:entity/nexus/wave_now
#wave終了。
execute if entity @s[tag=ckenja_piglinvation_wave_end] run function ckenja_piglinvation:entity/nexus/wave_end
