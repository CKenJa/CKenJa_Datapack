#空スロットをemptyで埋める
execute unless block ~ ~ ~ barrel{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_smart_devices:gui","ckenja_smart_devices:emptu"]}} 1
#異物排出の後にnot_slotで置き換え
function ckenja_smart_devices:device/gui/not_slot/0