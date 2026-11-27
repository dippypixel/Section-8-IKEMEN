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
;AI用
[Command] 
name = "AI0" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a 
time = 0 
[Command] 
name = "AI1" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b 
time = 0 
[Command] 
name = "AI2" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c 
time = 0 
[Command] 
name = "AI3" 
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0 
[Command] 
name = "AI4" 
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0 
[Command] 
name = "AI5" 
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0 
[Command] 
name = "AI6" 
command = a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a
time = 0 
[Command] 
name = "AI7" 
command = a,c,a,c,a,c,a,c,a,c,a,c,a,c,a,c,a,c,a
time = 0 
[Command] 
name = "AI8" 
command = a,x,a,x,a,x,a,x,a,x,a,x,a,x,a,x,a,x,a
time = 0 
[Command] 
name = "AI9" 
command = a,y,a,y,a,y,a,y,a,y,a,y,a,y,a,y,a,y,a
time = 0 
[Command] 
name = "AI10" 
command = a,z,a,z,a,z,a,z,a,z,a,z,a,z,a,z,a,z,a
time = 0 
[Command] 
name = "AI11" 
command = b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b,a,b
time = 0 
[Command] 
name = "AI12" 
command = b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b 
time = 0 
[Command] 
name = "AI13" 
command = b,x,b,x,b,x,b,x,b,x,b,x,b,x,b,x,b,x,b
time = 0 
[Command] 
name = "AI14" 
command = b,y,b,y,b,y,b,y,b,y,b,y,b,y,b,y,b,y,b
time = 0 
[Command] 
name = "AI15" 
command = b,z,b,z,b,z,b,z,b,z,b,z,b,z,b,z,b,z,b 
time = 0 
[Command] 
name = "AI16" 
command = c,a,c,a,c,a,c,a,c,a,c,a,c,a,c,a,c,a,c
time = 0 
[Command] 
name = "AI17" 
command = c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c,b,c
time = 0 
[Command] 
name = "AI18" 
command = c,y,c,y,c,y,c,y,c,y,c,y,c,y,c,y,c,y,c 
time = 0 
[Command] 
name = "AI19" 
command = c,x,c,x,c,x,c,x,c,x,c,x,c,x,c,x,c,x,c
time = 0 
[Command] 
name = "AI20" 
command = c,z,c,z,c,z,c,z,c,z,c,z,c,z,c,z,c,z,c
time = 0 
[Command] 
name = "AI21" 
command = x,a,x,a,x,a,x,a,x,a,x,a,x,a,x,a,x,a,x
time = 0 
[Command] 
name = "AI22" 
command = x,b,x,b,x,b,x,b,x,b,x,b,x,b,x,b,x,b,x 
time = 0 
[Command] 
name = "AI23" 
command = x,c,x,c,x,c,x,c,x,c,x,c,x,c,x,c,x,c,x 
time = 0 
[Command] 
name = "AI24" 
command = x,y,x,y,x,y,x,y,x,y,x,y,x,y,x,y,x,y,x 
time = 0 
[Command] 
name = "AI25" 
command = x,z,x,z,x,z,x,z,x,z,x,z,x,z,x,z,x,z,x 
time = 0 
[Command] 
name = "AI26" 
command = y,a,y,a,y,a,y,a,y,a,y,a,y,a,y,a,y,a,y 
time = 0 
[Command] 
name = "AI27" 
command = y,b,y,b,y,b,y,b,y,b,y,b,y,b,y,b,y,b,y 
time = 0 
[Command] 
name = "AI28" 
command = y,c,y,c,y,c,y,c,y,c,y,c,y,c,y,c,y,c,y
time = 0 
[Command] 
name = "AI29" 
command = y,x,y,x,y,x,y,x,y,x,y,x,y,x,y,x,y,x,y 
time = 0 
[Command] 
name = "AI30" 
command = y,z,y,z,y,z,y,z,y,z,y,z,y,z,y,z,y,z,y 
time = 0 
[Command] 
name = "AI31" 
command = z,a,z,a,z,a,z,a,z,a,z,a,z,a,z,a,z,a,z 
time = 0 
[Command] 
name = "AI32" 
command = z,b,z,b,z,b,z,b,z,b,z,b,z,b,z,b,z,b,z 
time = 0 
[Command] 
name = "AI33" 
command = z,c,z,c,z,c,z,c,z,c,z,c,z,c,z,c,z,c,z
time = 0 
[Command] 
name = "AI34" 
command = z,x,z,x,z,x,z,x,z,x,z,x,z,x,z,x,z,x,z 
time = 0 
[Command] 
name = "AI35" 
command = z,y,z,y,z,y,z,y,z,y,z,y,z,y,z,y,z,y,z 
time = 0 
[Command] 
name = "AI36" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b 
time = 0 
[Command] 
name = "AI37" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,c 
time = 0 
[Command] 
name = "AI38" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,x 
time = 0 
[Command] 
name = "AI39" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b,b 
time = 0 
[Command] 
name = "AI40" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,c,c 
time = 0 
[Command] 
name = "AI41" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,x,x 
time = 0 
[Command] 
name = "AI42" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b,b,b 
time = 0 
[Command] 
name = "AI43" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,c,c,c 
time = 0 
[Command] 
name = "AI44" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,x,x,x 
time = 0 
[Command] 
name = "AI45" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,y,y,y 
time = 0 
[Command] 
name = "AI46" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,z,z,z 
time = 0 
[Command] 
name = "AI47" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,a,a,a 
time = 0 
[Command] 
name = "AI48" 
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z 
time = 0 
[Command] 
name = "AI49" 
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,y,y,y 
time = 0 
[Command] 
name = "AI50" 
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,x,x,x,x 
time = 0 


