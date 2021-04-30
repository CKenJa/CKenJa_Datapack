tag @e[tag=cw_poser_editp,sort=nearest,limit=1] add cw_poser_edit
tag @e[tag=cw_poser_editp,sort=nearest,limit=1] remove cw_poser_editp

execute store result score feedback cw_poser_sett run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
function cw_poser:display/directory