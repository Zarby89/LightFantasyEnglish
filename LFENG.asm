table smallcharactertable.txt

org $2FFFFF
db $00 ; set the rom to 1.5mb

org $00FFD7
db $0B ; set it to 2MB in the rom header




org $018E4C
; なまえを きめてくだごぃ 
; CHOOSE NAME
db " CHOOSE NAME "

org $018E2A
;なまえ
; NAME
db "NAM"

org $019154
;アイ丁ム
; ITEM
db "ITEM"

org $019165
;まじゅつ
; MAGIC
db "MAGIC"

org $019176
;じょうたぃ
; JOTAI?
db "STAT " ; space to remove last character

org $01915A
;なかま
; GROUP / PARTY / TEAM
db "TEAM"

org $01916B
;そうび
; Equipment
db "GEAR"
org $01935A
db "GEAR" 

org $01917C
;せつてい
;Settings
db "OPTN"

org $00CD5B
;そうだん
; Discussion
db "TALK"

org $00CD66
;ごそう 
; Escort ?
db "INV."

org $00CD71
;たいれつ
; Formation
db "SORT"

org $00D9D2
;つかう
; USE
db "USE"

org $01934F
;つかう
; USE
db "USE"

org $00D9DD
;すてる
; ABANDON
db "DROP"

org $00D9E8
;ならび
; LIST
db "SORT"

org $00D9F3
;せつめい
;Explanation
db "INFO"
org $019365
db "INFO"

org $05F7EF
;もちきん
;Money
db "MONEY"

org $05F805
;リル
;RIL
db "RI" ; Might wanna change that ?

org $04E1FA
;バー丁ン  ; Name (4letter)
; BA-CHO
db "BCHO"

org $04CDCC ; No idea...
;たドヌたド
db "HUMAN"

org $04E126
;ぼうや ; Name (4letter)
; BOY
db "BOY "

org $018DA4
;サウンド
;SOUND
db "SOUND"

org $018DAB
;ス丁レオ
;STEREO
db "STEREO"

org $018DB3
;モノラル
;MONO
db "MONO"

org $018DC0
;メッセージ
; MESSAGE
db "MSG. "

org $018DE0
;はやい
;FAST
db "FST"

org $018DE6
; おそい
;SLOW
db "SLOW"

org $0193C3
;つける
;TURN ON / EQUIP
db "EQP"
org $00C6B8
db "EQP"
org $00C6D9
db "EQP"

org $0193CD
;はずす
;REMOVE
db "REM"
org $00C6C2
db "REM"
org $00C6F0
db "REM"

org $0193E5
;ぼうし:
;HAT:
db "HAT:"
org $019521
db "HAT:"

org $0193F4
;よろい: 
;ARMOR:
db "BDY:"
org $01953B
db "BDY:"

org $019403
;ぶき :
;ARMS: (WEAPON)
db "WEA:"
org $019555
db "WEA:"

org $019412
;たて :
;??? (SHIELD)
db "SHD:"
org $01956F
db "SHD:"

org $019421
;そのた:
;etc.
db "ETC"
org $019589
db "ETC"

org $0194B1
; しゅぞく:
; Family/Race/Home not sure?
db " RACE:"

org $0194CF
;とくちょう:
;Special: / Feature:
db "SPEC."


org $0194F5
;♥そうび♥
;Equipment?
db "EQUIP"

org $00C6D5
;そうびをつける
;????????????? equiping
db " EQUIP "

org $00C6EC
;そうびをはずす
;????????????? removing
db "REMOVE "

org $0193A8
;できません!
;I CANT!
db "CANT! "

org $0195BB
;そうびしました!
;EQUIPED!
db "EQUIPED!"

org $019390
;もっていません!
;I DONT HAVE ANY!
db "NOTHING!"

org $0195D3
;そうびをはずしました!
;Removed! 
db " REMOVED!  "

org $019657
;はたたかいにかった!
;Has won the battle!
db "     WON! "

org $0198DE
;それぞれ,
;EACH
db "EACH"

org $0196AB
;のけいけんちをえた
;XP GAINED? TODO
db "XP GAINED" ; db "XP RECEIV"
org $0198EF
;のけいけんちをえた
db "XP GAINED" ; db "XP RECEIV"

org $0196EB
;なにもなかったよ
;NOTHING
db "NOTHING!"

org $019707
;リル  をてにいれた!
;RIL RECEIVED
db "RIL GAINED!"

org $0198C6
;…があらわれた!
;APPEARED
db "APPEARED"

org $019275
;マニュアル
;MANUAL
db "MANU."

org $019281
;オート 
;AUTO
db "AUTO."

org $01929B
;たたかう
;FIGHT
db "ATCK"

org $0192AC
;ぼうぎょ
;DEFENSE
db "DEF."

org $0192BD
;にげる  
;RUN AWAY
db "RUN"

org $0192A0
;アイテム 
;ITEM
db "ITEM"

org $0192B1
;まじゅつ
;MAGIC
db "MAGIC"

org $0192C2
;じょうたい
;STATE
db "STATE"

org $01968D
;もくひょうがいません
;NO TARGET
db "NO TARGET!"

org $019751
;は
;
db " " ; maybe put a heart there TODO

org $019759
;なかまになった♥
;became friend
db "FRIEND!"

org $01995C
;しっぽい!!
;FAIL!!
db "FAIL!!"


; unused space?
org $01F546
battlewindow:
;window format is X, Y, Width, Height
;org $019718 ; 0x29 bytes of space
db $0B, $09, $0A, $06
db $BA ; top left corner
db $F1, $08, $BE ; number of horizontal border i think it cannot be bigger than 08?
db $BB ; horizontal + top right corner 
db $C0 ; Vertical border left
db $F3, $08 ; number of empty tiles 
db $C1 ; Vertical border right
db $C0 ; Vertical border left
db $01 ; Space
;Text C7 C6 D9 D1
db "BATTLE "
db $C1 ; Vertical border right
db $C0 ; Vertical border left
db $F3, $08 
db $C1 
db $C0 
db $01 
;Text CB D7 CE CA D3 C9 01 
db "FRIEND "
db $C1 
db $BC ;bottom left corner
db $F1, $08, $BF ; F1 you must specify the tile after the size
db $BD      

org $018CB6 ; pointer of the battle/friend menu
dw battlewindow                                                                 


