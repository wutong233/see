;;
*cafe
[cm][black][stop_bgm][copy_neck][copy_hat]

[_][if exp="f.lunch_yet==1 && f.act>=4" ]（有點晚了進去吃午飯吧。[p_]
[elsif exp="f.lunch_yet==1" ]（到店裡愉快的吃午飯[p_]
[else]（雖然已經吃過午飯了但是在晚飯前吃一些甜點也不錯。[p_][endif]

（帶著希露薇進入了咖啡廳。[p_]
[chara_part name="dinner" food="00.png" allow_storage=true ]
[chara_mod name="sub" time="1" storage="o/sub/nephy.png" ]
[bg_cafe][bgm_JH][chara_show name="sub" time="100" wait="true" ]
[neph]歡迎光臨？[lr_]
兩位嗎？[p_]
[_]（步伐跌跌撞撞的店員將我們帶到了座位旁。[p_]

[if exp="f.lunch_yet==1" ][black]
（兩個人一起吃飯。[p_]
（東西輕所以可以給希露薇買一些甜品。[p_][endif]

[set_dinner][eval exp="f.r='b'" ]
[if exp="f.step>=5" ][f/s_nt][else][f/nt][endif]
[show_dinner]

[if exp="f.lunch_yet==1" ]
[syl][f/s]好嗎？[lr_]
[f/ss]…那、谢谢。[p_][endif]

[mod_win st="o/win/food-win.png" ]
[_]（要點些什麼？
[if exp="f.step<=5" ][jump target="*intro_menu" ][endif]
[button target="*panc" graphic="sw/pank.png" x="900" y="130" ]
[button target="*cake" graphic="sw/cake.png" x="1086" y="130" ]
[button target="*apple" graphic="sw/apple.png" x="900" y="200" ]
[if exp="f.love>=300" ]
[button target="*ch_cake" graphic="sw/ch-cake.png" x="1086" y="200" ][endif]
[if exp="f.love>=350" ]
[button target="*french" graphic="sw/french.png" x="900" y="270" ][endif]
[if exp="f.love>=400" ]
[button target="*pding" graphic="sw/pding.png" x="1086" y="270" ][endif]
[if exp="f.love>=450" ]
[button target="*waffle" graphic="sw/waffle.png" x="900" y="340" ][endif]
[if exp="f.love>=500" ]
[button target="*parfait" graphic="sw/pafe.png" x="1086" y="340" ][endif]
[cancelskip][s]

*intro_menu
[button target="*panc_" graphic="sw/pank.png" x="900" y="130" ]
[button target="*cake_" graphic="sw/cake.png" x="1086" y="130" ]
[cancelskip][s]





