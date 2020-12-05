#時間差計算
#execute store result score $tmp1 ckj02_data run data get storage ckenja_anime: Tmp[0].time
scoreboard players operation $tmp1 ckj02_data -= $tmp2 ckj02_data

#まんまその時間だったら直接、違ったら計算して代入
execute unless score $tmp1 ckj02_data matches 0 run function ckenja_anime:common/adjust