org $019727
;せんとう
;BATTLE/FIGHT/COMBAT
db "BATL" ; TODO EXPAND THIS TO USE 6 letters

org $01F380
db "BATTLE"

org $019734
;なかまにする
;Make Friend
db "FRIEND"

org $019773
;しかし,ききいれなかった!!
;I DIDNT LISTEN
db "FRIENDED FAIL!"

org $018D7B
;セーブ
;SAVE
db "SAV"

org $018D86
;ロード
;LOAD
db "LOA"

org $01E957
;ロード
;LOAD
db "LOA"

org $04C24C ; 10 characters
;かずあて グーム
db "GUESS.GAME"

org $04C2F3 ;1 extra space
;かけきん  000リル
db "BET   000RIL"

org $04DF14
db "NYMP"

; DEBUG MENU

org $019195
;さうんど
db "MUSIC"
org $0191A1
;えふぇくと
db "SFX  "
;ばんごう
org $019200
db "NBR "

org $0191AD
;ふらぐ
db "FLAGS"
org $0191B9
;ぶぁすと
db "FACE"
org $0191C5
;ぴくちゃー
db "INTRO"

org $0191C5
;バトル
db "BATLE"
;テキのNO
org $0191E9
db "NOTXT"

org $01920E
;ステレオ  モノラル
db "STEREO MONO"

org $019242
db "NBR "

org $01EB65
db "FLAGS"

org $01922A
;ばんごう
db "NBR "
org $019242
;ばんごう
db "NBR "
org $01925A
;ばんごう
db "NBR "

;テキのばんごうはださない

;テキのばんごうを出す

org $05D8EF
;だれ?
;WHO?

;だれの?


db "WHO?"
org $05D871
db "O"
org $05D875
db "O"
org $05D87A
db "?"


org $05E991
;パーティーにくわえる
;JOIN THE PARTY
db "JOIN PARTY"

org $05E9B8
;パーティーからはずす
;DROP OUT OF THE PARTY
db "REM. PARTY"

org $05E9DF
;パーティーをみる
;VIEW PARTY
db "VIEW STATUS"

org $05EA06
;とうろくをはずす
;TAKE OFF A REGISTRATION
db "UNLIST  "

org $05EA2D
;やめる
;LEAVE
db "LEAVE"

;MILADY BARRIER IS GONE!!
org $01984D
;ミラディのけっかいが
db "MIRADI SHLD"
org $01985D ;なくなった!!
db "FADED!!"

org $019837
;をつかった!
db "USED! "

org $00DA0C
;のこりよ AUTO
db "AUTO SORT"

;やめる
org $00DA1C
db "NO "

org $01993E
;MPまたはHPがたりません
db " NO MP OR HP "

org $0196D2
;てにいれた!!
db "GOT IT!"
org $0196CA
; removed a single character
db " "

org $04E190
;けんとう
db "KENT"

org $04DFE8
;ヤン
db "YAN"

org $04DF49
;トルイ
db "TOLI"

org $04DF7E
;ミネア
db "MINEA"

org $04DFB3
db "KOTARO"

org $04E087
;レフィーナ
db "LEFINA"

org $04E01D
;メーア
db "MIA"

org $04E052
;ひのとり
db "HINO"



org $019379
;つかえません!
db "CANNOT!"

org $0094BF
JSL NewGfxPtrs
NOP #$02

org $048798 ; all items names pointers 0xA2 entries (MOVED)

org $03EB5B
LDX.w #ItemsNamesPointers
org $03EB61
LDA #$23  ;Load Bank 23 instead of 04

org $03DEC6
LDX.w #ItemsNamesPointers
org $03DECC
LDA #$23  ;Load Bank 23 instead of 04

org $01A592
LDA.l ItemsNamesPointers, X

org $01A8EA
LDA #$23 ;Load Bank 23 instead of 04

org $00DE79
LDX #ItemsNamesTWOPointers

org $00DE7F
LDA #$23 ;Load Bank 23 instead of 04


org $03DE8D
LDX.w #ItemsNamesTWOPointers
org $03DE93
LDA #$23  ;Load Bank 23 instead of 04

org $018A0C
dl ItemsNamesPointers
dl ItemsNamesTWOPointers

org $01A8D5
dl ItemsNamesTWOPointers

org $01A5A8
LDA #$23 ;Load Bank 23 instead of 04

org $03C81C
LDA.l EnemiesNamesPointers, X

org $03C834
LDA #$23 ;Load Bank 23 instead of 04



org $048D3D
dw CharSpec_00
dw CharSpec_01
dw CharSpec_02
dw CharSpec_03
dw CharSpec_04
dw CharSpec_05
dw CharSpec_06
dw CharSpec_07
dw CharSpec_08
dw CharSpec_09
dw CharSpec_0A
dw CharSpec_0B
dw CharSpec_0C
dw CharSpec_0D
dw CharSpec_0E
dw CharSpec_0F
dw CharSpec_10
dw CharSpec_11
dw CharSpec_12
dw CharSpec_13
dw CharSpec_14
dw CharSpec_15
dw CharSpec_16
dw CharSpec_17
dw CharSpec_18

CharSpec_00:
;えらい
;FAMOUS
db "FAME"

CharSpec_01:
;かわいい
;
db "CUTE"

CharSpec_02:
;かしこい
;
db "WISE"

CharSpec_03:
;マブイ
;
db "MAVI"

CharSpec_04:
;イカす
;
db "FISH"

CharSpec_05:
;きれい
;Pretty, Neat, Fair, 
db "NEAT"

CharSpec_06:
;ちいごい
;
db "KID"

CharSpec_07:
;えっち
;
db "SEXY"

CharSpec_08:
;ごけのみ
;
db "DRNK"

CharSpec_09:
;としより
;
db "OLD"

CharSpec_0A:
;おしゃま
;
db "TEEN"

CharSpec_0B:
;つめたい
;
db "COLD"

CharSpec_0C:
;まるい
;
db "ROND"

CharSpec_0D:
;うにうに
;
db "SEA."

CharSpec_0E:
;いねむり
;
db "SLEP"

CharSpec_0F:
;かたい
;
db "BUM"

CharSpec_10:
;はしこい
;
db "SMRT"

CharSpec_11:
;ずるい
;
db "SLY"

CharSpec_12:
;ゆうもう
;
db "BRAV"

