; サンプルキャラクター『カンフーマン』のコマンドファイルです。
; コマンドに関する設定は４部構成になっています。
;==============================================================================
; Win版専用パート
;==============================================================================
;------------------------------------------------------------------------------
; ここはWin版から（正確にはLinux版から）追加された要素の二つ。
; コマンド関連の初期設定を任意に指定出来るようになった(`・ω・´)
;
;『ボタンリマップ』はボタン配置変更用の項目。
; 定義パートでいちいち変更しなくても良いようになっちゃった。
; 面倒臭い人用かな！（ﾏﾃｺﾗ
;
;『デフォルト設定』では各[Command]で省略した場合の
; 入力受付時間と入力記憶時間を予め決めておく項目。
;
;
; この２項目は省略可能。
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
; 例えば「本来Ｘボタンで出す弱パンチをＢボタンに変えたい場合」なら、
;
; x = b
;
; で簡単に出来る。使わないボタンを使っているボタンに割り当てる事も可能。
;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 第２部

[Defaults]
command.time = 15  ;標準のコマンド入力受付時間。
                   ;各コマンドで省略している場合に有効。
                   ;このパラメータを消した場合、デフォルトは１フレームになる。
                   ;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）

command.buffer.time = 1  ;標準のコマンド入力記憶時間。
                         ;入力した直後にコマンドを記憶し、
                         ;指を離してもコマンドが成功している状態を
                         ;ここで設定した時間の分維持する。
                         ;１～３０フレームまでの間で設定可能。
                         ;デフォルトは１フレーム。

;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
; ここがキーとボタンの組み合わせで格闘ゲームにおける
;『入力コマンド』を直接設定・編集するパート。
;
; 一つずつコマンドに名前を付けて入力キーを組み合わせる単純な作業になるけど、
; 組み合わせが独特だから覚えるのは難易度が少し高い。
;
; 下記で「書式の決まり」と「組み合わせに必要なアルファベットと記号」を
; 全て説明しましょう。
;------------------------------------------------------------------------------
;■書式の決まり■
;
; [Command]         ：入力コマンドを１個定義する。
; name = "***"      ：コマンド名を決める。大文字と小文字も区別される。
; command = ###     ：実際に入力するキーを組み合わせる。詳細は後述。
; time = &&&        ：入力受付時間を設定（オプション）。
; buffer.time = @@@ ：入力記憶時間を設定（オプション）。
;
; 小ネタでも説明している通り、登録が可能な数は最大『１２８個』まで。
;
;
;※『必須コマンド名』と書いてるコマンドは、システム側で処理してます。
;　コマンド名を変えたり、消してはいけません。キーの変更は出来ます。
;------------------------------------------------------------------------------
;■必要なアルファベットと記号■
;
; 上記の「command = ###」の『###』に該当する部分で、
; 組み合わせるキーとボタンを設定しなければならない。
;
; ※設定したキーやボタンはM.U.G.E.Nのオプションモードにある
;  「キーコンフィグ」にて設定したキーなどに対応しています。
;
; ★方向キー★（全て必ず大文字で）
;
; 　B 　：「後方」にキーを入れる（ Backward ）
; 　D 　：「下方」にキーを入れる（ Downward ）
; 　F 　：「前方」にキーを入れる（ Forward ）
; 　U 　：「上方」にキーを入れる（ Upward ）
;
; 　DB　：「後ろ斜め下」にキーを入れる（「D」と「B」が同時に入力された事を認識）
; 　UB　：「後ろ斜め上」にキーを入れる（「U」と「B」が同時に入力された事を認識）
; 　DF　：「前斜め下」にキーを入れる（「D」と「F」が同時に入力された事を認識）
; 　UF　：「前斜め上」にキーを入れる（「U」と「F」が同時に入力された事を認識）
;
; ★ボタン★（全て必ず小文字で）
;
; 　a 　：「Ａボタン」を押す
; 　b 　：「Ｂボタン」を押す
; 　c 　：「Ｃボタン」を押す
; 　x 　：「Ｘボタン」を押す
; 　y 　：「Ｙボタン」を押す
; 　z 　：「Ｚボタン」を押す
; 　s 　：「スタートボタン」を押す
;
; ★記号★（入力効果を変化させる命令）
;
; 　/ 　：（スラッシュ）キーやボタンを「押しっぱなし」にしている事を認識する場合に追加する
;
; 　　（例）：　/b       = Ｂボタンを押したままにする
; 　　　　　　　/F       = 前キーを押したままにする
; 　　　　　　　/U,z     = 上キーを押したままＺボタンを入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　~ 　：（チルダ）キーやボタンが「離された時」を認識する場合に追加する
;
; 　　（例）：　~x       = Ｘボタンを離す
; 　　　　　　　~DF      =「前斜め下」のキーを離す
; 　　　　　　　~DB,F,c  =「後ろ斜め下」を離した後に前キー・Ｃボタンの順番に入力する
;
; 　　　　　　※「ボタンを離すまでの時間（溜め時間）」も設定する事が出来る
;
; 　　　　　　　~30x     = Ｘボタンを押したままにして、３０フレーム以上経ったら離す
; 　　　　　　　~50B,F,a = 後ろキーを５０フレームまで溜めて前キー・Ａボタンの順番に入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ドル）方向キーの「複数の内どれかが入力されている事」を認識する場合に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記号は「方向キー」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プラス）ボタンを「同時押し」している事を認識する場合に追加する
;
; 　　（例）：　x+y      = ＸボタンとＹボタンを同時押しする
; 　　　　　　　a+b+c    = ＡボタンとＢボタンとＣボタンを同時押しする
;
; 　　　　　　※この記号は「ボタン」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　> 　：（グレーターザン）大なり（Win版で追加された記号）
; 　　　　　　　　　　　　「他のキーが入力されていない事を確認して、そのキーを押す」場合
;
; 　　（例）：　a,>~a    = Ａボタン以外が入力されていない状態でＡボタンを離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;
;-------------------------------------------------------------------------------
; ●これらの記号は全て組み合わせて使う事が出来る●
;
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フレームまで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同時押ししたままにする
;
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

;※名前が同じならば、違うコマンドでも同じステートの技を出す事が可能。

[Command];超超電磁砲
name = "hyper-re-ru"
command = D, DF, F, D, DF, F, c
time = 30

[Command];超電磁砲
name = "re-ru"
command = B, DB, D, DF, F, a
time = 30

[Command];居合切り
name = "居合切り"
command = B, DB, D, DF, F, b
time = 30

[Command];空中電撃EX
name = "air_sunder"
command = ~D, DF, F, c
time = 20

[Command];砂鉄EX
name = "satetu"
command = D, DF, F, D, DF, F, c
time = 20
buffer.Time=10

[Command];落雷
name = "rakurai"
command = D, DB, B, D, DB, B, b
Time=30
buffer.Time=10

[Command]
name = "rai61"
command = /B, c
time = 10

[Command]
name = "rai62"
command = D, DB, B, b
time = 20

[Command]
name = "rai63a"
command = D, DF, F, a
time = 20

[Command]
name = "satetudoriru"
command = D, DF, F, b
time = 20

[Command]
name = "rai63c"
command = D, DF, F, c
time = 20

[Command]
name = "rai65"
command = D, D, c
time = 20


;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------


[Command];飛び道具_遠距離
name = "longsunder"
command = ~D, DB, B, a
time = 20

[Command];叩きつけ
name = "uchiotoshi"
command = ~z
time = 1

[Command];砂鉄巻き上げEX
name = "satetu_makiage_EX"
command = ~D, D, b
time = 20

[Command];砂鉄巻き上げ
name = "satetu_makiage"
command = ~D, DF, F, c
time = 20

[Command];昇竜
name = "apper"
command = ~D, DB, B, c
time = 20

[Command]
name = "satetu_tyudan"
command = ~D, D, y

[Command]
name = "satetu_tuki"
command = ~D, DB, B, y

[Command]
name = "satetu_kadan"
command = ~D, DB, B, a

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "recovery2" ;必須コマンド名
command = a+b
time = 1

[Command]
name = "GC"
command = x+b
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


[Command]
name="holdfwd"
command=/$F
Time=1

[Command]
name="holdback"
command=/$B
Time=1

;━| 特殊技・サブシステム |━━━━━━━━━━━━━━━━━━━━━━━━
[Command]
name = "zenten"
command =~F,a
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;---------------------------
;(「パワー溜め」用にコマンドを追加してます)
[Command]
name = "hold_x"
command = /z

[Command]
name = "hold_x"
command = /z

;------------------------------------------------------------------------------
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
; コマンド名と入力するコマンドを設定しただけじゃ意味が無いので、ここから
;「実際に入力したコマンドでどの番号のステートをどういう条件で出せるか」
; を決めなければならない。
;
; ステートコントローラ「ChangeState」しか使わないけど、
; そんなに難しくないのでトリガーを覚えてたらすぐ出来る。
;
; ここさえ押さえておけば簡単なトリガー設定の流れは覚えられるかと。
;
; エントリーの順番にはある程度の法則があるけど、
; おまけフォルダの「小ネタ.txt」を参照。（波動拳が暴発ﾅﾝﾀﾗｶﾝﾀﾗ）
;
; ChangeStateなどステートコントローラの基本的な設置例は
; おまけフォルダの「テンプレート.txt」を参照。
;------------------------------------------------------------------------------
; ■準常時監視ステート（－１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
; ここで↑にて実際に使っている「スマッシュカンフー昇竜のChangeState」を例に
; 見て行きましょ！m9っ｀Д´)
;
; まず特定のコマンドを入力したいならば、
; 必ず『呼び出すコマンドのトリガー』は設定しましょう。
; 特殊な条件でない限り、コマンドは通常「triggerall」の方で設定した方が良い。
;
;「triggerall」とは『有効になる状況を限定するための条件』を指定する。
; triggerallの条件が有効にならない限り、trigger1以降の条件も有効にはならない。
; 何個でも増やせる。ステート作成の基本テクニックの一つなので覚えておいてね。
; しかしtriggerallはtrigger1以降が無いと「単体では」使えないので注意。
;（trigger1以降を全てコメント化してM.U.G.E.Nでそのキャラを選んで試してみよう）
;
;
; ※『パワーゲージ』は「スーパーコンボゲージ」や「超必殺技ゲージ」などで
; 　呼ばれてる部分のゲージです。
; 　ゲージが「１０００ポイント」なら『レベル１』と同じ意味になります。
;
; 　まぁパッと見、M.U.G.E.Nのパワーゲージって仕組みが
; 　ストＺＥＲＯシリーズの「スーパーコンボレベルゲージ」まんまだよね（苦笑
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;[State -1, 超超電磁砲]
type = ChangeState
value = 900
triggerall = command = "hyper-re-ru"
triggerall = numProjID(11200)=0
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact
trigger6 = stateno = 370
trigger6 = movecontact
trigger7 = stateno = 320
trigger7 = movecontact
trigger8 = stateno = 320
trigger8 = movecontact
trigger9 = stateno = 760
trigger9 = movecontact
trigger10 = stateno = 920
trigger10 = movecontact
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[State -1, 電撃EX_空中]
type = ChangeState
value = 710
triggerall = command = "air_sunder"
triggerall = numProjID(11100)=0
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 680
trigger4 = movecontact
trigger5 = stateno = 470
trigger5 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[State -1, 超電磁砲]
type = ChangeState
value = 3050
triggerall = command = "re-ru"
triggerall = power >= 2000
trigger1 = statetype!= A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 760
trigger5 = movecontact
trigger6 = stateno = 440
trigger6 = movecontact
trigger7 = stateno = 370
trigger7 = movecontact
trigger8 = stateno = 920
trigger8 = movecontact
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[State -1, 居合切り]
type = ChangeState
value = 750
triggerall = command = "居合切り"
triggerall = power >= 1000
trigger1 = statetype!= A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 760
trigger5 = movecontact
trigger6 = stateno = 440
trigger6 = movecontact
trigger7 = stateno = 370
trigger7 = movecontact
trigger8 = stateno = 920
trigger8 = movecontact
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, 落雷]
type = ChangeState
value = 810
triggerall = command = "rakurai"
triggerall = numProjID(13300)=0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact
trigger6 = stateno = 370
trigger6 = movecontact
trigger7 = stateno = 320
trigger7 = movecontact
trigger8 = stateno = 320
trigger8 = movecontact
trigger9 = stateno = 920
trigger9 = movecontact
;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, 昇竜]
type = ChangeState
value = 470
triggerall = command = "apper"
trigger1 = statetype != A 
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 260
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact
trigger9 = stateno = 370
trigger9 = movecontact

;------------------------------------------------------------------------------
[State -1, スライディング]
type = ChangeState
value = 370
triggerall = statetype != A
triggerall = command = "c"
trigger1 = stateno = 100
trigger1 = ctrl
;------------------------------------------------------------------------------
[State -1, 砂鉄ドリル]
type = ChangeState
value = 910
triggerall = command = "satetudoriru"
trigger1 = statetype!= A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact
trigger6 = stateno = 370
trigger6 = movecontact
;------------------------------------------------------------------------------
[State -1, 砂鉄ドリル2]
type = ChangeState
value = 920
triggerall = Alive!=0
triggerall = command = "b"
triggerall = statetype!=A
trigger1 = stateno = 910
trigger1 = movecontact

;------------------------------------------------------------------------------
[State -1, 砂鉄巻き上げ]
type = ChangeState
value = 305
triggerall = command = "satetu_makiage"
triggerall = NumHelper(4450)=0
trigger1 = statetype!= A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact
trigger6 = stateno = 370
trigger6 = movecontact

;------------------------------------------------------------------------------
[State -1, 雷撃強]
type = ChangeState
value = 270
triggerall = NumHelper(10800) = 0
triggerall = command = "rai62"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 3100
trigger5 = movecontact
trigger6 = stateno = 440
trigger6 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[State -1, 電撃飛ばし]
type = ChangeState
value = 660
triggerall = command = "rai63a"
triggerall = numProjID(6131)=0
trigger1 = statetype = A
trigger1 = ctrl = 1

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, 電撃]
type = ChangeState
value = 760
triggerall = command = "longsunder"
triggerall = numProjID(7650)=0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 3100
trigger5 = movecontact
trigger6 = stateno = 440
trigger6 = movecontact
trigger7 = stateno = 370
trigger7 = movecontact
trigger8 = stateno = 320
trigger8 = movecontact
trigger9 = stateno = 270
trigger9 = movecontact
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, 電撃飛ばし]
type = ChangeState
value = 320
triggerall = command = "rai63a"
triggerall = numProjID(6150)=0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 3100
trigger5 = movecontact
trigger6 = stateno = 440
trigger6 = movecontact
trigger7 = stateno = 370
trigger7 = movecontact
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
; 変数の使い方の例。
;
; カンフーマンの「地上で必殺技が出せる状況」や、
; 通常技から必殺技へ繋ぐ時の「キャンセル」の部分を設定している。
; 地上で成功すれば、『変数の例２』のステートコントローラで設定した
; 変数が実行され、それ以外なら『変数の例１』でリセットする、という処理。
;
; 個人的にはこの方法はオススメしない。kfmcでの方法を推薦します。
[State -1, 変数の例１];必殺技の発生条件リセット
type = VarSet
trigger1 = 1
var(1) = 0 ;変数用パラメータの記述方法その１（その２は「板投げ」のステートにて）

[State -1, 変数の例２];必殺技の発生条件をチェック
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;[Statedef 440]（足払いのステート）ではない時
trigger2 = movecontact
var(1) = 1

;------------------------------------------------------------------------------
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------
[State -1,AirDash];空中ダッシュ
Type=ChangeState
value=110
TriggerAll=Alive!=0
TriggerAll=command="FF"
TriggerAll=StateType=A
TriggerAll=pos Y<=-30+(vel y>0)*20
TriggerAll=anim!=110
Trigger1=Ctrl

[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,ジャンプキャンセル]
Type=ChangeState
value=40
TriggerAll=StateType!=A
TriggerAll=command="holdup"
trigger1 = stateno = 305
trigger1 = time > 9

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
;--------------------------------------------------------------------------
;---------------------------------------------------------------------------

[State -1];地上ロマンキャンセル
type = ChangeState
value = 980
triggerall = movecontact
trigger1 = power >= 2000
trigger1 = command = "recovery"
trigger1 = statetype = S || statetype = C


[State -1];空中ロマンキャンセル
type = ChangeState
value = 990
triggerall = movecontact
trigger1 = power >= 2000
trigger1 = command = "recovery"
trigger1 = statetype = A

;--------------------------------------------------------------------------

[State -1, 前転]
type = ChangeState
value = ifelse(command = "holdback",451,450)
trigger1 = command = "x"
trigger1 = ctrl && statetype != A

[State -1, 回避]
type = ChangeState
value = 330
trigger1 = command = "y"
trigger1 = statetype != A
trigger1 = ctrl 

;------------------------------------------------------------------------------
[State -1,S_k];投げ
	Type=ChangeState
	value=820
	TriggerAll=Alive!=0
	TriggerAll=StateType=S
	TriggerAll=Ctrl
	TriggerAll=command="c"
	TriggerAll=command="holdfwd"
	TriggerAll=StateNo!=100
	Trigger1=p2bodydist x<=ceil(30*const(size.xscale))
	Trigger1=enemynear,StateType=S||enemynear,StateType=C
	Trigger1=enemynear,MoveType!=H
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[State -1];くらい抜け
type = ChangeState
value = ifelse(statetype !=A,730,740)
TriggerAll = Alive
triggerall = command = "recovery2"
triggerall = MoveType = H 
triggerall = var(13) = 0
trigger1 = stateno = 5000 && time > 0
trigger2 = stateno = 5010 && time > 0
trigger3 = stateno = 5020 && time > 0
trigger4 = stateno = 5070 && time > 0
trigger5 = stateno != 5000 && stateno != 5010 && stateno != 5020 && stateno != 5070
trigger5 = stateno = [5001,5099] 

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, カンフースルー];投げ技
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;------------------------------------------------------------------------------

[State -1, ゲージ溜め];ちょっとこ丸が追加した技
type = ChangeState
value = 700
triggerall = command = "hold_x"
triggerall = power < 5000 ;ゲージが満タンの時は出せない
triggerall = ctrl
trigger1 = statetype != A


;==============================================================================
; 通常攻撃技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact

[State -1, 立ち弱キック]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

[State -1, 立ち強キック]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ弱キック]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact

[State -1, しゃがみ強キック]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact

;------------------------------------------------------------------------------

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1, ジャンプ弱キック]
type = ChangeState
value = 640
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 600
trigger2 = movecontact

[State -1, 叩きつけ]
type = ChangeState
value = 680
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 640
trigger4 = movecontact


;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
