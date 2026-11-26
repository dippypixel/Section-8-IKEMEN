;-2,-3 no state
;===========================================================================
; 常時監視ステート（－２）
;===========================================================================
;---------------------------------------------------------------------------
; 通常の食らい状態（Statedef 5000～5199間）でも、
; 相手に（「P2StateNo」や「TargetState」等で）制御を奪われても、
; 常に登録したステートコントローラが有効になります。
; サブシステム等を制御する時に重宝するでしょう。
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------------------------------------------
;自動回復
[State -2, 自動回復]
type = PowerAdd
triggerall = MoveType != A || MoveType != H	;||　はorの意
trigger1 = Time = 0
value = 10

;------------------------------------------------------------------------
;KO勝利時集中線
[State -2]
type = Helper
trigger1 = TeamMode = single;シングルプレイ/simul=数人同時
trigger1 = RoundState = 3 && Win && NumHelper(8010) = 0
ID = 8010
pos = 0,0
name = "winname"
stateno = 8010
keyctrl = 0

;勝利時名前
[State -2]
type = Helper
trigger1 = TeamMode = single;シングルプレイ/simul=数人同時
trigger1 = RoundState = 4 && Win && NumHelper(8000) = 0
;RoundState	4: Over - 勝利モーション中
ID = 8000
pos = 0,0
name = "winname"
stateno = 8000
keyctrl = 0

;------------------------------------------------------------------------
;敗北

;岩盤
[State -2]
type = Helper
triggerall = matchover
trigger1 = TeamMode = single;シングルプレイ/simul=数人同時
trigger1 = RoundState = 4 && LoseKO
trigger1 = NumHelper(9920) = 0
trigger1 = time = [30, 70]
helpertype = normal
name = "iwa"
ID = 9920
pos = 0, 0
postype = p1
facing = 1
stateno = 9920
keyctrl = 0
ownpal = 1


;顔カットイン
[State -2]
type = Helper
triggerall = matchover
trigger1 = TeamMode = single;シングルプレイ/simul=数人同時
trigger1 = RoundState = 3 && LoseKO = 1 && NumHelper(9000) = 0
;RoundState	0: Pre-intro　- 試合前、画面がフェードインしている状態
;		1: Intro　- 登場モーション中
;		2: Fight - バトル中
;		3: Pre-over - 決着がついた瞬間
;		4: Over - 勝利モーション中
;LoseKO		そのラウンドで負けた場合、1を返します
;NumHelper(9000) = 0	画面に出てない時
ID = 9000
pos = 0,0
name = "KO"
stateno = 9000
keyctrl = 0

;背景
[State -2];1
type = RemoveExplod
trigger1 = RoundState = 4 && LoseKO = 1 && NumHelper(9910) >= 0
;RoundState	0: Pre-intro　- 試合前、画面がフェードインしている状態
;		1: Intro　- 登場モーション中
;		2: Fight - バトル中
;		3: Pre-over - 決着がついた瞬間
;		4: Over - 勝利モーション中
;LoseKO		そのラウンドで負けた場合、1を返します
ID = 9910

[State -2];2
type = RemoveExplod
trigger1 = RoundState = 4 && LoseKO = 1 && NumHelper(9911) >= 0
ID = 9911

[State -2];3
type = RemoveExplod
trigger1 = RoundState = 4 && LoseKO = 1 && NumHelper(9912) >= 0
ID = 9912

;---------------------------------------------------------------------------
;投げエフェクト消去
[State -2, エフェクトを消す];波紋（投げ）用
type = RemoveExplod
triggerall = NumExplod(830) > 0
trigger1 = StateNo != 810
trigger2 = MoveType != A  ;MoveTypeが「A（攻撃）」以外の時
ID = 830                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, エフェクトを消す];波紋（投げ）用
type = RemoveExplod
triggerall = NumExplod(831) > 0
trigger1 = time >= 80
ID = 831                  ;消すExplodの特定のＩＤナンバーを指定

;---------------------------------------------------------------------------
;アドバンシングガード
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(700) > 0
trigger1 = time > 20
ID = 700

;---------------------------------------------------------------------------
;ここは「パワー溜め」のステートで発生させた「Explod」のエフェクト画像を
;特定の条件が有効になれば消す、という処理をしています。

[State -2, エフェクトを消す];地面のケムリ
type = RemoveExplod
triggerall = NumExplod(900) > 0
                          ;↑はＩＤナンバー「130」のExplodの画面中の数が0よりも多い、
                          ;つまり１枚以上表示されている時
trigger1 = StateNo != 900 ;ステートが７００（パワー溜め）以外の時
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 900                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, エフェクトを消す];波紋/左足
type = RemoveExplod
triggerall = NumExplod(9001) > 0
trigger1 = StateNo != 900
trigger2 = MoveType != I
ID = 9001

[State -2, エフェクトを消す];波紋/右足
type = RemoveExplod
triggerall = NumExplod(9002) > 0
trigger1 = StateNo != 900
trigger2 = MoveType != I
ID = 9002

[State -2, エフェクトを消す];足の波紋
type = RemoveExplod
triggerall = NumExplod(902) > 0
trigger1 = StateNo != 900 ;ステートが７００（パワー溜め）以外の時
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 902                  ;消すExplodの特定のＩＤナンバーを指定

;---------------------------------------------------------------------------
;オーバードライブ
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(1000) >= 0
trigger1 = StateNo != 1000
ID = 1000