;;初期メニュー
*panc_
[cm][set_black][f/a_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-pancake.png" allow_storage=true ]
…。[p][hide_black]（不久後點的東西被送到了桌子上。[p_]
[syl][if exp="f.f_pancake==1" ]
	[f/a_s]千層餅、看上去很好吃。[lr_]
	[f/s]那、我吃了。[p_]
	[f/ss]嗯、糖漿好香。[p_]
	[eating][chara_part name="dinner" food="o/food/f-pancake_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]哈呣…。[lr]
	[f/s]軟軟的好美味。[p_]
[else][eval exp="f.f_pancake=1" ]
	[f/a]啊、這個…。[lr_] 給我的？[p_]
	[f/c]…哎？是。沒有吃過這種東西。[p_]
	[f/]可以…吃掉它嗎？[p_]
	[f/a]那麽、我開動了…。[p_]
	[eating][chara_part name="dinner" food="o/food/f-pancake_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]…。[p_]
	[f/a]…嗯、軟軟的[lr_]
	[f/a_s]…好甜。[p_]
	[_]（平時動作緩慢又怯生生的希露薇、很少見地、開始大口大口地把千層餅往嘴裏送。[p_]
	（看來她喜歡午餐的甜食呢。[p_][endif]
[set_black][set_dinner_dress]
[chara_part name="dinner" arm="s/body/din_a1.png" arm_b="s/body/din_a2.png"  allow_storage=true ]
[chara_part name="dinner" food="00.png" allow_storage=true wait=true ]
[f/cl_nt]…。[p_][hide_black]
	[syl][f/re]嗯、我吃好了。[p_]
	[f/s]真好吃。[r]…真的非常[p_]
	[f/re]…非常感謝。[p_]
[jump storage="act_with/go_out.ks" target="*after_town" ]
[jump target="*ate" ]


*cake_
[cm][set_black][f/nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-cake.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放到了餐桌上。[p_]
[syl][if exp="f.f_cake==1" ]
	[f/a_s]草莓蛋糕、好吃。[lr_]
	[f/s]那麽、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-cake_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]姆…。[p]
	[f/a_s]嗯、好吃…。[p_]
	[f/re]紅白相間的顏色好漂亮…。[p_]
[else][eval exp="f.f_cake=1" ]
	[f/a]草莓蛋糕…我雖然有看過、但是吃還是第一次…。[lr_]
	[f/]我可以、吃掉它嗎？[p_]
	[f/re]那麽…我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-cake_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]姆…。[p]
	[f/a_s]嗯、軟軟的、[r]草莓稍微有酸甜的味道…。[p_]
	[f/re]非常的、美味。[p_]
[endif]
[set_black][set_dinner_dress]
[chara_part name="dinner" arm="s/body/din_a1.png" arm_b="s/body/din_a2.png"  allow_storage=true ]
[chara_part name="dinner" food="00.png" allow_storage=true wait=true ]
[f/cl_nt]…。[p_][hide_black]
	[syl][f/re]嗯、我吃飽了。[p_]
	[f/s]真好吃。[r]…真的[p_]
	[f/re]…太謝謝了。[p_]
[jump storage="act_with/go_out.ks" target="*after_town" ]
[jump target="*ate" ]


;;パンケーキ
*panc
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-pancake.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放到了餐桌上。[p_]
	[syl][f/a_s]千層餅、看上去很好吃。[lr_]
	[f/s]那麽、我開動了。[p_]
	[f/ss]嗯、糖漿好香。[p_]
	[eating][chara_part name="dinner" food="o/food/f-pancake_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]哈姆…。[lr]
	[f/ss]軟軟的、好美味…。[lr_]
[jump target="*ate" ]

;;ショートケーキ
*cake
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-cake.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放到了餐桌上。[p_]
[syl][if exp="f.f_cake==1" ]
	[f/a_s]草莓蛋糕、非常好吃。[lr_]
	[f/s]那麽、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-cake_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg_s]姆…。[lr]
	[f/a_s]嗯、很美味…。[lr_]
	[f/s]草莓的味道稍微有些酸酸甜甜的很好吃呢。[p_]
	[f/sc]…這上面的草莓、是一開始就吃還是最後再吃[r]總覺得讓人很困惑呢？[p_]
[else][eval exp="f.f_cake=1" ]
	[f/a_s]草莓蛋糕…雖然以前見過、不過吃還是第一次呢…。[lr_]
	[f/s]可以、吃掉它嗎？[p_]
	[f/re]那麽、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-cake_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]姆…。[lr]
	[f/a_s]嗯、雖然軟軟的、不過奶油的口感很爽滑。[lr_]
	[f/s]草莓的味道有些酸酸甜甜的、很美味呢。[p_]
	[f/ss]非常地、好吃。[p_]
[endif][jump target="*ate" ]

;;アップルパイ
*apple
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-apple.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放到了餐桌上。[p_]
[syl][if exp="f.f_apple==1" ]
	[f/a_s]蘋果派、看上去很好吃。[lr_]
	[f/s]那麽、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-apple_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg_s]姆姆…。[lr]
	[f/a_s]好吃。[p_]
	[f/re]暖暖的、而且有著肉桂的香味。[lr_]
	[f/s]是和冷甜點不同的美味呢。[p_]
