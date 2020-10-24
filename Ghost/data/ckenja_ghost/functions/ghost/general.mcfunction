#oh my dat!
function oh_my_dat:please
#追従モード
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja{tag:["ckenja_ghost:follow"]} run function ckenja_ghost:ghost/follow
#攻撃モード
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja{tag:["ckenja_ghost:attack"]} run function ckenja_ghost:ghost/attack
#待機モード
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja{tag:["ckenja_ghost:stand"]} run function ckenja_ghost:ghost/stand
#水に弱いの
execute if block ~ ~1 ~ water run function ckenja_ghost:ghost/death