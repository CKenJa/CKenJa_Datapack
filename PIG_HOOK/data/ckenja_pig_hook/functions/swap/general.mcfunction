#フックがない-->ジャンプ
execute if score @s ckj_pighook_x matches -2147483648..2147483647 run function ckenja_pig_hook:swap/shot
#フックがある-->ジェット噴射
execute if score @s ckj_pighook_x matches -2147483648..2147483647 run function ckenja_pig_hook:swap/stow
