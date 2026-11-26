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
x = x      ;Ｘボタン	○
y = y      ;Ｙボタン	×
z = z      ;Ｚボタン	□
a = a      ;Ａボタン	△
b = c      ;Ｂボタン	L1
c = b      ;Ｃボタン　　R1
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

;シャボンレンズ
;[Command]
name = "S_lens"
command = ~D, DF, F, b
time = 20

;シャボンレンズ予備
[Command]
name = "S_lens"
command = ~D, DF, /F, b
time = 20

;シャボンレンズ予備
[Command]
name = "S_lens"
command = ~D, /DF, b
time = 15

;シャボンレンズ予備xy
[Command]
name = "S_lens"
command = ~D, DF, F, x+y
time = 20

;シャボンレンズ予備xy
[Command]
name = "S_lens"
command = ~D, DF, /F, x+y
time = 20

;シャボンレンズ予備xy
[Command]
name = "S_lens"
command = ~D, /DF, x+y
time = 15

;シャボンレンズ予備yz
[Command]
name = "S_lens"
command = ~D, DF, F, y+z
time = 20

;シャボンレンズ予備yz
[Command]
name = "S_lens"
command = ~D, DF, /F, y+z
time = 20

;シャボンレンズ予備yz
[Command]
name = "S_lens"
command = ~D, /DF, y+z
time = 15

;タンデム
;[Command]
;name = "tan"
;command = ~D, DB, B, b
;time = 20


;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

;シャボンカッターグライディン
[Command]
name = "scat_g"
command = b
time = 20

;シャボンカッターグライディン予備
[Command]
name = "scat_g"
command = b
time = 20

;シャボンカッターグライディン予備
[Command]
name = "scat_g"
command = b
time = 20

;オーバードライブ小
[Command]
name = "ovd_s"
command = ~D, DF, F, x
time = 15

;オーバードライブ中
[Command]
name = "ovd_m"
command = ~D, DF, F, y
time = 15

;オーバードライブ強
[Command]
name = "ovd_l"
command = ~D, DF, F, z
time = 15

;ズームパンチ小
[Command]
name = "zp_s"
command = ~D, DB, B, x
time = 15

;ズームパンチ中
[Command]
name = "zp_m"
command = ~D, DB, B, y
time = 15

;ズームパンチ強
[Command]
name = "zp_l"
command = ~D, DB, B, z
time = 15

;シャボンランチャー
[Command]
name = "slan_1"
command = ~D, DB, B, a
time = 15

;シャボンランチャー予備
[Command]
name = "slan_1"
command = ~D, DB, /B, a
time = 15

;シャボンランチャー2
[Command]
name = "slan_2"
command = ~F, D, DF, a
time = 20

;シャボンランチャー2予備
[Command]
name = "slan_2"
command = ~F, D, /DF, a
time = 15

;シャボンランチャー2予備
[Command]
name = "slan_2"
command = ~F, D, DF, F, a
time = 15

;シャボンランチャー2予備
[Command]
name = "slan_2"
command = ~F, D, DF, /F, a
time = 15

;シャボンカッター
[Command]
name = "scat_n"
command = ~D, DF, F, a
time = 15

;シャボンカッター予備
[Command]
name = "scat_n"
command = ~D, DF, /F, a
time = 15



;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 15

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 15

;------------------------------------------------------------------------------
;-| キー3回連続入力 |---------------------------------------------------------




;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery"       ;必須コマンド名
command = x+y+z
time = 15

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

;アドバンシングガード&リカバリ
[Command]
name = "recovery"
command = b
time = 1

;回り込み
[Command]
name = "mawari"
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
;「波紋の呼吸」
[Command]
name = "hamon"
command = /a

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
;------------------------------------------------------------------------------

;[State -1, スマッシュカンフーアッパー];ゲージレベル１
;type = ChangeState
;value = 3050
;triggerall = command = "SmashKFUpper"  ;「SmashKFUpper」の名前のコマンドが入力されたら
;triggerall = power >= 1000             ;パワーゲージがレベル１以上溜まっている時（※）
;triggerall = statetype != A            ;「空中」ではない時
;trigger1 = ctrl                        ;コントロールが可能な場合
;trigger2 = hitdefattr = SC, NA, SA, HA ;自分の「HitDefの一部の攻撃属性」が出ている時（テンプレート参照）
;trigger2 = stateno != [3050,3100)      ;現在のステートが「3050以上、3100未満」の間のどれかな場合
;trigger2 = movecontact                 ;攻撃が相手に触れている時（ヒット・ガード両方）
;trigger3 = (StateNo = 1300) && (Time = [12,38]) ;ちょっとこ丸が追加