CharSpec_13:
;らんぼう
;
db "RUDE"

CharSpec_14:
;おかしい
;
db "FUN "

CharSpec_15:
;あつい
;
db "HOT "

CharSpec_16:
;しぶいゼ
;
db "SHCK"

CharSpec_17:
;まじめ
;
db "SERI"

CharSpec_18:
;だんまり
;
db "QUIE"

warnpc $048DE2
org $048DE2
dw CharRace_00
dw CharRace_01
dw CharRace_02
dw CharRace_03
dw CharRace_04
dw CharRace_05
dw CharRace_06
dw CharRace_07
dw CharRace_08
dw CharRace_09
dw CharRace_0A
dw CharRace_0B

CharRace_00:
;ひかりびと
;
db "LIGHT"

CharRace_01:
;やみびと
;
db "DARK"
db $FF

CharRace_02:
;ようせい
;
db "FAIRY"

CharRace_03:
;まもの
;
db "DEMON"

CharRace_04:
;どうぶつ
;
db "BEAST"

CharRace_05:
;にんぎょ
;
db "MRMD"
db $FF

CharRace_06:
;むし
;
db "BUG"
db $FF

CharRace_07:
;けん
;
db "SWORD"

CharRace_08:
;いわ
;
db "ROCK"
db $FF

CharRace_09:
;ほのお
;
db "FLAME"

CharRace_0A:
;こおり
;
db "ICE"
db $FF

CharRace_0B:
;ドラゴン
;
db "DRAGN"

warnpc $048E3F

org $48E3F
dw CharStatus_00
dw CharStatus_01
dw CharStatus_02
dw CharStatus_03
dw CharStatus_04
dw CharStatus_05
dw CharStatus_06
dw CharStatus_07
dw CharStatus_08
dw CharStatus_09
dw CharStatus_0A
dw CharStatus_0B
dw CharStatus_0C
CharStatus_00:
;けんこう
;
db "FINE"

CharStatus_01:
;しんでる
;
db "DEAD"

CharStatus_02:
;いし
;
db "ROCK"

CharStatus_03:
;こおり
;
db "WATR"

CharStatus_04:
;たべもの
;
db "HUNG"

CharStatus_05:
;どく
;
db "POIS"

CharStatus_06:
;ひ
;
db "BURN"

CharStatus_07:
;かみなり
;
db "SHCK"

CharStatus_08:
;ねてる
;
db "SLEP"

CharStatus_09:
;みりょう
;
db "CHRM"

CharStatus_0A:
;こんらん
;
db "CONF"

CharStatus_0B:
;ミニ
;
db "MINI"

CharStatus_0C:
;おどろき
;
db "SURP"

warnpc $048E8F


org $04DE4F
dw FoodItem_00
dw FoodItem_01
dw FoodItem_02
dw FoodItem_03
dw FoodItem_04
dw FoodItem_05
dw FoodItem_06
dw FoodItem_07
dw FoodItem_08


FoodItem_00:
FoodItem_06:
FoodItem_07:
FoodItem_08:
;ーーーーーーーー
;EMPTY
db $FF

FoodItem_01:
;オーダンゴ
;
db "FISHSTEW"
db $FF

FoodItem_02:
;チョコス probably chocolate but not enough space
;CHOCO
db "CHOCO"
db $FF

FoodItem_03:
;プリアラモード
;
db "PUDDING"
db $FF

FoodItem_04:
;スールメ
;
db "SQUID"
db $FF

FoodItem_05:
;ねこまんま
;
db "NEKOMANM"
db $FF




warnpc $04DE88


org $048E8F ; All enemies names pointers (0x4A entries (2byte ptrs))  move that to different bank (MOVED)
org $238000
EnemiesNamesPointers:
dw EnemyName_00
dw EnemyName_01
dw EnemyName_02
dw EnemyName_03
dw EnemyName_04
dw EnemyName_05
dw EnemyName_06
dw EnemyName_07
dw EnemyName_08
dw EnemyName_09
dw EnemyName_0A
dw EnemyName_0B
dw EnemyName_0C
dw EnemyName_0D
dw EnemyName_0E
dw EnemyName_0F
dw EnemyName_12
dw EnemyName_11
dw EnemyName_12
dw EnemyName_13
dw EnemyName_14
dw EnemyName_15
dw EnemyName_16
dw EnemyName_17
dw EnemyName_18
dw EnemyName_19
dw EnemyName_1A
dw EnemyName_1B
dw EnemyName_1C
dw EnemyName_1D
dw EnemyName_1E
dw EnemyName_1F
dw EnemyName_20
dw EnemyName_21
dw EnemyName_22
dw EnemyName_23
dw EnemyName_24
dw EnemyName_25
dw EnemyName_26
dw EnemyName_27
dw EnemyName_28
dw EnemyName_29
dw EnemyName_2A
dw EnemyName_2B
dw EnemyName_2C
dw EnemyName_2D
dw EnemyName_2E
dw EnemyName_2F
dw EnemyName_30
dw EnemyName_31
dw EnemyName_32
dw EnemyName_33
dw EnemyName_34
dw EnemyName_35
dw EnemyName_36
dw EnemyName_37
dw EnemyName_38
dw EnemyName_39
dw EnemyName_3A
dw EnemyName_3B
dw EnemyName_3C
dw EnemyName_3D
dw EnemyName_3E
dw EnemyName_3F
dw EnemyName_40
dw EnemyName_41
dw EnemyName_42
dw EnemyName_43
dw EnemyName_44
dw EnemyName_45
dw EnemyName_46
dw EnemyName_47
dw EnemyName_48
dw EnemyName_49
dw EnemyName_4A

EnemyName_00:
;たまむし
;Jewel Beetle
db "BEETLE"
db $FF

EnemyName_01:
;メ夕ルたまむし
;Metal Beetle
db "M.BEETLE"
db $FF

EnemyName_02:
;スリミー
;SLIMEY
db "SLIMEY"
db $FF

EnemyName_03:
;ミーミ
;MIMI
db "MIMI"
db $FF

EnemyName_04:
;デビルミーミ
;DEVIL MIMI
db "D. MIMI"
db $FF

EnemyName_05:
;チャイルドデビル
;DEVIL CHILD
db "EVIL KID"
db $FF

EnemyName_06:
;デビル
;DEVIL
db "DEVIL"
db $FF

