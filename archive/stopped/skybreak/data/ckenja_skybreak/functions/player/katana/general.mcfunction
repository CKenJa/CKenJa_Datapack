#描きはじめ
execute if score @s ckj02_coas_time matches 1 run function ckenja_skybreak:player/katana/start
#描いてるなう
execute if entity @s[tag=ckenja_skybreak_katana_drawing] run function ckenja_skybreak:player/katana/drawing

#描き終わり

#表示
