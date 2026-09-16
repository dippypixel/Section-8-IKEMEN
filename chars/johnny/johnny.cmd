
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|----------------------------------------
[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;-| デフォルト設定 |-----------------------------------------------------------
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
                         ;デフォルトは１フレーム
;==============================================================================
; コマンド定義パート（入力キーを設定する）
;==============================================================================
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
;※『必須コマンド名』と書いてるコマンドは、システム側で処理してます。
;　コマンド名を変えたり、消してはいけません。キーの変更は出来ます。
;------------------------------------------------------------------------------
;■必要なアルファベットと記号■
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
; 　/ 　：（スラッシュ）キーやボタンを「押しっぱなし」にしている事を認識する場合に追加する
;
; 　　（例）：　/b       = Ｂボタンを押したままにする
; 　　　　　　　/F       = 前キーを押したままにする
; 　　　　　　　/U,z     = 上キーを押したままＺボタンを入力する
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
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ドル）方向キーの「複数の内どれかが入力されている事」を認識する場合に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記号は「方向キー」でしか使えません。
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プラス）ボタンを「同時押し」している事を認識する場合に追加する
;
; 　　（例）：　x+y      = ＸボタンとＹボタンを同時押しする
; 　　　　　　　a+b+c    = ＡボタンとＢボタンとＣボタンを同時押しする
;
; 　　　　　　※この記号は「ボタン」でしか使えません。
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; 　> 　：（グレーターザン）大なり（Win版で追加された記号）
; 　　　　　　　　　　　　「他のキーが入力されていない事を確認して、そのキーを押す」場合
;
; 　　（例）：　a,>~a    = Ａボタン以外が入力されていない状態でＡボタンを離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;-------------------------------------------------------------------------------
; ●これらの記号は全て組み合わせて使う事が出来る●
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フレームまで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同時押ししたままにする
;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "236xy"
command = ~D, DF, F, b
time = 18

[Command]
name = "236xy"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "236xy"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "236xy"
command = ~D, DF, F, z+x
time = 20

[Command]
name = "214xy"
command = ~D, DB, B, b
time = 18

[Command]
name = "214xy"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "214xy"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "214xy"
command = ~D, DB, B, z+x
time = 20

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "623a"
command = D,F, a
time = 16

[Command]
name = "421a"
command = D,B, a
time = 16

[Command]
name = "236a"
command = ~D, DF, F, a
time = 18

[Command]
name = "214a"
command = ~D, DB, B, a
time = 18

[Command]
name = "426x"
command = ~B, DB, D, DF, F, x
time = 20

[Command]
name = "426x"
command = ~B, DB, D, DF, F, y
time = 20

[Command]
name = "426x"
command = ~B, DB, D, DF, F, z
time = 20

[Command]
name = "624x"
command = ~F, DF, D, DB, B x
time = 20

[Command]
name = "624x"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "624x"
command = ~F, DF, D, DB, B, z
time = 20

[Command]
name = "22x"
command = ~D, D, x
time = 15

[Command]
name = "22y"
command = ~D, D, y
time = 15

[Command]
name = "22z"
command = ~D, D, z
time = 15

[Command]
name = "236x"
command = ~D, DF, F, x
time = 18

[Command]
name = "236y"
command = ~D, DF, F, y
time = 18

[Command]
name = "236z"
command = ~D, DF, F, z
time = 18

[Command]
name = "214x"
command = ~D, DB, B, x
time = 18

[Command]
name = "214y"
command = ~D, DB, B, y
time = 18

[Command]
name = "214z"
command = ~D, DB, B, z
time = 18

[Command]
name = "623x"
command = ~F, D, DF, x
time = 13
[Command]
name = "623x"
command = F, D, DF, x
time = 16

[Command]
name = "623y"
command = ~F, D, DF, y
time = 13
[Command]
name = "623y"
command = F, D, DF, y
time = 16

[Command]
name = "623z"
command = ~F, D, DF, z
time = 13
[Command]
name = "623z"
command = F, D, DF, z
time = 16

[Command]
name = "421x"
command = ~B, D, DB, x
time = 13
[Command]
name = "421x"
command = B, D, DB, x
time = 16

[Command]
name = "421y"
command = ~B, D, DB, y
time = 13
[Command]
name = "421y"
command = B, D, DB, y
time = 16

[Command]
name = "421z"
command = ~B, D, DB, z
time = 13
[Command]
name = "421z"
command = B, D, DB, z
time = 16

[Command]
name = "46x"
command = B, F, x
time = 16
[Command]
name = "46x"
command = B, F, y
time = 16
[Command]
name = "46x"
command = B, F, z
time = 16

[Command]
name = "64x"
command = F, B, x
time = 16
[Command]
name = "64x"
command = F, B, y
time = 16
[Command]
name = "64x"
command = F, B, z
time = 16

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "SM6"
command = F
time = 1
[Command]
name = "SM2"
command = D
time = 1

[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1

[Command];ハイジャンプ
name = "HJ"
command = ~$D, $U
time = 8 ;入力猶予は8F（それ以下で操作した時に暴発しないように）

[Command];ハイジャンプ暴発防止用
name = "NHJ"
command = ~12$D, $U
time = 8
;下要素がずっと入ってる状態で上を入れてもハイジャンプを暴発させない

[Command];ハイジャンプ暴発防止用
name = "NHJ"
command = /$D
time = 12

;---------------------------
[Command]
name = "投げ抜けコマンド"
command = x+y
[Command]
name = "投げ抜けコマンド"
command = x+z
[Command]
name = "投げ抜けコマンド"
command = x+a
[Command]
name = "投げ抜けコマンド"
command = x+b
[Command]
name = "投げ抜けコマンド"
command = x+c
[Command]
name = "投げ抜けコマンド"
command = y+z
[Command]
name = "投げ抜けコマンド"
command = y+a
[Command]
name = "投げ抜けコマンド"
command = y+b
[Command]
name = "投げ抜けコマンド"
command = y+c
[Command]
name = "投げ抜けコマンド"
command = z+a
[Command]
name = "投げ抜けコマンド"
command = z+b
[Command]
name = "投げ抜けコマンド"
command = z+c
[Command]
name = "投げ抜けコマンド"
command = a+b
[Command]
name = "投げ抜けコマンド"
command = a+c
[Command]
name = "投げ抜けコマンド"
command = b+c

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
command = x
time = 1
[Command]
name = "recovery" ;必須コマンド名
command = y
time = 1
[Command]
name = "recovery" ;必須コマンド名
command = z
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

;==============================================================================
; ステートエントリーパート（技などを出せるようにするための条件を設定）
; ■準常時監視ステート（‐１）■
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

[State -1, なんだこの回転は！？]
type = ChangeState
value = 2100
triggerall = !ishelper && roundstate=2
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="236xy"||helper(99999),var(21)>0)&&facing*p2dist X>=0)||((helper(99999),command="214xy"||helper(99999),var(22)>0)&&facing*p2dist X<0)
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno=1000 && time = [20,48])||(stateno=1010 && time = [20,54])||(stateno=1020 && time = [20,60])
trigger4 = helper(99999),var(49)=1
trigger5 = (stateno = 1200 && time = [17,41])
trigger6 = (stateno = 1100 && time = [20,44])
trigger7 = (stateno = 1837 && animelemtime(2)>0 && animelemtime(4)<0)
trigger8 = (stateno = 100 && animelemtime(8)>0);前ステ
trigger9 = ((anim=1810 && animelemtime(2)>7 || movecontact) && animelemtime(6)<0)