EnemyName_07:
;ベール
;VEIL?
db "VEIL"
db $FF

EnemyName_08:
;フェアル
;FAIL? FEAR?
db "FAIRY"
db $FF

EnemyName_09:
;ドンキィ
;DONKEY
db "DONKEY"
db $FF

EnemyName_0A:
;ばんにん
;GUARD
db "GUARD"
db $FF

EnemyName_0B:
;まどうし
;MAGE
db "MAGE"
db $FF

EnemyName_0C:
;すいしょうつかい
;crystal guru
db "CRYSGURU"
db $FF

EnemyName_0D:
;ドラゴンキディP
;DRAGON KIDDY P
db "DRAGON P"
db $FF

EnemyName_0E:
;ドラゴンキディG
;DRAGON KIDDY G
db "DRAGON G"
db $FF

EnemyName_0F:
;ドラゴンキディY
;DRAGON KIDDY Y
db "DRAGON Y"
db $FF

EnemyName_10:
;ドラゴンキディB
;DRAGON KIDDY B
db "DRAGON B"
db $FF

EnemyName_11:
;ロッキー
;
db "ROCKY"
db $FF

EnemyName_12:
;のろいのつるぎ
;Sword of death /Curse Sword
db "SWORD"
db $FF

EnemyName_13:
;ごびたつるぎ
;Five Rings Sword?
db "OLDSWORD"
db $FF

EnemyName_14:
;マドフット
;MUDFOOT
db "MUDFOOT"
db $FF

EnemyName_15:
;スノーマン
;SNOWMAN
db "SNOWMAN"
db $FF

EnemyName_16:
;スノーレディ
;
db "SNOWLADY"
db $FF

EnemyName_17:
;ブリザード
;BLIZZARD
db "BLIZZARD"
db $FF

EnemyName_18:
;タイフーン
;
db "TYPHOON"
db $FF

EnemyName_19:
;アイスマン
;
db "ICE MAN"
db $FF

EnemyName_1A:
;ひだるま
;
db "FLAMEMAN"
db $FF

EnemyName_1B:
;ひのくるま
;FIERY SOMETHING
db "FIERYCAR"
db $FF

EnemyName_1C:
;きのこ
;
db "MUSHROOM"
db $FF

EnemyName_1D:
;どくきのこ
;POISONUS MUSHROOM
db "POI.MUSH"
db $FF

EnemyName_1E:
;くちなし
;GARDENIA
db "GARDENIA"
db $FF

EnemyName_1F:
;ドルゼ
;
db "DOLCE"
db $FF

EnemyName_20:
;グーリー
;
db "GHOUL"
db $FF

EnemyName_21:
;トラネコ
;
db "WILDCAT"
db $FF

EnemyName_22:
;かりゅうど
;
db "HUNTER"
db $FF

EnemyName_23:
;オーク
;OAK? ORC?
db "ORC"
db $FF

EnemyName_24:
;グレートオーク
;GREAT OAK/ORC?
db "GREATORC"
db $FF

EnemyName_25:
;ふつくー
;FRENCH... :ROFL: TODO
db "BIRD"
db $FF

EnemyName_26:
;エッガー
;EGGA
db "EGGER"
db $FF

EnemyName_27:
;かたゆでエッガー
;HARD BOILED EGGER, WTF
db "HB EGGER"
db $FF

EnemyName_28:
;モール
;
db "CRICKET"
db $FF

EnemyName_29:
;ぐんたいアリ
;ARMY ANT
db "ARMY ANT"
db $FF

EnemyName_2A:
;Gモール
;
db "MOLE G"
db $FF

EnemyName_2B:
;アカアリ
;
db "RED ANT"
db $FF

EnemyName_2C:
;いもむし
;
db "CATERP."
db $FF

EnemyName_2D:
;ももむし
;
db "HAIRWORM"
db $FF

EnemyName_2E:
;こばんむし
;RED BEETLE
db "R.BEETLE"
db $FF

EnemyName_2F:
;イカフライ.オス
;FRIED SQUID, MAN... 
db "SQUID M."
db $FF


EnemyName_30:
;イカフライ.メス
;FRIED SQUID, FEMALE... 
db "SQUID F."
db $FF

EnemyName_31:
;パーピー
;HARPY
db "HARPY"
db $FF

EnemyName_32: ; SAME AS 00
;たまむし
;Jewel Beetle
db "BEETLE"
db $FF

EnemyName_33:
;ファイアドラゴン
;FIRE DRAGON
db "F.DRAGON"
db $FF

EnemyName_34:
;えんかい
;ENKAI? TODO
db "URCHIN"
db $FF

EnemyName_35:
;うにゅにゅ
;NYMPH? TODO
db "B.SLIME"
db $FF

EnemyName_36:
;うにゅにゅベス
db "P.SLIME"
db $FF

EnemyName_37:
;グレートスピア
db "G. SPEAR"
db $FF

EnemyName_38:
;やみみ
;DARKNESS? TOXIC? TODO
db "SHADOW"
db $FF

EnemyName_39:
;リズ
db "LIZ"
db $FF

EnemyName_3A:
;けんのぼうれい
db "SWORDGRD"
db $FF

EnemyName_3B:
;ドラゴンブルー
;DRAGON BLUE
db "B.DRAGON"
db $FF

EnemyName_3C:
;ドラゴンレッド
;DRAGON RED
db "R.DRAGON"
db $FF

EnemyName_3D:
;ドラゴングリーン
;DRAGON GREEN
db "G.DRAGON"
db $FF

EnemyName_3E:
;ドラゴンイエロー
;DRAGON YELLOW
db "Y.DRAGON"
db $FF

EnemyName_3F:
;しんえいドラゴン
;NEW DRAGON ? : TODO
db "DRGNGURD"
db $FF


EnemyName_40:
;スピアドラゴン
;SPEAR DRAGON
db "S.DRAGON"
db $FF

EnemyName_41:
;ミラディ
db "MIRADI"
db $FF

EnemyName_42:
;リズ
db "LIZ"
db $FF

EnemyName_43:
;バルー
db "BAROUX"
db $FF

EnemyName_44:
;ブロスディーヴァ
db "DIVA"
db $FF

EnemyName_45:
;ブロスドエル
db "BRODWEL"
db $FF

EnemyName_46:
;リー
;
db "LI"
db $FF

