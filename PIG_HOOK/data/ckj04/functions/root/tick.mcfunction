#> ckj04:root/tick
#
#このフレームワークのtick関数
#
#@within #minecraft:tick

#拡張の余地を残しておく。使わないとは思うが。
    function #ckj04:root/extend

function #ckj04:root/pre
function #ckj04:root/server

execute as @a at @s run function #ckj04:root/player/general
execute as @e[type=!player,tag=ckj04.root] at @s run function #ckj04:root/entity/general

function #ckj04:root/post