[State -1, 回転は穴になっても死なないぞ！]
type = ChangeState
value = 2000
triggerall = !ishelper && roundstate=2
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="236xy"||helper(99999),var(21)>0)&&facing*p2dist X<0)||((helper(99999),command="214xy"||helper(99999),var(22)>0)&&facing*p2dist X>=0)
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno=1000 && time = [20,48])||(stateno=1010 && time = [20,54])||(stateno=1020 && time = [20,60])
trigger4 = helper(99999),var(49)=1
trigger5 = (stateno = 1200 && time = [17,41])
trigger6 = (stateno = 1100 && time = [20,44])
trigger7 = (stateno = 1837 && animelemtime(2)>0 && animelemtime(4)<0)
trigger8 = (stateno = 100 && animelemtime(8)>0);前ステ
trigger9 = ((anim=1810 && animelemtime(2)>7 || movecontact) && animelemtime(6)<0)

[State -1, もう迷っちゃあいない]
type = ChangeState
value = 2200
triggerall = !ishelper && roundstate=2
triggerall = var(59) <= 0
triggerall = var(50) >= 2;ACT2以降
triggerall = ((helper(99999),command="236xy"||helper(99999),var(21)>0)&&facing*p2dist X>=0)||((helper(99999),command="214xy"||helper(99999),var(22)>0)&&facing*p2dist X<0)
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno=1000 && time = [20,48])||(stateno=1010 && time = [20,54])||(stateno=1020 && time = [20,60])
trigger5 = (stateno = 1200 && time = [17,41])
trigger6 = (stateno = 1100 && time = [20,44])
trigger7 = (stateno = 1300 && time = [18,35])||(stateno = 1310 && time = [12,35])||(stateno = 1320 && time = [11,35])
trigger7 = helper(99999),var(49)=1
trigger8 = stateno = 1400 && ((anim = 1400 && time = [26,44])||(anim = 1410 && time = [26,44])||(anim = 1420 && time = [16,44]))
trigger9 = (stateno = 240 && time = [31,42])
trigger10 = (stateno = 1500 && anim = 1502) || (stateno = 1500 && helper(1530),movecontact)
trigger11 = (stateno = 1585 && animelemtime(8)>0 && animelemtime(19)<0)
trigger12 = (stateno = 1837 && animelemtime(2)>0 && animelemtime(4)<0)
trigger13 = (stateno = 100 && animelemtime(8)>0);前ステ
trigger14 = ((anim=1810 && animelemtime(2)>7 || movecontact) && animelemtime(6)<0)

