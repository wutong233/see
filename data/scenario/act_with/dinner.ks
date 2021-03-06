;;
*dinner
[cm][black][stop_bgm][copy_neck][copy_hat]

[_][if exp="f.dinner_c>=1" ]（希露薇來到餐館。[p_][eval exp="f.dinner_c=0" ]
[else]（進入平日來的店。[lr_]
晚上菜單變了感覺像是在餐館裏。[p_]
[endif]
[chara_part name="dinner" food="00.png" allow_storage=true ]
[chara_mod name="sub" time="1" storage="o/sub/nephy_n.png" ]
[bg_restaurant][bgm_II]
[chara_show name="sub" time="100" wait="true" ]
[neph]歡迎光臨！[lr_]
二位嗎？[p_]
[_]被搖搖晃晃地走路的店員帶到了座位處。[p_]
[eval exp="f.dinner_c=f.dinner_c+1" ][eval exp="f.r='c'" ]
[set_dinner][f/s_nt][mod_win st="o/win/food-win.png" ][show_dinner]
;[chara_show name="window" time="1" wait="true" left="806" top="33" zindex=185 ]

[_]（要點什麼呢？[p_]
[button target="*meetsauce" graphic="sw/meetsauce.png" x="900" y="130" ]
[button target="*carbonara" graphic="sw/carbonara.png" x="1086" y="130" ]
[if exp="f.love>=250" ]
[button target="*hamburg" graphic="sw/hamburg.png" x="900" y="200" ]
[button target="*steak" graphic="sw/steak.png" x="1086" y="200" ][endif]
[if exp="f.love>=350" ]
[button target="*rollcabbage" graphic="sw/rollcabbage.png" x="900" y="270" ]
[button target="*gratin" graphic="sw/gratin.png" x="1086" y="270" ][endif]
;[if exp="f.love>=500" ]
;[button target="*waffle" graphic="sw/waffle.png" x="900" y="340" ]
;[button target="*pafe" graphic="sw/pafe.png" x="1086" y="340" ][endif]
[cancelskip][s]

;;ミートソース
*meetsauce
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/d-meetsource.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放在餐桌上。[p_]
[syl][if exp="f.d_meetsauce==1" ][else][eval exp="f.d_meetsauce=1" ][endif]
	[f/a_s]義大利面、瀰漫着醬料的香味似乎很好吃。[lr_]
	[f/s]那么、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/d-meetsource_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]嗯姆嗯姆…。[lr]
	[f/ss]嗯、好吃。[p_]
	[f/]…誒、醬料在嘴角？[l]
	[f/a_c]嗯…啊咧、另一邊嗎？[p_]
	[f/]嗯、是真的。[p_]
	[f/clp]那個…對不起、總感覺有點丟臉呢…。[p_]
[jump target="*ate" ]

;;カルボナーラ
*carbonara
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/d-carbonara.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放在餐桌上。[p_]
[syl][if exp="f.d_carbonara==1" ]
	[f/a_s]義大利面、是忌廉義大利面。看上去很好吃。[lr_]
	[f/s]那麽、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/d-carbonara_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]嗯姆嗯姆…。[lr]
	[f/ss]乎乎、很好吃。[p_]
	[f/s]果然、和在家裏做的東西感覺味道不同呢。[lr_]
	[f/a_s]是哪裏不同呢…。[p_]
[else][eval exp="f.d_carbonara=1" ]
	[f/a_s]義大利面、是忌廉義大利面。看上去很好吃。[lr_]
	[f/s]那麽、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/d-carbonara_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]嗯姆嗯姆…。[lr]
	[f/ss]嗯、很好吃。[p_]
	[f/]…來到[name]家後第一次吃到的食物似乎也是同這個菜單上一樣呢。[p_]
	[f/cl]那也很好吃不過說實話、當時還沒有品嚐味道的從容呢。[p_]
	[f/sc]滿腦子都是其他的事情…。[p_]
[endif][jump target="*ate" ]