EnemyName_47:
;ヤミのおう
db "DRGNKING"
db $FF

EnemyName_48:
;ゲイリーン
db "GAYLENE"
db $FF

EnemyName_49:
;まりゅう
;WATERFALL TODO
db "DEMNDRGN"
db $FF

EnemyName_4A:
;
;
db ""
db $FF


ItemsNamesPointers:
dw ItemName_00
dw ItemName_01
dw ItemName_02
dw ItemName_03
dw ItemName_04
dw ItemName_05
dw ItemName_06
dw ItemName_07
dw ItemName_08
dw ItemName_09
dw ItemName_0A
dw ItemName_0B
dw ItemName_0C
dw ItemName_0D
dw ItemName_0E
dw ItemName_0F
dw ItemName_10
dw ItemName_11
dw ItemName_12
dw ItemName_13
dw ItemName_14
dw ItemName_15
dw ItemName_16
dw ItemName_17
dw ItemName_18
dw ItemName_19
dw ItemName_1A
dw ItemName_1B
dw ItemName_1C
dw ItemName_1D
dw ItemName_1E
dw ItemName_1F
dw ItemName_20
dw ItemName_21
dw ItemName_22
dw ItemName_23
dw ItemName_24
dw ItemName_25
dw ItemName_26
dw ItemName_27
dw ItemName_28
dw ItemName_29
dw ItemName_2A
dw ItemName_2B
dw ItemName_2C
dw ItemName_2D
dw ItemName_2E
dw ItemName_2F
dw ItemName_30
dw ItemName_31
dw ItemName_32
dw ItemName_33
dw ItemName_34
dw ItemName_35
dw ItemName_36
dw ItemName_37
dw ItemName_38
dw ItemName_39
dw ItemName_3A
dw ItemName_3B
dw ItemName_3C
dw ItemName_3D
dw ItemName_3E
dw ItemName_3F
dw ItemName_40
dw ItemName_41
dw ItemName_42
dw ItemName_43
dw ItemName_44
dw ItemName_45
dw ItemName_46
dw ItemName_47
dw ItemName_48
dw ItemName_49
dw ItemName_4A
dw ItemName_4B
dw ItemName_4C
dw ItemName_4D
dw ItemName_4E
dw ItemName_4F
dw ItemName_50
dw ItemName_51
dw ItemName_52
dw ItemName_53
dw ItemName_54
dw ItemName_55
dw ItemName_56
dw ItemName_57
dw ItemName_58
dw ItemName_59
dw ItemName_5A
dw ItemName_5B
dw ItemName_5C
dw ItemName_5D
dw ItemName_5E
dw ItemName_5F
dw ItemName_60
dw ItemName_61
dw ItemName_62
dw ItemName_63
dw ItemName_64
dw ItemName_65
dw ItemName_66
dw ItemName_67
dw ItemName_68
dw ItemName_69
dw ItemName_6A
dw ItemName_6B
dw ItemName_6C
dw ItemName_6D
dw ItemName_6E
dw ItemName_6F
dw ItemName_70
dw ItemName_71
dw ItemName_72
dw ItemName_73
dw ItemName_74
dw ItemName_75
dw ItemName_76
dw ItemName_77
dw ItemName_78
dw ItemName_79
dw ItemName_7A
dw ItemName_7B
dw ItemName_7C
dw ItemName_7D
dw ItemName_7E
dw ItemName_7F
dw ItemName_80
dw ItemName_81
dw ItemName_82
dw ItemName_83
dw ItemName_84
dw ItemName_85
dw ItemName_86
dw ItemName_87
dw ItemName_88
dw ItemName_89
dw ItemName_8A
dw ItemName_8B
dw ItemName_8C
dw ItemName_8D
dw ItemName_8E
dw ItemName_8F
dw ItemName_90
dw ItemName_91
dw ItemName_92
dw ItemName_93
dw ItemName_94
dw ItemName_95
dw ItemName_96
dw ItemName_97
dw ItemName_98
dw ItemName_99
dw ItemName_9A
dw ItemName_9B
dw ItemName_9C
dw ItemName_9D
dw ItemName_9E
dw ItemName_9F
dw ItemName_A0
dw ItemName_A1



; 8 Characters max
ItemName_00:
;ーーーーーーーー
db "--------"
db $FF

ItemName_01:
;たいまつ
;TORCH
db "TORCH"
db $FF

ItemName_02:
;めがみのしょ
db "GOD.BOOK"
db $FF

ItemName_03:
;ノーヴァのはな
;NOVA SOMETHING
db "NOVAFLWR"
db $FF

ItemName_04:
;ろうやのカギ
;PRISON KEY
db "JAIL.KEY"
db $FF

ItemName_05:
;ほしのすいとう
db "STARFLSK"
db $FF

ItemName_06:
;にんぎょのかい
;Mermaid Shell
db "M.SHELL"
db $FF

ItemName_07:
;ひのとりのクツ
;Pheonix Shoes i think?
db "FIRESHOE"
db $FF

ItemName_08:
;ノーヴァのみ
;NOVA?
db "NOVAFRUI"
db $FF

ItemName_09:
;ようせいのはね
;afairy's wings
db "FARYWING"
db $FF

ItemName_0A:
;たからべやのカギ
;Key to the Takarabeya
db "GAOL.KEY"
db $FF

ItemName_0B:
;ノーヴァのは
;
db "NOVALEAF"
db $FF

ItemName_0C:
;つきのしずく
db "MOONDROP"
db $FF

ItemName_0D:
;てがみ
;LETTER
db "LETTER"
db $FF

ItemName_0E:
;りゅうのウロコ
;DRAGON SCALE
db "D.SCALE"
db $FF

ItemName_0F:
;みずくさ
db "WATRLEAF"
db $FF

ItemName_10:
;なんかのカギ
;SOME KIND OF KEY
db "A.KEY"
db $FF

ItemName_11:
;にんぎょのクスリ
;MERMAID MEDECINE
db "MERM.MED"
db $FF

ItemName_12:
;だいちのけん 9
db "ESWRD.P9"
db $FF

ItemName_13:
;ひかりのぎょく
;LUMINOUS LINES
db "L.RELIC"
db $FF

ItemName_14:
;やみのぎょく
;DARKNESS
db "D.RELIC"
db $FF

ItemName_15:
;ひかりのカガミ
;
db "L.MIRROR"
db $FF