[State -1, 君に渡せなかったこの一発の『鉄球』生贄]
type = ChangeState
value = 3000
triggerall = !ishelper && roundstate=2
triggerall = var(59) <= 0
triggerall = numhelper(3610)=0
triggerall = (command = "c") || (helper(99999),var(20))
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

;==============================================================================
; 必殺技
;==============================================================================

[State -1, 生贄]
type = null;ChangeState
value = 3500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 4 && var(51)>=10;ACT4以降 残弾あり
triggerall = command="236a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, チュミミーン]
type = ChangeState
value = 3600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = numhelper(3610)=0
triggerall = var(50) >= 4 && var(51)>=10;ACT4以降 残弾あり
triggerall = ((helper(99999),command="623a"||helper(99999),var(29)>0)&&facing*p2dist X>=0)||((helper(99999),command="421a"||helper(99999),var(30)>0)&&facing*p2dist X<=0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 自分を撃つッ]
type = ChangeState
value = 1500
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=20;ACT3以降 残弾あり
triggerall = ((helper(99999),command="623x"||helper(99999),var(10)>0)&&facing*p2dist X>=0)||((helper(99999),command="421x"||helper(99999),var(13)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, あれは人殺しの目だ]
type = ChangeState
value = 1540
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=10;ACT3以降 残弾あり
triggerall = ((helper(99999),command="623y"||helper(99999),var(11)>0)&&facing*p2dist X>=0)||((helper(99999),command="421y"||helper(99999),var(14)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, よし見える]
type = ChangeState
value = 1580
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=10;ACT3以降 残弾あり
triggerall = ((helper(99999),command="623z"||helper(99999),var(12)>0)&&facing*p2dist X>=0)||((helper(99999),command="421z"||helper(99999),var(15)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 新しい道へ行くぞ！]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=10;ACT3以降 残弾あり
triggerall = ((helper(99999),command="623x"||helper(99999),var(10)>0)&&facing*p2dist X<0)||((helper(99999),command="421x"||helper(99999),var(13)>0)&&facing*p2dist X>=0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ
[State -1, 新しい道へ行くぞ！]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=10;ACT3以降 残弾あり
triggerall = ((helper(99999),command="623y"||helper(99999),var(11)>0)&&facing*p2dist X<0)||((helper(99999),command="421y"||helper(99999),var(14)>0)&&facing*p2dist X>=0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ
[State -1, 新しい道へ行くぞ！]
type = ChangeState
value = 1600
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 3 && var(51)>=10;ACT3以降 残弾あり
triggerall = ((helper(99999),command="623z"||helper(99999),var(12)>0)&&facing*p2dist X<0)||((helper(99999),command="421z"||helper(99999),var(15)>0)&&facing*p2dist X>=0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 爪の方が]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="623x"||helper(99999),var(10)>0)&&facing*p2dist X>=0)||((helper(99999),command="421x"||helper(99999),var(13)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 爪の方が]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="623y"||helper(99999),var(11)>0)&&facing*p2dist X>=0)||((helper(99999),command="421y"||helper(99999),var(14)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 爪の方が]
type = ChangeState
value = 1100
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="623z"||helper(99999),var(12)>0)&&facing*p2dist X>=0)||((helper(99999),command="421z"||helper(99999),var(15)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 黄金回転 L]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2以降 残弾あり
triggerall = ((helper(99999),command="236x"||helper(99999),var(2)>0)&&facing*p2dist X>=0)||((helper(99999),command="214x"||helper(99999),var(5)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 黄金回転 M]
type = ChangeState
value = 1310
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2以降 残弾あり
triggerall = ((helper(99999),command="236y"||helper(99999),var(3)>0)&&facing*p2dist X>=0)||((helper(99999),command="214y"||helper(99999),var(6)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 黄金回転 H]
type = ChangeState
value = 1320
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2以降 残弾あり
triggerall = ((helper(99999),command="236z"||helper(99999),var(4)>0)&&facing*p2dist X>=0)||((helper(99999),command="214z"||helper(99999),var(7)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 移動する穴 L]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2以降 残弾あり
triggerall = numhelper(1450)=0;穴が存在していない
triggerall = ((helper(99999),command="236x"||helper(99999),var(2)>0)&&facing*p2dist X<0)||((helper(99999),command="214x"||helper(99999),var(5)>0)&&facing*p2dist X>=0)
triggerall = 1 || var(9):=0 ;L
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);前ステ
[State -1, 移動する穴 M]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2以降 残弾あり
triggerall = numhelper(1450)=0;穴が存在していない
triggerall = ((helper(99999),command="214y"||helper(99999),var(6)>0)&&facing*p2dist X>=0)||((helper(99999),command="236y"||helper(99999),var(3)>0)&&facing*p2dist X<0)
triggerall = 1 || var(9):=10 ;M
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);前ステ
[State -1, 移動する穴 H]
type = ChangeState
value = 1400
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2以降 残弾あり
triggerall = numhelper(1450)=0;穴が存在していない
triggerall = ((helper(99999),command="214z"||helper(99999),var(7)>0)&&facing*p2dist X>=0)||((helper(99999),command="236z"||helper(99999),var(4)>0)&&facing*p2dist X<0)
triggerall = 1 || var(9):=20 ;H
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, これはなんなんだ]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="214x"||helper(99999),var(5)>0)&&facing*p2dist X>=0)||((helper(99999),command="236x"||helper(99999),var(2)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ
[State -1, これはなんなんだ]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="214y"||helper(99999),var(6)>0)&&facing*p2dist X>=0)||((helper(99999),command="236y"||helper(99999),var(3)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ
[State -1, これはなんなんだ]
type = ChangeState
value = 1200
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="214z"||helper(99999),var(7)>0)&&facing*p2dist X>=0)||((helper(99999),command="236z"||helper(99999),var(4)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, ACT1 牙x]
type = ChangeState
value = 1000
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="236x"||helper(99999),var(2)>0)&&facing*p2dist X>=0)||((helper(99999),command="214x"||helper(99999),var(5)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, ACT1 牙y]
type = ChangeState
value = 1010
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="236y"||helper(99999),var(3)>0)&&facing*p2dist X>=0)||((helper(99999),command="214y"||helper(99999),var(6)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, ACT1 牙z]
type = ChangeState
value = 1020
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) <= 1;ACT1
triggerall = ((helper(99999),command="236z"||helper(99999),var(4)>0)&&facing*p2dist X>=0)||((helper(99999),command="214z"||helper(99999),var(7)>0)&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

;==============================================================================
; 移動関連
;==============================================================================

[State -1, ハイジャンプ]
type = ChangeState
value = 1750
triggerall = var(59) <= 0
triggerall = (helper(99999),command="HJ") || helper(99999),var(28)>0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = 0;(stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = 0;(stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = 0;(stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 前転]
type = ChangeState
value = 100
triggerall = var(59) <= 0
trigger1 = (facing>0&&(helper(99998),command="FF" || helper(99998),var(9))) || (facing<0&&(helper(99998),command="BB" || helper(99998),var(8)))
trigger1 = statetype != A
trigger1 = ctrl

[State -1, 後ろ向きに前転]
type = ChangeState
value = 105
triggerall = var(59) <= 0
trigger1 = (facing<0&&(helper(99998),command="FF" || helper(99998),var(9))) || (facing>0&&(helper(99998),command="BB" || helper(99998),var(8)))
trigger1 = statetype != A
trigger1 = ctrl

;==============================================================================
; 特殊技 とコマンド技
;==============================================================================

[State -1, 投げ]
type = ChangeState
value = 700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "xy") || (helper(99999),var(23))
triggerall = statetype != A
triggerall = !(command = "holdback")
trigger1 = ctrl
trigger1 = 1 || var(2):=0
trigger2 = (stateno = 100 && animelemtime(8)>0);前ステ
trigger2 = 1 || var(2):=0
trigger3 = (time <= 2 && stateno = [200,210]) || (time <= 2 && stateno = [400,410])
trigger3 = !(time <= 2 && prevstateno = [200,210]) && !(time <= 2 && prevstateno = [400,410])
trigger3 = 1 || var(2):=0
[State -1, 投げ]
type = ChangeState
value = 700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "xy") || (helper(99999),var(23))
triggerall = statetype != A
triggerall = (command = "holdback")
triggerall = 1 || var(2):=1
trigger1 = ctrl
trigger1 = 1 || var(2):=1
trigger2 = (stateno = 100 && animelemtime(8)>0);前ステ
trigger2 = 1 || var(2):=1
trigger3 = (time <= 2 && stateno = [200,210]) || (time <= 2 && stateno = [400,410])
trigger3 = !(time <= 2 && prevstateno = [200,210]) && !(time <= 2 && prevstateno = [400,410])
trigger3 = 1 || var(2):=1

[State -1, あそこまで行かなくては！前進]
type = ChangeState
value = 1800;1830
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "z" && command = "holdfwd" && command != "holddown") || ((helper(99999),var(0)=[61,69])&&facing*p2dist X>=0||(helper(99999),var(0)=[71,79])&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, あそこまで行かなくてはアタック]
type = null;ChangeState
value = 1815;1835
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = stateno = 1830 || stateno = 1800
triggerall = (anim=1830 && animelemtime(6)>0 && animelemtime(7)<0) || ((anim=1810 && animelemtime(2)>7 || movecontact) && animelemtime(4)<1)
trigger1 = (command = "x" && command != "holddown") || (helper(99999),var(0)=[1,9])
trigger2 = (command = "y" && command != "holddown") || (helper(99999),var(0)=[11,19])
trigger3 = (command = "z" && command != "holddown") || (helper(99999),var(0)=[21,29])
trigger4 = (command = "z" && command = "holdfwd") || ((helper(99999),var(0)=[61,69])&&facing*p2dist X>=0||(helper(99999),var(0)=[71,79])&&facing*p2dist X<0)