;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "はもんしっそう"
command = D, DF, F, x+y
time = 18

[Command]
name = "はもんしっそう"
command = D, DF, F, x+z
time = 18

[Command]
name = "はもんしっそう"
command = D, DF, F, y+z
time = 18

[Command]
name = "はもんしっそう"
command = D, DF, F, b
time = 18


;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "輝彩滑刀１"
command = D, DF, F, x
time = 12

[Command]
name = "輝彩滑刀２"
command = D, DF, F, y
time = 12

[Command]
name = "輝彩滑刀３"
command = D, DF, F, z
time = 12


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

[Command]
name = "up"  
command = $U
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

;------------------------------------------------------------------------------

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;AI用
[State -1, ai] 
type = varset 
triggerall = var(59) = 0 
triggerall = !ishelper 
triggerall = alive 
trigger1 = Command = "AI0" 
trigger2 = Command = "AI1" 
trigger3 = Command = "AI2" 
trigger4 = Command = "AI3" 
trigger5 = Command = "AI4" 
trigger6 = Command = "AI5" 
trigger7 = Command = "AI6" 
trigger8 = Command = "AI7" 
trigger9 = Command = "AI8" 
trigger10 = Command = "AI9" 
trigger11 = Command = "AI10" 
trigger12 = Command = "AI11" 
trigger13 = Command = "AI12" 
trigger14 = Command = "AI13" 
trigger15 = Command = "AI14" 
trigger16 = Command = "AI15" 
trigger17 = Command = "AI16" 
trigger18 = Command = "AI17" 
trigger19 = Command = "AI18" 
trigger20 = Command = "AI19" 
trigger21 = Command = "AI20" 
trigger22 = Command = "AI21" 
trigger23 = Command = "AI22" 
trigger24 = Command = "AI23" 
trigger25 = Command = "AI24" 
trigger26 = Command = "AI25" 
trigger27 = Command = "AI26" 
trigger28 = Command = "AI27" 
trigger29 = Command = "AI28" 
trigger30 = Command = "AI29" 
trigger31 = Command = "AI30" 
trigger32 = Command = "AI31" 
trigger33 = Command = "AI32" 
trigger34 = Command = "AI33" 
trigger35 = Command = "AI34" 
trigger36 = Command = "AI35" 
trigger37 = Command = "AI36" 
trigger38 = Command = "AI37" 
trigger39 = Command = "AI38" 
trigger40 = Command = "AI39" 
trigger41 = Command = "AI40" 
trigger42 = Command = "AI41" 
trigger43 = Command = "AI42" 
trigger44 = Command = "AI43" 
trigger45 = Command = "AI44" 
trigger46 = Command = "AI45" 
trigger47 = Command = "AI46" 
trigger48 = Command = "AI47" 
trigger49 = Command = "AI48" 
trigger50 = Command = "AI49" 
trigger51 = Command = "AI50" 
var(59) = 1 