ItemName_16:
;やみのカガミ
;
db "D.MIRROR"
db $FF

ItemName_17:
;レッドリング
;
db "RED.RING"
db $FF

ItemName_18:
;ブルーリング
;
db "BLUERING"
db $FF

ItemName_19:
;グリーンリング
;
db "GRENRING"
db $FF

ItemName_1A:
;だいちのけん 1
db "ESWRD.P1"
db $FF

ItemName_1B:
;キズぐすり
;
db "POTION"
db $FF

ItemName_1C:
;きりょくそう
db "MP.HERB"
db $FF

ItemName_1D:
;どくけし
;
db "ANTIDOTE"
db $FF

ItemName_1E:
;どくやく
;
db "POISON"
db $FF

ItemName_1F:
;えりくさ
;TODO
db "ELEXIR"
db $FF

ItemName_20:
;めざましどけい
;
db "AL.CLOCK"
db $FF

ItemName_21:
;いのちのみ
;
db "LIFEFRUI"
db $FF

ItemName_22:
;クラゲのあし
;JELLYFISH LEGS?
db "JELYFISH"
db $FF

ItemName_23:
;きつけそう ;temptation
db "CHARM"
db $FF

ItemName_24:
;ぎんののみ
;GONGNIN? HERB
db "AROMHERB"
db $FF
ItemName_25:
;カイロ
;CAIRO? POCKET
db "HEATER"
db $FF
ItemName_26:
;こづち
;GAVEL
db "MALLET"
db $FF
ItemName_27:
;きんのフォーク
;
db "GOLDFORK"
db $FF
ItemName_28:
;みずでっぽう
;
db "WATERGUN"
db $FF
ItemName_29:
;すいしょう
;
db "CRYSTAL"
db $FF
ItemName_2A:
;ひだるまのはい
db "FIRE.ASH"
db $FF
ItemName_2B:
;くすりだま
;
db "MED.PILL"
db $FF
ItemName_2C:
;きりょくそうのね
db "ENGYROOT"
db $FF
ItemName_2D:
;ほのおのマッチ
;
db "MATCH"
db $FF
ItemName_2E:
;グーグーフラワー
;GOO-GOO FLOWER TODO?
db "ZZFLOWER"
db $FF
ItemName_2F:
;ほのおのしょ
;
db "FLAMES"
db $FF
ItemName_30:
;こおりのしょ
;
db "WATRBOOK"
db $FF
ItemName_31:
;りゅうのめだま
;
db "D.APPLE"
db $FF
ItemName_32:
;くちなしのは
;
db "GARDENIA" ; might be mute?
db $FF
ItemName_33:
;たべかけのパン
;
db "BREAD"
db $FF
ItemName_34:
;だいちのけん 2
;
db "ESWRD.P2"
db $FF
ItemName_35:
;だいちのけん 3
;
db "ESWRD.P3"
db $FF
ItemName_36:
;だいちのけん 4
;
db "ESWRD.P4"
db $FF
ItemName_37:
;だいちのけん 5
;
db "ESWRD.P5"
db $FF
ItemName_38:
;ネズミはなび
;
db "PINWHEEL"
db $FF
ItemName_39:
;だいちのけん 6
;
db "ESWRD.P6"
db $FF
ItemName_3A:
;だいちのけん 7
;
db "ESWRD.P7"
db $FF
ItemName_3B:
;めがみのウインク
;
db "GOD.WINK"
db $FF
ItemName_3C:
;だいちのけん 8
;
db "ESWRD.P8"
db $FF
ItemName_3D:
;ワグナーのほん
;
db "WAG.BOOK"
db $FF
ItemName_3E:
;キャンディー
;
db "CANDY"
db $FF
ItemName_3F:
;マニキュア
;
db "VARNISH"
db $FF
ItemName_40:
;シャボンだま
;
db "SOAPBUBL"
db $FF
ItemName_41:
;ガビョウ
;
db "NAIL"
db $FF
ItemName_42:
;めがみのおまもり
;
db "GODCHARM"
db $FF
ItemName_43:
;おしながき
;
db "OLD BOOK"
db $FF
ItemName_44:
;ハンマー
;
db "HAMMER"
db $FF
ItemName_45:
;きのぼう
;
db "STICK"
db $FF
ItemName_46:
;ナイフ
;
db "KNIFE"
db $FF
ItemName_47:
;けん
;
db "SWORD"
db $FF
ItemName_48:
;ほうちょう
;KITCHEN KNIFE? OR FOOD
db "K.KNIFE"
db $FF
ItemName_49:
;やり
;
db "SPEAR"
db $FF
ItemName_4A:
;チェーンリー
;
db "CHAIN"
db $FF
ItemName_4B:
;けいこうとう
;???
db "LAMP"
db $FF
ItemName_4C:
;サーベル
;
db "SABER"
db $FF
ItemName_4D:
;ゆみや
;
db "BOW"
db $FF
ItemName_4E:
;クロスボウ
;
db "CROSSBOW"
db $FF
ItemName_4F:
;とうせきき
;
db "CATAPULT"
db $FF
ItemName_50:
;パチンコ
;
db "SLINGSHT"
db $FF
ItemName_51:
;ふきや
;
db "BLOWPIPE"
db $FF
ItemName_52:
;ムチ
;
db "WHIP"
db $FF
ItemName_53:
;ヌンチャク
;
db "NUNCHAKU"
db $FF
ItemName_54:
;3せつこん
;
db "3.FANG"
db $FF
ItemName_55:
;ひかりのロッド
;
db "LIGHTROD"
db $FF
ItemName_56:
;やみのロッド
;
db "DARK.ROD"
db $FF
ItemName_57:
;ブーメラン
;
db "BOOMRANG"
db $FF
ItemName_58:
;ネコのつめ
;
db "CAT.CLAW"
db $FF
ItemName_59:
;クマのつめ
;
db "BEARCLAW"
db $FF
ItemName_5A:
;りゅうのつめ
;
db "DRGNCLAW"
db $FF
ItemName_5B:
;クリスタルのつえ
;
db "CRYSCANE"
db $FF
ItemName_5C:
;ダイヤのつえ
;
db "DIAMCANE"
db $FF
ItemName_5D:
;ホーンのつえ
;
db "HORNCANE"
db $FF
ItemName_5E:
;みえないつえ
;
db "INVSCANE"
db $FF
ItemName_5F:
;アイスピック
;
db "ICE.PICK"
db $FF
ItemName_60:
;ゆうしゃのけん
;
db "HEROSWRD"
db $FF
ItemName_61:
;めがみのけん
;
db "GODDSWRD"
db $FF
ItemName_62:
;ダイヤのけん
;
db "DIAMSWRD"
db $FF
ItemName_63:
;いしころ
;
db "STONE"
db $FF
ItemName_64:
;かわのよろい
;
db "LETRARMR"
db $FF
ItemName_65:
;くごりかたびら
;EITHER KIMONO OR MAIL TODO
db "KIMONO"
db $FF
ItemName_66:
;ぎんのよろい
;
db "SLVRARMR"
db $FF
ItemName_67:
;ダイヤのよろい
;
db "DIAMARMR"
db $FF
ItemName_68:
;デビルスーツ
;
db "EVILSUIT"
db $FF
ItemName_69:
;ぬいぐるみ
;
db "STUFDTOY"
db $FF
ItemName_6A:
;ローブ
;
db "ROBE"
db $FF
ItemName_6B:
;ノーヴァのよろい
;
db "NOVAARMR"
db $FF
ItemName_6C:
;デビルローブ
;
db "EVILROBE"
db $FF
ItemName_6D:
;とうめいカプセル
;
db "SHOOTCAP"
db $FF
ItemName_6E:
;ふるぼけたコート
;
db "OLD.COAT"
db $FF
ItemName_6F:
;はらがけ
;
db "APRON"
db $FF
ItemName_70:
;みえないよろい
;
db "INVSARMR"
db $FF
ItemName_71:
;ゆうしゃのよろい
;
db "HEROARMR"
db $FF
ItemName_72:
;かわのローブ
;
db "LETRROBE"
db $FF
ItemName_73:
;くごりのローブ
;
db "BLAKROBE"
db $FF
ItemName_74:
;ダイヤのローブ
;
db "DIAMROBE"
db $FF
ItemName_75:
;けがわのローブ
;
db "FUR ROBE"
db $FF
ItemName_76:
;ゆうしゃのローブ
;
db "HEROROBE"
db $FF
ItemName_77:
;みえないローブ
;
db "INVSROBE"
db $FF
ItemName_78:
;ボディコンふく
;
db "WATRARMR"
db $FF
ItemName_79:
;ヨロイ
;
db "ARMOR"
db $FF
ItemName_7A:
;よだれかけ
;
db "TOWEL"
db $FF
ItemName_7B:
;ふろしき
;
db "WRACLOTH"
db $FF
ItemName_7C:
;まないた
;TODO
db "CH.BOARD"
db $FF
ItemName_7D:
;かわのたて
;??? TODO
db "LETRSHLD"
db $FF
ItemName_7E:
;チェーンシールド
;
db "CHNSHLD"
db $FF
ItemName_7F:
;ぎんのたて
;
db "SLVRSHLD"
db $FF
ItemName_80:
;デビルシールド
;
db "EVILSHLD"
db $FF
ItemName_81:
;ダイヤのたて
;
db "DIAMSHLD"
db $FF
ItemName_82:
;ノーヴァのたて
;
db "NOVASHLD"
db $FF
ItemName_83:
;おぼん
;
db "TRAY"
db $FF
ItemName_84:
;みえないたて
db "INVSSHLD"
db $FF
ItemName_85:
;タイヤのたて
; TODO
db "TIRE"
db $FF
ItemName_86:
;ゆうしゃのたて
;TODO
db "HEROSHLD"
db $FF
ItemName_87:
;けがわのたて
;
db "FUR SHLD"
db $FF
ItemName_88:
;ポンポン
;
db "POMPOM"
db $FF
ItemName_89:
;ナベ
;
db "PAN"
db $FF
ItemName_8A:
;カゴ
;
db "CASE"
db $FF
ItemName_8B:
;ヘルメット
;
db "HELMET"
db $FF
ItemName_8C:
;ぼうくうずきん
;
db "AIR HOOD"
db $FF
ItemName_8D:
;めがみのバンダナ
;
db "GOD.BAND"
db $FF
ItemName_8E:
;きんのバンダナ
;
db "GOLDBAND"
db $FF
ItemName_8F:
;ミイラのほうたい
;
db "MUMYWRAP"
db $FF
ItemName_90:
;おやじのウインク
;
db "F.WINK"
db $FF
ItemName_91:
;はねぼうし
;
db "FEATRCAP"
db $FF
ItemName_92:
;あかいリボン
;red ribbon
db "REDRIBON"
db $FF
ItemName_93:
;しあわせのリボン
;happiness ribbon
db "HAPYRBON"
db $FF
ItemName_94:
;きれたリボン
;old ribbon
db "OLDRIBON"
db $FF
ItemName_95:
;はねつきバンダナ
;feather band
db "FETRBAND"
db $FF
ItemName_96:
;ゆうしゃのリボン
;Brave Ribbon
db "HERORIBN"
db $FF
ItemName_97:
;かわのバンダナ
;Leather Bandana
db "LETRBAND"
db $FF
ItemName_98:
;ヘビメタブレス
;snake meta-breath todo no idea bracelet?
db "SNAKBRAC"
db $FF
ItemName_99:
;よびぶえ
;
db "WHISTLE"
db $FF
ItemName_9A:
;ロンドンブーツ
;
db "RAINBOOT"
db $FF
ItemName_9B:
;ゲタ
;
db "GETA"
db $FF
ItemName_9C:
;デビルリング
;
db "EVILRING"
db $FF
ItemName_9D:
;ショットブレス
;
db "HOTBRACE"
db $FF
ItemName_9E:
;オヤジのサンダル
;DAD SANDALS
db "SANDALS"
db $FF
ItemName_9F:
;ハイヒール
;
db "HIGHHEEL"
db $FF
ItemName_A0:
;アミタイツ
;
db "TIGHTS"
db $FF
ItemName_A1:
;デスのしょ
;DEATH BOOK, BOOK OF DEATH
db "DEATBOOK"
db $FF