;------------------------------------------------------------------------------
; ここで↑にて実際に使っている「スマッシュカンフーアッパーのChangeState」を例に
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

[State -1, シャボンレンズ];テスト
type = ChangeState
value = 3000
triggerall = command = "S_lens"
triggerall = Power >= 3000
triggerall = statetype = S
trigger1 = var(1)

;[State -1, タンデム];テスト
;type = ChangeState
;value = 4000
;triggerall = command = "tan"
;triggerall = Power >= 1000
;triggerall = statetype = S
;trigger1 = var(1)

;==============================================================================
; 必殺技
;==============================================================================
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
;------------------------------------------------------------------------------

[State -1, シャボンカッターグライディン]
type = ChangeState
value = 1700
triggerall = command = "scat_g"
triggerall = Power >= 300
;triggerall = stateno != 1700
trigger1 = var(1)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[State -1, 空中シャボンランチャー]
type = ChangeState
value = 1500
triggerall = command = "slan_1"
triggerall = Power >= 200
triggerall = statetype = A
;triggerall = stateno != 1500
triggerall = NumProjID(15001) = 0
triggerall = NumProjID(15002) = 0
triggerall = NumProjID(15003) = 0
triggerall = NumProjID(15004) = 0
triggerall = NumProjID(15005) = 0
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 ||stateno = 620
trigger2 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, シャボンランチャー]
type = ChangeState
value = 1300
triggerall = command = "slan_1"
triggerall = Power >= 200
triggerall = NumProjID(13001) = 0
triggerall = NumProjID(13002) = 0
triggerall = NumProjID(13003) = 0
;triggerall = stateno != 1300
trigger1 = ctrl
trigger1 = var(1)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, シャボンランチャー];斜め上
type = ChangeState
value = 1400
triggerall = command = "slan_2"
triggerall = Power >= 200
triggerall = NumProjID(14001) = 0
triggerall = NumProjID(14002) = 0
triggerall = NumProjID(14003) = 0
;triggerall = stateno != 1400
trigger1 = var(1)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, シャボンカッター]
type = ChangeState
value = 1600
triggerall = command = "scat_n"
triggerall = Power >= 300
triggerall = NumProjID(16001) = 0
triggerall = NumProjID(16002) = 0
;triggerall = stateno != 1600
trigger1 = var(1)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, オーバードライブ弱]
type = ChangeState
value = 1000
triggerall = command = "ovd_s"
triggerall = Power >= 150
triggerall = statetype != A
triggerall = stateno != 1000 || 1010 || 1020
trigger1 = NumProjID(1000) <= 0
trigger1 = NumProjID(1010) <= 0
trigger1 = NumProjID(1020) <= 0
trigger1 = var(1)
trigger2 = (stateno = 200||stateno = 210||stateno = 220|stateno = 205||stateno = 215||stateno = 225||stateno = 400||stateno = 410)

[State -1, オーバードライブ中]
type = ChangeState
value = 1010
triggerall = command = "ovd_m"
triggerall = Power >= 300
triggerall = statetype != A
triggerall = stateno != 1000 || 1010 || 1020
trigger1 = NumProjID(1000) <= 0
trigger1 = NumProjID(1010) <= 0
trigger1 = NumProjID(1020) <= 0
trigger1 = var(1)
trigger2 = (stateno = 200||stateno = 210||stateno = 220|stateno = 205||stateno = 215||stateno = 225||stateno = 400||stateno = 410)

[State -1, オーバードライブ強]
type = ChangeState
value = 1020
triggerall = command = "ovd_l"
triggerall = Power >= 450
triggerall = statetype != A
triggerall = stateno != 1000 || 1010 || 1020
triggerall = NumExplod(1020) = 0
trigger1 = NumProjID(1000) <= 0
trigger1 = NumProjID(1010) <= 0
trigger1 = NumProjID(1020) <= 0
trigger1 = P2moveType != H
trigger1 = var(1)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[State -1, ズームパンチ弱]
type = ChangeState
value = 1800
triggerall = command = "zp_s"
triggerall = Power >= 50
triggerall = statetype != A
trigger1 = var(1)

[State -1, ズームパンチ中]
type = ChangeState
value = 1810
triggerall = command = "zp_m"
triggerall = Power >= 100
triggerall = statetype != A
trigger1 = var(1)

