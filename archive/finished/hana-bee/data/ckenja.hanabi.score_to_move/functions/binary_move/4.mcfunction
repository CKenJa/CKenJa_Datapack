# These codes are licensed under CC0.
# http://creativecommons.org/publicdomain/zero/1.0/deed.ja

scoreboard players operation _ ckj.hnb.stm += _ ckj.hnb.stm
execute if score _ ckj.hnb.stm matches 0.. run function ckenja.hanabi.score_to_move:binary_move/3
execute if score _ ckj.hnb.stm matches ..-1 positioned ^ ^ ^0.0016 run function ckenja.hanabi.score_to_move:binary_move/3