ItemsNamesTWOPointers:

dw ItemNameTWO_00
dw ItemNameTWO_01
dw ItemNameTWO_02
dw ItemNameTWO_03
dw ItemNameTWO_04
dw ItemNameTWO_05
dw ItemNameTWO_06
dw ItemNameTWO_07
dw ItemNameTWO_08
dw ItemNameTWO_09
dw ItemNameTWO_0A
dw ItemNameTWO_0B
dw ItemNameTWO_0C
dw ItemNameTWO_0D
dw ItemNameTWO_0E
dw ItemNameTWO_0F
dw ItemNameTWO_10
dw ItemNameTWO_11
dw ItemNameTWO_12
dw ItemNameTWO_13
dw ItemNameTWO_14
dw ItemNameTWO_15
dw ItemNameTWO_16
dw ItemNameTWO_17
dw ItemNameTWO_18
dw ItemNameTWO_19
dw ItemNameTWO_1A
dw ItemNameTWO_1B
dw ItemNameTWO_1C
dw ItemNameTWO_1D
dw ItemNameTWO_1E
dw ItemNameTWO_1F
dw ItemNameTWO_20
dw ItemNameTWO_21
dw ItemNameTWO_22
dw ItemNameTWO_23
dw ItemNameTWO_24
dw ItemNameTWO_25
dw ItemNameTWO_26
dw ItemNameTWO_27
dw ItemNameTWO_28
dw ItemNameTWO_29
dw ItemNameTWO_2A
dw ItemNameTWO_2B



