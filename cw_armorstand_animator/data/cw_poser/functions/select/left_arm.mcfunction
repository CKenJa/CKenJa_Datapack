function cw_poser:select/decode
scoreboard players add left_arm cw_poser_limb 1
execute if score left_arm cw_poser_limb matches 2.. run scoreboard players set left_arm cw_poser_limb 0
function cw_poser:select/recode
function cw_poser:display/directory