[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(1010) >= 0
trigger1 = StateNo != 1010
ID = 1010

[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(1020) >= 0
trigger1 = StateNo != 1020
ID = 1020

;---------------------------------------------------------------------------
;オーバードライブ強/相手用
[State -2, エフェクトを消す];波紋
type = RemoveExplod
triggerall = NumExplod(1021) >= 0
trigger1 = P2StateType != A
trigger1 = P2moveType != H
;trigger1 = StateNo != 1020
ID = 1021

;---------------------------------------------------------------------------
;シャボンランチャー通常
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(1401) > 0
trigger1 = StateNo != 1300
trigger2 = MoveType != A
ID = 1401

;---------------------------------------------------------------------------
;シャボンランチャー斜め
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(1400) > 0
trigger1 = StateNo != 1400
trigger2 = MoveType != A
ID = 1400

;---------------------------------------------------------------------------
;空中シャボンランチャー
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(1500) > 0
trigger1 = StateNo != 1500
trigger2 = MoveType != A
ID = 1500

;---------------------------------------------------------------------------
;シャボンカッター
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(1600) > 0
trigger1 = StateNo != 1600
trigger2 = MoveType != A
ID = 1600

;---------------------------------------------------------------------------
;カッターグライディン
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(1700) > 0
trigger1 = StateNo != 1700
trigger2 = MoveType != A
ID = 1700

;---------------------------------------------------------------------------
;シャボンレンズ

[State -2, エフェクトを消す];開始動作（ランチャー）
type = RemoveExplod
triggerall = NumExplod(3000) > 0
trigger1 = StateNo != 3000
trigger2 = MoveType != A
ID = 3000                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(3001) > 0
trigger1 = StateNo != 3000
trigger2 = MoveType != A
ID = 3001                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(3002) > 0
trigger1 = StateNo != 3000
trigger2 = MoveType != A
ID = 3002                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, エフェクトを消す];3100のエフェクト
type = RemoveExplod
triggerAll = NumExplod(3110) > 0
trigger1 = StateNo != 3100
trigger1 = StateNo != 3200
ID = 3110                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, エフェクトを消す];!マーク
type = RemoveExplod
triggerAll = NumExplod(3111) > 0
trigger1 = StateNo != 3100
trigger1 = StateNo != 3200
ID = 3111

;背景
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(7001) > 0
trigger1 = StateNo != 3000
trigger2 = MoveType != A
ID = 7001                  ;消すExplodの特定のＩＤナンバーを指定

;顔テスト
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(7000) > 0
trigger1 = StateNo != 3000
trigger1 = time > 40
trigger2 = MoveType != A
ID = 7000                  ;消すExplodの特定のＩＤナンバーを指定

;雷
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(7020) > 0
trigger1 = StateNo != 3000
trigger2 = MoveType != A
ID = 7020                  ;消すExplodの特定のＩＤナンバーを指定

;シャボンレンズ
;背景1
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(7002) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 7002                  ;消すExplodの特定のＩＤナンバーを指定

;背景2
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(7004) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I
ID = 7004

;背景3
[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(7005) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I
ID = 7005


[State -2, 反射光を消す]
type = RemoveExplod
triggerall = NumExplod(7080) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 7080                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, 光を消す]
type = RemoveExplod
triggerall = NumExplod(7090) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 7090                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, 1コマ目を消す]
type = RemoveExplod
triggerall = NumExplod(7040) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 7040                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, 2コマ目を消す]
type = RemoveExplod
triggerall = NumExplod(7041) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 7041                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, レンズ1枚絵を消す]
type = RemoveExplod
triggerall = NumExplod(7060) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 7060                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, レンズ1枚絵を消す]
type = RemoveExplod
triggerall = NumExplod(7061) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 7061                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, 3コマ目を消す]
type = RemoveExplod
triggerall = NumExplod(7042) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 7042                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, 4コマ目を消す]
type = RemoveExplod
triggerall = NumExplod(7043) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 7043                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, ツェペリを消す]
type = RemoveExplod
triggerall = NumExplod(7050) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 7050                  ;消すExplodの特定のＩＤナンバーを指定

[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(70001) > 0
trigger1 = StateNo != 3200
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 70001                  ;消すExplodの特定のＩＤナンバーを指定

;---------------------------------------------------------------------------
;タンデム

[State -2, エフェクトを消す]
type = RemoveExplod
triggerall = NumExplod(8300) > 0
trigger1 = StateNo != 4000
trigger2 = MoveType != I  ;MoveTypeが「I（何もしてない）」以外の時
ID = 8300                  ;消すExplodの特定のＩＤナンバーを指定

;---------------------------------------------------------------------------
;コオオオ
[State -2, 音を止める]
type = StopSnd
trigger1 = command != "hamon"
trigger1 = StateNo != 900
trigger2 = power >= 10000
trigger2 = time > 120
channel = 1

;---------------------------------------------------------------------------

;[State -2, クリップボード]
;type = DisplayToClipboard
;trigger1 = 1
;text = "Cancel=%d, Throw=%d, Button=%d, Body-Distance X=%d,Y=%d \n"
;params = var(1),var(2),var(5),floor(P2BodyDist X),floor(P2BodyDist Y)

;[State -2, クリップボード（追加専用）]
;type = AppendToClipboard
;trigger1 = 1
;text = "Position X=%d,Y=%d, Velocity X=%f,Y=%f, Hit=%d \n"
;params = floor(Pos X),floor(Pos Y),(Vel X),(Vel Y),(MoveHit)

;===========================================================================
; 準常時監視ステート（－３）
;===========================================================================
;---------------------------------------------------------------------------
; こちらは通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
; －１や－２と上手く使い分けて行きましょう。
;---------------------------------------------------------------------------

[Statedef -3]

;-----------------------------------
;ここは「ジャンプ」か「バックステップ」をした後に
;着地する音を鳴らす設定をしています。

[State -3, 音を鳴らす]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52  ;着地ステート
trigger2 = stateno = 106 ;バックステップ後の着地ステート
trigger3 = stateno = 101
value = 10, 9

;---------------------------------------------------------------------------