[else][eval exp="f.f_apple=1" ]
	[f/a_s]蘋果派、閃著光好漂亮呢。[lr_]
	[f/s]雖然感覺吃掉有些浪費…我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-apple_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]姆…。[lr]
	[f/a_p]嗯、好甜…。[lr_]
	[f/s]蘋果用火烤過之後吃起來是這種感覺呢。[p_]
	[f/re]和直接吃的口感完全不同、真是不可思議呢。[lr_]
	[f/ss]非常好吃。[p_]
[endif][jump target="*ate" ]

;;チョコケーキ
*ch_cake
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-ch-cake.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放到了餐桌上。[p_]
[syl][if exp="f.f_ch_cake==1" ]
	[f/a_s]可可蛋糕、看上去很好吃。[lr_]
	[f/s]那麽、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-ch-cake_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg_s]姆…。[lr]
	[f/a_s]嗯、巧克力的香味很好聞[lr_]
	[f/re]…有些苦、但是很甜。[lr_]
	[f/sp]非常美味。[p_]
[else][eval exp="f.f_ch_cake=1" ]
	[f/a]可可蛋糕…。[lr_]
	[f/re]表面上、涂滿了奶油、全都是可可色的呢。[lr_]
	[f/s]我可以、吃掉它吧？[p_]
	[f/re]…那麽、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-ch-cake_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]姆…。[lr]
	[f/a_s]味道和口感都和巧克力不同、但是又像巧克力一樣。[lr_]
	[f/sp]…很美味。[p_]
[endif][jump target="*ate" ]

;;フレンチトースト
*french
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-french.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放到了餐桌上。[p_]
[syl][if exp="f.f_french==1" ]
	[f/a_s]法式吐司、看上去很好吃。[lr_]
	[f/s]那麽、我開動了。[p_]
	[f/re]呼呼、先在上面澆上許多蜂蜜…[p_]
	[eating][chara_part name="dinner" food="o/food/f-french_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]啊姆…。[lr]
	[f/ss]嗯、黏糊糊的…。[p_]
	[f/s]非常好吃…。[p_]
[else][eval exp="f.f_french=1" ]
	[f/a]…這是？[l]
	[f/re]是叫法式起司嗎？[lr_]
	[f/re]第一次見到這種食物。[p_]
	[f/]看起來像面包、是要用叉子吃的吧。[p_]
	[f/re]那麽、我開動了。[p_]
	[f/]那個、蜂蜜澆在上面…[lr_]
	[eating][chara_part name="dinner" food="o/food/f-french_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]姆…。[lr]
	[f/a]…啊、比想象中柔軟。[p_]
	[f/a_s]…嗯、很溼潤、很甜。[lr_]
	[f/ssp]…非常好吃。[p_]
[endif][jump target="*ate" ]

;;プリンアラモード
*pding
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-pding.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放到了餐桌上。[p_]
[syl][if exp="f.f_pding==1" ]
	[f/a_s]布丁、看起來非常好吃。[lr_]
	[f/s]那麽、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-pding_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg_s]啊姆…。[lr]
	[f/a_s]…布丁下面的水果、有點酸、這個也好好吃。[p_]
	[f/s]雖然是大到僅僅吃布丁會感到厭倦的量、[r]
	但是因爲有奶油和水果所以一直都很好吃呢。[p_]
[else][eval exp="f.f_pding=1" ]
	[f/a]好大的布丁…。[lr_]
	[f/]上面加了好多、這個就是新款嗎？[lr_]
	[f/a]感覺好豪華呢。[p_]
	[f/]那個…我可以…把它吃掉嗎？[lr_]
	[f/s]那麽…我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-pding_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]啊姆…。[lr]
	[f/a_s]嗯、甜甜的、在嘴裏融化…。[lr_]
	[f/ss]非常好吃。[p_]
	[f/s]和奶油或者水果一起吃、味道會不同、吃起來很開心。[p_]
[endif][jump target="*ate" ]

