# These codes are licensed under CC0.
# http://creativecommons.org/publicdomain/zero/1.0/deed.ja

scoreboard players operation _ ckj.hnb.stm += _ ckj.hnb.stm
execute if score _ ckj.hnb.stm matches 0.. run function ckenja.hanabi.score_to_move:binary_move/29
execute if score _ ckj.hnb.stm matches ..-1 positioned ^ ^ ^107374.1824 run function ckenja.hanabi.score_to_move:binary_move/29
