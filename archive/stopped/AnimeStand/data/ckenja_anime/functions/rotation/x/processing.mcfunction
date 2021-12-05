#値取得
execute store result score $tmp3 ckj02_data run data get storage ckenja_anime: Tmp.Compound.value 100
scoreboard players operation $tmp3_ ckj02_data = $tmp3 ckj02_data
execute store result score $tmp4 ckj02_data run data get storage ckenja_anime: EntityData.Rotation[0] 100

#計算
function ckenja_anime:common/processing

#正規化
function ckenja_anime:common/normalize/360

#代入
execute unless score $tmp3_ ckj02_data = $tmp4 ckj02_data run execute store result storage ckenja_anime: EntityData.Rotation[0] float 0.01 run scoreboard players get $tmp3 ckj02_data
