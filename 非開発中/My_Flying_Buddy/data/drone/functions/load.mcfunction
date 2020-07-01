#念の為プレイヤーのIDリセット…だったが、そんなもの必要ではない！問題が起きたときにでも、プレイヤーに実行してもらおう。
#function chuz_common:reset_player_id
#スコアボード作成
scoreboard objectives add Motion_Power dummy
scoreboard objectives add Motion_Speed dummy
scoreboard objectives add PlayerID dummy
scoreboard objectives add ScoreID2 dummy
scoreboard objectives add PlayerID_Core dummy
scoreboard objectives add DroneID dummy
scoreboard objectives add DroneID_Core dummy
scoreboard objectives add Damage dummy
scoreboard objectives add HealthVariable dummy
scoreboard objectives add Drone_CoolTime dummy
scoreboard objectives add BulletRemain dummy
scoreboard objectives add Drone_Move dummy
scoreboard objectives add Drone_Mode dummy
scoreboard objectives add Drone_Sneak_Hold dummy
scoreboard objectives add Drone_RClick minecraft.used:carrot_on_a_stick
scoreboard objectives add Drone_Sneak minecraft.custom:minecraft.sneak_time