;;ハンバーグ
*hamburg
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/d-hamburg.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放在餐桌上。[p_]
[syl][if exp="f.f_hamburg==1" ][else][eval exp="f.f_hamburg=1" ][endif]
	[f/a_s]漢堡牛排、味道很好很美味。[lr_]
	[f/s]可以、開始吃了吧。[p_]
	[eating][chara_part name="dinner" food="o/food/d-hamburg_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]嗯姆嗯姆…。[lr]
	[f/ss]嗯、明明是肉卻非常的柔軟美味。[p_]
	[f/a]要加的醬料是這個…吧。[lr_]
	[f/cl]根本不知道是用什麼做的…是葡萄酒啦蔬菜之類的嗎。[p_]
[jump target="*ate" ]

;;ステーキ
*steak
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/d-steak.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放在餐桌上。[p_]
[syl]
[if exp="f.d_steak==1" ]
	[f/a_s]牛排…雖然很簡單、但是非常勾起食欲。[lr_]
	[f/s]那麽、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/d-steak_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]嗯姆嗯姆…。[lr]
	[f/ss]嗯…真好吃。[p_]
	[f/s]在家裏僅僅對肉進行烤製的話也一定沒有這麽好吃呢。[lr_]
	[f/a_s]準備什麼的要提前做好多吧…。[p_]
[else][eval exp="f.d_steak=1" ]
	[f/a]牛排…這樣成塊的肉我有資格吃掉嗎…[p_]
	[f/re]開、開始吃了。[p_]
	[eating][chara_part name="dinner" food="o/food/d-steak_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]嗯姆嗯姆…。[lr]
	[f/a]…[p_]
	[f/]…啊、對不起、十分好吃。[lr_]
	[f/cl]沒想到既是孤兒又身爲奴隸的我有、[r]一天竟能說出這樣的話語…。[p_]
	[f/s]我吃飯速度不是很快、所以稍微快些吃呢。[lr_]
	[f/a_s]有的戒律中不吃完就是浪費。[p_]
[endif][jump target="*ate" ]

;;ロールキャベツ
*rollcabbage
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/d-rollcabbage.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放在餐桌上。[p_]
[syl][if exp="f.d_rollcabbage==1" ]
	[f/a_s]卷心菜、看起來好吃。[p_]
	[f/s]那麼、我要開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/d-rollcabbage_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]嗯姆嗯姆…。[lr]
	[f/ss]嗯、非常好吃。[p_]
	[f/a_s]因為湯汁滲進捲心菜和肉的裏面了。[r]
	水靈靈的、有蔬菜的味道、[lr_]
	[f/s]明明是肉製料理味道卻不是很重呢。[p_]
[else][eval exp="f.d_rollcabbage=1" ]
	[f/a_s]十分好的味道…卷心菜、嗎？[lr_]
	[f/]是的、沒有吃過呢[p_]
	[f/s]可以吃掉它吧？[p_]
	[f/a_s]捲心菜包着…啊、裏面包着肉呢。[lr_]
	[f/re]是蕃茄湯燉的嗎？[p_]
	[eating][chara_part name="dinner" food="o/food/d-rollcabbage_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]阿姆…[lr]
	[f/a_s]嗯、很好吃…[p_]
	[f/scl]可以吃到這樣溫暖美味的飯、[r]
	再次感覺非常幸福…。[p_]
[endif][jump target="*ate" ]

;;グラタン
*gratin
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/d-gratin.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放在餐桌上。[p_]
[syl][if exp="f.d_gratin==1" ][else][eval exp="f.d_gratin=1" ][endif]
	[f/a_s]奶汁烤菜、看上去很好吃。[lr_]
	[f/s]那麼…我開動了。[p_]
	[f/a]嗯、燙…。不小心給燙到了[l]
	[eating][chara_part name="dinner" food="o/food/d-rollcabbage_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]呼—、呼—…。阿姆…。[lr]
	[f/ss]嗯、很好吃。[p_]
	[f/s]融化的醬料和芬芳的奶酪的香氣很好呢。[p_]
[jump target="*ate" ]

;;end
*ate
[black]
[_][if exp="f.love>=200" ][f/ss]（希露薇一邊吃著一邊綻放出一臉的幸福樣子。[p_]
[else][f/s]（感覺吃東西的希露薇的表情比往常更開朗。[p_][endif]
[set_black][set_dinner_dress]
[chara_part name="dinner" arm="s/body/din_a1.png" arm_b="s/body/din_a2.png"  allow_storage=true ]
[chara_part name="dinner" food="00.png" allow_storage=true wait=true ]
[f/scl_nt]…。[p_][hide_black]
[syl][f/scl]我吃飽了。[lr_]
[eval exp="f.love=f.love+3" ][eval exp="f.daily_out='dinner'" ]

[if exp="f.love>=1000" ][f/ss]非常好吃。[p_]
[elsif exp="f.love>=200" ][f/s]非常好吃。[p_]
[else][f/s]非常好吃。[p_][endif]

[f/re]謝謝你。[name]。[p_]
[paste_neck][paste_hat][eval exp="f.last_act='dinner'" ]
[jump storage="act_with/go_out.ks" target="*after_town" ]
