#データ長取得
execute store result score #tmp ckj02_data run data get storage ckenja_noisy: List
#長さ分再帰処理
function ckenja_noisy:system/loop
