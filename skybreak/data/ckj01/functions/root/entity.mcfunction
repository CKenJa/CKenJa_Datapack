#in_root-->early-->standard-->late-->reset_score
function #ckj01:root/entity/before_player/in_root
function #ckj01:root/entity/before_player/early
function #ckj01:root/entity/before_player/standard
function #ckj01:root/entity/before_player/late

#プレイやー
execute as @s[type=player] at @s run function ckj01:root/player

function #ckj01:root/entity/after_player/in_root
function #ckj01:root/entity/after_player/early
function #ckj01:root/entity/after_player/standard
function #ckj01:root/entity/after_player/late