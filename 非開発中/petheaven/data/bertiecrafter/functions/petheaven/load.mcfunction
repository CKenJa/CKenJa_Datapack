#Current As: Server
#Current At: Worldspawn???

tellraw @a {"text":"---------------------------------","color":"aqua","extra":[{"text":"\n\nLoaded Datapack: "},{"text":"Pet","color":"gold"},{"text":" Heaven","color":"white"},{"text":"\n\nBy: "},{"text":"Bertiecrafter","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/bertiecrafter"}},{"text":"\n\n"},{"text":"[Uninstall Instructions]","hoverEvent":{"action":"show_text","value":{"text":"Uninstall by running\n/function bertiecrafter:petheaven/uninstall\nbefore deleting the datapack files."}}},{"text":"\n\n---------------------------------"}]}
team add Heaven
team modify Heaven seeFriendlyInvisibles true
team modify Heaven color gold
team modify Heaven deathMessageVisibility never
team modify Heaven friendlyFire false
team modify Heaven collisionRule never
team modify Heaven suffix {"text":" †","color":"white"}
team modify Heaven prefix {"text":"† ","color":"white"}
scoreboard objectives add bcph_Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add bcph_Health dummy
scoreboard objectives add bcph_Progress dummy