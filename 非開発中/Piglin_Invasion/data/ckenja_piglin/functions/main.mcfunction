#初期状態のネクサス常時実行->襲撃開始処理invasion_startまで
execute if entity @s[tag=ckenja_piglin_nexus_initial] run function #ckenja_piglin:initial
#休憩中のネクサス常時実行->WAVE開始処理wave_startまで
execute if entity @s[tag=ckenja_piglin_nexus_cool] run function ckenja_piglin:invasion/cool
#襲撃中のネクサス常時実行->WAVE終了処理までwave_endまで
execute if entity @s[tag=ckenja_piglin_nexus_inwave] run function ckenja_piglin:invasion/inwave
#終了後のネクサス