ItemNameTWO_00:
;ーーーーーーーー
;
db "--------"
db $FF

ItemNameTWO_01:
;ユラ
;
db "FIRE"
db $FF

ItemNameTWO_02:
;ユララ
;
db "FIRE2"
db $FF

ItemNameTWO_03:
;ユラズン
;
db "FIREALL"
db $FF

ItemNameTWO_04:
;ピカゴ
;
db "THUNDER" 
db $FF

ItemNameTWO_05:
;フリーズ
;
db "ICE2"
db $FF

ItemNameTWO_06:
;フリーズナ
;
db "ICE2ALL"
db $FF

ItemNameTWO_07:
;イワカ
;
db "PETRIFIA"
db $FF

ItemNameTWO_08:
;ゴン
;
db "LUCK HIT"
db $FF

ItemNameTWO_09:
;ゴンゴン
;
db "LUCKHITA"
db $FF

ItemNameTWO_0A:
;ドックー
;
db "POISON"
db $FF

ItemNameTWO_0B:
;コンラル
;
db "CONFUSE"
db $FF

ItemNameTWO_0C:
;ビックラ
;
db "SURPRISE"
db $FF

ItemNameTWO_0D:
;ビュウ
;
db "PEW"
db $FF

ItemNameTWO_0E:
;ブイ
;
db "MP DRAIN"
db $FF

ItemNameTWO_0F:
;デルドックー
;
db "CUREPOIS"
db $FF

ItemNameTWO_10:
;チャーム
;
db "CHARM"
db $FF

ItemNameTWO_11:
;マンモス
;
db "MAMMOTHA"
db $FF

ItemNameTWO_12:
;ライト
;
db "LIGHT"
db $FF

ItemNameTWO_13:
;フッカツ
;
db "REVIVE"
db $FF

ItemNameTWO_14:
;フッカツダ
;
db "REVIVE2"
db $FF

ItemNameTWO_15:
;デルイワカ
;
db "CUREROCK"
db $FF

ItemNameTWO_16:
;デルチャーム
;
db "CURCHARM"
db $FF

ItemNameTWO_17:
;ケシー
;
db "SEALIONA"
db $FF

ItemNameTWO_18:
;メタモ
;
db "HUNGER"
db $FF

ItemNameTWO_19:
;ミニミニ
;
db "MINI"
db $FF

ItemNameTWO_1A:
;ネムネム
;
db "SLEEP"
db $FF

ItemNameTWO_1B:
;ゲンキルン
;
db "HEALALL"
db $FF

ItemNameTWO_1C:
;ゲンキル
;
db "HEAL2"
db $FF

ItemNameTWO_1D:
;ゲンキ
;
db "HEAL"
db $FF

ItemNameTWO_1E:
;ピカゴラ
;
db "THUNDERA"
db $FF

ItemNameTWO_1F:
;ユラナール
;
db "BURNALL"
db $FF

ItemNameTWO_20:
;ユラズンナール
;
db "BLAZEALL"
db $FF

ItemNameTWO_21:
;ピカナール
;
db "THUNDER2"
db $FF

ItemNameTWO_22:
;ピカゴラナール
;
db "THUNDR2A"
db $FF

ItemNameTWO_23:
;アイス
;
db "ICE"
db $FF

ItemNameTWO_24:
;フリーズナール
;
db "ICE2ALL"
db $FF

ItemNameTWO_25:
;デルファイア
;
db "CUREBURN"
db $FF

ItemNameTWO_26:
;デルサンダ
;
db "CUREBUZZ"
db $FF

ItemNameTWO_27:
;デルアイス
;
db "CUREICE"
db $FF

ItemNameTWO_28:
;デルミニ
;
db "CUREMINI"
db $FF

ItemNameTWO_29:
;デルメタ
;
db "CUREMETA"
db $FF

ItemNameTWO_2A:
;チャーム
;
db "CHARM"
db $FF

ItemNameTWO_2B:
;ケシー
;
db "KECAK"
db $FF








org $2A8000
NewGfxPtrs:
STA.w $0201 ; restored code

LDY.b $74
CPY.w #$83E6 ; is the pointer one of the bubble text?
BNE +
LDA.b #$2A ; load bank 2A instead
LDY.w #bubblegfx1
STY.b $74
STA.b $76
LDA.w $0201 ; restore that just in case  needed

+
CPY.w #$86C6 ; is the pointer one of the bubble text?
BNE +
LDA.b #$2A ; load bank 2A instead
LDY.w #bubblegfx2
STY.b $74
STA.b $76
LDA.w $0201 ; restore that just in case it was needed

+
CPY.w #$899E ; is the pointer one of the bubble text? ; size is 0x200
BNE +
LDA.b #$2A ; load bank 2A instead
LDY.w #bubblegfx3
STY.b $74
STA.b $76

LDA.w $0201 ; restore that just in case it was needed
+

LDY.w $0200 ; restored code

RTL

bubblegfx1:
incbin "bubbleeng1.cmp"
bubblegfx2:
incbin "bubbleeng2.cmp"
bubblegfx3:
incbin "bubbleeng3.cmp"








incsrc LFENGMessages.asm