[_tb_system_call storage=system/_title_screen.ks]


;==============================
; タイトル画面
;==============================


[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]

;標準のメッセージレイヤを非表示


[tb_hide_message_window  ]

;タイトル表示


[playbgm  volume="100"  time="1000"  loop="true"  storage="夏の山2.mp3"  ]
[bg  storage="無題76_20260112213250.png"  ]
*title

[tb_start_tyrano_code]
[glink color="btn_05_black" storage="title_screen.ks" target="*start" text="はじめから" x="405" y="410" width="175" height="50" size="24" clickse="カーソル移動4.mp3" enterse="キャンセル1.mp3" leavese="" autopos="false"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[glink color="btn_05_black" storage="title_screen.ks" target="*load" text="つづきから" x="405" y="470" width="175" height="50" size="24" clickse="カーソル移動4.mp3" enterse="キャンセル1.mp3" leavese="" autopos="false"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[glink color="btn_05_black" storage="title_screen.ks" target="*config" text="システム" x="405" y="530" width="175" height="50" size="24" clickse="カーソル移動4.mp3" enterse="キャンセル1.mp3" leavese="" autopos="false"]
[_tb_end_tyrano_code]

[s  ]

;-------ボタンが押されたときの処理


*start

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動2.mp3"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[showmenubutton]

[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="prologue.ks"  target=""  ]
[s  ]

;--------ロードが押された時の処理


*load

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動2.mp3"  ]
[cm  ]
[showload]

[jump  target="*title"  storage=""  ]

;--------システムが押された時の処理


*config

[playse  volume="100"  time="1000"  buf="0"  storage="カーソル移動2.mp3"  ]
[tb_start_tyrano_code]
[sleepgame storage="config.ks"]
[_tb_end_tyrano_code]

[jump  storage="title_screen.ks"  target="*title"  ]
[s  ]
