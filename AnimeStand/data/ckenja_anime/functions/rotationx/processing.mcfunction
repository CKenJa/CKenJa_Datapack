#時間差計算
#execute store result score $tmp1 ckj02_data run data get storage ckenja_anime: Tmp[0].time
scoreboard players operation $tmp2 ckj02_data = @s ckenja_anime
scoreboard players operation $tmp1 ckj02_data -= $tmp2 ckj02_data

#値取得
execute store result score $tmp3 ckj02_data run data get storage ckenja_anime: Tmp[0].value 100
execute store result score $tmp4 ckj02_data run data get storage ckenja_anime: EntityData.Rotation[0] 100

#まんまその時間だったら直接、違ったら計算して代入
execute unless score $tmp1 ckj02_data matches 0 run function ckenja_anime:common/adjust

#正規化
function ckenja_anime:common/normalize/360

#代入
execute store result storage ckenja_anime: EntityData.Rotation[0] float 0.01 run scoreboard players get $tmp3 ckj02_data
