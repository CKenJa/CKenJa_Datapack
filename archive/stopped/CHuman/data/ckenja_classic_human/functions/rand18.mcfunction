#やっぱ線形合同法ってアルゴリズムはサイコーだせぇ！ 自分の世界にのめり込めるって言うか引きこもれるって言うかとってもサイコーな気分だヒャッハー！
#参考:https://algoful.com/Archive/Algorithm/LCG
#線形合同法の最大周期を実現するには
#BとMの最大公約数が1 高精度計算サイトが便利 https://keisan.casio.jp/exec/system/1161228772
#A-1がMの全ての素因数の積の倍数 18の素因数は2,3で割り切れる数は6の倍数
#Mが4の倍数の時、A-1も4の倍数
scoreboard players set #C ckenja_chuman 7
scoreboard players set #D ckenja_chuman 1
scoreboard players set #N ckenja_chuman 18
#scoreboard players set #rand ckenja_chuman 8
scoreboard players operation #rand18 ckenja_chuman *= #C ckenja_chuman
scoreboard players operation #rand18 ckenja_chuman += #D ckenja_chuman
scoreboard players operation #rand18 ckenja_chuman %= #N ckenja_chuman
#scoreboard players get #rand18 ckenja_chuman