[State -1, 変身解除]
type = ChangeState
value = 10002
triggerall = var(59) = 1
triggerall = ctrl
trigger1 = var(2) = 1

[State -1, はもんしっそう]
type = ChangeState
value = 3000
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall=power>=2000
triggerall = ctrl
trigger1 = Random < 100 && P2Dist Y > -10 && P2BodyDist X = [-20,10]
trigger2 = Random < 100 && P2Dist Y < -10 && P2Dist Y > -100 && P2BodyDist X = [-10,30]
ignorehitpause = 0

[State -1, 輝彩滑刀１]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = Random < 80 && P2Dist Y > -10 && P2BodyDist X = [-10,30]
trigger2 = Random < 80 && P2Dist Y > -10 && P2BodyDist X = [-20,10]
trigger3 = Random < 80 && P2Dist Y < -10 && P2Dist Y > -100 && P2BodyDist X = [-10,30]
ignorehitpause = 0

[State -1, 輝彩滑刀２]
type = ChangeState
value = 1010
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(2) != 1
trigger1 = ctrl
trigger1 = Random < 100 && P2Dist Y < -10 && P2Dist Y > -100 && P2BodyDist X = [-10,30]
trigger2 = stateno = 1000
trigger2 =  AnimElemTime(10) = 0
trigger2 = Random < 250
ignorehitpause = 0

[State -1, 輝彩滑刀３]
type = ChangeState
value = 1020
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(2) != 1
trigger1 = ctrl
trigger1 = Random < 100 && P2Dist Y > -10 && P2BodyDist X = [-10,60]
trigger1 = Random < 100 && P2Dist Y > -10 && P2BodyDist X = [60,120]
trigger2 = stateno = 1010
trigger2 = AnimElemTime(6) = 0
ignorehitpause = 0

[State -1, 立ち弱攻撃]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = Random < 100 && P2Dist Y > -10 && P2BodyDist X = [-10,60]
trigger2 = Random < 100 && P2Dist Y < -10 && P2Dist Y > -100 && P2BodyDist X = [-10,60] 
ignorehitpause = 0

[State -1, 立ち中攻撃]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = Random < 100 && P2Dist Y > -10 && P2BodyDist X = [-10,60]
ignorehitpause = 0

[State -1, 立ち強攻撃]
type = ChangeState
value = 250
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = Random < 100 && P2Dist Y > -10 && P2BodyDist X = [-10,60]
trigger2 = Random < 100 && P2Dist Y < -10 && P2Dist Y > -100 && P2BodyDist X = [-10,60] 
ignorehitpause = 0

[State -1, しゃがみ弱攻撃]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = statetype = C
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = Random < 100 && P2Dist Y > -10 && P2BodyDist X = [-10,60]
ignorehitpause = 0

[State -1, しゃがみ中攻撃]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = statetype = C
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = Random < 100 && P2Dist Y > -10 && P2BodyDist X = [-10,60]
ignorehitpause = 0

[State -1, しゃがみ強攻撃]
type = ChangeState
value = 420
triggerall = var(59) = 1
triggerall = statetype = C
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = Random < 100 && P2Dist Y > -10 && P2BodyDist X = [-10,60]
ignorehitpause = 0

[State -1, ジャンプ弱攻撃]
type = ChangeState
value = 600
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 =  Random < 100 && P2Dist Y > 20 && P2Dist Y < 50 && P2BodyDist X = [-20,10]
trigger2 = Random < 100 && P2Dist Y > -50 && P2Dist Y < 20 && P2BodyDist X = [-20,10] 
ignorehitpause = 0

[State -1, ジャンプ中攻撃]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 =  Random < 100 && P2Dist Y > 20 && P2Dist Y < 50 && P2BodyDist X = [-10,60]
trigger2 = Random < 100 && P2Dist Y > -50 && P2Dist Y < 20 && P2BodyDist X = [-10,60]
ignorehitpause = 0

