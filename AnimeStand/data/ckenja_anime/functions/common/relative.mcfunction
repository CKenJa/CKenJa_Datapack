#相対システムは次バージョンまで凍結
#現在値$tmp4と相対値を足して正規化
execute store result score $tmp3 ckj02_data run data get storage ckenja_anime: Tmp[0].relative
scoreboard players operation $tmp3 ckj02_data += $tmp4 ckj02_data
function ckenja_anime:common/normalize/360
#execute store result storage EntityData.Rotation