[State -1, あそこまで行かなくては！後退]
type = ChangeState
value = 1850
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "z" && command = "holdback" && command != "holddown") || ((helper(99999),var(0)=[61,69])&&facing*p2dist X<0||(helper(99999),var(0)=[71,79])&&facing*p2dist X>=0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1,外して撃った]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = var(50) >= 2 && var(51)>=10;ACT2以降 残弾あり
;triggerall = ((helper(99999),command="46x"||helper(99999),var(24)>0)&&facing*p2dist X>=0)||((helper(99999),command="64x"||helper(99999),var(25)>0)&&facing*p2dist X<0)
triggerall = (command = "y" && command = "holdfwd" && command != "holddown") || ((helper(99999),var(0)=[81,89])&&facing*p2dist X>=0||(helper(99999),var(0)=[91,99])&&facing*p2dist X<0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 僕の体が飛び上がった！]
type = null;ChangeState
value = 1700
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (helper(99999),command="22x"||helper(99999),var(16)>0) || (helper(99999),command="22y"||helper(99999),var(17)>0) || (helper(99999),command="22z"||helper(99999),var(18)>0)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger2 = movecontact
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger3 = movecontact
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 5挑発]
type = ChangeState
value = 940
triggerall = var(59) <= 0
triggerall = (command = "start") || (helper(99999),var(31))
triggerall = roundstate = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, プッツンキャンセル]
type = ChangeState
value = 7880
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "b") || (helper(99999),var(19))
triggerall = statetype != A
triggerall = power >= 1000
;暴発防止
triggerall = !( ((helper(99999),command="236xy"||helper(99999),var(21)>0)&&facing*p2dist X>=0)||((helper(99999),command="214xy"||helper(99999),var(22)>0)&&facing*p2dist X<0) )
triggerall = !( ((helper(99999),command="236xy"||helper(99999),var(21)>0)&&facing*p2dist X<0)||((helper(99999),command="214xy"||helper(99999),var(22)>0)&&facing*p2dist X>=0) )
trigger1 = 0
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && (time = [15,40]) && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno=1000 && time = [20,48])||(stateno=1010 && time = [20,54])||(stateno=1020 && time = [20,60])
trigger5 = (stateno = 1200 && time = [17,41])
trigger6 = (stateno = 1100 && time = [20,44])
trigger7 = (stateno = 1300 && time = [18,35])||(stateno = 1310 && time = [12,35])||(stateno = 1320 && time = [11,35])
trigger8 = stateno = 1400 && ((anim = 1400 && time = [19,37])||(anim = 1410 && time = [19,39])||(anim = 1420 && time = [16,44]))
trigger9 = (stateno = 240 && time = [30,42])
trigger10 = (stateno = 1500 && anim = 1502) || (stateno = 1500 && helper(1530),movecontact)
trigger11 = (stateno = 1585 && animelemtime(8)>0 && animelemtime(19)<0)
trigger12 = (stateno = 1837 && animelemtime(2)>0 && animelemtime(4)<0)
trigger13 = ((anim=1810 && animelemtime(2)>7 || movecontact) && animelemtime(6)<0)