[State -1, ズームパンチ強]
type = ChangeState
value = 1820
triggerall = command = "zp_l"
triggerall = Power >= 150
triggerall = statetype != A
trigger1 = var(1)

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------



;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------

[State -1, ステップ]
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

;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------

[State -1, カンフースルー];投げ技
type = ChangeState
value = 800
triggerall = command = "z"
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
[State -1, アドバンシングガード立ち]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "recovery"
triggerall = prevstateno != 700
trigger1 = statetype != A
trigger1 = stateno = [150,151]	;S=150,151
value = 700

[State -1, アドバンシングガードしゃがみ]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "recovery"
triggerall = prevstateno != 702
trigger1 = statetype != A
trigger1 = stateno = [152,153]	;C=152,153
value = 702

;------------------------------------------------------------------------------
[State -1, ガードキャンセル]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "slan_2"
;triggerall = command = "a"		;テスト用
triggerall = statetype != A
triggerall = statetype != C
triggerall = prevstateno != 750	;連射防止
triggerall = prevstateno != 700	;アドバ中防止
triggerall = prevstateno != 702	;
trigger1 = stateno = [120,155]	;ガードモーション中全て
value = 750

;------------------------------------------------------------------------------
[State -1, 波紋の呼吸]
type = ChangeState
value = 900
triggerall = command = "hamon"
triggerall = statetype = S
trigger1 = power < 10000; ||  life < 1000
trigger1 = statetype != A
trigger1 = stateno = 0
trigger1 = ctrl

;==============================================================================
; 通常攻撃技
;==============================================================================

[State -1, コンボ3発目（弱）]
type = ChangeState
value = 204
trigger1 = command = "y"
trigger1 = stateno = 202 && prevstateno = 200
trigger1 = time >= 4 || movecontact

[State -1, コンボ3発目（弱）]
type = ChangeState
value = 203
trigger1 = command = "x"
trigger1 = stateno = 202 && prevstateno = 200
trigger1 = time >= 4 || movecontact

[State -1, コンボ2発目（弱）]
type = ChangeState
value = 202
trigger1 = command = "x"
trigger1 = stateno = 200 && prevstateno != 200
trigger1 = time >= 4 || movecontact

;------------------------------------------------------------------------------

[State -1, 立ち弱攻撃];サイドキック
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = stateno != 200
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (time > 7) && stateno = 200
trigger3 = (time > 7) && stateno = 205


[State -1, 立ち弱攻撃];ジャブ
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200

[State -1, 立ち中攻撃]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = stateno != 210
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (time > 7) && stateno = 200
trigger3 = (time > 7) && stateno = 205
;trigger4 = (time > 9) && stateno = 210
;trigger5 = (time > 9) && stateno = 215

[State -1, 立ち中攻撃];フック
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (time > 7) && stateno = 200
trigger3 = (time > 7) && stateno = 205
;trigger4 = (time > 9) && stateno = 210
;trigger5 = (time > 9) && stateno = 215

[State -1, 立ち強攻撃];アッパー
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = stateno != 220
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (time > 7) && stateno = 200
trigger3 = (time > 7) && stateno = 205
trigger4 = (time > 9) && stateno = 210
trigger5 = (time > 9) && stateno = 215

[State -1, 立ち強攻撃];回し蹴り
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (time > 7) && stateno = 200
trigger3 = (time > 7) && stateno = 205
trigger4 = (time > 9) && stateno = 210
trigger5 = (time > 9) && stateno = 215

;------------------------------------------------------------------------------





;------------------------------------------------------------------------------

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, しゃがみ弱攻撃];ジャブ
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ中攻撃];蹴り
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = (time > 7) || (movecontact && time > 5)

[State -1, しゃがみ強攻撃];足払い
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 7)

;------------------------------------------------------------------------------

[State -1, ジャンプ弱攻撃];ヒザ落とし
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

[State -1, ジャンプ中攻撃];打ち下ろしフック
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 620
trigger2 = movecontact
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

[State -1, ジャンプ強攻撃];とび蹴り
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact
;trigger3 = stateno = 1350 ;Win版のカンフーマンには「ブロッキング」が搭載予定だったらしい

;------------------------------------------------------------------------------
[State -1, 回り込み処理]
      type = ChangeState
     value = 110
triggerall = command = "mawari"
;  trigger1 = command != "recovery"
  trigger1 = Statetype = S
  trigger1 = Ctrl
  trigger1 = Stateno != 110		;回り込み中以外
  trigger1 = Stateno != [150,151]	;地上ガード硬直中以外
