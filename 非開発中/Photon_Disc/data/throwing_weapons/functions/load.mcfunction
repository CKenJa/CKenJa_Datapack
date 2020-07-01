#念の為プレイヤーのIDリセット…だったが、そんなもの必要ではない！問題が起きたときにでも、プレイヤーに実行してもらおう。
#function chuz_common:reset_player_id
#スコアボード作成
scoreboard objectives add Motion_Power dummy
scoreboard objectives add Motion_Speed dummy
scoreboard objectives add PlayerID dummy
scoreboard objectives add ScoreID2 dummy
scoreboard objectives add PlayerID_Core dummy
scoreboard objectives add Damage dummy
scoreboard objectives add HealthVariable dummy
scoreboard objectives add ThWe_Return dummy
scoreboard objectives add ThWe_Sound dummy
scoreboard objectives add Spin dummy
scoreboard objectives add Armor_Check dummy
scoreboard objectives add ThWe_Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add ThWe_RClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives remove ThWe_Throw
scoreboard objectives add ThWe_Throw minecraft.used:minecraft.knowledge_book