[State -1, ジャンプ強攻撃]
type = ChangeState
value = 620
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 =  Random < 100 && P2Dist Y > 20 && P2Dist Y < 50 && P2BodyDist X = [-20,10]
trigger2 = Random < 100 && P2Dist Y > -50 && P2Dist Y < 20 && P2BodyDist X = [-10,60]
ignorehitpause = 0

[State -1, 歩く]
type = ChangeState
value = 20
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = roundstate = 2 && ishelper(6000)
trigger1 =  Random < 100

[State -1, しゃがむ]
type = ChangeState
value = 10
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = roundstate = 2 && ishelper(6000)
trigger1 =  Random < 100


[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = roundstate = 2 && ishelper(6000)
trigger1 =  Random < 100

[State -1, バックステップ]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = roundstate = 2 && ishelper(6000)
trigger1 =  Random < 100

[State -1, ジャンプ]
type = ChangeState
value = 40
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = roundstate = 2 && ishelper(6000)
trigger1 =  Random < 100

[State -1, 空中ジャンプ]
type = ChangeState
value = 45
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall = ctrl
trigger1 = roundstate = 2 && ishelper(6000)
trigger1 =  Random < 100
;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, はもんしっそう]
type = ChangeState
value = 3000
triggerall = command = "はもんしっそう"
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(2) != 1
triggerall=power>=2000
trigger1 = ctrl

;==============================================================================
; 必殺技
;==============================================================================
;------------------------------------------------------------------------------
[State -1, 輝彩滑刀１]
type = ChangeState
value = 1000
triggerall = command = "輝彩滑刀１"
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(2) != 1
trigger1 = ctrl
ignorehitpause = 0

[State -1, 輝彩滑刀２]
type = ChangeState
value = 1010
triggerall = command = "輝彩滑刀２"
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(2) != 1
trigger1 = ctrl
trigger2 = stateno = 1000
trigger2 = time >= 10
ignorehitpause = 0

[State -1, 輝彩滑刀３]
type = ChangeState
value = 1020
triggerall = command = "輝彩滑刀３"
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(2) != 1
trigger1 = ctrl
trigger2 = stateno = 1010
trigger2 = time >= 5
ignorehitpause = 0
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------



;------------------------------------------------------------------------------



;------------------------------------------------------------------------------



;------------------------------------------------------------------------------


;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, 走る]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(2) = 0

[State -1, バックステップ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(2) = 0

[State -1, ジャンプ]
type = ChangeState
value = 40
trigger1 = command = "holdup"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(2) = 0

[State -1, 空中ジャンプ]
type = ChangeState
value = 45
triggerall = command = "up"
triggerall = var(7) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(2) = 0

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------



;------------------------------------------------------------------------------
[State -1, 変身]
type = ChangeState
value = 10001
triggerall = command = "a"
triggerall = ctrl
trigger1 = var(2) = 0

[State -1, 変身解除]
type = ChangeState
value = 10002
triggerall = command = "a"
triggerall = ctrl
trigger1 = var(2) = 1

;==============================================================================
; 通常攻撃技
;==============================================================================
;----------------------------------------------------------------------------
[State -1, 立ち弱攻撃]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = var(2) != 1
trigger1 = ctrl
ignorehitpause = 0

[State -1, 立ち中攻撃]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = var(2) != 1
trigger1 = ctrl
ignorehitpause = 0

[State -1, 立ち強攻撃]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = command != "holddown"
triggerall = var(2) != 1
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
[State -1, しゃがみ弱攻撃]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(2) != 1
trigger1 = ctrl
ignorehitpause = 0

[State -1, しゃがみ中攻撃]
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(2) != 1
trigger1 = ctrl
ignorehitpause = 0

[State -1, しゃがみ強攻撃]
type = ChangeState
value = 420
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = var(2) != 1
trigger1 = ctrl
ignorehitpause = 0
;----------------------------------------------------------------------------
[State -1, ジャンプ弱攻撃]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = var(2) != 1
trigger1 = ctrl
ignorehitpause = 0

[State -1, ジャンプ中攻撃]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = var(2) != 1
trigger1 = ctrl
ignorehitpause = 0

[State -1, ジャンプ強攻撃]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = statetype = A
triggerall = roundstate = 2
triggerall = var(2) != 1
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

;------------------------------------------------------------------------------



;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