[State -1, ハーブティー飲む？]
type = ChangeState
value = 1900
triggerall = !ishelper
triggerall = var(59) <= 0
triggerall = (command = "a") || (helper(99999),var(27))
triggerall = var(50) >= 2;ACT2以降
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7) || (stateno = 220 && time = [15,31])
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7) || (stateno = 420 && time > 20 && !(var(1)>0&&numhelper(422)&&helper(422),HitPauseTime>0))
trigger4 = (stateno = 240 && time = [36,45]) && 0
trigger5 = (stateno = 100 && animelemtime(8)>0);前ステ

;==============================================================================
; 通常攻撃技
;==============================================================================

[State -1, 立ち弱]
type = ChangeState
value = 200
triggerall = var(59) <= 0
triggerall = (command = "x" && command != "holddown") || (helper(99999),var(0)=[1,9])
triggerall = statetype != A
triggerall = !( (helper(99999),command="22x"||helper(99999),var(16)>0) || (helper(99999),command="22y"||helper(99999),var(17)>0) || (helper(99999),command="22z"||helper(99999),var(18)>0) );無敵昇竜を優先
trigger1 = ctrl
trigger2 = (stateno = 400 && time = [5,12+4])
trigger3 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 立ち中]
type = ChangeState
value = 210
triggerall = var(59) <= 0
triggerall = (command = "y" && command != "holddown") || (helper(99999),var(0)=[11,19])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 400 && time = [5,12+4])
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 立ち強]
type = ChangeState
value = 220
triggerall = var(59) <= 0
triggerall = (command = "z" && command != "holddown") || (helper(99999),var(0)=[21,29])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7)
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7)
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, しゃがみ弱]
type = ChangeState
value = 400
triggerall = var(59) <= 0
triggerall = (command = "x" && command = "holddown") || (helper(99999),var(0)=[31,39])
triggerall = statetype != A
triggerall = !( (helper(99999),command="22x"||helper(99999),var(16)>0) || (helper(99999),command="22y"||helper(99999),var(17)>0) || (helper(99999),command="22z"||helper(99999),var(18)>0) );無敵昇竜を優先
trigger1 = ctrl
trigger2 = (stateno = 400 && time = [6,12+4])
trigger3 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, しゃがみ中]
type = ChangeState
value = 410
triggerall = var(59) <= 0
triggerall = (command = "y" && command = "holddown") || (helper(99999),var(0)=[41,49])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 400 && time = [5,12+4])
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, しゃがみ強]
type = ChangeState
value = 420
triggerall = var(59) <= 0
triggerall = (command = "z" && command = "holddown") || (helper(99999),var(0)=[51,59])
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 && time > 5) || (stateno = 210 && time > 7)
trigger3 = (stateno = 400 && time = [5,12+4]) || (stateno = 410 && time > 7)
trigger4 = (stateno = 100 && animelemtime(8)>0);前ステ

[State -1, 空中攻撃]
type = ChangeState
value = 600
triggerall = var(59) <= 0
triggerall = statetype = A
triggerall = stateno = 1760 || ctrl
trigger1 = (command = "x" && command = "holddown") || (helper(99999),var(0)=[31,39])
trigger2 = (command = "y" && command = "holddown") || (helper(99999),var(0)=[41,49])
trigger3 = (command = "z" && command = "holddown") || (helper(99999),var(0)=[51,59])
trigger4 = (command = "x" && command != "holddown") || (helper(99999),var(0)=[1,9])
trigger5 = (command = "y" && command != "holddown") || (helper(99999),var(0)=[11,19])
trigger6 = (command = "z" && command != "holddown") || (helper(99999),var(0)=[21,29])

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
