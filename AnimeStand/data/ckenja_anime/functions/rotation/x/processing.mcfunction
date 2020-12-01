#時間差計算
#execute store result score #tmp1 ckj02_anime run data get storage ckenja_anime: Tmp[0].Time
scoreboard players operation #tmp1 ckj02_data -= @s ckenja_anime

#予定データと現在データ取得
execute store result score #tmp2 ckj02_anime run data get storage ckenja_anime: Tmp[0].Value 100
execute store result score #tmp3 ckj02_anime run data get entity @s Rotation[0] 100

#一致したらそのまま代入、しなかったら計算して代入
execute unless score #tmp2 ckj02_data = #tmp3 ckj02_data run function ckenja_anime:common/adjust

#正規化
function ckenja_anime:common/normalize/360

#代入
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #tmp2 ckj02_data