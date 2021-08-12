#marker posにmotion代入
data modify entity @e[tag=ckj04.marker] Pos set from entity @s Pos 
#execute in overworld run forceload

#rotated hook in overworld pos 0 function 二分探索->at @s rotated marker function 二分探索->tp marker

#motionにmarker pos代入
data modify entity @s Motion set from entity @e[tag=ckj04.marker] Pos
#marker使い終わったらoverworldの読み込みチャンクに持っていく
function ckj04:marker/reset
