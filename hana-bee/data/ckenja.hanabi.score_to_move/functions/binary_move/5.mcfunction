# These codes are licensed under CC0.
# http://creativecommons.org/publicdomain/zero/1.0/deed.ja

scoreboard players operation _ ckj.hnb.stm += _ ckj.hnb.stm
execute if score _ ckj.hnb.stm matches 0.. run function ckenja.hanabi.score_to_move:binary_move/4
execute if score _ ckj.hnb.stm matches ..-1 positioned ^ ^ ^0.0032 run function ckenja.hanabi.score_to_move:binary_move/4