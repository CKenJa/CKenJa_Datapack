function cw_poser:select/decode
scoreboard players add right_leg cw_poser_limb 1
execute if score right_leg cw_poser_limb matches 2.. run scoreboard players set right_leg cw_poser_limb 0
function cw_poser:select/recode
function cw_poser:display/directory