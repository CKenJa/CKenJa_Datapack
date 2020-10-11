#エネルギーを消費して加工を進める。
execute if entity @s[tag=ckenja_smart_devices_work_processing] run function ckenja_smart_devices:core/device/work/process/general
#その他処理を丸投げする。
function #ckenja_smart_devices:core/work