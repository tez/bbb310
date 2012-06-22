# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Area.delete_all
Area.create(
  name: "下市エリア",
  description: "第2回目より新たに加わった下市エリア。中心繁華街として栄えた頃からの名残を残す、伝統の味わいをご賞味ください！"
)
Area.create(
  name: "駅南エリア",
  description: "アラウンド・ザ・ワールドな駅南エリア。多国籍で多文化な飲食店の数々に驚きの連続間違いなし！みんなでにぎやかに楽しみたいエリアです。"
)
Area.create(
  name: "北口・宮下銀座エリア",
  description: "どの店も水戸駅から徒歩5分圏内の駅南・北口エリア。ウェルカムドリンク替わりの一杯や、終電前の〆にもってこいのエリアです。"
)
Area.create(
  name: "南町エリア",
  description: "大通りと裏通り、互いの個性が楽しい南町エリア。陽気に歩きながら、気になるお店を見つけてみよう。"
)
Area.create(
  name: "くろばねエリア",
  description: "まとまった地域に店舗が集中する、大激戦のくろばねエリア。後で慌ててしまわないように、気になるお店は事前にチェック！"
)
Area.create(
  name: "泉町エリア",
  description: "今回の310bbb最大、40店舗以上が集まる泉町エリア！老舗と新進気鋭が融合し、幅広いジャンルの「味」が揃いました。泉町仲通の風情を楽しむ飲み歩きも乙！"
)
Area.create(
  name: "大工町エリア",
  description: "老舗が多く、料理人の気骨がひしひしと伝わってくる大工町エリア。豪華なバルセットのラインナップは、どの店に入ろうか迷うほど！"
)

Genre.delete_all
Genre.create(name: "和食")
Genre.create(name: "洋食")
Genre.create(name: "中華")
Genre.create(name: "韓国")
Genre.create(name: "食堂")
Genre.create(name: "居酒屋")
Genre.create(name: "バー")
Genre.create(name: "カフェ")