;;パフェ
*parfait
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-parfait.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放到了餐桌上。[p_]
[syl][if exp="f.f_parfait==1" ]
	[f/a_s]好的冰淇淋、看起來非常好吃。[lr_]
	[f/s]那麽、我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-parfait_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg_s]嗯姆…。[lr]
	[f/ss]…非常美味。[lr_]
	[f/s]和蛋糕這樣的海綿類甜食不同感覺非常有飽腹感。[p_]
	[f/re]一個人吃不完、一個人吃太可惜了。[lr_]
	[f/re]這次、也請你幫忙啊？[p_]
	[f/ssp]這個…好、阿ー嗯♡[p_]
[else][eval exp="f.f_parfait=1" ]
	[f/s]很好的芭菲、我對這樣的吃有點憧憬。[p_]
	[f/a]但是非常大啊…。[lr_]
	[f/re]能吃的嗎…。[p_]
	[f/s]那麽…我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-parfait_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]啊姆…。[lr]
	[f/a_s]…草莓和忌廉果醬？[lr_]
	[f/s]還有下面的這麼鬆脆。[lr_]
	[f/ss]甜甜的的非常美味♡[p_]
	[f/c]…不過、果然一個人能吃不完。[lr_]
	[f/s][name]給你一點、能幫我一下嗎？[p_]
[endif][jump target="*ate" ]

;;ワッフル
*waffle
[cm][set_black][f/s_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-waffle.png" allow_storage=true ]
…。[p][hide_black]（點的東西被放到了餐桌上。[p_]
[syl][if exp="f.f_waffle==1" ]
	[f/a_s]華夫餅、看起來好吃。[lr_]
	[f/s]乎乎…我吃了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-waffle_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg_s]啊姆…。[lr]
	[f/ss]嗯…美味。[lr_]
	[f/s]上面的冰淇淋和巧克力醬、[r]
	只是看上去比華夫餅美味。[p_]
	[f/re]這家店的華夫餅是軟綿綿的。[r]
	[f/re]雖然簡單但也很好吃。[lr_]
	[m/mgmg_s]配巧克力醬汁和冰淇淋…、很好吃的。[p]
[else][eval exp="f.f_waffle=1" ]
	[f/a]華夫餅乾…雖然知道但是、[r]像這樣各種味道混合在一起的東西真的好吃嗎？[p_]
	[f/s]可以開動嗎？[p_]
	[f/scl]我開動了。[p_]
	[eating][chara_part name="dinner" food="o/food/f-waffle_.png" allow_storage=true time=200 wait=true ]
	[m/mgmg]啊姆…。[lr]
	[f/s]嗯、表面和麵包蛋糕的口感不同。[lr_]
	[f/ss]輕飄飄的、濕潤的…美味。[p_]
[endif][jump target="*ate" ]

;;end
*ate
;[black]
[_][if exp="f.love>=200" ]（希露薇幸福的臉、一邊吃著一邊綻開。[p_]
[elsif exp="f.step>=5" ]（吃東西的希露薇的表情比往常更開朗。[p_]
[elsif exp="f.step>=2" ]（希露薇一邊笨拙的吃一邊享受。[p_][endif]
[set_black][set_dinner_dress]
[chara_part name="dinner" arm="s/body/din_a1.png" arm_b="s/body/din_a2.png"  allow_storage=true ]
[chara_part name="dinner" food="00.png" allow_storage=true wait=true ]
[f/scl_nt]…。[p_][hide_black]
[eval exp="f.love=f.love+3" ][eval exp="f.daily_out='cafe'" ]

[syl][f/re]我吃飽了。[lr_]
[if exp="f.love>=200" ][f/s]非常好吃。[p_][f/ssp]
[elsif exp="f.step>=5" ][f/s]非常好吃。[p_][f/ss]
[elsif exp="f.step>=2" ][f/s]非常好吃。[p_][endif]

謝謝你了。[name]。[p_]
[paste_neck][paste_hat][eval exp="f.last_act='cafe'" ]
[jump storage="act_with/go_out.ks" target="*after_town" ]


