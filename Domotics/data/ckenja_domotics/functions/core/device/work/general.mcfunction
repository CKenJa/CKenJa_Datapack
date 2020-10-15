#エネルギーを消費して加工を進める。
execute if entity @s[tag=ckenja_domotics_work_processing] run function ckenja_domotics:core/device/work/process/general
#その他処理を丸投げする。
function #ckenja_domotics:core/work