#時間差計算
#execute store result score $tmp1 ckj02_data run data get storage ckenja_anime: Tmp[0].time
scoreboard players operation $tmp1 ckj02_data -= $tmp2 ckj02_data

execute if data storage ckenja_anime: Tmp[0].positive if score $tmp1 ckj02_data matches ..-1 run scoreboard players add $tmp1 ckj02_data 360
execute if data storage ckenja_anime: Tmp[0].reverse if score $tmp1 ckj02_data matches 1.. run scoreboard players remove $tmp1 ckj02_data 360


#まんまその時間だったら直接、違ったら計算して代入
execute unless score $tmp1 ckj02_data matches 0 run function ckenja_anime:common/adjust
