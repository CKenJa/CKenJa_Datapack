#team moduleはエンティティの当たり判定を消すなどteamの機能を使用することが目的のモジュールです。
#前提モジュールはありません。動作確認バージョンは1.15.2ですがおそらく1.13以降ならすべてのバージョンで動くはずです。
#teamを他のデータパックなどで使う場合はckenja_teamedタグをプレイヤーにつけてください。
#そのタグを持っている人はteamに所属させないようになっています。
#そうする場合、/team modify チーム名 collisionRule neverで当たり判定を消してください。

#透明の味方entityを半透明にしたい場合のみ、translucent.mcfunctionを使ってください。
#それ以外の場合は削除するまたはtagを外すこと。

#変更履歴
#2020/05/04/ 1.0 特にバグがないのでアップデートはしないと思います。
#2020/05/22/ 1.1 同じチームのMOBが半透明に見えるseeFriendlyInvisiblesを使用できるようにしたい