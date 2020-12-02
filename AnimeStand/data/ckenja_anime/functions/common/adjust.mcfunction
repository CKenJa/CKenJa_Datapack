#予定データと現在データの差を時間差で割る
scoreboard players operation $tmp2 ckj02_data -= $tmp3 ckj02_data
scoreboard players operation $tmp2 ckj02_data /= $tmp1 ckj02_data
#現在のデータと足す
scoreboard players operation $tmp2 ckj02_data += $tmp3 ckj02_data