table bigcharactertable.txt

org $03c894 ; 08
LDA #$25

org $03c898 ; 07
LDA #$24


org $03C8DB ; LDY #$0000 : LDA ($64), Y
JSL MessageExpansionCode
NOP #$01

org $03EB86
JSL NewElementsText
NOP #15



RILCostGroup = $220E

!HEART = $D2, $3D ; ♥
!PAW = $D2, $40 ; ♣ 
!SWEAT = $D2, $3E ; ⸗
!SWEAT2 = $D2, $3F ; ⸗
!MNOTE = $D2, $3C ; ┘
!STAR = $D2, $43 ; ┼
!SMILEY = $D2, $41 ; ☺

!QUOTE1 = $D0, $0C ;“
!QUOTE2 = $D0, $0D ;”
!COLON = $D0, $0F

!NAME = $E0, $00
!NYMPHIE = $E0, $01
!TOLI = $E0, $02
!MINEA = $E0, $03
!KOTARO = $E0, $04
!E005 = $E0, $05
!LEFINA = $E0, $06
!YAN = $E0, $2D
!MIA = $E0, $2E

!E021 = $E0, $21
!E022 = $E0, $22
!E024 = $E0, $24

!NL = $FE

; Most of the name used are from the gamefaqs guide
; https://gamefaqs.gamespot.com/snes/581812-light-fantasy/faqs/44005
; few are slightly different like MAA being MIA

; CHARACTERS NAMES - they can have up to 8 characters so their full name can be used in texts
; but in menu it only use the first 4

; $E0, $00  ; [HERO NAME]

org $03D0AD ; $E0, $01 ; ニンフィ
db "NYMPHIE" ; NYMPHIE

org $03D0B7 ; $E0, $02 トルイ
db "TOLI"   ; TORUI/TOLUI

org $03D0C1 ; $E0, $03 ミネア
db "MINEA"   ; MINNEA ; not a great name but MINA is the tree in the village

org $03D0CB ; $E0, $04 コタロー
db "KOTARO" ; Kotaro

; $E0, $05 ;MAIN HERO NAME or HERO IN SLOT00
org $03D0DF ; レフィーナ
db "LEFINA" ; $E0, $06 LEFINA or REFINA

org $03D0D5 ;ソノタ
db "SONOTA" ;SONOTA ; UNUSED?

org $03D0E9 ; $E0, $2D ; ヤン
db "YAN" ; YAN
db $FF

org $03D0F3 ; $E0, $2E ; メーア
db "MIA" ; MAA On Gamefaqs but it's more like MIA or MEA or maybe even MAYA?
db $FF




;$E0, $07 ; いらっしゃい ; WELCOME
;$E0, $08 ; 星の水箇 ; STAR FLASK 
;$E0, $09 ; ...
;$E0, $0A ; 大地の剣 ; SWORD OF THE EARTH
;$E0, $0B ; まいど ; EVERYTIME
;$E0, $0C ; あたし ; ATASHI I, ME ? or MY STORE
;$E0, $0D ; ファラス ; FARAS  ; VILLAGE NAME
;$E0, $0E ; アイーズ ; AEZ ; VILLAGE NAME
;$E0, $0F ; ティース ; TES ; VILLAGE NAME
;$E0, $10 ; ギルシ   ; GILTS ; VILLAGE NAME
;$E0, $11 ; しまった ; OOPS
;$E0, $12 ; そんな   ; SUCH
;$E0, $13 ; ううっ   ; UGH
;$E0, $14 ; ノーヴァ ; NOVA
;$E0, $15 ; !!!
;$E0, $16 ; じぶん  ; MYSELF
;$E0, $17 ; ぼくは  ; I AM
;$E0, $18 ; 勇者の血; HERO BLOOD
;$E0, $19 ; 地湧の勇者 ; HERO OF THE EARTH
;$E0, $1A ; 女神の力 ; GODDESS POWER
;$E0, $1B ; ありがとう ;THANK YOU
;$E0, $1C ; むかし ; OLD TIME
;$E0, $1D ; おお,  ; OOH
;$E0, $1E ; ワグナー; WAGNER
;$E0, $1F ; 火の鳥 ; PHOENIX / FIRE BIRD  ;might be used as character too so
;$E0, $20 ; ああっ, ;OOH,

;$E0, $21 ; empty ; dynamic stuff
;$E0, $22 ; dynamic one can be Numbers of RIL per person in group, or item used name
;$E0, $23 ; empty ; dynamic stuff
;$E0, $24 ; empty ; dynamic stuff
;$E0, $25 ; Current power got for the sword of the earth
;$E0, $26 ; half player name used to name a character from your name ; also 2B?
;$E0, $27 ; ヤン ; YAN ; also 2D? so not sure
;$E0, $28 ; メーア ; MIA ; also 2E
;$E0, $29 ; レフィーナ ;LEFINA ; also 06
;$E0, $2A ; empty
;$E0, $2B ; half player name used to name a character from your name 
;$E0, $2C ; 地湧(じゆう)
;$E0, $2D ; ヤン ; YAN ; also 2D? so not sure
;$E0, $2E ; メーア ; MIA ; also 2E
;$E0, $2F ; わーい ; YAY
;$E0, $30 ; 世界 ; WORLD
;$E0, $31 ; 仲間 ; GROUP
;$E0, $32 ; 残りの力...;REMANING POWER
;$E0, $33 ; になる.   ; seems unused
;$E0, $34 ; をもどす. ; BRING BACK ; seems unused
;$E0, $35 ; 武器 ; WEAPON
;$E0, $36 ; 防具「よろい」; EQUIPMENT "ARMOR"
;$E0, $37 ; 防具「たて」 ; EQUIPMENT "SHIELD"
;$E0, $38 ; 防具「そのた」 ; EQUIPMENT "OTHER"
;$E0, $39 ; 防具「ぼうし」 ; EQUIPMENT "HAT"
;$E0, $3A ; 防具 ; EQUIPEMENT


org $248000
dw MessageText_00
dw MessageText_01
dw MessageText_02
dw MessageText_03
dw MessageText_04
dw MessageText_05
dw MessageText_06
dw MessageText_07
dw MessageText_08
dw MessageText_09
dw MessageText_0A
dw MessageText_0B
dw MessageText_0C
dw MessageText_0D
dw MessageText_0E
dw MessageText_0F
dw MessageText_10
dw MessageText_11
dw MessageText_12
dw MessageText_13
dw MessageText_14
dw MessageText_15
dw MessageText_16
dw MessageText_17
dw MessageText_18
dw MessageText_19
dw MessageText_1A
dw MessageText_1B
dw MessageText_1C
dw MessageText_1D
dw MessageText_1E
dw MessageText_1F
dw MessageText_20
dw MessageText_21
dw MessageText_22
dw MessageText_23
dw MessageText_24
dw MessageText_25
dw MessageText_26
dw MessageText_27
dw MessageText_28
dw MessageText_29
dw MessageText_2A
dw MessageText_2B
dw MessageText_2C
dw MessageText_2D
dw MessageText_2E
dw MessageText_2F
dw MessageText_30
dw MessageText_31
dw MessageText_32
dw MessageText_33
dw MessageText_34
dw MessageText_35
dw MessageText_36
dw MessageText_37
dw MessageText_38
dw MessageText_39
dw MessageText_3A
dw MessageText_3B
dw MessageText_3C
dw MessageText_3D
dw MessageText_3E
dw MessageText_3F
dw MessageText_40
dw MessageText_41
dw MessageText_42
dw MessageText_43
dw MessageText_44
dw MessageText_45
dw MessageText_46
dw MessageText_47
dw MessageText_48
dw MessageText_49
dw MessageText_4A
dw MessageText_4B
dw MessageText_4C
dw MessageText_4D
dw MessageText_4E
dw MessageText_4F
dw MessageText_50
dw MessageText_51
dw MessageText_52
dw MessageText_53
dw MessageText_54
dw MessageText_55
dw MessageText_56
dw MessageText_57
dw MessageText_58
dw MessageText_59
dw MessageText_5A
dw MessageText_5B
dw MessageText_5C
dw MessageText_5D
dw MessageText_5E
dw MessageText_5F
dw MessageText_60
dw MessageText_61
dw MessageText_62
dw MessageText_63
dw MessageText_64
dw MessageText_65
dw MessageText_66
dw MessageText_67
dw MessageText_68
dw MessageText_69
dw MessageText_6A
dw MessageText_6B
dw MessageText_6C
dw MessageText_6D
dw MessageText_6E
dw MessageText_6F
dw MessageText_70
dw MessageText_71
dw MessageText_72
dw MessageText_73
dw MessageText_74
dw MessageText_75
dw MessageText_76
dw MessageText_77
dw MessageText_78
dw MessageText_79
dw MessageText_7A
dw MessageText_7B
dw MessageText_7C
dw MessageText_7D
dw MessageText_7E
dw MessageText_7F
dw MessageText_80
dw MessageText_81
dw MessageText_82
dw MessageText_83
dw MessageText_84
dw MessageText_85
dw MessageText_86
dw MessageText_87
dw MessageText_88
dw MessageText_89
dw MessageText_8A
dw MessageText_8B
dw MessageText_8C
dw MessageText_8D
dw MessageText_8E
dw MessageText_8F
dw MessageText_90
dw MessageText_91
dw MessageText_92
dw MessageText_93
dw MessageText_94
dw MessageText_95
dw MessageText_96
dw MessageText_97
dw MessageText_98
dw MessageText_99
dw MessageText_9A
dw MessageText_9B
dw MessageText_9C
dw MessageText_9D
dw MessageText_9E
dw MessageText_9F
dw MessageText_A0
dw MessageText_A1
dw MessageText_A2
dw MessageText_A3
dw MessageText_A4
dw MessageText_A5
dw MessageText_A6
dw MessageText_A7
dw MessageText_A8
dw MessageText_A9
dw MessageText_AA
dw MessageText_AB
dw MessageText_AC
dw MessageText_AD
dw MessageText_AE
dw MessageText_AF
dw MessageText_B0
dw MessageText_B1
dw MessageText_B2
dw MessageText_B3
dw MessageText_B4
dw MessageText_B5
dw MessageText_B6
dw MessageText_B7
dw MessageText_B8
dw MessageText_B9
dw MessageText_BA
dw MessageText_BB
dw MessageText_BC
dw MessageText_BD
dw MessageText_BE
dw MessageText_BF
dw MessageText_C0
dw MessageText_C1
dw MessageText_C2
dw MessageText_C3
dw MessageText_C4
dw MessageText_C5
dw MessageText_C6
dw MessageText_C7
dw MessageText_C8
dw MessageText_C9
dw MessageText_CA
dw MessageText_CB
dw MessageText_CC
dw MessageText_CD
dw MessageText_CE
dw MessageText_CF
dw MessageText_D0
dw MessageText_D1
dw MessageText_D2
dw MessageText_D3
dw MessageText_D4
dw MessageText_D5
dw MessageText_D6
dw MessageText_D7
dw MessageText_D8
dw MessageText_D9
dw MessageText_DA
dw MessageText_DB
dw MessageText_DC
dw MessageText_DD
dw MessageText_DE
dw MessageText_DF
dw MessageText_E0
dw MessageText_E1
dw MessageText_E2
dw MessageText_E3
dw MessageText_E4
dw MessageText_E5
dw MessageText_E6
dw MessageText_E7
dw MessageText_E8
dw MessageText_E9
dw MessageText_EA
dw MessageText_EB
dw MessageText_EC
dw MessageText_ED
dw MessageText_EE
dw MessageText_EF
dw MessageText_F0
dw MessageText_F1
dw MessageText_F2
dw MessageText_F3
dw MessageText_F4
dw MessageText_F5
dw MessageText_F6
dw MessageText_F7
dw MessageText_F8
dw MessageText_F9
dw MessageText_FA
dw MessageText_FB
dw MessageText_FC
dw MessageText_FD
dw MessageText_FE
dw MessageText_FF
dw MessageText_100
dw MessageText_101
dw MessageText_102
dw MessageText_103
dw MessageText_104
dw MessageText_105
dw MessageText_106
dw MessageText_107
dw MessageText_108
dw MessageText_109
dw MessageText_10A
dw MessageText_10B
dw MessageText_10C
dw MessageText_10D
dw MessageText_10E
dw MessageText_10F
dw MessageText_110
dw MessageText_111
dw MessageText_112
dw MessageText_113
dw MessageText_114
dw MessageText_115
dw MessageText_116
dw MessageText_117
dw MessageText_118
dw MessageText_119
dw MessageText_11A
dw MessageText_11B
dw MessageText_11C
dw MessageText_11D
dw MessageText_11E
dw MessageText_11F
dw MessageText_120
dw MessageText_121
dw MessageText_122
dw MessageText_123
dw MessageText_124
dw MessageText_125
dw MessageText_126
dw MessageText_127
dw MessageText_128
dw MessageText_129
dw MessageText_12A
dw MessageText_12B
dw MessageText_12C
dw MessageText_12D
dw MessageText_12E
dw MessageText_12F
dw MessageText_130
dw MessageText_131
dw MessageText_132
dw MessageText_133
dw MessageText_134
dw MessageText_135
dw MessageText_136
dw MessageText_137
dw MessageText_138
dw MessageText_139
dw MessageText_13A
dw MessageText_13B
dw MessageText_13C
dw MessageText_13D
dw MessageText_13E
dw MessageText_13F
dw MessageText_140
dw MessageText_141
dw MessageText_142
dw MessageText_143
dw MessageText_144
dw MessageText_145
dw MessageText_146
dw MessageText_147
dw MessageText_148
dw MessageText_149
dw MessageText_14A
dw MessageText_14B
dw MessageText_14C
dw MessageText_14D
dw MessageText_14E
dw MessageText_14F
dw MessageText_150
dw MessageText_151
dw MessageText_152
dw MessageText_153
dw MessageText_154
dw MessageText_155
dw MessageText_156
dw MessageText_157
dw MessageText_158
dw MessageText_159
dw MessageText_15A
dw MessageText_15B
dw MessageText_15C
dw MessageText_15D
dw MessageText_15E
dw MessageText_15F
dw MessageText_160
dw MessageText_161
dw MessageText_162
dw MessageText_163
dw MessageText_164
dw MessageText_165
dw MessageText_166
dw MessageText_167
dw MessageText_168
dw MessageText_169
dw MessageText_16A
dw MessageText_16B
dw MessageText_16C
dw MessageText_16D
dw MessageText_16E
dw MessageText_16F
dw MessageText_170
dw MessageText_171
dw MessageText_172
dw MessageText_173
dw MessageText_174
dw MessageText_175
dw MessageText_176
dw MessageText_177
dw MessageText_178
dw MessageText_179
dw MessageText_17A
dw MessageText_17B
dw MessageText_17C
dw MessageText_17D
dw MessageText_17E
dw MessageText_17F
dw MessageText_180
dw MessageText_181
dw MessageText_182
dw MessageText_183
dw MessageText_184
dw MessageText_185
dw MessageText_186
dw MessageText_187
dw MessageText_188
dw MessageText_189
dw MessageText_18A
dw MessageText_18B
dw MessageText_18C
dw MessageText_18D
dw MessageText_18E
dw MessageText_18F
dw MessageText_190
dw MessageText_191
dw MessageText_192
dw MessageText_193
dw MessageText_194
dw MessageText_195
dw MessageText_196
dw MessageText_197
dw MessageText_198
dw MessageText_199
dw MessageText_19A
dw MessageText_19B
dw MessageText_19C
dw MessageText_19D
dw MessageText_19E
dw MessageText_19F
dw MessageText_1A0
dw MessageText_1A1
dw MessageText_1A2
dw MessageText_1A3
dw MessageText_1A4
dw MessageText_1A5
dw MessageText_1A6
dw MessageText_1A7
dw MessageText_1A8
dw MessageText_1A9
dw MessageText_1AA
dw MessageText_1AB
dw MessageText_1AC
dw MessageText_1AD
dw MessageText_1AE
dw MessageText_1AF
dw MessageText_1B0
dw MessageText_1B1
dw MessageText_1B2
dw MessageText_1B3
dw MessageText_1B4
dw MessageText_1B5
dw MessageText_1B6
dw MessageText_1B7
dw MessageText_1B8
dw MessageText_1B9
dw MessageText_1BA
dw MessageText_1BB
dw MessageText_1BC
dw MessageText_1BD
dw MessageText_1BE
dw MessageText_1BF
dw MessageText_1C0
dw MessageText_1C1
dw MessageText_1C2
dw MessageText_1C3
dw MessageText_1C4
dw MessageText_1C5
dw MessageText_1C6
dw MessageText_1C7
dw MessageText_1C8
dw MessageText_1C9
dw MessageText_1CA
dw MessageText_1CB
dw MessageText_1CC
dw MessageText_1CD
dw MessageText_1CE
dw MessageText_1CF
dw MessageText_1D0
dw MessageText_1D1
dw MessageText_1D2
dw MessageText_1D3
dw MessageText_1D4
dw MessageText_1D5
dw MessageText_1D6
dw MessageText_1D7
dw MessageText_1D8
dw MessageText_1D9
dw MessageText_1DA
dw MessageText_1DB
dw MessageText_1DC
dw MessageText_1DD
dw MessageText_1DE
dw MessageText_1DF
dw MessageText_1E0
dw MessageText_1E1
dw MessageText_1E2
dw MessageText_1E3
dw MessageText_1E4
dw MessageText_1E5
dw MessageText_1E6
dw MessageText_1E7
dw MessageText_1E8
dw MessageText_1E9
dw MessageText_1EA
dw MessageText_1EB
dw MessageText_1EC
dw MessageText_1ED
dw MessageText_1EE
dw MessageText_1EF
dw MessageText_1F0
dw MessageText_1F1
dw MessageText_1F2
dw MessageText_1F3
dw MessageText_1F4
dw MessageText_1F5
dw MessageText_1F6
dw MessageText_1F7
dw MessageText_1F8
dw MessageText_1F9
dw MessageText_1FA
dw MessageText_1FB
dw MessageText_1FC
dw MessageText_1FD
dw MessageText_1FE
dw MessageText_1FF
dw MessageText_200
dw MessageText_201
dw MessageText_202
dw MessageText_203
dw MessageText_204
dw MessageText_205
dw MessageText_206
dw MessageText_207
dw MessageText_208
dw MessageText_209
dw MessageText_20A
dw MessageText_20B
dw MessageText_20C
dw MessageText_20D
dw MessageText_20E
dw MessageText_20F
dw MessageText_210
dw MessageText_211
dw MessageText_212
dw MessageText_213
dw MessageText_214
dw MessageText_215
dw MessageText_216
dw MessageText_217
dw MessageText_218
dw MessageText_219
dw MessageText_21A
dw MessageText_21B
dw MessageText_21C
dw MessageText_21D
dw MessageText_21E
dw MessageText_21F
dw MessageText_220
dw MessageText_221
dw MessageText_222
dw MessageText_223
dw MessageText_224
dw MessageText_225
dw MessageText_226
dw MessageText_227
dw MessageText_228
dw MessageText_229
dw MessageText_22A
dw MessageText_22B
dw MessageText_22C
dw MessageText_22D
dw MessageText_22E
dw MessageText_22F
dw MessageText_230
dw MessageText_231
dw MessageText_232
dw MessageText_233
dw MessageText_234
dw MessageText_235
dw MessageText_236
dw MessageText_237
dw MessageText_238
dw MessageText_239
dw MessageText_23A
dw MessageText_23B
dw MessageText_23C
dw MessageText_23D
dw MessageText_23E
dw MessageText_23F
dw MessageText_240
dw MessageText_241


MessageText_00:
db "KING!", !NL
db "IT IS SAID THAT", !NL
db "THE PRINCESS", !NL
db $E0, $06 : db " HAS BEEN", !NL
db "CAPTURED BY THE", !NL
db "DARKNESS?", !NL
db "IS IT TRUE?!"
db $FF

MessageText_01:
db "I HAVE ALWAYS", !NL
db "THOUGHT SHE WAS", !NL
db "DIFFERENT...", !NL
db "I NEVER THOUGHT", !NL

db "SHE WOULD DO", !NL
db "SOMETHING CRAZY", !NL
db "LIKE THIS...", !SWEAT 
db $FF



MessageText_02:
db !SWEAT, "I KNEW YOU", !NL
db "WOULD SAY", !NL
db "SOMETHING", !NL
db "LIKE THAT...", !NL

db "BUT THERE ARE", !NL
db "MANY PEOPLE IN", !NL
db "THE WORLD WHO", !NL
db "HAVE HERO BLOOD.", !SWEAT, !NL

db "I DONT BELIEVE", !NL
db "THAT I HAVE THE", !NL
db "HERO BLOOD...", !NL
db "IN THE PAST, I", !NL

db "USED TO LOSE", !NL
db "EVERY TIME I", !NL
db "FOUGHT WITH", !NL
db !LEFINA, "..."

db $FF

MessageText_03:
db "HMM... WHAT" : db $FE 
db "SHOULD I DO..." : db $FE 
db $FE 
db $FE 
db "I AM SCARED..." : db $FE 
db $FE 
db $FE 
db "I CANT HELP" : db $FE 
db "THINKING ABOUT IT" : db $FE 
db "I HAVE NO CHOICE" : db $FE
db "LETS GO TO BED"
db $FF

MessageText_04:
db "WHO IS IT!?"
db $FF

MessageText_05:
db $E0, $06 : db "!!!"
db $FF

MessageText_06:
db "BRAVE HERO...?" : db $FE
db $FE
db $FE
db $FE
db $E0, $06 : db "..." : db $FE
db $FE
db $FE
db $FE
db "CAN I TELL YOU" : db $FE
db "THE TRUTH...?" : db $FE
db "EVEN IF YOU TELL" : db $FE
db "ME THIS I DONT" : db $FE
db "KNOW WHAT TO DO." : db $FE
db $FE
db $FE
db $FE
db "I AM POWERLESS" : db $FE
db $FE
db $FE
db $FE
db "THE KING" : db $FE
db "INVITED ME TO" : db $FE
db "THE CASTLE BUT" : db $FE
db "THE TRUTH IS, I" : db $FE
db "DID NOT WANT TO" : db $FE
db "BECAUSE I AM" : db $FE
db "SCARED..."
db $FF

MessageText_07:
db "AAH, " : db $E0, $06 : db "!!!" : db $FE
db $FE
db $FE
db $FE
db "WHAT WAS THAT!!!" : db $FE

db $FE
db $FE
db $FE
db $E0, $06 : db "...I..."
db $FF

MessageText_08:
db "KING...!" : db $FE
db "I AM SCARED" : db $FE
db "BUT I WOULD" : db $FE
db "LIKE TO GO" : db $FE
db "TODAY."
db $FF

MessageText_09:
db "ARE YOU..." : db $FE
db "ARE YOU ASKING" : db $FE
db "ME TO GO?" : db $FE
db $FE
db $FE
db $FE
db "...UGH" : db $D2, $3F : db $FE
db "I UNDERSTAND" : db $D2, $3E
db $FF

MessageText_0A:
db "I... WILL GO...!" : db $FE
db "...ACTUALLY I AM" : db $FE
db "SCARED... BUT," : db $FE
db "I HAVE TO DO IT." : db $FE

db "IT WOULD BE" : db $FE
db "EASIER IF I JUST" : db $FE
db "RAN AWAY, BUT" : db $FE
db "THEN I WOULD" : db $FE

db "ALWAYS HAVE THAT" : db $FE
db "FEAR IN MY HEART" : db $FE
db "AND THAT IS NOT" : db $FE
db "GOOD, SO I MUST" : db $FE

db "TAKE ALL MY" : db $FE
db "COURAGE AND" : db $FE
db "FEED MY HEART" : db $FE
db "WITH IT!"
db $FF


MessageText_0B:
db "I AM THE HERO" : db $FE
db "OF THE EARTH" : db $FE
db $E0, $00 : db "!" : db $FE
db $FE
db "OH! I AM NOT" : db $FE
db "AFRAID OF YOU!" : db $FE
db "I AM A HERO!" : db $FE
db $FE

db $FE
db $FE
db "I WILL" : db $FE
db "SAVE ! " : db $E0, $2D

db $FF

MessageText_0C:
db "I WILL FIGHT!!"
db $FF

MessageText_0D:
db "WHEN THAT TIME" : db $FE
db "COME I WILL COME" : db $FE
db "AND GET YOU...!"
db $FF

MessageText_0E: 
db !MINEA, " WAS" : db $FE
db "KIDNAPPED!" : db $FE
db !NL
db !NL
db "?...WHY DID" : db $FE
db "SNOWMANS COME" : db $FE
db "ALL THE WAY HERE" : db $FE
db "THAT TRIBE IS" : db $FE
db "NOT ABLE TO" : db $FE
db "SURVIVE UNLESS" : db $FE
db "ITS A COLD PLACE" : db $FE

db "AH, ANYWAY" : db $FE
db "LETS GO TO THE" : db $FE
db "LAND OF SNOW" : db $FE
db "I HAVE TO HELP" : db $FE
db !MINEA, " QUICKLY!"
db $FF

MessageText_0F:
db "OH SHIT!" : db $D2, $3F : db $FE
db "IT WAS A TRAP!"
db $FF

MessageText_10:
db "WHAT? SOMETHING" : db $FE
db "IS WRONG...!" : db $FE
db "THIS IS NOT LIZ" : db $FE
db $FE : db $FE
db $FE : db $FE
db $FE : db $FE
db "UH" : db $D2, $3F : db "HELLO?"
db $FF

MessageText_11:
db "MIRROR OF LIGHT?" : db $FE
db "THERE IT IS!"
db $FF

MessageText_12:
db $E0, $01 : db " IS" : db $FE
db "MISSING !! WHERE" : db $FE
db "DID SHE GO..."
db $FF

MessageText_13:
db "THE FOREST..." : db $FE
db "HAS DISAPPEARED."
db $FF

MessageText_14:
db "WHAT ARE YOU" : db $FE
db "TALKING ABOUT!" : db $FE
db "YOU ARE HURT BAD" : db $FE
db "I WILL GO INTO" : db $FE

db "THE WELL MYSELF" : db $FE
db "TAKE CARE OF" : db $FE
db "YOURSELF AND" : db $FE
db "WAIT FOR ME!"
db $FF

MessageText_15:
db "NO! NO!, SIR!" : db $FE
db "MY NAME IS " : db $E0, $00 : db $FE
db "THESE ARE MY" : db $FE
db "MY FRIENDS"
db $FF

MessageText_16:
db "EH?, MR.WAGNER," : db $FE
db "THE INVENTOR?" : db $FE
db "...HE WAS NOT A" : db $FE
db "HUMAN BEING?"
db $FF

MessageText_17:
db "THEN HOW...?"
db $FF

MessageText_18:
db "REWARD...?"
db $FF

MessageText_19:
db "OKAY. MR. WAGNER" : db $FE
db "PLEASE WAIT."
db $FF

MessageText_1A:
db "IT IS TOO" : db $FE
db "DIFFICULT FOR ME" : db $FE
db "TO UNDERSTAND..."
db $FF

MessageText_1B:
db "WAAAAAAH!!!"
db $FF

MessageText_1C:
db "WHAT DID YOU SAY"
db $FF

MessageText_1D:
db "HMM, I FEEL THE" : db $FE
db "SAME WAY." : db $FE
db "BUT WE CANNOT" : db $FE 
db "LET THE PHOENIX" : db $FE 
db "DOWN..." : db $FE 
db "LETS GO..."
db $FF

MessageText_1E:
db "THAT IS SCARY..." : db $FE
db "BUT I HAVE BEEN" : db $FE
db "THINKING..." : db $FE
db "WITHOUT US, I" : db $FE

db "DONT THINK THE" : db $FE
db "MERMAIDS WILL" : db $FE
db "EVER LEARN TO" : db $FE
db "APPRECIATE THE" : db $FE

db "PEOPLE OF LIGHT." : db $FE
db "BUT,TORI...?" : db $FE
db "YOU ARE A DEMON" : db $FE
db "OF DARKNESS, AND" : db $FE

db "IF YOU GET" : db $FE
db "SCARED, YOU CAN" : db $FE
db "TURN BACK."



db $FF

MessageText_1F:
db "WHAT!! BUT...!"
db $FF

MessageText_20:
db "I AM " : db $E0, $00 : db " I" : db $FE
db "CAME HERE AT THE" : db $FE
db "REQUEST OF THE" : db $FE
db "VILLAGE ELDER" : db $FE
db "THE VILLAGERS" : db $FE
db "ARE SCARED OF" : db $FE
db "YOU..."
db $FF

MessageText_21:
db "THE TREE IS" : db $FE
db "STILL DYING..." : db $FE
db "WHY?"
db $FF

MessageText_22:
db "AH! LOOK THE" : db $FE
db "TREE OF LIFE!!!"
db $FF

MessageText_23:
db $E0, $02 : db "? AFTER" : db $FE
db "WHAT SHE SAID TO" : db $FE
db "YOU THE OTHER" : db $FE
db "DAY... YOU" : db $FE

db "STILL WANT TO" : db $FE
db "HELP HER?"
db $FF

MessageText_24:
db "GIVE US BACK" : db $FE
db $E0, $06 : db " !!"
db $FF


MessageText_25:
db "WHAT HAPPENED..?"
db $FF

MessageText_26:
;「うっ...
db "UGH..."
db $FF

MessageText_27:
db "I WONDER..." : db $FE
db "I WONDER IF MY" : db $FE
db "POWER IS THIS" : db $FE
db "MUCH... I COULD" : db $FE

db "NOT DO ANYTHING" : db $FE
db "IN FRONT OF" : db $FE
db $E0, $06 : db "! I HAVE" : db $FE
db "WORKED SO HARD" : db $FE

db "UNTIL NOW..."
db $FF

MessageText_28:
db "I AM... I AM SO" : db $FE
db "SICK !!!"
db $FF

MessageText_29:
db "THE SWORD OF THE" : db $FE
db "EARTH... I HAVE" : db $FE
db "HEARD ABOUT IT I" : db $FE
db "DONT KNOW WHERE" : db $FE

db "IT IS."
db $FF

MessageText_2A:
db "I DID NOT THINK" : db $FE
db "YOU WERE NOT" : db $FE
db "WORTHY HERO!"
db $FF

MessageText_2B:
db "THIS IS THE..." : db $FE
db "SWORD OF" : db $FE
db "THE EARTH... IT" : db $FE
db "IS IN BAD SHAPE!"
db $FF

MessageText_2C:
db "..?THE LETTERING" : db $FE
db "IS SCRIBBLED ON" : db $FE
db "THE WALL."
db $FF

MessageText_2D:
db "HEY, WAIT!!!"
db $FF

MessageText_2E:
db "GIVE US BACK" : db $FE
db $E0, $03 : db " !!"
db $FF

MessageText_2F:
db "OOPS, BEFORE" : db $FE
db "THAT...!"
db $FF

MessageText_30:
db $E0, $03, "!!!"
db $FF

MessageText_31:
db "ITS DANGEROUS!!!" : db $FE
db "LETS GET OUT" : db $FE
db "OF HERE!"
db $FF

MessageText_32:
db "AAAH!" : db $FE
db !KOTARO, " STOLE" : db $FE
db "THE SWORD OF" : db $FE
db "THE EARTH! WE" : db $FE

db "HAVE TO CHASE" : db $FE
db "HIM!  KILL THE" : db $FE
db "DRAGON? THAT IS" : db $FE
db "IMPOSSIBLE..WHY?"
db $FF

MessageText_33:
db "......" : db !NL
db !NL
db !NL
db !NL
db "SERYU, NO" : db !NL
db "EVERYONE TOOK" : db !NL
db "THE SWORD IN" : db !NL
db "THEIR HAND..." : db !NL
db "THEY COULD NOT" : db !NL
db "PULL IT OFF."
db $FF

MessageText_34:
db $E0, $00 : db " ITS OKAY" : db $FE
db "FULFILL YOUR" : db $FE
db "MISSION...!"
db $FF

MessageText_35:
db "OKAY, WELL,THERE" : db $FE
db "IS ONE MORE" : db $FE
db "POWER IN ", !LEFINA : db $FE
db "MIND, IF ", !LEFINA : db $FE

db "IS IN THE HANDS" : db $FE
db "OF THE EVIL" : db $FE
db "DRAGON..." : db $FE
db "WHAT THE HELL" : db $FE

db "ARE WE GOING TO" : db $FE
db "DO! ... DO WE" : db $FE
db "HAVE A CHANCE?"
db $FF

MessageText_36:
db "I WONT LET THAT" : db $FE
db "HAPPEN!, I WILL" : db $FE
db "RISK MY LIFE" : db $FE
db "WITH THIS SWORD." : db $FE
db "WITH THIS SWORD" : db $FE
db "... I WILL KILL" : db $FE
db "YOU..."
db $FF

MessageText_37:
db "ITS SO GLOOMY!!" : db $FE
db "I CANT SEE, WHAT" : db $FE
db "ON EARTH SHOULD" : db $FE
db "I DOOO ?!"
db $FF

MessageText_38:
db "EVERYONE IN THE" : db $FE
db "WORLD...! GIVE" : db $FE
db "ME THE COURAGE!!"
db $FF

MessageText_39:
db "HOLD ON TO ME!" : db $FE
db "LETS GET OUT" : db $FE
db "OF HERE!!"
db $FF

MessageText_3A:
db "LETS GO HOME!!"
db $FF

MessageText_3B:
db "IS THE POWER OF" : db $FE
db "THE DEMON DRAGON" : db $FE
db "SO STRONG THAT" : db $FE
db "THE POWER OF THE" : db $FE
db "GODDESS CANNOT" : db $FE
db "BE USED...!!"
db $FF

MessageText_3C:
db "HOW DO I..." : db $FE
db "HOW DO WE DO IT?"
db $FF

MessageText_3D:
db "ALRIGHT!" : db $FE
db "LETS GO!"
db $FF

MessageText_3E:
db "WHAT A THING TO" : db $FE
db "SAY!,", !TOLI, " WAS" : db $FE
db "BULLIED BY YOU," : db $FE
db "BUT WHEN HE" : db $FE

db "FOUND OUT YOU" : db $FE
db "WERE IN TROUBLE" : db $FE
db "HE FOUGHT LIKE" : db $FE
db "HELL TO SAVE YOU" : db $FE

db "THINK ABOUT ", !TOLI : db $FE
db "FEELINGS A" : db $FE
db "LITTLE...!"
db $FF

MessageText_3F:
db "MR. NOVA! I HAVE" : db $FE
db "COME TO ASK YOU" : db $FE
db "SOMETHING..."
db $FF

MessageText_40:
db "ACTUALLY THIS IS" : db $FE
db "ABOUT THE SWORD" : db $FE
db "OF THE EARTH."
db $FF

MessageText_41:
db "SERYU, I WANT TO" : db $FE
db "ASK..." : db $FE
db $FE
db $FE
db "WHY DONT PEOPLE" : db $FE
db "TALK TO ME?"
db $FF

MessageText_42:
db "BEEP! BEEP! I" : db $FE
db "HAVE NOT DONE" : db $FE
db "ANYTHING BUT" : db $FE
db "I CANNOT USE" : db $FE
db "MY WINGS!"
db $FF

MessageText_43:
db "WOW YOU ARE SO" : db $FE
db "STRONG I HAVE" : db $FE
db "DECIDED I AM" : db $FE
db "COMING WITH YOU!" : db $FE
db $FE
db "THIS! A PROOF" : db $FE
db "OF MY FRIENDSHIP" : db $FE
db "YOU CAN HAVE IT!" : db $FE
db "THE CHIEF OF THE" : db $FE
db "FAIRY GAVE IT TO" : db $FE
db "ME." : db $FE
db $FE
db $FE
db "WHEN YOU MEET" : db $FE
db "A GREAT PERSON" : db $FE
db "IN THE FUTURE" : db $FE
db "YOU CAN USE THIS"
db $FF

MessageText_44:
db !NAME, ", WERE" : db $FE
db "GOING TO GO GET" : db $FE
db !YAN, " OUT OF THERE" : db $FE
db "WHILE WE CAN!"
db $FF

MessageText_45:
db !NAME, " ", !YAN, " I WILL" : db $FE
db "USE THE CLOAK OF" : db $FE
db "LIGHT! GET OUT" : db $FE
db "OF THE WAY!"
db $FF

MessageText_46:
db "KEY DONT GET" : db $FE
db "STUCK HERE!" : db $FE
db "COME ON!"
db $FF

MessageText_47:
db "WHEE!" : db $D2, $3F : db "I FOUND" : db $FE
db "YOU, WE GOT" : db $FE
db "SEPARATED WHEN" : db $FE
db "YOU FELL OFF!" : db $FE

db "I HAVE BEEN" : db $FE
db "LOOKING FOR YOU" : db $FE
db "EVERYWHERE!" : db $D2, $3E : db $FE
db "HUH?..."

db $FF

MessageText_48:
db "BEEP BEEP" : db $FE
db "I AM STUCK" : db $FE
db "SNIFF" : db $D2, $3E

db $FF

MessageText_49:
db "AH! GET ME OUT!"
db $FF

MessageText_4A:
db "PIOU" : db $D2, $40 : db $FE
db "IM SCARED!" : db $FE
db $FE
db $FE

db "AFTER WE PART, I" : db $FE
db "WENT TO CAINUN" : db $FE
db "VILLAGE, AND ALL" : db $FE
db "OF A SUDDEN SOME" : db $FE

db "WEIRD GUY CAME" : db $FE
db "AND TORE THE" : db $FE
db "VILLAGE TO" : db $FE
db "PIECES!!" : db $FE

db "I TRIED TO FIGHT" : db $FE
db "BUT IT DID NOT" : db $FE
db "WORK OUT" : db $FE
db "MY WINGS ARE" : db $FE

db "FALLING APART." : db $FE
db "AH!!" : db $FE
db $FE
db $FE
db "THAT DEMON FROM" : db $FE
db "THE OTHER DAY!" : db $FE
db "I HATE YOU!" : db $FE
db "GET AWAY FROM ME"

db $FF

MessageText_4B:
db "UGH... REALLY?" : db $FE
db $E0, $02 : db "?" : db $FE
db "WOW! " : db $E0, $02 : db "!" : db $FE
db $E0, $02 : db " IS SUCH A" : db $FE

db "NICE PERSON!" : db $FE
db "I AM SORRY FOR" : db $FE
db "SAYING BAD THING" : db $FE
db "TO YOU THE OTHER" : db $FE
db "DAY... WOAH!"

db $FF

MessageText_4C:
db "YEAH... SNIF..." : db $FE
db "OKAY..." : db $FE
db "SNIF... SNIF...." : db $FE
db "I AM SORRY...!" : db $FE
db "OKAY, BACK" : db $FE
db "TO FARAS."
db $FF

MessageText_4D: ; TODO? unsure
db "WHAT REALLY?" : db $FE
db "THANK YOU!" : db $FE
db "BUT I HAVE" : db $FE
db "FORGOTTEN" : db $FE
db "EVERYTHING THAT" : db $FE
db "HAPPENED BEFORE."
db $FF

MessageText_4E:
db "OH !" : db $E0, $00 : db "!" : db $FE
db "THATS WHAT I AM" : db $FE
db "TALKING ABOUT!" : db $FE
db $FE 
db "TO TELL THE" : db $FE
db "TRUTH, I WAS" : db $FE
db "I WAS TERRIBLY" : db $FE
db "REJECTED BY ALL" : db $FE

db "THE FAIRIES" : db $FE
db "BECAUSE I WENT" : db $FE
db "AGAINST MONSTERS" : db $FE
db "WITH YOU! HEHE" : db $D2, $41
db $FF

MessageText_4F:
db "IT IS OVER HERE!" : db $FE
db "THE FAIRY WINGS" : db $FE
db "I GAVE YOU, I" : db $FE
db "HAVE A FEELING" : db $FE

db "THEY WILL BE" : db $FE
db "USED TO FIGHT A" : db $FE
db "A CREATURE THAT" : db $FE
db "LOOK LIKE A COW!"
db $FF

MessageText_50:
db "THE DARKNESS IS" : db $FE
db "HAUNTING US HERE" : db $FE
db "AND THERE... IF" : db $FE
db "THERES ANYTHING" : db $FE

db "I CAN DO I WILL" : db $FE
db "DO IT."
db $FF

MessageText_51:
db "I AM SCARED."
db $FF

MessageText_52:
db "YOOHOO!" : db $FE
db "HOW ARE YOU?"
db $FF

MessageText_53:
db "WAH.. THAT HURT!" : db $FE 
db "... MY NAME IS" : db $FE 
db !TOLI, ". I AM A" : db $FE 
db "DEMON MAGICIAN." : db $FE 

db "...MY MASTER," : db $FE 
db "MR.LI HAS MOVED" : db $FE 
db "TO MAGIC ISLAND" : db $FE 
db "AND WHILE I WAS" : db $FE 

db "ON MY WAY TO SEE" : db $FE 
db "HIM, I ENDED UP" : db $FE 
db "HERE... " : db $D2, $3E : db $FE 
db "THIS FOREST IS"  : db $FE 

db "AN ILLUSION" : db $FE 
db "CREATED BY LIZ..." : db $FE 
db "AN ILLUSION WITH" : db $FE 
db "NO WAY OUT..." : db $FE 

db "WE NEED TO DO" : db $FE 
db "SOMETHING ABOUT" : db $FE 
db "LIZ, OR WE WILL" : db $FE 
db "NEVER GET OUT..." : db $FE 

db "I HEARD RUMORS" : db $FE 
db "ABOUT THE MIRROR" : db $FE 
db "OF LIGHT." : db $FE 
db "WISH I HAD IT."

db $FF

MessageText_54:
db "WHAT? REALLY?!" : db $FE
db "YOU KNOW IT IS" : db $FE
db "ALSO CALLED THE" : db $FE
db "MIRROR OF TRUTH," : db $FE

db "RIGHT?, WE ARE" : db $FE
db "GONNA USE IT..." : db $FE
db "WHEREVER WE CAN." : db $FE
db $FE 

db "THEN LIZ ILLUSION" : db $FE
db "WILL DISAPPEAR..." : db $FE
db "I AM SURE WE CAN" : db $FE
db "GET OUT OF HERE!" : db $FE

db "HEY!" : db $FE
db "WILL YOU TAKE" : db $FE
db "ME WITH YOU ?"

db $FF

MessageText_55:
db "WHAT ARE YOU" : db $FE
db "DOING! WE ARE" : db $FE
db "IN LIZ ILLUSION" : db $FE
db "WHEN SHE ENTERED" : db $FE

db "THIS FOREST, I" : db $FE
db "AM SURE SHE" : db $FE
db "GOT SEPARATED" : db $FE
db "FROM HER REAL" : db $FE

db "FRIENDS! GO FOR" : db $FE
db "IT! I WILL FIGHT" : db $FE
db "HER TOO!"
db $FF

MessageText_56:
db "SORRY. IT IS MY" : db $FE
db "BECAUSE OF ME" : db $FE
db "BUT I AM YOUR" : db $FE
db "ALLY NOW. " : db $D2, $3E : db $FE

db "JUST BECAUSE I" : db $FE
db "AM A DEMON, IT" : db $FE
db "DOES NOT MEAN I" : db $FE
db "AM A BAD GUY!!!" : db $FE

db "...SO I AM SORRY" : db $FE
db "BUT CAN YOU GO" : db $FE
db "TO THE MAGIC" : db $FE
db "ISLAND WITH ME?" : db $FE

db "I WANT TO SEE" : db $FE
db "MASTER LI SO" : db $FE
db "HE CAN TEACH ME" : db $FE
db "DEMON POWERS." : db $FE

db "PLEASE, THE" : db $FE
db "MAGIC ISLAND IS" : db $FE
db "AN ISLAND IN THE" : db $FE
db "MIDDLE OF A LAKE"




db $FF

MessageText_57:
db "AS A MATTER OF" : db $FE
db "FACT...MR.WAGNER" : db $FE
db "I WOULD LIKE TO" : db $FE
db "BORROW A" : db $FE

db "STAR FLASK" : db $FE
db "I WILL NEVER USE" : db $FE
db "IT FOR ANYTHING" : db $FE
db "WRONG,BUT I HAVE" : db $FE

db "TO USE IT TO GET" : db $FE
db "TO THE MAGIC" : db $FE
db "ISLAND. PLEASE!"
db $FF

MessageText_58:
db !NAME, " WHAT DO" : db $FE
db "WE DO ? I WONDER" : db $FE
db "IF IT IS REALLY" : db $FE
db "NECESSARY TO GO" : db $FE
db "THIS FAR..."

db $FF

MessageText_59:
db !NAME, " ARE YOU OK?" : db $FE
db $FE
db !NAME, " ARE YOU" : db $FE
db "AFRAID ?"
db $FF

MessageText_5A:
db "WHAT! NO! I WILL" : db $FE
db "GO WITH YOU!" : db $FE
db "I MAY BE A DEMON" : db $FE
db "OF DARKNESS BUT," : db $FE

db "I HAVE A HEART" : db $FE
db "OF LIGHT!!!"
db $FF

MessageText_5B:
db "WAIT A MINUTE!" : db $FE
db "I HEAR SOMETHING" : db $FE
db "LETS GO THERE" : db $FE
db "QUICKLY!"
db $FF

MessageText_5C:
db "ITS " : db $E0, $01 : db "!!" : db $FE
db "SHE MUST BE" : db $FE
db "TRAPPED, WE HAVE" : db $FE
db "TO GET HER OUT" : db $FE
db "THERE!!"
db $FF

MessageText_5D:
db "ITS OBVIOUS WE" : db $FE
db "ARE FRIEND NOW" : db $FE
db "RIGHT?" : db $FE
db "LETS GO!"
db $FF

MessageText_5E:
db "THIS MAGIC....." : db $FE
db $FE
db $FE
db $FE
db "NO WAY!" : db $FE
db $FE
db $FE
db $FE
db "IS THAT HIM?!"

db $FF

MessageText_5F:
db "I DONT... I DONT" : db $FE
db "WANT TO!" : db $FE
db "I AM A DEMON..." : db $FE
db "BUT DEMONS AND" : db $FE

db "HUMANS MUST LIVE" : db $FE
db "TOGETHER!" : db $FE

db $FE
db $FE

db "WHEN I WAS YOUNG" : db $FE
db "YOU ADOPTED ME," : db $FE
db "RAISED ME. YOU" : db $FE
db "ALWAYS TOLD ME.." : db $FE

db "HUMANS LEARN" : db $FE
db "MAGIC FROM BOOKS" : db $FE
db "AND DEMONS LEARN" : db $FE
db "IT FROM BLOOD." : db $FE

db "ONE DAY WE WILL" : db $FE
db "UNDERSTAND EACH" : db $FE
db "OTHER..I THOUGHT" : db $FE
db "YOU WERE MY" : db $FE

db "MASTER... WHY.." : db $FE
db "WHY HAVE YOU" : db $FE
db "CHANGED!?" : db $FE
db $FE

db "YOU ARE WRONG" : db $FE
db "NOW! PLEASE!" : db $FE
db "YOU ARE THE ONE" : db $FE
db "WHO SHOULD" : db $FE

db "CORRECT YOUR" : db $FE
db "WRONG THINKING!"


db $FF

MessageText_60:
db "MASTER... LI...!"
db $FF

MessageText_61:
db !NAME, "... I KNOW" : db $FE
db "HOW YOU FEEL.BUT" : db $FE
db "NOW IS NOT THE" : db $FE
db "TIME TO BE SAD." : db $FE

db "... I WANT TO" : db $FE
db "CRY OUT LOUD TOO" : db $FE
db $FE
db $FE

db "BUT LETS DO OUR" : db $FE
db "BEST. THE REAL" : db $FE
db "COURAGE... REAL" : db $FE
db "BRAVERY... MUST" : db $FE

db "NOT BE" : db $FE
db "DISCOURAGED." : db $FE
db "YOU SAID ITS OUR" : db $FE
db "MISSION TO USE" : db $FE

db "OUR LIVES FOR" : db $FE
db "OURSELVES,RIGHT?" : db $FE
db "IF YOU DONT USE" : db $FE
db "IT NOW YOU WILL" : db $FE

db "REGET IT FOR A" : db $FE
db "LONG TIME." : db $FE
db "COME ON " : db $E0, $00 : db "!"
db $FF

MessageText_62:
db "I WANT TO GO" : db $FE
db "BACK AND CLEAN" : db $FE
db "UP MR. LI ROOM" : db $FE
db "HE WAS VERY" : db $FE

db "IMPORTANT TO ME" : db $FE
db "I WANT HIM TO" : db $FE
db "BE MY FRIEND" : db $FE
db "AGAIN!"
db $FF

MessageText_63:
db "HEY HOW ARE YOU?"
db $FF

MessageText_64:
db "THANK YOU BUT" : db $FE
db "I FORGOT THE" : db $FE
db "DETAILS..." : db $D2, $3E : db $FE
db "IS IT OKAY?SORRY"
db $FF

MessageText_65:
db "HEY! YOU GOT IT!" : db $FE
db "GOOD JOB " : db $E0, $00 : db $FE
db "I WISH I COULD" : db $FE
db "HAVE BEEN THERE!"
db $FF

MessageText_66:
db "AH!, I HAVE BEEN" : db $FE
db "WANTING TO COME" : db $FE
db "SEE YOU EVER" : db $FE
db "SINCE I HEART" : db $FE

db "YOU WENT TO THE" : db $FE
db "MAGIC ISLAND!" 
db $FF

MessageText_67:
db "THE FIRST POWER" : db $FE
db "IS THE POWER OF" : db $FE
db "THE ROCK." : db $FE
db "WE HAVE TO MAKE" : db $FE

db "THE ROCK OF" : db $FE
db "KNOWLEDGE AND" : db $FE
db "GET THE GODDESS" : db $FE
db "TO COOPERATE" : db $FE

db "WITH US!"
db $FF

MessageText_68:
db "COME ON LETS GO" : db $FE
db "TO THE CASTLE OF" : db $FE
db "DARKNESS AND" : db $FE
db "SAVE PRINCESS" : db $FE
db !LEFINA, "!"
db $FF

MessageText_69:
db "!!! CRYING!" : db $FE
db "SOMEBODY..." : db $FE
db "IS CRYING!!!"
db $FF

MessageText_6A:
db "... OH..." : db $FE
db "MAYBE WE SHOULD" : db $FE
db "NOT HAVE FOUGHT.."
db $FF

MessageText_6B:
db !NYMPHIE, "!!!"
db $FF

MessageText_6C:
db "...STOP CRYING.." : db $FE
db "DONT CRY ANYMORE" : db $FE
db "I WANTED YOU TO" : db $FE
db "SEE THAT EVEN" : db $FE

db "DEMONS OF THE" : db $FE
db "DARKNESS CAN BE" : db $FE
db "GOOD GUYS..." : db $FE
db "..." : db $E0, 01 : db "?" : db $FE

db "GO BACK TO THE" : db $FE
db "VILLAGE OF FARAS" : db $FE
db "NOW AND HAVE A" : db $FE
db "GOOD NIGHT OF" : db $FE

db "SLEEP. COME ON" : db $FE
db "DONT CRY ANYMORE"

db $FF

MessageText_6D:
db "THAT TREASURE" : db $FE
db "CHEST..."
db $FF

MessageText_6E:
db "I HAVE BEEN" : db $FE
db "WAITING FOR YOU" : db $FE
db "I AM THE" : db $FE
db "DAUGHTER OF" : db $FE

db "THE KING OF" : db $FE
db "DARKNESS." : db $FE
db $FE
db $FE

db "DARKNESS AND" : db $FE
db "LIGHT ARE" : db $FE
db "BLESSINGS." : db $FE
db "THE TRUTH IS" : db $FE

db "THEY NEED EACH" : db $FE
db "OTHER AND SHOULD" : db $FE
db "NOT BE DISTURBED" : db $FE
db "DARKNESS IS THE" : db $FE

db "PRESERVER... MY" : db $FE
db "FATHER FORGOT" : db $FE
db "THAT AND FOUGHT" : db $FE
db "HOWEVER THE" : db $FE

db "CULPRIT BEHIND" : db $FE
db "ALL THAT IS THE" : db $FE
db "DEMON DRAGON." : db $FE
db $FE 

db "IM BEGGING YOU!" : db $FE
db "PLEASE LET MY" : db $FE
db "FATHER WAKE UP!"

db $FF

MessageText_6F:
db "WAIT A MINUTE!" : db $FE
db "WE HAVE SOME ALL" : db $FE
db "THE WAY TO THE" : db $FE
db "SWORD OF THE" : db $FE

db "EARTH, BUT WE" : db $FE
db "CANNOT TAKE IT" : db $FE
db "WITH US BECAUSE" : db $FE
db "OUR BAG IS FULL!" : db $FE

db "LETS GET RID OF" : db $FE
db "SOMETHING!"

db $FF

MessageText_70:
db "CAAAW..."
db $FF

MessageText_71:
db "THANKS TO YOU," : db $FE
db "I WAS ABLE TO" : db $FE
db "GET BACK TO MY" : db $FE
db "NORMAL SELF..." : db $FE

db "...MY FATHER IS" : db $FE
db "JUST AHEAD. HE" : db $FE
db "HAS LOST HIS" : db $FE
db "HUMAN HEART DUE" : db $FE

db "TO THE DRAGON" : db $FE
db "MAGIC."
db $FF

MessageText_72:
db "FATHER!!!"
db $FF

MessageText_73:
db "FATHER!, WHAT" : db $FE
db "HAVE YOU DONE!" : db $FE
db $FE 
db $FE 

db "HOW MANY PEOPLE" : db $FE
db "HAVE SUFFERED" : db $FE
db "BECAUSE OF THIS" : db $FE
db "BATTLE!" : db $FE

db "MOTHER DIED" : db $FE
db "BECAUSE OF YOU" : db $FE
db "FATHER..." : db $FE
db $FE

db $E0, $04 : db " MY" : db $FE
db "BROTHER LEFT US!" : db $FE
db "DO YOU" : db $FE
db "UNDERSTAND!?"
db $FF

MessageText_74:
db "FATHER, SO WHERE" : db $FE
db "IS THE PRINCESS" : db $FE
db "OF LIGHT? WE" : db $FE
db "HAVE TO HELP HER" : db $FE
db "QUICKLY!"
db $FF

MessageText_75:
db "AAH! FATHER!!"
db $FF

MessageText_76:
db "I AM COMING" : db $FE
db "WITH YOU!" : db $FE
db "WE HAVE TO HELP" : db $FE
db "MY FATHER!"
db $FF

MessageText_77: ;TODO
db "UNTIL NOW, THE" : db $FE
db "WAY TO THE" : db $FE
db "CASTLE OF THE" : db $FE
db "DRAGON HAS BEEN" : db $FE

db "BLOCKED BY THE" : db $FE
db "DARKNESS, BUT IF" : db $FE
db "WE COMBINE THE" : db $FE
db "SACRED RELICS" : db $FE

db "OF LIGHT AND" : db $FE
db "DARKNESS, THE" : db $FE
db "PASSAGE WILL" : db $FE
db "APPEAR UNDER" : db $FE

db "THE LIGHT."

db $FF

MessageText_78:
db "COME ON BRING" : db $FE
db "THE SACRED" : db $FE
db "RELICS HERE!"
db $FF

MessageText_79:
db "WAIT DONT FIGHT!"
db $FF

MessageText_7A:
db "NO! DONT FIGHT" : db $FE
db "PLEASE, LISTEN" : db $FE
db "TO THE STORY OF" : db $FE
db "THE SNOW QUEEN!"
db $FF

MessageText_7B:
db "LET US HELP YOU." : db $FE
db "SNOWBABY, IF YOU" : db $FE
db "STAY IN A WARM" : db $FE
db "PLACE FOR TOO" : db $FE

db "LONG YOU WILL" : db $FE
db "MELT..., HEY" : db $FE
db "WHY DONT YOU" : db $FE
db "TALK TO THE ROCK" : db $FE

db "OF THE KNOWLEDGE" : db $FE
db "MAYBE HE CAN" : db $FE
db "GIVE US SOME" : db $FE
db "GOOD ADVICES."
db $FF

MessageText_7C:
db "AH!"
db $FF

MessageText_7D:
db "UH...", !NAME, "...?" : db $FE
db $FE
db $FE
db $FE

db "WHAT? MY BROTHER" : db $FE
db "IS HERE NOW?"
db $FE
db $FE

db ".....MY BROTHER" : db $FE
db "DID THAT?" : db $FE
db $FE
db $FE

db "... I AM SORRY..." : db $FE
db "I WILL" : db $FE
db " GO WITH YOU..."

db $FF


MessageText_7E:
db !NAME, "... LISTEN." : db $FE
db $FE
db $FE
db $FE

db "THE OTHER TWO" : db $FE
db "POWERS" : db $FE
db "ARE HIDDEN IN" : db $FE
db "MY HEART AND" : db $FE

db "PRINCESS " : db $E0, $06 : db $FE
db "HEART." : db $FE
db "ACTUALLY..WE ARE" : db $FE
db "BOTH THE" : db $FE

db "REINCARNATIONS" : db $FE
db "OF THE GODDESS."

db $FF

MessageText_7F:
db "WHEN THE" : db $FE
db "MOONDROP TOUCHED" : db $FE
db "MY HEART" : db $FE
db "I REMEMBERED" : db $FE

db "EVERTHING"
db $FF

MessageText_80:
db "WE, GODDESSES" : db $FE
db "OF LIGHT" : db $FE
db "AND DARKNESS," : db $FE
db "HAVE DECIDED TO" : db $FE

db "MAKE THE POWER" : db $FE
db "OF LIGHT" : db $FE
db "AND DARKNESS" : db $FE
db "THE MOST" : db $FE

db "IMPORTANT" : db $FE
db "AND POWERFUL" : db $FE
db "OF ALL, SO WE" : db $FE
db "HAVE DECIDED TO" : db $FE

db "MAKE IT OUR OWN."
db $FF

MessageText_81:
db "IT IS A WAY TO" : db $FE
db "IMBUE THE POWER" : db $FE
db "OF REBIRTH IN MY" : db $FE
db "BODY AS A HUMAN" : db $FE

db "BEING,ALONG WITH" : db $FE
db "THE MEMORIES IN" : db $FE
db "MY HEART..."
db $FF

MessageText_82:
db "... A LONG TIME" : db $FE
db "PASSED." : db $FE
db $FE
db $FE

db "UP UNTIL NOW, I" : db $FE
db "HAVE BEEN IN" : db $FE
db "TROUBLE, BUT FOR" : db $FE
db "SOME REASON" : db $FE

db "PRINCESS " : db $E0, $06 : db $FE
db "WAS BORN KNOWING" : db $FE
db "EVERYTHING." : db $FE
db $FE

db "SHE HAS A BODY" : db $FE
db "THAT CAN USE THE" : db $FE
db "POWER OF A" : db $FE
db "GODDESS..."

db $FF

MessageText_83:
db "I BELIEVE THAT" : db $FE
db "THE DEMON DRAGON" : db $FE
db "KNEW ABOUT THIS" : db $FE
db "AND CAPTURED" : db $FE

db "PRINCESS " : db $E0, $06 : db "." : db $FE
db $FE
db $FE
db $FE
db "PRINCESS " : db $E0, $06 : db $FE
db "MUST HAVE BEEN" : db $FE
db "UNABLE TO USE" : db $FE
db "THE GODDESS" : db $FE

db "POWER DUE TO" : db $FE
db "THE MAGIC OF" : db $FE
db "THE DEMON DRAGON." : db $FE
db $FE

db "IF YOU DONT HELP" : db $FE
db "HER QUICKLY IT" : db $FE
db "MIGHT BE..." : db $FE
db "DANGEROUS."
db $FF

MessageText_84:
db "FIRST, LET ME" : db $FE
db "GIVE YOU POWER." : db $FE
db "THE POWER OF" : db $FE
db "DARKNESS IS THE" : db $FE

db "POWER OF THE" : db $FE
db "SHADOW OF THE" : db $FE
db "SWORD."
db $FF

MessageText_85:
db "I WILL START!!!" : db $FE
db $FE
db $FE
db $FE
db "IF I USE ALL MY" : db $FE
db "GODDESS POWER," : db $FE
db "I MAY BE ABLE" : db $FE
db "TO GET THE POWER" : db $FE

db "OF LIGHT OUT OF" : db $FE
db "PRINCESS " : db $E0, $06 : db "!" : db $FE
db "STAY BACK!"
db $FF

MessageText_86:
db "FATHER...!" : db $FE
db "BROTHER..." : db $FE
db "I WILL BE THERE!"
db $FF

MessageText_87:
db !NAME, "... FROM THE" : db $FE
db "MOMENT I HAVE" : db $FE
db "REMEMBERED THE" : db $FE
db "HEART OF A" : db $FE

db "GODDESS..." : db $FE
db "I KNEW THIS" : db $FE
db "WOULD HAPPEN..." : db $FE
db $FE

db "THE POWER OF THE" : db $FE
db "GODDESS OF THE" : db $FE
db "SWORD OF THE" : db $FE
db "EARTH IS ALL" : db $FE

db "THAT IS LEFT..." : db $FE
db "ALL THAT REMAINS" : db $FE
db "IS YOUR JUSTICE" : db $FE
db "AND COURAGE..." : db $FE

db "MY... THE POWER" : db $FE
db "OF THE LAST LIFE" : db $FE
db "TO THE" : db $FE
db "PRINCESS " : db $E0, $06 : db "!"
db $FF

MessageText_88:
db "OH BROTHER!!!"
db $FF

MessageText_89:
db "THANK YOU! " : db $E0, $06 : db "!"
db $FF

MessageText_8A:
db "THANK YOU SO" : db $FE
db "MUCH!" : db $FE
db "ITS THANKS TO" : db $FE
db "YOU GUYS THAT" : db $FE

db "I GOT TO SEE MY" : db $FE
db "BROTHER AGAIN!" : db $FE
db $FE
db $FE

db "KISS" : db $D2, $3D
db $FF

MessageText_8B:
db "RUMORS HAS IT" : db $FE
db "THAT IF WE HAVE" : db $FE
db "THE SWORD OF THE" : db $FE
db "EARTH WE MIGHT" : db $FE

db "BE ABLE TO SLAY" : db $FE
db "THE DEMON DRAGON" : db $FE
db "LETS GO NORTH TO" : db $FE
db "VILLAGE OF TES" : db $FE

db "AND REST." : db $FE
db "THE SWORD IS" : db $FE
db "CLOSE BY. MAYBE" : db $FE
db "THEY CAN TELL US" : db $FE

db "SOMETHING."
db $FF

MessageText_8C:
db "OH, I AM WORRIED" : db $FE
db "ABOUT MY FATHER" : db $FE
db "AND BROTHER...!"
db $FF

MessageText_8D:
db "THE SWORD OF THE" : db $FE
db "EARTH," : db $FE
db "IF I REMEMBER" : db $FE
db "CORRECTLY" : db $FE

db "COULD NOT BE" : db $FE
db "USED BY ITSELF" : db $FE
db "I HAVE HEARD" : db $FE
db "THE GODDESSES" : db $FE

db "WILL LEND THEIR" : db $FE
db "STRENGTH ONLY TO" : db $FE
db "THE TRUE HEROES" : db $FE
db "OF THE EARTH."
db $FF

MessageText_8E:
db "LETS TALK TO THE" : db $FE
db "ROCK" : db $FE
db "OF KNOWLEDGE." : db $FE
db "MAYBE HE CAN" : db $FE

db "GIVE US SOME" : db $FE
db "GOOD ADVICDES"
db $FF

MessageText_8F:
db "HURRY UP," : db $FE
db "SNOW BABY!"
db $FF

MessageText_90:
db "OH NO..." : db $FE
db "YOU DONT THINK" : db $FE
db "THE GODDESS IS?!"
db $FF

MessageText_91:
db "HURRY UP AND" : db $FE
db "GO TO THE" : db $FE
db "DEMON DRAGON."
db $FF

MessageText_92:
db "SO YOU ARE" : db $FE
db "THE HERO I HAVE" : db $FE
db "HEARD ABOUT, UH?" : db $FE
db $FE
db "WHAT HAVE" : db $FE
db "YOU DONE?!"
db $FF

MessageText_93:
db "I AM " : db $E0, $04 : db "!" : db $FE
db "THE BROTHER OF" : db $FE
db $E0, $03 : db "!" : db $FE
db $FE

db "I HAVE BEEN" : db $FE
db "SEARCHING FOR" : db $FE
db $E0, $03 : db " EVER SINCE" : db $FE
db "I HEARD SHE" : db $FE

db "LEFT THE CASTLE" : db $FE
db "WITH A HERO." : db $FE
db "WHEN I FINALLY" : db $FE
db "CAUGHT YOU," : db $FE

db "I SAW A DRAGON" : db $FE
db "RUNNING" : db $FE
db "AWAY WITH A" : db $FE
db "GIRL IN HIS" : db $FE

db "ARM AT THE" : db $FE
db "ENTRANCE!" : db $FE
db "THATS MY SISTER" : db $FE
db $E0, $03 : db "!"
db $FF

MessageText_94:
db "I WAS OUT" : db $FE
db "FIGHTING THE" : db $FE
db "DEMON DRAGON TO" : db $FE
db "PROTECT " : db $E0, $03 : db "!" : db $FE

db "BRINGING" : db $FE
db $E0, $03 : db " TO A" : db $FE
db "PLACE LIKE THIS" : db $FE
db "WHERE SHE KNOWS" : db $FE

db "NOTHING ABOUT!" : db $FE
db "THATS WHY I DONT" : db $FE
db "LIKE PEOPLE FROM" : db $FE
db "THE LIGHT!" : db $FE

db "LISTEN UP!," : db $FE
db "ALL OF YOU! LETS" : db $FE
db "FIND " : db $E0, $03 : db $FE
db "TOGETHER!!!"

db $FF

MessageText_95:
db "HUH? THERE IS A" : db $FE
db "MOONDROP?" : db $FE
db "HURRY UP! WE" : db $FE
db "HAVE TO CHASE" : db $FE

db "AFTER THE DRAGON" : db $FE
db "AND GET TO THE" : db $FE
db "DRAGON LAND AS" : db $FE
db "FAST AS WE CAN!"
db $FF

MessageText_96:
db "THANK GOD! IM" : db $FE
db "GLAD MY SISTER" : db $FE
db "IS OKAY!" : db $FE
db ".....HMMMM..." : db $FE

db "THE DEMON DRAGON" : db $FE
db "ALSO" : db $FE
db "USES THE SWORD" : db $FE
db "OF THE EARTH...?" : db $FE

db "I WILL TAKE THIS" : db $FE
db "FOR YOU!" : db $FE
db "I LEFT " : db $E0, $03 : db $FE
db "TO YOU!" : db $FE

db "I WILL DEFEAT" : db $FE
db "THE DEMON DRAGON" : db $FE
db "HUH!"
db $FF

MessageText_97:
db "UGH..", !NAME, "...", !NL
db "I AM SORRY", !NL
db "I TOOK THE SWORD", !NL
db !NL

db "I TRIED TO GO TO", !NL
db "DRAGON ALONE...", !NL
db "IT DID NOT WORK.", !NL
db !NL
db "I WAS JUST", !NL
db "TRYING TO", !NL
db "PROTECT MY", !NL
db "SISTER.", !NL

db "IF I HAD THE", !NL
db "POWER...", !NL
db "I THOUGHT", !NL
db "I COULD KILL IT", !NL

db "EVEN WITHOUT THE", !NL
db "POWER OF THE", !NL
db "SWORD OF THE", !NL
db "EARTH...", !NL

db "AND WHEN HE", !NL
db "WOULD BE GONE", !NL
db "PEACE WOULD", !NL
db "RETURN!...", !NL

db "I CANT MOVE", !NL
db "ANYMORE ", !NAME, "...", !NL
db "I WILL BE RIGHT", !NL
db "BEHIND YOU...!"
db $FF

MessageText_98:
db !NAME, "...THE...", !NL
db "DEMON DRAGON...", !NL
db "... STRONG ..."
db $FF

MessageText_99:
db "WHAT?, YOU WANT", !NL
db "TO GIVE A", !NL
db "MOON DROP TO A", !NL
db "GODDESS?", !NL

db "ALL RIGHT!", !NL
db "COME ON, ", !NL
db "LETS GO!"
db $FF

MessageText_9A:
db !NAME, "THIS IS", !NL
db "YOUR SWORD...", !NL
db "YOU MUST TAKE IT", !NL
db "WITH YOU, EVEN", !NL

db "IF YOU HAVE TO", !NL
db "GIVE UP", !NL
db "SOMETHING!"
db $FF

MessageText_9B:
db "THANKYOU! ", !NAME, "!"
db $FF

MessageText_9C:
db !MINEA, ",ARE YOU", !NL
db "DEAD TOO?", !NL
db !NL
db !NL

db "HOW DID YOU...?", !NL
db !NL, !NL, !NL

db "NO, DONT SAY", !NL
db "ANYTHING.", !NL
db "YOU ARE RIGHT", !NL
db "HERE IN FRONT OF", !NL

db "ME! THAT IS ALL", !NL
db "I NEED...!"
db $FF

MessageText_9D:
db "THANK YOU SO", !NL
db "MUCH ", !NAME, "!", !NL
db "PRINCESS ", !LEFINA, "!", !NL
db !NL

db "WE ARE GOING", !NL
db "BACK TO THE", !NL
db "CASTLE FIRST.", !NL
db !NL

db "I HAVE TO LET MY", !NL
db "FATHER KNOW AS", !NL
db "SOON", !NL
db "AS POSSIBLE!"
db $FF

MessageText_9E:
db "YOU HAVE BEEN", !NL
db "A BIG HELP...", !NL
db "THANK YOU", !NL
db "VERY MUCH!"
db $FF

MessageText_9F: ;TODO
db "NOT YET!", !NL
db "I SAID", !NL
db "GO TO MOON ROCK", !NL
db "VILLAGE!"
db $FF

MessageText_A0:
db "WHAT ARE YOU", !NL
db "DOING!", !NL
db "THIS TIME WE ARE", !NL
db "GOING TO THE", !NL

db "DRAGON LAND TO", !NL
db "FIND ",!MINEA, !NL
db !NL
db !NL

db "BUT FIRST,", !NL
db "WE MUST FIND", !NL
db "THE DRAGON SCALE", !NL
db "OTHERWISE,", !NL

db "WE WILL DIE", !NL
db "WITHOUT THEM!"
db $FF

MessageText_A1:
db "AHEM"
db $FF

MessageText_A2:
db "AH,THANK YOU,AH!"
db $FF

MessageText_A3:
db "SNIF! SNIF!" : db $FE
db "I UNDERSTAND" : db $FE
db "UNCLE TAO, I AM" : db $FE
db "SORRY!" : db $FE
db "SNIFF!"
db $FF

MessageText_A4:
db "BIG BROTHER..."
db $FF

MessageText_A5:
db "I AM SORRY." : db $FE
db "I KNOW THAT" : db $FE
db "STEALING WAS" : db $FE
db "WRONG." : db $FE

db "SINCE MY FATHER" : db $FE
db "DIED, I WANTED" : db $FE
db "TO BECOME" : db $FE
db "STRONGER TO" : db $FE

db "PROTECT MY" : db $FE
db "MOTHER...." : db $FE
db "BECAUSE I AM A" : db $FE
db "MAN... BUT." : db $FE

db "SINCE UNCLE TAO" : db $FE
db "IS HERE" : db $FE
db "EVERTHING IS" : db $FE
db "OKAY...!" : db $FE

db "SO I AM GIVING" : db $FE
db "THIS BACK TO YOU" : db $FE
db "I AM REALLY" : db $FE
db "SORRY..."
db $FF

MessageText_A6:
db "BIG BROTHER," : db $FE
db "WHEN I GROW" : db $FE
db "UP A LITTLE MORE" : db $FE
db "WILL YOU LET ME" : db $FE
db "JOIN YOUR TEAM" : db $FE
db "PLEASE."
db $FF

MessageText_A7:
db "WOW!! THANK YOU" : db $FE
db "EH BIG BROTHER" : db $FE
db "... CAN I SLEEP" : db $FE
db "WITH YOU...?"
db $FF

MessageText_A8:
db "ZZZZZZ..."
db $FF

MessageText_A9:
db "NOW,", !NL
db "I AM TRAINING", !NL
db "MY BODY TO GET", !NL
db "STRONGER!"
db $FF

MessageText_AA:
db "NOW,", !NL
db "I AM STUDYING", !NL
db "TO GET", !NL
db "SMARTER!"
db $FF

MessageText_AB:
;「むにゃむにゃ...
;...トイし...(ねぼけてる)
db "MUMBLE... ", !NL
db "...TOILET...", !NL
db "(SLEEPING)"
db $FF

MessageText_AC:
db "AH!! ITS", !NL
db "MY BROTHER! YOU", !NL
db "ARE SO AMAZING!", !NL
db "BUT HE WILL", !NL

db "KILL THE BAD", !NL
db "DEMON BEFORE I", !NL
db "CAN GET STRONGER", !NL
db "I AM A LITTLE", !NL

db "DISAPPOINTED!"
db $FF

MessageText_AD:
db "SNIF..SNIF..", !NL
db "PLEASE SAVE OUR", !NL
db "VILLAGE..."
db $FF

MessageText_AE:
db "I WILL GO TO THE", !NL
db "VILLAGE PLEASE", !NL
db "PLEASE FOLLOW ME"
db $FF

MessageText_AF:
db "OVER HERE!!"
db $FF

MessageText_B0:
db "DONT SAY THAT..", !SWEAT
db $FF

MessageText_B1:
db !STAR, " ", !MNOTE, " ", !SMILEY, " ", !SMILEY, !HEART, " ! ", !HEART
db $FF

MessageText_B2:
db "I AM " : db $E0, $2E : db ". ARE" : db $FE
db "YOU A MAN OF" : db $FE
db "LIGHT? I HEARD" : db $FE
db "ABOUT THE MAN" : db $FE

db "OF LIGHT FROM" : db $FE
db "GRANDPA DEW, BUT" : db $FE
db "YOU ARE PRETTY" : db $FE
db "COOL?" : db $FE

db "HAHA" : db $D2, $3D : db " ACTUALLY" : db $FE
db "GRANDPA DEW GAVE" : db $FE
db "ME A SECRET" : db $FE
db "MEDECINE TO" : db $FE

db "DRINK, SO I AM" : db $FE
db "FINE BEING ON" : db $FE
db "THE GROUND" : db $D2, $3D : db $FE
db $FE
db "HEY!" : db $FE
db "I WONDER IF CAN" : db $FE
db "COME WITH YOU" : db $FE
db "IS THAT OKAY?"

db $FF

MessageText_B3:
db "THE FRUIT OF" : db $FE
db "LIFE? NO!" : db $FE
db "THAT IS THE" : db $FE
db "OUR TREASURE!!!" : db $FE

db "WITHOUT THE" : db $FE
db "FRUIT OF LIFE!.." : db $FE
db "MERMAIDS CANNOT" : db $FE
db "SURVIVE!" : db $FE

db "ESPECIALLY NOW," : db $FE
db "THAT THE FRUIT" : db $FE
db "OF LIFE IS" : db $FE
db "GETTING SCARCE." : db $FE

db "...WHAT THE..." : db $FE
db "THOSE EYES! AAW!" : db $FE
db "I CANT HELP IT!" : db $FE
db "I WILL ASK THE" : db $FE

db "CHIEF!, SO COME" : db $FE
db "TO LI HOUSE OVER" : db $FE
db "THERE! I AM" : db $FE
db "GOING FIRST!"



db $FF

MessageText_B4:
db "WHAT ARE YOU" : db $FE
db "DOING! COME," : db $FE
db "COME!"
db $FF

MessageText_B5:
db "OVER HERE." : db $FE
db $FE
db "BE CAREFUL WHEN" : db $FE
db "YOU PASS UNDER" : db $FE

db "WATER YOU WONT" : db $FE
db "BE ABLE TO SEE." : db $FE
db "WITH YOUR EYES."
db $FF

MessageText_B6:
db "FIRST, EAT THE" : db $FE
db "AQUATIC PLANTS" : db $FE
db "IN THE SEEDLING." : db $FE
db $FE 
db "OTHERWISE YOU" : db $FE
db "WILL DROWN AND" : db $FE
db "DIE."

db $FF

MessageText_B7:
db "I AM... STAYING" : db $FE
db "WITH THE CHIEF."
db $FF

MessageText_B8:
db "HI,HOW ARE YOU?" : db $D2, $3D
db $FF

MessageText_B9:
db "GOOD FOR YOU!" : db $FE
db "CONGRATULATIONS!"
db $FF

MessageText_BA:
db "I AM..." : db $FE
db "A PHOENIX..." : db $FE
db $FE
db $FE
db "DURING A TRIP, I" : db $FE
db "HEARD ABOUT THE" : db $FE
db "BIRTH OF MY BABY" : db $FE
db "AND TRIED" : db $FE

db "TO RUSH HOME BUT" : db $FE
db "I GOT STUCK IN" : db $FE
db "DARK WATER" : db $FE ; TODO
db "I..." : db $FE

db "CANT REJUVENATE" : db $FE
db "THIS BODY UNLESS" : db $FE
db "I BURN IT INTO A" : db $FE
db "MOUNTAIN OF FIRE" : db $FE

db "I CAME ALL THIS" : db $FE
db "WAY THINKING" : db $FE
db "THAT IF THE" : db $FE
db "MERMAID WOULD" : db $FE

db "GIVE ME THE" : db $FE
db "FRUIT OF LIFE," : db $FE
db "I WOULD REGAIN" : db $FE
db "MY STRENGHT..." : db $FE

db "AH, I CAN SEE MY" : db $FE
db "HOUSE FROM HERE."

db $FF

MessageText_BB:
db "FRUIT OF LIFE..."
db $FF

MessageText_BC:

db "AH, MY BODY IS" : db $FE
db "FILLED WITH" : db $FE
db "STRENGTH! NOW" : db $FE
db "I CAN GO BACK" : db $FE

db "TO THE MOUNTAINS" : db $FE
db "AND SEE MY CHILD" : db $FE
db "THANK YOU!" : db $FE
db $FE

db "AH! A HEALTHY" : db $FE
db "BODY IS THE BEST" : db $FE
db $FE
db $FE

db "...YES! LI WAS" : db $FE
db "HERE, HE IS ON" : db $FE
db "HIS WAY TO THE" : db $FE
db "CASTLE OF" : db $FE

db "DARKNESS. HE IS" : db $FE
db "ON HIS WAY BACK" : db $FE
db "TO THE MOUNTAINS" : db $FE
db "I WILL GO WITH" : db $FE

db "YOU TO THE " : db $FE
db "MOUNTAIN!"

db $FF

MessageText_BD:
db "OH MY SON!!!"
db $FF

MessageText_BE:
db "DID YOU TAKE THE" : db $FE
db "THING IN THE" : db $FE
db "TREASURE CHEST?" : db $FE
db "IT IS A TOKEN" : db $FE
db "OF MY GRATITUDE."
db $FF

MessageText_BF:
db "YOU HAVE BEEN" : db $FE
db "A BIG HELP TO" : db $FE
db "ME. THANK YOU" : db $FE
db "SO MUCH!" : db $FE

db "I WILL GIVE MY" : db $FE
db "CHILDREN PART" : db $FE
db "OF YOUR NAME!" : db $FE
db $E0, $2B : db "PI !"

db $FF

MessageText_C0:
db ""
db $FF

MessageText_C1: ; TODO
db "OH!", !NAME, "!", !NL
db "I GUESS I JUST", !NL
db "HAVE TO GET A", !NL
db "GOOD SCRUBBING", !NL

db "TO MAKE ME YOUNG", !NL
db "AGAIN.", !NL
db "HMMM?, YOU WANNA", !NL
db "GO TO THE VALLEY", !NL

db "OF THE SWORD?", !NL
db "WELL THEN YOU", !NL
db "WILL NEED MY", !NL
db "FEATHER SHOES", !NL

db "OH, NO. I WOULD", !NL
db "MAKE YOU ONE BUT", !NL
db "NOT RIGHT NOW...", !NL
db "WE BETTER HURRY", !NL

db "THAT IS RIGHT", !NL
db "I MADE ONE FOR A", !NL
db "YOUNG MAN LIKE", !NL
db "YOU ONCE HE WAS", !NL

db "CALLED...", !NL
db !NL
db "SERYU, I THINK..."
db $FF

MessageText_C2:
db "SHADOW, POWER", !NL
db "PUPPY!", !NL
db "GOOD NAME! UH!"
db $FF

MessageText_C3:
db "HEY! I HEARD THAT", !NL
db "YOU SLAYED THE", !NL
db "DEMON DRAGON!", !NL
db "YOU DID IT!", !NL

db "CONGRATULATIONS!"
db $FF

MessageText_C4:
db !SWEAT2, "...", !SWEAT2
db $FF

MessageText_C5:
db !HEART, !HEART, !HEART, !HEART, !HEART, !HEART, "!!!"
db $FF

MessageText_C6:
db "I WILL TAKE CARE", !NL
db "OF IT. IN", !NL
db "THE MEANTIME,", !NL
db "PLEASE HOLD ON..", !NL

db "AND IF I DONT", !NL
db "COME BACK...", !NL
db "TELL ", !NAME, "!", !NL
db !NL

db "I AM SURE", !NL
db !NAME, " WILL", !NL
db "TAKE CARE OF IT!", !NL
db "SEE YOU SOON!"

db $FF

MessageText_C7:
db $E0, $00 : db "......"
db $FF

MessageText_C8:
db $E0, $00 : db "..." : db $FE
db "I COULD NOT HOLD" : db $FE
db "BACK THE" : db $FE
db "DARKNESS..." : db $FE
db "BUT YOU..." : db $FE

db "YOU ARE THE HERO" : db $FE
db "OF THE EARTH" : db $FE
db "IM SURE YOU CAN" : db $FE
db "DO IT." : db $FE

db $FF

MessageText_C9:
db "WIMP !!!" : db $FE
db $FE
db $FE
db $FE
db "WHY DID YOU" : db $FE
db "DECIDE YOU" : db $FE
db "CANT DO IT" : db $FE
db "BEFORE YOU EVEN" : db $FE
db "STARTED!" : db $FE
db $FE
db $FE
db $FE
db "YOU ARE THE ONLY" : db $FE
db "ONE THAT CAN DO" : db $FE
db "EVERYTHING!" : db $FE
db $FE
db $FE
db $FE
db "I DONT KNOW WHAT" : db $FE
db "WILL HAPPEN BUT" : db $FE
db "YOU ARE A MAN !" : db $FE
db "YOU SHOULD NOT" : db $FE
db "GIVE UP UNTIL" : db $FE
db "THE END RIGHT?!" : db $FE

db $FE
db $FE
db $FE
db "PLEASE REMEMBER!" : db $FE
db "YOU HAVE THE" : db $FE
db "HERO BLOOD IN" : db $FE
db "YOUR BODY" : db $FE
db "IF YOU STAND UP" : db $FE
db "A PATH WILL OPEN" : db $FE
db "TO YOU..." : db $FE
db $FE
db $FE
db $FE
db "AH..." : db $FE
db $FE
db $FE
db $FE
db "BUT..." : db $FE
db $FE
db $FE
db $FE
db "MY POWER" : db $FE
db $FE
db $FE
db $FE
db "I AM WAITING" : db $FE
db "FOR YOU... " : db $E0, $00, $FE
db $FF


MessageText_CA:
db "OH... ", !NAME, !NL
db !NL
db !NL
db !NL

db !MINEA, " HEART", !NL
db "SPOKE TO ME.", !NL
db !QUOTE1, "PLEASE COME", !NL
db "BACK", !QUOTE2, !NL

db !NAME, "!", !NL
db "I WILL FIGHT", !NL
db "WITH YOU!"

db $FF


MessageText_CB:; todo UNSURE
db "I HOPE THEY GO", !NL
db "WHERE THE", !NL
db "MOON DROPS ARE?"
db $FF

MessageText_CC:
db "LETS GO BACK", !NL
db "TO THE CASTLE", !NL
db "OF LIGHT."
db $FF

MessageText_CD:
db "THANK YOU, ", !NAME,!NL
db !NL,!NL,!NL
db "SMILE...", !HEART
db $FF

MessageText_CE:
db "HERO..." : db $FE
db "HMM.. OKAY.." : db $FE
db "I WILL WAIT..."
db $FF

MessageText_CF:
db "YOU HEARD IT" : db $FE
db "FROM MEI UH..." : db $FE
db "I AM HER BROTHER" : db $FE
db "LOUIS." : db $FE

db "DAMN... THEY" : db $FE
db "DID NOT JUST" : db $FE
db "KIDNAP THE" : db $FE
db "VILLAGERS THEY" : db $FE

db "ALSO STOLE" : db $FE
db "SOMETHING FROM" : db $FE
db "THE WELL!" : db $FE
db $FE 

db "MY DEAD FATHER" : db $FE
db "RISKED HIS LIFE" : db $FE
db "TO BUILD THIS" : db $FE
db "VILLAGE..." : db $FE

db "I HAVE TO BRING" : db $FE
db "IT BACK...!"


db $FF

MessageText_D0:
db "WOW! THERE IS" : db $FE
db "MORE WATER THAN" : db $FE
db "BEFORE! THANKS" : db $FE
db "GUYS!" : db $FE

db "HEY BIG BROTHER" : db $FE
db "STAY WITH US..." : db $FE
db "STAY IN THIS" : db $FE
db "VILLAGE! OK?"

db $FF

MessageText_D1:
db "WOW ", !SMILEY, !NL
db "BIG BROTHER!", !NL
db "..I KNOW", !NL
db "ITS HARD..", !NL

db "I WILL NOT", !NL
db "FORGET THE", !NL
db "COURAGE YOU", !NL
db "TAUGHT ME", !NL

db "AND I WILL DO", !NL
db "MY BEST TO", !NL
db "REBUILD THIS", !NL
db "VILLAGE!"
db $FF

MessageText_D2:
db "THEY ARE BACK!", !NL
db "THEY SAID IT WAS", !NL
db "BECAUSE OF YOU", !NL
db "BROTHER.", !NL

db "THAT IS GREAT!"
db $FF

MessageText_D3:
db "WAHN WAHN WAHN" : db $D2, $3F
db $FF

MessageText_D4:
db "WAH SO SCARY!" : db $FE
db "ALL OF A SUDDEN," : db $FE
db "THE DEMONS CAME" : db $FE
db "AND EVERYONE WAS" : db $FE

db "DEAD..THE PEOPLE" : db $FE
db "THAT WERE STILL" : db $FE
db "ALIVE WERE TAKEN" : db $FE
db "AWAY..." : db $FE

db "MY BIG BROTHER" : db $FE
db "LOUIS, HE IS" : db $FE
db "PROTECTING MEI" : db $FE
db "AND SHE IS HURT.." : db $FE

db "AND HE IS GOING" : db $FE
db "INTO THE WELL..." : db $FE
db "THERE IS A DEMON" : db $FE
db "IN THERE." : db $FE

db "THAT IS WHY" : db $FE
db "THERE IS NO" : db $FE
db "WATER..." : db $FE
db $FE
db "STOP MY BROTHER!" : db $FE
db "IF HE GOES INTO" : db $FE
db "THE WELL LIKE" : db $FE
db "THAT HE WILL DIE"

db $FF

MessageText_D5:
db "WOAH!, SO MUCH", !NL
db "WATER!!"
db $FF

MessageText_D6:
db "I WONDER IF THEY", !NL
db "WILL EVER COME", !NL
db "BACK..."
db $FF

MessageText_D7:
db "YAY EVERYONE", !NL
db "CAME BACK.", !NL
db "WHAT IS GOING ON"
db $FF

MessageText_D8:
db !LEFINA, "...", !NL
db !NL, !NL, !NL

db "SO MUCH FOR", !NL
db "THE POWER", !NL
db "OF LIGHT.", !NL
db !NL

db "THE WORLD WILL", !NL
db "BE COVERED BY", !NL
db "THE DARKNESS..."

db $FF

MessageText_D9:
db "NO! ", !LEFINA, "!!!", !NL
db "GET BACK HERE!"
db $FF


MessageText_DA:
db !LEFINA, "!!!"
db $FF

MessageText_DB:
db "OH!", !NAME, !NL
db "YES..." : db $FE
db "TO HELP US, SHE" : db $FE
db "SACRIFICED" : db $FE
db "HERSELF..." : db $FE
db "YOUR NAME WAS" : db $FE
db "THE LAST THING" : db $FE
db "SHE SAID..."
db $FF

MessageText_DC:
db "SO I HAVE A" : db $FE
db "REQUEST FOR YOU." : db $FE
db $FE
db $FE
db "ACTUALLY...FROM" : db $FE
db "THE DARKNESS," : db $FE
db "THEY HAVE ASKED" : db $FE
db "AN EXCHANGE." : db $FE

db "THE" : db $FE
db "MIRROR OF LIGHT" : db $FE
db "FOR" : db $FE
db $E0, $06 : db " LIFE" : db $FE

db "IDEALLY, THIS IS" : db $FE
db "SOMETHING I" : db $FE
db "CANNOT PART WITH" : db $FE
db "BUT I ALSO" : db $FE

db "CANNOT SACRIFICE" : db $FE
db "MY DAUGHTER LIFE" : db $FE
db "FOR IT." : db $FE
db $FE

db "I WILL GIVE YOU" : db $FE
db "THE MIRROR." : db $FE
db "I WANT YOU TO" : db $FE
db "BE MY MESSENGER." : db $FE

db "I WANT YOU TO" : db $FE
db "FULFILL THAT" : db $FE
db "TASK. THOSE" : db $FE
db "MENS PRESENT" : db $FE

db "HERE HAVE BEEN" : db $FE
db "BEEN WOUNDED AND" : db $FE
db "ARE UNABLE TO" : db $FE
db "MOVE AS A RESULT" : db $FE

db "OF THE PREVIOUS" : db $FE
db "BATTLE." : db $FE
db $E0, $00 : db $FE
db "THE HERO BLOOD" : db $FE

db "FLOW IN YOUR" : db $FE
db "VEINS, YOU" : db $FE
db "UNDERSTAND" : db $FE
db "DONT YOU?"
db $FF

MessageText_DD:
db "DONT SAY THAT" : db $FE
db "KIND OF THINGS" : db $D2, $3E : db $FE
db $E0, $06 : db " CALLED" : db $FE
db "YOUR NAME." : db $FE

db "IT MUST MEANS" : db $FE
db "SOMETHING..."
db $FF

MessageText_DE:
db "I BEG YOU." : db $FE
db "WILL YOU GO TO" : db $FE
db "THE DARK CASTLE?"
db $FF

MessageText_DF:
db "WELL, LETS GO!" : db $FE
db "THANK YOU, " : db $E0, $00
db $FE
db $FE
db "ITS GETTING LATE" : db $FE
db "GET SOME REST" : db $FE
db "AND PREPARE FOR" : db $FE
db "YOUR JOURNEY."

db $FF

MessageText_E0:
db "WE ARE COUNTING" : db $FE
db "ON YOU ", !NAME
db $FF

MessageText_E1:
db "WHAT! MY SERVANT" : db $FE
db "YOU SAY YOU CANT" : db $FE
db "HELP ME! I WILL" : db $FE
db "NEVER FORGIVE" : db $FE
db "YOU! TAKE HIM" : db $FE
db "TO JAIL!"
db $FF

MessageText_E2:
db $E0, $00 : db "..." : db $FE
db "DID YOU SLEEP" : db $FE
db "WELL ?" : db $FE
db $FE
db $FE
db $FE
db "WHAT? YOU HAVE" : db $FE
db "SEEN " : db $E0, $06 : db " IN" : db $FE
db "YOUR DREAMS?!!!" : db $FE
db $FE
db $FE
db $FE
db "OH " : db $E0, $06 : db "..." : db $FE
db "EVEN THOUGH HER" : db $FE
db "BODY IS TRAPPED" : db $FE
db "WITH DESPERATION" : db $FE
db "HER HEART CALLED" : db $FE
db "TO YOU..." 

db $FF

MessageText_E3:
db "OOOH...! I AM" : db $FE
db "COUNTING ON YOU" : db $FE
db $E0, $00 : db "!!!" : db $FE
db $FE
db $FE
db "I WILL GIVE YOU" : db $FE
db "THE" : db $FE
db "MIRROR OF LIGHT." : db $FE
db $FE
db $FE
db $FE
db "PLEASE GO GET IT" : db $FE
db $FF

MessageText_E4:
db "WHAT!" : db $FE
db "THIS CASTLE IS" : db $FE
db "PROTECTED BY" : db $FE
db "THE LIGHT HOW" : db $FE

db "COULD THE" : db $FE
db "DARKNESS TAKE IT" : db $FE
db "...?! " : db $E0, $00 : db $FE
db "I AM SORRY" : db $FE

db "CANT YOU GO" : db $FE
db "LOOK FOR IT!?"
db $FF

MessageText_E5:
db $E0, $00 : db "I KNOW" : db $FE
db "YOU HAVE BEEN" : db $FE
db "THROUGH A LOT..." : db $FE
db "I THANK YOU FROM" : db $FE

db "THE BOTTOM OF" : db $FE
db "MY HEART! THANK" : db $FE
db "YOU! IS THERE" : db $FE
db "ANYTHING YOU" : db $FE

db "WOULD LIKE?" : db $FE
db "I WILL GIVE YOU" : db $FE
db "ANYTHING YOU" : db $FE
db "LIKE!"
db $FF
MessageText_E6:
db "NO... KING, I", !NL
db "DO NOT NEED", !NL
db "ANYTHING", !NL
db !NL

db "WHAT SHOULD I DO", !NL
db "IN THIS BATTLE..", !NL
db "WHAT IS", !NL
db "MY MISSION...", !NL

db "I LEARNED HOW", !NL
db "IMPORTANT IT IS", !NL
db "TO SERVE ONESELF", !NL
db !NL

db "THIS IS WHAT I", !NL
db "NEEDED.", !NL
db "ANY TREASURE...", !NL
db !NL

db "IS NOT MATCH FOR", !NL
db "THE TREASURE OF", !NL
db "THE HEART."


db $FF

MessageText_E7:
db "WELL SAID! ", !NAME, !NL
db "HOW STRONG IS", !NL
db "THE HERO", !NL
db "OF THE EARTH!", !NL

db !NAME, ".", !NL
db "WILL YOU FOLLOW", !NL
db "ME WITH YOUR", !NL
db "HEART...?"
db $FF

MessageText_E8:
db "KING... IM SORRY", !NL
db "I THINK THERE", !NL
db "ARE STILL MANY", !NL
db "PEOPLE IN THE", !NL

db "WORLD WHO ARE", !NL
db "SUCCUMBING TO", !NL
db "EVIL, BULLYING", !NL
db "AND SUFFERING.", !NL

db "THAT IS WHY I", !NL
db "WANT TO FIGHT", !NL
db "FOR JUSTICE FOR", !NL
db "THOSE PEOPLE.", !NL

db "...I MADE A PACT", !NL
db "WITH THE", !NL
db "DEMON DRAGON.", !NL
db !NL

db "I BELIEVE THAT", !NL
db "IS ALSO A BATTLE", !NL
db "FOR ME. SO...", !NL
db "LET ME GO."
db $FF

MessageText_E9:
db "GREAT! ", !NAME, "!", !NL
db "I WAS NOT JUST", !NL
db "HANGING ON!", !NL
db !NL

db "I HAVE BEEN", !NL
db "THINKING ABOUT", !NL
db "THE PEOPLE OF", !NL
db "THE WORLD.", !NL

db "THAT IS WHY", !NL
db "I WONT LET YOU", !NL
db "GO ALONE!"
db $FF

MessageText_EA:
db "HOORAY FOR ", !NAME, !NL
db !NL, !NL, !NL
db "HOORAY FOR THE", !NL
db "HERO OF THE", !NL
db "EARTH!"

db $FF

MessageText_EB:
db "GRRRRR..."
db $FF

MessageText_EC:
db "WAIT, ", !NAME, "!!"
db $FF

MessageText_ED:
db "!!! ", !MINEA, "?!" 
db $FF

MessageText_EE:
db "I KNEW THAT...", !NL
db !MINEA, " BUT I...", !NL
db "GOT IT.", !NL
db !NL

db "I COULD NOT", !NL
db "CONTROL MY HEART", !NL
db "FROM THE EVIL", !NL
db "WHISPERING OF", !NL

db "THE DEMON DRAON", !NL
db "THE FORM YOU SAW", !NL
db "BEFORE WAS THE", !NL
db "FORM OF MY EVIL", !NL

db "HEART..., I AM", !NL
db "SO GLAD I AM", !NL
db "BACK NOW.", !NL
db !NL

db !NAME, " I WANT TO", !NL
db "THANK YOU.", !NL
db "I DONT EVER WANT", !NL
db "TO LOOK LIKE", !NL

db "THAT AGAIN...!", !NL
db "I FEEL REALLY", !NL
db "SORRY FOR", !NL
db "EVERYONE...", !NL

db !MINEA, "...SORRY", !NL
db "I WORRIED YOU..."

db $FF

MessageText_EF:
db "THE PRINCESS", !NL
db "OF LIGHT", !NL
db "IS IN THE", !NL
db "DARK TOWER.", !NL

db "I WILL BE THERE", !NL
db "LATER."
db $FF

MessageText_F0:
db !NAME, " SINCE", !NL 
db "THE DEMON DRAGON", !NL 
db "DIED, I WAS ABLE", !NL 
db "TO RETURN LIKE", !NL 

db "THIS.", !NL 
db "THANK YOU...!", !NL 
db !NL
db !NL

db "BUT I HAVE", !NL 
db "CAUSED A LOT", !NL 
db "OF BLOOD TO BE", !NL 
db "SPILLED...", !NL 

db "I DONT THINK", !NL 
db "I CAN MAKE UP", !NL 
db "FOR IT...", !NL 
db !NL

db "I WANT TO DO", !NL 
db "WHAT IS BEST", !NL 
db "FOR MANKIND...", !NL 
db !NL

db "THE KING THRONE", !NL 
db "IS LEFT TO", !NL 
db !KOTARO, !NL 
db !NL 

db "PLEASE KEEP AN", !NL 
db "EYE ON HIM", !NL 
db !NAME, " SO HE", !NL 
db "DOES NOT DO THE", !NL 

db "SAME MISTAKES", !NL 
db "I DID..."
db $FF


MessageText_F1:
db !LEFINA, ", JOINED", !NL
db "THE PARTY!!"
db $FF

MessageText_F2:
db "WHAT CAN I"
db "DO FOR YOU?"
db $FF

MessageText_F3:
db "HERO..." : db $FE
db "MY NAME IS TAO" : db $FE
db "I AM REPLACING" : db $FE
db $E0, $2D : db "S FATHER." : db $FE

db "IT WAS RIGHT" : db $FE
db "AFTER YAN BIRTH" : db $FE
db "I WAS WORKING AS" : db $FE
db "A STREET PEDLAR." : db $FE

db "WHEN I WAS" : db $FE
db "ATTACKED BY AN" : db $FE
db "EVIL MONSTER" : db $FE
db "HIS FATHER SAVED" : db $FE

db "ME BY TAKING" : db $FE
db "MY PLACE." : db $FE
db $FE
db $FE

db "I AM TRYING TO" : db $FE
db "TAKE CARE OF THE" : db $FE
db "MOTHER OF " : db $E0, $2D : db $FE
db "AND HER CHILD" : db $FE
db "BUT " : db $E0, $2D : db "..." : db $E0, $2D : db $FE
db "HATE ME..." : db $D2, $3F, $FE
db $FE
db $FE
db "SO IN ORDER TO" : db $FE
db "PROTECT HIS" : db $FE
db "MOTHER FROM THE" : db $FE
db "DEMONS, " : db $E0, $2D : db $FE
db "EVEN STOLE THE" : db $FE
db "RELIC OF LIGHT" : db $FE
db "FROM THE" : db $FE
db "CASTLE OF LIGHT."
db $FF

MessageText_F4:
db "IF YOU INSIST..." : db $FE
db "PLEASE SAVE " : db $E0, $2D : db $FE
db $FE
db $FE

db "THERE ARE SOME" : db $FE
db "ITEMS IN THE" : db $FE
db "TREASURE CHEST." : db $FE
db "PLEASE TAKE THEM"


db $FF

MessageText_F5:
db "PLEASE,THANK YOU"
db $FF

MessageText_F6:
db "IT WAS THANKS" : db $FE
db "TO YOU THAT I" : db $FE
db "WAS ABLE TO FORM" : db $FE
db "A BOND WITH " : db $E0, $2D : db $FE

db "I CANT THANK YOU" : db $FE
db "ENOUGH,I RUN AN" : db $FE
db "ITEM SHOP DO YOU" : db $FE
db "NEED SOMETHING?"
db $FF

MessageText_F7:
db "I AM SORRY, BUT", !NL
db "I AM A LITTLE", !NL
db "BUSY RIGHT NOW", !NL
db "PLASE COME LATER"
db $FF

MessageText_F8:
db "OH, HERO!" : db $FE
db "I AM KONA, THE" : db $FE
db "MOTHER OF " : db $E0, $2D : db "!" : db $FE
db $E0, $2D : db "..., " : db $E0, $2D : db "!" : db $FE

db "THE DEMON MIRADI" : db $FE
db "HAS TAKEN MY SON" : db $FE
db "PLEASE HELP US!"
db $FF

MessageText_F9:
db "THAT IS RIGHT!" : db $FE
db "THAT IS WHY " : db $E0, $2D : db $FE
db "WAS CAPTURED BY" : db $FE
db "THE MIRADI MENS" : db $FE

db "UNFORTUNATELY IT" : db $FE
db "SEEMS THAT ONE" : db $FE
db "OF THEIR MAN" : db $FE
db "LOST THE KEY TO" : db $FE

db "THE PRISON IN" : db $FE
db "THIS VILLAGE," : db $FE
db "AND MIRADI CAME" : db $FE
db "HERE THINKING WE" : db $FE

db "WE ARE HIDING IT" : db $FE
db "EARLIER TAO," : db $FE
db "HEARD ABOUT IT" : db $FE
db "AND WANTED TO" : db $FE

db "GO HELP " : db $E0, $2D : db $FE
db "BY HIMSELF...!" : db $FE
db "AAAH... I AM A" : db $FE
db "BAD PARENT...?!"


db $FF

MessageText_FA:
db $E0, $2D : db " ITS OKAY" : db $FE
db "ITS OKAY NOW" : db $FE
db "I AM HAPPY" : db $FE
db "YOU ARE SAFE NOW" : db $FE

db "THANK YOU FOR" : db $FE
db "YOUR HELP I CANT" : db $FE
db "OFFER MUCH BUT" : db $FE
db "YOU CAN REST."


db $FF

MessageText_FB:
db "YES " : db $E0, $2D : db "! IT IS" : db $FE
db "NOT JUST ME. DO" : db $FE
db "YOU KNOW HOW" : db $FE
db "WORRIED TAO WAS?" : db $FE

db "TAO HAS BEEN" : db $FE
db "TAKEN CARE OF" : db $FE
db "YOU SINCE THE" : db $FE
db "BEGINNING, AND" : db $FE

db "NOW YOU ARE THE" : db $FE
db "MOST IMPORTANT." : db $FE
db "YOU DONT EVEN" : db $FE
db "UNDERSTAND THAT!"
db $FF

MessageText_FC:
db "GOOD MORNING." : db $FE
db "ARE YOU FEELING" : db $FE
db "WELL ?" : db $FE
db $FE

db "SOMEHOW,IT SEEMS" : db $FE
db "THAT SOMEONE WHO" : db $FE
db "WAS TRAPPED IN" : db $FE
db "THE DARKNESS HAS" : db $FE

db "BEEN FREED, I" : db $FE
db "DONT LIKE THE" : db $FE
db "FACT THAT MIRADI" : db $FE
db "SENT THEM AWAY"


db $FF

MessageText_FD:
db "ARE YOU GOING", !NL
db "TO THE", !NL
db "MAGIC ISLAND?", !NL
db !NL

db "I HEARD THAT", !NL
db "MERMAIDS LIVE", !NL
db "IN THE SEA THERE", !NL
db !NL
db "I HEARD THAT", !NL
db "MERMAIDS ARE", !NL
db "ONLY FOUND", !NL
db "THERE,", !NL

db "BUT I WONDER", !NL
db "IF THERE IS", !NL
db "ANYTHING", !NL
db "THERE...?"
db $FF

MessageText_FE:
db "I AM SO GLAD", !NL
db "TO HEAR THAT YOU", !NL
db "ARE SAFE!", !NL
db !NL

db "I WILL FOLLOW", !NL
db "YOUR COURAGE AND", !NL
db "RAISE HIM! I", !NL
db "WILL NURTURE HIM"

db $FF

MessageText_FF:
db "HEY! YOU ARE", !NL
db !NAME, " I HAVE", !NL
db "HEARD RUMORS...", !NL
db "I HAVE HEARD A", !NL

db "LOT ABOUT YOU.", !NL
db "MY NAME IS", !NL
db "SERYU.", !NL
db !NL

db "I HEAR YOU ARE", !NL
db "PLANNING TO", !NL
db "VISIT THE DRAGON", !NL
db "BUT NO MATTER", !NL

db "HOW POWERFUL", !NL
db "YOU BECOME...", !NL
db "YOU WILL NEVER", !NL
db "STAND A CHANCE..", !NL

db "HMPH...", !NL
db "UNLESS YOU HAVE", !NL
db "THE SWORD OF THE", !NL
db "EARTH THAT THE", !NL

db "HEROES OF THE", !NL
db "EARTH USED..."
db $FF

MessageText_100:
db "IH..., WELL...", !NL
db "JUST ASK NOVA,", !NL
db "WHO HAS BEEN", !NL
db "AROUND SINCE THE", !NL

db "BEGINNING OF THE", !NL
db "EARTH.", !NL
db "YOU KNOW THAT", !NL
db "THAT TREE.", !NL

db "YES...", !NL
db "ASK A FORTUNE", !NL
db "TELLER IF YOU", !NL
db "DONT KNOW WHERE", !NL

db "IT IS."
db $FF

MessageText_101: ; NOT SURE TODO
db "UH ", !NAME, " WHAT", !NL
db "PHOENIX SHOES..?", !NL
db !NL
db !NL
db "I LEFT THEM FOR", !NL
db "YOU AT THE INN.."
db $FF

MessageText_102:
db "GEE!, I DID NOT", !NL
db "EXPECT TO SEE", !NL
db "YOU HERE...!", !NL
db !NL

db "I THOUGHT I", !NL
db "WOULD NEVER SEE", !NL
db "YOU AGAIN, SO", !NL
db "I LEFT ALL THESE", !NL

db "COOL LETTERS AND", !NL
db "AND STUFF...", !NL
db "HEHEHE...", !NL
db !NL

db "HMM...? DID THE", !NL
db "SWORD OF THE", !NL
db "EARTH COME LOOSE", !NL
db !NL

db "AS EXPECTED,WITH", !NL
db "COURAGE FOR", !NL
db "THOSE WHO GO", !NL
db "FORWARD, THE", !NL

db "SWORD IS ON", !NL
db "THEIR SIDE!"

db $FF

MessageText_103:
db "THE VILLAGE HAS", !NL
db "LOST ITS FAITH", !NL
db "IN ANYTHING", !NL
db "BECAUSE OF THE", !NL

db "MISDEEDS OF THE", !NL
db "GODDESS WHO LIVE", !NL
db "IN THE SEA.", !NL
db "RUMOR HAS IT", !NL

db "THAT SHE WAS", !NL
db "A POWERFUL TWIN", !NL
db "GODDESS.", !NL
db "IF YOU WANT TO", !NL

db "TO KNOW ABOUT", !NL
db "THE GODESS, YOU", !NL
db "MUST GO TO THE", !NL
db "SEA AND ASK HER."
db $FF

MessageText_104:
db "HMMM...", !NL
db "I HEARD THAT", !NL
db "THERE IS A", !NL
db "FOUNTAIN IN THE", !NL

db "SHADOW OF THE", !NL
db "MOON ROCK, BUT", !NL
db "WE CANNOT ENTER", !NL
db "IT BECAUSE OF", !NL

db "THE GODDESS", !NL
db "WARDING.", !NL
db !NL
db !NL

db "I DONT KNOW", !NL
db "MUCH ABOUT WARDS", !NL
db "WHY DONT YOU ASK", !NL
db "THE GODDESS?"
db $FF

MessageText_105:
db "WELL..." : db $FE
db "THE MINA TREE," : db $FE
db "THE GUARDIAN" : db $FE
db "TREE OF THIS" : db $FE
db "VILLAGE," : db $FE

db "OFTEN CAUSES" : db $FE
db "EARTHQUAKES..." : db $FE
db "EVERYONE IS TOO" : db $FE
db "FRIGHTENED TO" : db $FE

db "INVESTIGATE THE" : db $FE
db "CAUSE..." : db $FE
db "TWO DAYS AGO," : db $FE
db !NYMPHIE, " SAID SHE" : db $FE

db "WOULD LOOK INTO" : db $FE
db "IT AND WENT" : db $FE
db "INSIDE, BUT SHE" : db $FE
db "DID NOT COME OUT" : db $FE

db "I AM WORRIED" : db $FE
db "ABOUT THAT TOO."

db $FF

MessageText_106:
db "OH! AS EXPECTED" : db $FE
db "OF THE HERO" : db $FE
db "CALLED BY THE" : db $FE
db "KING OF LIGHT!!" : db $FE
db $FE
db $FE
db "THIS IS A NOVA" : db $FE
db "FLOWER, IT CAN" : db $FE
db "TALK TO TREES." : db $FE
db "PLEASE TAKE IT" : db $FE
db "WITH YOU." 
db $FF

MessageText_107:
db "I WILL OPEN THE" : db $FE
db "ENTRANCE OF THE" : db $FE
db "MINA TREE." : db $FE
db "PLEASE FOLLOW ME"
db $FF

MessageText_108: ; TODO unsure
db "HUH? IT LOOKS", !NL
db "LIKE ITS FULL OF", !NL
db "WORMS.", !NL
db !NL
db "I WILL GIVE THEM", !NL
db "TO YOU NEXT TIME", !NL
db "I COME BACK."
db $FF

MessageText_109:
db "OH! " : db $E0, $01 : db "! YOU" : db $FE
db "ARE SAFE! I AM" : db $FE
db "GLAD..." : db $FE
db $FE

db "...HMM YES?" : db $FE
db "WAS THAT IN THE" : db $FE
db "OFFERING?" : db $FE
db $FE

db "NO. I HAVE NEVER" : db $FE
db "SEEN ANYTHING" : db $FE
db "LIKE THAT IN" : db $FE
db "THIS VILLAGE." : db $FE

db "IT MAY HAVE BEEN" : db $FE
db "SMUGGLED OUT OF" : db $FE
db "THE AEZ VILLAGE" : db $FE
db "IF YOU MEET THE" : db $FE
db "KNOW-IT-ALL OWL" : db $FE
db "IN AEZ VILLAGE" : db $FE
db "YOU MIGHT BE" : db $FE
db "ABLE TO FIND OUT"

db $FF

MessageText_10A:
db "THANK YOU, WE" : db $FE
db "ARE COUNTING ON" : db $FE
db "YOU...!"
db $FF

MessageText_10B:
;「.........
db "........"
db $FF

MessageText_10C:
db "I APOLOGIZE FOR", !NL
db "MY SILENCE", !NL
db "EARLIER.", !NL
db "I THOUGHT THE", !NL

db "GODDESS WAS UP", !NL
db "TO SOMETHING", !NL
db "AGAIN.", !NL
db !NL

db "GODDESS METHI", !NL
db "TOLD BE ME ABOUT", !NL
db "YOU.", !NL
db !NL

db "WHAT IS IT?", !NL
db "YOU HAVE TO GO", !NL
db "THROUGH THE MOLE", !NL
db "PATH TO GET TO", !NL

db "THE DRAGON LAND", !NL
db "WHERE THE DRAGON", !NL
db "IS.", !NL
db "I KNOW A DEMON", !NL

db "WHO IS", !NL
db "A GATEKEEPER,", !NL
db "SO IF YOU TAKE", !NL
db "THIS HE WILL GET", !NL

db "YOU THROUGH."
db $FF

MessageText_10D:
db "PLEASE DO YOUR", !NL
db "BEST... !"
db $FF

MessageText_10E:
db "HUHUHU.", !NL
db "WHAT IS IT FOR?", !NL
db "WANT TO KNOW MY", !NL
db "NAME? IM DEW!", !NL

db "HUHU", !HEART
db $FF

MessageText_10F:
db "HEHEHE...WHAT?" : db $FE
db "YOU GUYS WANT TO" : db $FE
db "CROSS OVER TO" : db $FE
db "THE MAGIC ISLAND" : db $FE

db "IF YOU ASK A" : db $FE
db "A MERMAID, SHE" : db $FE
db "MIGHT BE ABLE TO" : db $FE
db "HELP YOU," : db $FE

db "BUT MERMAIDS ARE" : db $FE
db "FROM THE" : db $FE
db "DARKNESS... THEY" : db $FE
db "PROBABLY WONT" : db $FE

db "HELP A PERSON" : db $FE
db "OF LIGHT..." : db $FE
db "OH I HAVE AN" : db $FE
db "IDEA THATS RIGHT" : db $FE

db "LONG TIME AGO" : db $FE
db "THERE WAS AN" : db $FE
db "INVENTOR NAMED" : db $FE
db "WAGNER WHO HATED" : db $FE

db "EVERYONE LIGHT" : db $FE
db "AND DARKNESS." : db $FE
db "HE WAS ALONE..." : db $FE
db $FE

db "HE INVENTED A" : db $FE
db "THING CALLED" : db $FE
db "STAR FLASK." : db $FE
db "THAT CAN HOLD" : db $FE

db "WATER..." : db $FE
db "IF WE HAD IT," : db $FE
db "WE MIGHT BE ABLE" : db $FE
db "TO CROSS HERE." : db $FE

db "BUT... BUT I" : db $FE
db "THINK IT FELL" : db $FE
db "INTO THE HANDS" : db $FE
db "OF A DEMON."

db $FF

MessageText_110:
db "HUHUHU." : db $FE
db "DID YOU FIND THE" : db $FE
db "STAR FLASK?" 
db $FF

MessageText_111:
db "HEHEHEHE!" : db $FE
db "YOU FOUND IT!" : db $FE
db $FE
db $FE 
db "THEN, BEFORE YOU" : db $FE
db "PUMP THE WATER" : db $FE
db "INFORM THE" : db $FE
db "MERMAIDS." : db $FE

db "IF YOU DO IT" : db $FE
db "TOO FAST THE" : db $FE
db "MERMAIDS WILL" : db $FE
db "ALL GET TIED UP." : db $FE


db "USE THIS SHELL" : db $FE
db "YOU CAN TALK TO" : db $FE
db "MERMAIDS WITH IT" : db $FE
db "HEHEHEHEHE."

db $FF

MessageText_112:
db "HOOOO??!!", !NL
db "OH, YOU GUYS", !NL
db "WHAT ARE YOU", !NL
db "DOING!", !NL

db "THE MERMAIDS ARE", !NL
db "SUFFERING!", !NL
db "HURRY, USE THIS", !NL
db "APOLOGIZE!", !NL

db "THEN LETS GET", !NL
db "THE WATER BACK!"
db $FF

MessageText_113:
db "HUHUHUHU", !NL
db "YOUNG PEOPLE", !NL
db "ARE COOL!!", !NL
db "I USED TO BE", !NL
db "COOL TOO!"
db $FF

MessageText_114:
db "HUHUHU, I HAVE", !NL
db "A LOT TO THANK", !NL
db "YOU FOR!", !NL
db !NL
db "THANK YOU SO", !NL
db "MUCH.", !NL
db "HUHUHU..."
db $FF

MessageText_115:
db "I APOLOGIZE FOR", !NL
db "CALLING YOU LIKE", !NL
db "THIS...", !NL
db "...THE TRUTH IS", !NL

db "MY BABY,", !NL
db "SNOW BABY,", !NL
db "HAS GONE MISSING", !NL
db !NL

db "I SENT SNOWMAN", !NL
db "TO LOOK FOR HIM", !NL
db "BUT HE COULD NOT", !NL
db "FIND HIM...", !NL

db "SO I ASKED FOR", !NL
db "SOMEONE TO HELP", !NL
db "ME BUT SNOWMAN", !NL
db "CANNOT SPEAK...", !NL

db "I SHOULD HAVE", !NL
db "GONE MYSELF BUT", !NL
db "I AM THE ONLY", !NL
db "ONE THAT HAS", !NL

db "TO STAY HERE TO", !NL
db "PROTECT THE", !NL
db "CASTLE.", !NL
db !NL

db "I THOUGHT IT WAS", !NL
db "A CRUDE METHOD,", !NL
db "BUT I HOPE THAT", !NL
db "YOU CAN HELP ME", !NL

db "TO FIND IT...", !NL
db "PLEASE...", !NL
db "SNOW BABY..."

db $FF

MessageText_116:
db "AAAH!, BABY!!!"
db $FF

MessageText_117:
db "THANK YOU FOR", !NL
db "BRINGING HIM", !NL
db "BACK SAFELY.", !NL
db !NL
db "I DONT KNOW HOW", !NL
db "I CAN THANK YOU", !NL
db "ENOUGH.", !NL
db !NL
db "THANK YOU SO", !NL
db "MUCH!", !NL
db !NL
db !NL

db "OH RIGHT, I WILL", !NL
db "GIVE YOU THE KEY", !NL
db "TO THE TREASURE", !NL
db "ROOM. I AM SURE", !NL

db "YOU WILL FIND", !NL
db "WHAT YOU ARE", !NL
db "LOOKING FOR", !NL
db "THERE.", !NL

db "BE SURE TO", !NL
db "RETURN THE KEY."

db $FF

MessageText_118:
db "BABY TOLD ME...", !NL
db "HE WENT OUTSIDE", !NL
db "AND LOOKED OUT", !NL
db "AND SAW THE", !NL

db "LIGHT OF THE", !NL
db "GODESS CALLING", !NL
db "HIM IN THE", !NL
db "GODDESS SEA...", !NL

db "A CHILD OF SNOW", !NL
db "TRIBE CAN ONLY", !NL
db "LIVE HERE...", !NL
db !NL

db "WHY WOULD THE", !NL
db "GODDESS DO A", !NL
db "SUCH TERRIBLE", !NL
db "THING...?", !NL

db "I HEAR THAT EVEN", !NL
db "IN THE VILLAGE", !NL
db "OF GILTS IS", !NL
db "BEING VICTIMIZED", !NL

db "BY THE GODDESS..", !NL
db "OH AND THEN WHEN", !NL
db "WHEN YOU VISIT", !NL
db "THE SNOWMANS", !NL

db "CASTLE AGAIN...", !NL
db "DONT BULLY THE", !NL
db "SNOWMAN INSIDE.", !NL
db "THEY ARE GENTLE", !NL

db "PEOPLE WHO DONT", !NL
db "LIKE TO FIGHT...", !NL
db "THEY WERE TOO", !NL
db "AFRAID TO COME", !NL

db "OUT EARLIER", !NL
db "BECAUSE OF YOU.", !NL
db "AH AND I HAVE TO", !NL
db "KEEP THE KEY", !NL

db "WITH ME.", !NL
db "I WILL LEAVE IT", !NL
db "OPEN FOR YOU TO", !NL
db "ENTER ANYTIME."
db $FF

MessageText_119:
db "OOH... THANK YOU", !NL
db "FOR YOU HELP", !NL
db "EARLIER", !NL
db "SNOWBABY...!"
db $FF

MessageText_11A:
db "AH, I WAS RIGHT", !NL
db "IN TRUSTING YOU", !NL
db "... AS A SNOW", !NL
db "TRIBE PERSON, WE", !NL

db "COULD NOT BE", !NL
db "HAPPIER"
db $FF

MessageText_11B:
db "I AM LUCIA, THE" : db $FE
db "CHIEF... WHAT" : db $FE
db "DO YOU NEED FROM" : db $FE
db "THE MERMAIDS?"
db $FF

MessageText_11C:
db "THE TREE THAT" : db $FE
db "BEARS THE FRUIT" : db $FE
db "OF LIFE IS IN" : db $FE
db "THE MERMAIDS" : db $FE

db "SANCTUARY, AND" : db $FE
db "THIS IS THE ONLY" : db $FE
db "FRUIT MERMAIDS" : db $FE
db "CAN EATS. THIS" : db $FE

db "IS WHY THEY DONT" : db $FE
db "GROW OLD OR DIE," : db $FE
db "AND CAN COME" : db $FE
db "BACK TO LIFE." : db $FE

db "BUT MERMAIDS ARE" : db $FE
db "BEINGS OF" : db $FE
db "DARKNESS..." : db $FE
db $FE

db "WE CANNOT ALLOW" : db $FE
db "A MAN OF LIGHT" : db $FE
db "INTO OUR SACRED" : db $FE
db "LAND...!"

 
db $FF

MessageText_11D:
db "IF YOU INSIST..." : db $FE
db "THERE IS A SICK" : db $FE
db "PERSON IN THIS" : db $FE
db "VILLAGE."

db "GIVE THEM" : db $FE
db "WHATEVER THEY" : db $FE
db "ASKS FOR." : db $FE
db $FE

db "IF YOU CANT DO" : db $FE
db "DO IT, WE CANT" : db $FE
db "LET YOU GO TO" : db $FE
db "THE SACRED" : db $FE

db "MERMAID" : db $FE
db "SANCTUARY!!!"

db $FF

MessageText_11E:
db "DID YOU NOTICED?" : db $FE
db "EVERYTHING YOU" : db $FE
db "JUST DID WAS" : db $FE
db "A TEST FOR YOU." : db $FE

db "... I WILL GIVE" : db $FE
db "YOU YOUR MONEY" : db $FE
db "BACK," : db $FE
db "I UNDERSTAND" : db $FE

db "YOUR WISH." : db $FE
db "I WILL TAKE YOU" : db $FE
db "TO THE SACRED" : db $FE
db "SANCTUARY." : db $FE

db "BUT NOW THE TREE" : db $FE
db "OF LIFE HAS GROW" : db $FE
db "A WICKED HEART" : db $FE
db "AND IS NO LONGER" : db $FE

db "BEARING FRUITS." : db $FE
db "IF YOU REALLY" : db $FE
db "WANT IT YOU WILL" : db $FE
db "HAVE TO DESTROY" : db $FE

db "THE EVIL..." : db $FE
db "IF YOU DONT WANT" : db $FE
db "TO IT IS FINE."


db $FF

MessageText_11F:
db "THE TREE OF LIFE" : db $FE
db "IS LOCATED IN" : db $FE
db "THE MERMAID" : db $FE
db "SANCTUARY." : db $FE
db "LETS GO."
db $FF


MessageText_120:
MessageText_121:
MessageText_122:
MessageText_123:
MessageText_124:
MessageText_125:
MessageText_126:
MessageText_127:
MessageText_128:
MessageText_129:
MessageText_12A:
MessageText_12B:
MessageText_12C:
MessageText_12D:
MessageText_12E:
MessageText_12F:
MessageText_130:
MessageText_131:
MessageText_132:
MessageText_133:
MessageText_134:
MessageText_135:
MessageText_136:
MessageText_137:
MessageText_138:
MessageText_139:
MessageText_13A:
MessageText_13B:
MessageText_13C:
MessageText_13D:
MessageText_13E:
MessageText_13F:
MessageText_140:
MessageText_141:
MessageText_142:
MessageText_143:
MessageText_144:
MessageText_145:
MessageText_146:
MessageText_147:
MessageText_148:
MessageText_149:
MessageText_14A:
MessageText_14B:
MessageText_14C:
MessageText_14D:
MessageText_14E:
MessageText_14F:
MessageText_150:
MessageText_151:
MessageText_152:
MessageText_153:
MessageText_154:
MessageText_155:
MessageText_156:
MessageText_157:
MessageText_158:
MessageText_159:
MessageText_15A:
MessageText_15B:
MessageText_15C:
MessageText_15D:
MessageText_15E:
MessageText_15F:
MessageText_160:
MessageText_161:
MessageText_162:
MessageText_163:
MessageText_164:
MessageText_165:
MessageText_166:
MessageText_167:
MessageText_168:
MessageText_169:
MessageText_16A:
MessageText_16B:
MessageText_16C:
MessageText_16D:
MessageText_16E:
MessageText_16F:
MessageText_170:
MessageText_171:
MessageText_172:
MessageText_173:
MessageText_174:
MessageText_175:
MessageText_176:
MessageText_177:
MessageText_178:
MessageText_179:
MessageText_17A:
MessageText_17B:
MessageText_17C:
MessageText_17D:
MessageText_17E:
MessageText_17F:
MessageText_180:
MessageText_181:
MessageText_182:
MessageText_183:
MessageText_184:
MessageText_185:
MessageText_186:
MessageText_187:
MessageText_188:
MessageText_189:
MessageText_18A:
MessageText_18B:
MessageText_18C:
MessageText_18D:
MessageText_18E:
MessageText_18F:
MessageText_190:
MessageText_191:
MessageText_192:
MessageText_193:
MessageText_194:
MessageText_195:
MessageText_196:
MessageText_197:
MessageText_198:
MessageText_199:
MessageText_19A:
MessageText_19B:
MessageText_19C:
MessageText_19D:
MessageText_19E:
MessageText_19F:
MessageText_1A0:
MessageText_1A1:
MessageText_1A2:
MessageText_1A3:
MessageText_1A4:
MessageText_1A5:
MessageText_1A6:
MessageText_1A7:
MessageText_1A8:
MessageText_1A9:
MessageText_1AA:
MessageText_1AB:
MessageText_1AC:
MessageText_1AD:
MessageText_1AE:
MessageText_1AF:
MessageText_1B0:
MessageText_1B1:
MessageText_1B2:
MessageText_1B3:
MessageText_1B4:
MessageText_1B5:
MessageText_1B6:
MessageText_1B7:
MessageText_1B8:
MessageText_1B9:
MessageText_1BA:
MessageText_1BB:
MessageText_1BC:
MessageText_1BD:
MessageText_1BE:
MessageText_1BF:
MessageText_1C0:
MessageText_1C1:
MessageText_1C2:
MessageText_1C3:
MessageText_1C4:
MessageText_1C5:
MessageText_1C6:
MessageText_1C7:
MessageText_1C8:
MessageText_1C9:
MessageText_1CA:
MessageText_1CB:
MessageText_1CC:
MessageText_1CD:
MessageText_1CE:
MessageText_1CF:
MessageText_1D0:
MessageText_1D1:
MessageText_1D2:
MessageText_1D3:
MessageText_1D4:
MessageText_1D5:
MessageText_1D6:
MessageText_1D7:
MessageText_1D8:
MessageText_1D9:
MessageText_1DA:
MessageText_1DB:
MessageText_1DC:
MessageText_1DD:
MessageText_1DE:
MessageText_1DF:
MessageText_1E0:
MessageText_1E1:
MessageText_1E2:
MessageText_1E3:
MessageText_1E4:
MessageText_1E5:
MessageText_1E6:
MessageText_1E7:
MessageText_1E8:
MessageText_1E9:
MessageText_1EA:
MessageText_1EB:
MessageText_1EC:
MessageText_1ED:
MessageText_1EE:
MessageText_1EF:
MessageText_1F0:
MessageText_1F1:
MessageText_1F2:
MessageText_1F3:
MessageText_1F4:
MessageText_1F5:
MessageText_1F6:
MessageText_1F7:
MessageText_1F8:
MessageText_1F9:
MessageText_1FA:
MessageText_1FB:
MessageText_1FC:
MessageText_1FD:
MessageText_1FE:
MessageText_1FF:
MessageText_200:
MessageText_201:
MessageText_202:
MessageText_203:
MessageText_204:
MessageText_205:
MessageText_206:
MessageText_207:
MessageText_208:
MessageText_209:
MessageText_20A:
MessageText_20B:
MessageText_20C:
MessageText_20D:
MessageText_20E:
MessageText_20F:
MessageText_210:
MessageText_211:
MessageText_212:
MessageText_213:
MessageText_214:
MessageText_215:
MessageText_216:
MessageText_217:
MessageText_218:
MessageText_219:
MessageText_21A:
MessageText_21B:
MessageText_21C:
MessageText_21D:
MessageText_21E:
MessageText_21F:
MessageText_220:
MessageText_221:
MessageText_222:
MessageText_223:
MessageText_224:
MessageText_225:
MessageText_226:
MessageText_227:
MessageText_228:
MessageText_229:
MessageText_22A:
MessageText_22B:
MessageText_22C:
MessageText_22D:
MessageText_22E:
MessageText_22F:
MessageText_230:
MessageText_231:
MessageText_232:
MessageText_233:
MessageText_234:
MessageText_235:
MessageText_236:
MessageText_237:
MessageText_238:
MessageText_239:
MessageText_23A:
MessageText_23B:
MessageText_23C:
MessageText_23D:
MessageText_23E:
MessageText_23F:
MessageText_240:
MessageText_241:
db $FF


warnpc $24FFFF

org $258000
dw MessageTextTWO_00
dw MessageTextTWO_01
dw MessageTextTWO_02
dw MessageTextTWO_03
dw MessageTextTWO_04
dw MessageTextTWO_05
dw MessageTextTWO_06
dw MessageTextTWO_07
dw MessageTextTWO_08
dw MessageTextTWO_09
dw MessageTextTWO_0A
dw MessageTextTWO_0B
dw MessageTextTWO_0C
dw MessageTextTWO_0D
dw MessageTextTWO_0E
dw MessageTextTWO_0F
dw MessageTextTWO_10
dw MessageTextTWO_11
dw MessageTextTWO_12
dw MessageTextTWO_13
dw MessageTextTWO_14
dw MessageTextTWO_15
dw MessageTextTWO_16
dw MessageTextTWO_17
dw MessageTextTWO_18
dw MessageTextTWO_19
dw MessageTextTWO_1A
dw MessageTextTWO_1B
dw MessageTextTWO_1C
dw MessageTextTWO_1D
dw MessageTextTWO_1E
dw MessageTextTWO_1F
dw MessageTextTWO_20
dw MessageTextTWO_21
dw MessageTextTWO_22
dw MessageTextTWO_23
dw MessageTextTWO_24
dw MessageTextTWO_25
dw MessageTextTWO_26
dw MessageTextTWO_27
dw MessageTextTWO_28
dw MessageTextTWO_29
dw MessageTextTWO_2A
dw MessageTextTWO_2B
dw MessageTextTWO_2C
dw MessageTextTWO_2D
dw MessageTextTWO_2E
dw MessageTextTWO_2F
dw MessageTextTWO_30
dw MessageTextTWO_31
dw MessageTextTWO_32
dw MessageTextTWO_33
dw MessageTextTWO_34
dw MessageTextTWO_35
dw MessageTextTWO_36
dw MessageTextTWO_37
dw MessageTextTWO_38
dw MessageTextTWO_39
dw MessageTextTWO_3A
dw MessageTextTWO_3B
dw MessageTextTWO_3C
dw MessageTextTWO_3D
dw MessageTextTWO_3E
dw MessageTextTWO_3F
dw MessageTextTWO_40
dw MessageTextTWO_41
dw MessageTextTWO_42
dw MessageTextTWO_43
dw MessageTextTWO_44
dw MessageTextTWO_45
dw MessageTextTWO_46
dw MessageTextTWO_47
dw MessageTextTWO_48
dw MessageTextTWO_49
dw MessageTextTWO_4A
dw MessageTextTWO_4B
dw MessageTextTWO_4C
dw MessageTextTWO_4D
dw MessageTextTWO_4E
dw MessageTextTWO_4F
dw MessageTextTWO_50
dw MessageTextTWO_51
dw MessageTextTWO_52
dw MessageTextTWO_53
dw MessageTextTWO_54
dw MessageTextTWO_55
dw MessageTextTWO_56
dw MessageTextTWO_57
dw MessageTextTWO_58
dw MessageTextTWO_59
dw MessageTextTWO_5A
dw MessageTextTWO_5B
dw MessageTextTWO_5C
dw MessageTextTWO_5D
dw MessageTextTWO_5E
dw MessageTextTWO_5F
dw MessageTextTWO_60
dw MessageTextTWO_61
dw MessageTextTWO_62
dw MessageTextTWO_63
dw MessageTextTWO_64
dw MessageTextTWO_65
dw MessageTextTWO_66
dw MessageTextTWO_67
dw MessageTextTWO_68
dw MessageTextTWO_69
dw MessageTextTWO_6A
dw MessageTextTWO_6B
dw MessageTextTWO_6C
dw MessageTextTWO_6D
dw MessageTextTWO_6E
dw MessageTextTWO_6F
dw MessageTextTWO_70
dw MessageTextTWO_71
dw MessageTextTWO_72
dw MessageTextTWO_73
dw MessageTextTWO_74
dw MessageTextTWO_75
dw MessageTextTWO_76
dw MessageTextTWO_77
dw MessageTextTWO_78
dw MessageTextTWO_79
dw MessageTextTWO_7A
dw MessageTextTWO_7B
dw MessageTextTWO_7C
dw MessageTextTWO_7D
dw MessageTextTWO_7E
dw MessageTextTWO_7F
dw MessageTextTWO_80
dw MessageTextTWO_81
dw MessageTextTWO_82
dw MessageTextTWO_83
dw MessageTextTWO_84
dw MessageTextTWO_85
dw MessageTextTWO_86
dw MessageTextTWO_87
dw MessageTextTWO_88
dw MessageTextTWO_89
dw MessageTextTWO_8A
dw MessageTextTWO_8B
dw MessageTextTWO_8C
dw MessageTextTWO_8D
dw MessageTextTWO_8E
dw MessageTextTWO_8F
dw MessageTextTWO_90
dw MessageTextTWO_91
dw MessageTextTWO_92
dw MessageTextTWO_93
dw MessageTextTWO_94
dw MessageTextTWO_95
dw MessageTextTWO_96
dw MessageTextTWO_97
dw MessageTextTWO_98
dw MessageTextTWO_99
dw MessageTextTWO_9A
dw MessageTextTWO_9B
dw MessageTextTWO_9C
dw MessageTextTWO_9D
dw MessageTextTWO_9E
dw MessageTextTWO_9F
dw MessageTextTWO_A0
dw MessageTextTWO_A1
dw MessageTextTWO_A2
dw MessageTextTWO_A3
dw MessageTextTWO_A4
dw MessageTextTWO_A5
dw MessageTextTWO_A6
dw MessageTextTWO_A7
dw MessageTextTWO_A8
dw MessageTextTWO_A9
dw MessageTextTWO_AA
dw MessageTextTWO_AB
dw MessageTextTWO_AC
dw MessageTextTWO_AD
dw MessageTextTWO_AE
dw MessageTextTWO_AF
dw MessageTextTWO_B0
dw MessageTextTWO_B1
dw MessageTextTWO_B2
dw MessageTextTWO_B3
dw MessageTextTWO_B4
dw MessageTextTWO_B5
dw MessageTextTWO_B6
dw MessageTextTWO_B7
dw MessageTextTWO_B8
dw MessageTextTWO_B9
dw MessageTextTWO_BA
dw MessageTextTWO_BB
dw MessageTextTWO_BC
dw MessageTextTWO_BD
dw MessageTextTWO_BE
dw MessageTextTWO_BF
dw MessageTextTWO_C0
dw MessageTextTWO_C1
dw MessageTextTWO_C2
dw MessageTextTWO_C3
dw MessageTextTWO_C4
dw MessageTextTWO_C5
dw MessageTextTWO_C6
dw MessageTextTWO_C7
dw MessageTextTWO_C8
dw MessageTextTWO_C9
dw MessageTextTWO_CA
dw MessageTextTWO_CB
dw MessageTextTWO_CC
dw MessageTextTWO_CD
dw MessageTextTWO_CE
dw MessageTextTWO_CF
dw MessageTextTWO_D0
dw MessageTextTWO_D1
dw MessageTextTWO_D2
dw MessageTextTWO_D3
dw MessageTextTWO_D4
dw MessageTextTWO_D5
dw MessageTextTWO_D6
dw MessageTextTWO_D7
dw MessageTextTWO_D8
dw MessageTextTWO_D9
dw MessageTextTWO_DA
dw MessageTextTWO_DB
dw MessageTextTWO_DC
dw MessageTextTWO_DD
dw MessageTextTWO_DE
dw MessageTextTWO_DF
dw MessageTextTWO_E0
dw MessageTextTWO_E1
dw MessageTextTWO_E2
dw MessageTextTWO_E3
dw MessageTextTWO_E4
dw MessageTextTWO_E5
dw MessageTextTWO_E6
dw MessageTextTWO_E7
dw MessageTextTWO_E8
dw MessageTextTWO_E9
dw MessageTextTWO_EA
dw MessageTextTWO_EB
dw MessageTextTWO_EC
dw MessageTextTWO_ED
dw MessageTextTWO_EE
dw MessageTextTWO_EF
dw MessageTextTWO_F0
dw MessageTextTWO_F1
dw MessageTextTWO_F2
dw MessageTextTWO_F3
dw MessageTextTWO_F4
dw MessageTextTWO_F5
dw MessageTextTWO_F6
dw MessageTextTWO_F7
dw MessageTextTWO_F8
dw MessageTextTWO_F9
dw MessageTextTWO_FA
dw MessageTextTWO_FB
dw MessageTextTWO_FC
dw MessageTextTWO_FD
dw MessageTextTWO_FE
dw MessageTextTWO_FF
dw MessageTextTWO_100
dw MessageTextTWO_101
dw MessageTextTWO_102
dw MessageTextTWO_103
dw MessageTextTWO_104
dw MessageTextTWO_105
dw MessageTextTWO_106
dw MessageTextTWO_107
dw MessageTextTWO_108
dw MessageTextTWO_109
dw MessageTextTWO_10A
dw MessageTextTWO_10B
dw MessageTextTWO_10C
dw MessageTextTWO_10D
dw MessageTextTWO_10E
dw MessageTextTWO_10F
dw MessageTextTWO_110
dw MessageTextTWO_111
dw MessageTextTWO_112
dw MessageTextTWO_113
dw MessageTextTWO_114
dw MessageTextTWO_115
dw MessageTextTWO_116
dw MessageTextTWO_117
dw MessageTextTWO_118
dw MessageTextTWO_119
dw MessageTextTWO_11A
dw MessageTextTWO_11B
dw MessageTextTWO_11C
dw MessageTextTWO_11D
dw MessageTextTWO_11E
dw MessageTextTWO_11F
dw MessageTextTWO_120
dw MessageTextTWO_121
dw MessageTextTWO_122
dw MessageTextTWO_123
dw MessageTextTWO_124
dw MessageTextTWO_125
dw MessageTextTWO_126
dw MessageTextTWO_127
dw MessageTextTWO_128
dw MessageTextTWO_129
dw MessageTextTWO_12A
dw MessageTextTWO_12B
dw MessageTextTWO_12C
dw MessageTextTWO_12D
dw MessageTextTWO_12E
dw MessageTextTWO_12F
dw MessageTextTWO_130
dw MessageTextTWO_131
dw MessageTextTWO_132
dw MessageTextTWO_133
dw MessageTextTWO_134
dw MessageTextTWO_135
dw MessageTextTWO_136
dw MessageTextTWO_137
dw MessageTextTWO_138
dw MessageTextTWO_139
dw MessageTextTWO_13A
dw MessageTextTWO_13B
dw MessageTextTWO_13C
dw MessageTextTWO_13D
dw MessageTextTWO_13E
dw MessageTextTWO_13F
dw MessageTextTWO_140
dw MessageTextTWO_141
dw MessageTextTWO_142
dw MessageTextTWO_143
dw MessageTextTWO_144
dw MessageTextTWO_145
dw MessageTextTWO_146
dw MessageTextTWO_147
dw MessageTextTWO_148
dw MessageTextTWO_149
dw MessageTextTWO_14A
dw MessageTextTWO_14B
dw MessageTextTWO_14C
dw MessageTextTWO_14D
dw MessageTextTWO_14E
dw MessageTextTWO_14F
dw MessageTextTWO_150
dw MessageTextTWO_151
dw MessageTextTWO_152
dw MessageTextTWO_153
dw MessageTextTWO_154
dw MessageTextTWO_155
dw MessageTextTWO_156
dw MessageTextTWO_157
dw MessageTextTWO_158
dw MessageTextTWO_159
dw MessageTextTWO_15A
dw MessageTextTWO_15B
dw MessageTextTWO_15C
dw MessageTextTWO_15D
dw MessageTextTWO_15E
dw MessageTextTWO_15F
dw MessageTextTWO_160
dw MessageTextTWO_161
dw MessageTextTWO_162
dw MessageTextTWO_163
dw MessageTextTWO_164
dw MessageTextTWO_165
dw MessageTextTWO_166
dw MessageTextTWO_167
dw MessageTextTWO_168
dw MessageTextTWO_169
dw MessageTextTWO_16A
dw MessageTextTWO_16B
dw MessageTextTWO_16C
dw MessageTextTWO_16D
dw MessageTextTWO_16E
dw MessageTextTWO_16F
dw MessageTextTWO_170
dw MessageTextTWO_171
dw MessageTextTWO_172
dw MessageTextTWO_173
dw MessageTextTWO_174
dw MessageTextTWO_175
dw MessageTextTWO_176
dw MessageTextTWO_177
dw MessageTextTWO_178
dw MessageTextTWO_179
dw MessageTextTWO_17A
dw MessageTextTWO_17B
dw MessageTextTWO_17C
dw MessageTextTWO_17D
dw MessageTextTWO_17E
dw MessageTextTWO_17F
dw MessageTextTWO_180
dw MessageTextTWO_181
dw MessageTextTWO_182
dw MessageTextTWO_183
dw MessageTextTWO_184
dw MessageTextTWO_185
dw MessageTextTWO_186
dw MessageTextTWO_187
dw MessageTextTWO_188
dw MessageTextTWO_189
dw MessageTextTWO_18A
dw MessageTextTWO_18B
dw MessageTextTWO_18C
dw MessageTextTWO_18D
dw MessageTextTWO_18E
dw MessageTextTWO_18F
dw MessageTextTWO_190
dw MessageTextTWO_191
dw MessageTextTWO_192
dw MessageTextTWO_193
dw MessageTextTWO_194
dw MessageTextTWO_195
dw MessageTextTWO_196
dw MessageTextTWO_197
dw MessageTextTWO_198
dw MessageTextTWO_199
dw MessageTextTWO_19A
dw MessageTextTWO_19B
dw MessageTextTWO_19C
dw MessageTextTWO_19D
dw MessageTextTWO_19E
dw MessageTextTWO_19F
dw MessageTextTWO_1A0
dw MessageTextTWO_1A1
dw MessageTextTWO_1A2
dw MessageTextTWO_1A3
dw MessageTextTWO_1A4
dw MessageTextTWO_1A5
dw MessageTextTWO_1A6
dw MessageTextTWO_1A7
dw MessageTextTWO_1A8
dw MessageTextTWO_1A9
dw MessageTextTWO_1AA
dw MessageTextTWO_1AB
dw MessageTextTWO_1AC
dw MessageTextTWO_1AD
dw MessageTextTWO_1AE
dw MessageTextTWO_1AF
dw MessageTextTWO_1B0
dw MessageTextTWO_1B1
dw MessageTextTWO_1B2
dw MessageTextTWO_1B3
dw MessageTextTWO_1B4
dw MessageTextTWO_1B5
dw MessageTextTWO_1B6
dw MessageTextTWO_1B7
dw MessageTextTWO_1B8
dw MessageTextTWO_1B9
dw MessageTextTWO_1BA
dw MessageTextTWO_1BB
dw MessageTextTWO_1BC
dw MessageTextTWO_1BD
dw MessageTextTWO_1BE
dw MessageTextTWO_1BF
dw MessageTextTWO_1C0
dw MessageTextTWO_1C1
dw MessageTextTWO_1C2
dw MessageTextTWO_1C3
dw MessageTextTWO_1C4
dw MessageTextTWO_1C5
dw MessageTextTWO_1C6
dw MessageTextTWO_1C7
dw MessageTextTWO_1C8
dw MessageTextTWO_1C9
dw MessageTextTWO_1CA
dw MessageTextTWO_1CB
dw MessageTextTWO_1CC
dw MessageTextTWO_1CD
dw MessageTextTWO_1CE
dw MessageTextTWO_1CF
dw MessageTextTWO_1D0
dw MessageTextTWO_1D1
dw MessageTextTWO_1D2
dw MessageTextTWO_1D3
dw MessageTextTWO_1D4
dw MessageTextTWO_1D5
dw MessageTextTWO_1D6
dw MessageTextTWO_1D7
dw MessageTextTWO_1D8
dw MessageTextTWO_1D9
dw MessageTextTWO_1DA
dw MessageTextTWO_1DB
dw MessageTextTWO_1DC
dw MessageTextTWO_1DD
dw MessageTextTWO_1DE
dw MessageTextTWO_1DF
dw MessageTextTWO_1E0
dw MessageTextTWO_1E1
dw MessageTextTWO_1E2
dw MessageTextTWO_1E3
dw MessageTextTWO_1E4
dw MessageTextTWO_1E5
dw MessageTextTWO_1E6
dw MessageTextTWO_1E7
dw MessageTextTWO_1E8
dw MessageTextTWO_1E9
dw MessageTextTWO_1EA
dw MessageTextTWO_1EB
dw MessageTextTWO_1EC
dw MessageTextTWO_1ED
dw MessageTextTWO_1EE
dw MessageTextTWO_1EF
dw MessageTextTWO_1F0
dw MessageTextTWO_1F1
dw MessageTextTWO_1F2
dw MessageTextTWO_1F3
dw MessageTextTWO_1F4
dw MessageTextTWO_1F5
dw MessageTextTWO_1F6
dw MessageTextTWO_1F7
dw MessageTextTWO_1F8
dw MessageTextTWO_1F9
dw MessageTextTWO_1FA
dw MessageTextTWO_1FB
dw MessageTextTWO_1FC
dw MessageTextTWO_1FD
dw MessageTextTWO_1FE
dw MessageTextTWO_1FF
dw MessageTextTWO_200
dw MessageTextTWO_201
dw MessageTextTWO_202
dw MessageTextTWO_203
dw MessageTextTWO_204
dw MessageTextTWO_205
dw MessageTextTWO_206
dw MessageTextTWO_207
dw MessageTextTWO_208
dw MessageTextTWO_209
dw MessageTextTWO_20A
dw MessageTextTWO_20B
dw MessageTextTWO_20C
dw MessageTextTWO_20D
dw MessageTextTWO_20E
dw MessageTextTWO_20F
dw MessageTextTWO_210
dw MessageTextTWO_211
dw MessageTextTWO_212
dw MessageTextTWO_213
dw MessageTextTWO_214
dw MessageTextTWO_215
dw MessageTextTWO_216
dw MessageTextTWO_217
dw MessageTextTWO_218
dw MessageTextTWO_219
dw MessageTextTWO_21A
dw MessageTextTWO_21B
dw MessageTextTWO_21C
dw MessageTextTWO_21D
dw MessageTextTWO_21E
dw MessageTextTWO_21F
dw MessageTextTWO_220
dw MessageTextTWO_221
dw MessageTextTWO_222
dw MessageTextTWO_223
dw MessageTextTWO_224
dw MessageTextTWO_225
dw MessageTextTWO_226
dw MessageTextTWO_227
dw MessageTextTWO_228
dw MessageTextTWO_229
dw MessageTextTWO_22A
dw MessageTextTWO_22B
dw MessageTextTWO_22C
dw MessageTextTWO_22D
dw MessageTextTWO_22E
dw MessageTextTWO_22F
dw MessageTextTWO_230
dw MessageTextTWO_231
dw MessageTextTWO_232
dw MessageTextTWO_233
dw MessageTextTWO_234
dw MessageTextTWO_235
dw MessageTextTWO_236
dw MessageTextTWO_237
dw MessageTextTWO_238
dw MessageTextTWO_239
dw MessageTextTWO_23A
dw MessageTextTWO_23B
dw MessageTextTWO_23C
dw MessageTextTWO_23D
dw MessageTextTWO_23E
dw MessageTextTWO_23F
dw MessageTextTWO_240
dw MessageTextTWO_241
dw MessageTextTWO_242
dw MessageTextTWO_243
dw MessageTextTWO_244
dw MessageTextTWO_245
dw MessageTextTWO_246
dw MessageTextTWO_247
dw MessageTextTWO_248
dw MessageTextTWO_249
dw MessageTextTWO_24A
dw MessageTextTWO_24B
dw MessageTextTWO_24C
dw MessageTextTWO_24D
dw MessageTextTWO_24E
dw MessageTextTWO_24F
dw MessageTextTWO_250
dw MessageTextTWO_251
dw MessageTextTWO_252
dw MessageTextTWO_253
dw MessageTextTWO_254
dw MessageTextTWO_255
dw MessageTextTWO_256
dw MessageTextTWO_257
dw MessageTextTWO_258
dw MessageTextTWO_259
dw MessageTextTWO_25A
dw MessageTextTWO_25B
dw MessageTextTWO_25C
dw MessageTextTWO_25D
dw MessageTextTWO_25E
dw MessageTextTWO_25F
dw MessageTextTWO_260
dw MessageTextTWO_261
dw MessageTextTWO_262
dw MessageTextTWO_263
dw MessageTextTWO_264
dw MessageTextTWO_265
dw MessageTextTWO_266
dw MessageTextTWO_267
dw MessageTextTWO_268
dw MessageTextTWO_269
dw MessageTextTWO_26A
dw MessageTextTWO_26B
dw MessageTextTWO_26C
dw MessageTextTWO_26D
dw MessageTextTWO_26E
dw MessageTextTWO_26F
dw MessageTextTWO_270
dw MessageTextTWO_271
dw MessageTextTWO_272
dw MessageTextTWO_273
dw MessageTextTWO_274
dw MessageTextTWO_275
dw MessageTextTWO_276
dw MessageTextTWO_277
dw MessageTextTWO_278
dw MessageTextTWO_279
dw MessageTextTWO_27A
dw MessageTextTWO_27B
dw MessageTextTWO_27C
dw MessageTextTWO_27D
dw MessageTextTWO_27E
dw MessageTextTWO_27F
dw MessageTextTWO_280
dw MessageTextTWO_281
dw MessageTextTWO_282
dw MessageTextTWO_283
dw MessageTextTWO_284
dw MessageTextTWO_285
dw MessageTextTWO_286
dw MessageTextTWO_287
dw MessageTextTWO_288
dw MessageTextTWO_289
dw MessageTextTWO_28A
dw MessageTextTWO_28B
dw MessageTextTWO_28C
dw MessageTextTWO_28D
dw MessageTextTWO_28E
dw MessageTextTWO_28F
dw MessageTextTWO_290
dw MessageTextTWO_291
dw MessageTextTWO_292
dw MessageTextTWO_293
dw MessageTextTWO_294
dw MessageTextTWO_295
dw MessageTextTWO_296
dw MessageTextTWO_297
dw MessageTextTWO_298
dw MessageTextTWO_299
dw MessageTextTWO_29A
dw MessageTextTWO_29B
dw MessageTextTWO_29C
dw MessageTextTWO_29D
dw MessageTextTWO_29E
dw MessageTextTWO_29F
dw MessageTextTWO_2A0
dw MessageTextTWO_2A1
dw MessageTextTWO_2A2
dw MessageTextTWO_2A3
dw MessageTextTWO_2A4
dw MessageTextTWO_2A5
dw MessageTextTWO_2A6
dw MessageTextTWO_2A7
dw MessageTextTWO_2A8
dw MessageTextTWO_2A9
dw MessageTextTWO_2AA
dw MessageTextTWO_2AB
dw MessageTextTWO_2AC
dw MessageTextTWO_2AD
dw MessageTextTWO_2AE
dw MessageTextTWO_2AF
dw MessageTextTWO_2B0
dw MessageTextTWO_2B1
dw MessageTextTWO_2B2
dw MessageTextTWO_2B3
dw MessageTextTWO_2B4
dw MessageTextTWO_2B5
dw MessageTextTWO_2B6
dw MessageTextTWO_2B7
dw MessageTextTWO_2B8
dw MessageTextTWO_2B9
dw MessageTextTWO_2BA
dw MessageTextTWO_2BB
dw MessageTextTWO_2BC
dw MessageTextTWO_2BD
dw MessageTextTWO_2BE
dw MessageTextTWO_2BF
dw MessageTextTWO_2C0
dw MessageTextTWO_2C1
dw MessageTextTWO_2C2
dw MessageTextTWO_2C3
dw MessageTextTWO_2C4
dw MessageTextTWO_2C5
dw MessageTextTWO_2C6
dw MessageTextTWO_2C7
dw MessageTextTWO_2C8
dw MessageTextTWO_2C9
dw MessageTextTWO_2CA
dw MessageTextTWO_2CB
dw MessageTextTWO_2CC
dw MessageTextTWO_2CD
dw MessageTextTWO_2CE
dw MessageTextTWO_2CF
dw MessageTextTWO_2D0
dw MessageTextTWO_2D1
dw MessageTextTWO_2D2
dw MessageTextTWO_2D3
dw MessageTextTWO_2D4
dw MessageTextTWO_2D5
dw MessageTextTWO_2D6
dw MessageTextTWO_2D7
dw MessageTextTWO_2D8
dw MessageTextTWO_2D9
dw MessageTextTWO_2DA
dw MessageTextTWO_2DB
dw MessageTextTWO_2DC
dw MessageTextTWO_2DD
dw MessageTextTWO_2DE
dw MessageTextTWO_2DF
dw MessageTextTWO_2E0
dw MessageTextTWO_2E1
dw MessageTextTWO_2E2
dw MessageTextTWO_2E3
dw MessageTextTWO_2E4
dw MessageTextTWO_2E5
dw MessageTextTWO_2E6
dw MessageTextTWO_2E7
dw MessageTextTWO_2E8
dw MessageTextTWO_2E9
dw MessageTextTWO_2EA
dw MessageTextTWO_2EB
dw MessageTextTWO_2EC
dw MessageTextTWO_2ED
dw MessageTextTWO_2EE
dw MessageTextTWO_2EF
dw MessageTextTWO_2F0
dw MessageTextTWO_2F1
dw MessageTextTWO_2F2
dw MessageTextTWO_2F3
dw MessageTextTWO_2F4
dw MessageTextTWO_2F5
dw MessageTextTWO_2F6
dw MessageTextTWO_2F7
dw MessageTextTWO_2F8
dw MessageTextTWO_2F9
dw MessageTextTWO_2FA
dw MessageTextTWO_2FB
dw MessageTextTWO_2FC
dw MessageTextTWO_2FD
dw MessageTextTWO_2FE
dw MessageTextTWO_2FF
dw MessageTextTWO_300
dw MessageTextTWO_301
dw MessageTextTWO_302
dw MessageTextTWO_303
dw MessageTextTWO_304
dw MessageTextTWO_305
dw MessageTextTWO_306
dw MessageTextTWO_307
dw MessageTextTWO_308
dw MessageTextTWO_309
dw MessageTextTWO_30A
dw MessageTextTWO_30B
dw MessageTextTWO_30C
dw MessageTextTWO_30D
dw MessageTextTWO_30E
dw MessageTextTWO_30F
dw MessageTextTWO_310
dw MessageTextTWO_311
dw MessageTextTWO_312
dw MessageTextTWO_313
dw MessageTextTWO_314
dw MessageTextTWO_315
dw MessageTextTWO_316
dw MessageTextTWO_317
dw MessageTextTWO_318
dw MessageTextTWO_319
dw MessageTextTWO_31A
dw MessageTextTWO_31B
dw MessageTextTWO_31C
dw MessageTextTWO_31D
dw MessageTextTWO_31E
dw MessageTextTWO_31F
dw MessageTextTWO_320
dw MessageTextTWO_321
dw MessageTextTWO_322
dw MessageTextTWO_323
dw MessageTextTWO_324
dw MessageTextTWO_325
dw MessageTextTWO_326
dw MessageTextTWO_327
dw MessageTextTWO_328
dw MessageTextTWO_329
dw MessageTextTWO_32A
dw MessageTextTWO_32B
dw MessageTextTWO_32C
dw MessageTextTWO_32D
dw MessageTextTWO_32E
dw MessageTextTWO_32F
dw MessageTextTWO_330
dw MessageTextTWO_331
dw MessageTextTWO_332
dw MessageTextTWO_333
dw MessageTextTWO_334
dw MessageTextTWO_335
dw MessageTextTWO_336
dw MessageTextTWO_337
dw MessageTextTWO_338
dw MessageTextTWO_339
dw MessageTextTWO_33A
dw MessageTextTWO_33B
dw MessageTextTWO_33C
dw MessageTextTWO_33D
dw MessageTextTWO_33E
dw MessageTextTWO_33F
dw MessageTextTWO_340
dw MessageTextTWO_341
dw MessageTextTWO_342
dw MessageTextTWO_343
dw MessageTextTWO_344
dw MessageTextTWO_345
dw MessageTextTWO_346
dw MessageTextTWO_347
dw MessageTextTWO_348
dw MessageTextTWO_349
dw MessageTextTWO_34A
dw MessageTextTWO_34B
dw MessageTextTWO_34C
dw MessageTextTWO_34D
dw MessageTextTWO_34E
dw MessageTextTWO_34F
dw MessageTextTWO_350
dw MessageTextTWO_351
dw MessageTextTWO_352
dw MessageTextTWO_353
dw MessageTextTWO_354
dw MessageTextTWO_355
dw MessageTextTWO_356
dw MessageTextTWO_357
dw MessageTextTWO_358
dw MessageTextTWO_359
dw MessageTextTWO_35A
dw MessageTextTWO_35B
dw MessageTextTWO_35C
dw MessageTextTWO_35D
dw MessageTextTWO_35E
dw MessageTextTWO_35F
dw MessageTextTWO_360
dw MessageTextTWO_361
dw MessageTextTWO_362
dw MessageTextTWO_363
dw MessageTextTWO_364
dw MessageTextTWO_365
dw MessageTextTWO_366
dw MessageTextTWO_367
dw MessageTextTWO_368
dw MessageTextTWO_369
dw MessageTextTWO_36A
dw MessageTextTWO_36B
dw MessageTextTWO_36C
dw MessageTextTWO_36D
dw MessageTextTWO_36E
dw MessageTextTWO_36F
dw MessageTextTWO_370
dw MessageTextTWO_371
dw MessageTextTWO_372
dw MessageTextTWO_373
dw MessageTextTWO_374
dw MessageTextTWO_375
dw MessageTextTWO_376
dw MessageTextTWO_377
dw MessageTextTWO_378
dw MessageTextTWO_379
dw MessageTextTWO_37A
dw MessageTextTWO_37B
dw MessageTextTWO_37C
dw MessageTextTWO_37D
dw MessageTextTWO_37E
dw MessageTextTWO_37F
dw MessageTextTWO_380
dw MessageTextTWO_381
dw MessageTextTWO_382
dw MessageTextTWO_383
dw MessageTextTWO_384
dw MessageTextTWO_385
dw MessageTextTWO_386
dw MessageTextTWO_387
dw MessageTextTWO_388
dw MessageTextTWO_389
dw MessageTextTWO_38A
dw MessageTextTWO_38B
dw MessageTextTWO_38C
dw MessageTextTWO_38D
dw MessageTextTWO_38E
dw MessageTextTWO_38F
dw MessageTextTWO_390
dw MessageTextTWO_391
dw MessageTextTWO_392
dw MessageTextTWO_393
dw MessageTextTWO_394
dw MessageTextTWO_395
dw MessageTextTWO_396
dw MessageTextTWO_397
dw MessageTextTWO_398
dw MessageTextTWO_399
dw MessageTextTWO_39A
dw MessageTextTWO_39B
dw MessageTextTWO_39C
dw MessageTextTWO_39D
dw MessageTextTWO_39E
dw MessageTextTWO_39F
dw MessageTextTWO_3A0


MessageTextTWO_120:
MessageTextTWO_121:
MessageTextTWO_122:
MessageTextTWO_123:
MessageTextTWO_124:
MessageTextTWO_125:
MessageTextTWO_126:
MessageTextTWO_127:
MessageTextTWO_128:
MessageTextTWO_129:
MessageTextTWO_12A:
MessageTextTWO_12B:
MessageTextTWO_12C:
MessageTextTWO_12D:
MessageTextTWO_12E:
MessageTextTWO_12F:
MessageTextTWO_130:
MessageTextTWO_131:
MessageTextTWO_132:
MessageTextTWO_133:
MessageTextTWO_134:
MessageTextTWO_135:
MessageTextTWO_136:
MessageTextTWO_137:
MessageTextTWO_138:
MessageTextTWO_139:
MessageTextTWO_13A:
MessageTextTWO_13B:
MessageTextTWO_13C:
MessageTextTWO_13D:
MessageTextTWO_13E:
MessageTextTWO_13F:
MessageTextTWO_140:
MessageTextTWO_141:
MessageTextTWO_142:
MessageTextTWO_143:
MessageTextTWO_144:
MessageTextTWO_145:
MessageTextTWO_146:
MessageTextTWO_147:
MessageTextTWO_148:
MessageTextTWO_149:
MessageTextTWO_14A:
MessageTextTWO_14B:
MessageTextTWO_14C:
MessageTextTWO_14D:
MessageTextTWO_14E:
MessageTextTWO_14F:
MessageTextTWO_150:
MessageTextTWO_151:
MessageTextTWO_152:
MessageTextTWO_153:
MessageTextTWO_154:
MessageTextTWO_155:
MessageTextTWO_156:
MessageTextTWO_157:
MessageTextTWO_158:
MessageTextTWO_159:
MessageTextTWO_15A:
MessageTextTWO_15B:
MessageTextTWO_15C:
MessageTextTWO_15D:
MessageTextTWO_15E:
MessageTextTWO_15F:
MessageTextTWO_160:
MessageTextTWO_161:
MessageTextTWO_162:
MessageTextTWO_163:
MessageTextTWO_164:
MessageTextTWO_165:
MessageTextTWO_166:
MessageTextTWO_167:
MessageTextTWO_168:
MessageTextTWO_169:
MessageTextTWO_16A:
MessageTextTWO_16B:
MessageTextTWO_16C:
MessageTextTWO_16D:
MessageTextTWO_16E:
MessageTextTWO_16F:
MessageTextTWO_170:
MessageTextTWO_171:
MessageTextTWO_172:
MessageTextTWO_173:
MessageTextTWO_174:
MessageTextTWO_175:
MessageTextTWO_176:
MessageTextTWO_177:
MessageTextTWO_178:
MessageTextTWO_179:
MessageTextTWO_17A:
MessageTextTWO_17B:
MessageTextTWO_17C:
MessageTextTWO_17D:
MessageTextTWO_17E:
MessageTextTWO_17F:
MessageTextTWO_180:
MessageTextTWO_181:
MessageTextTWO_182:
MessageTextTWO_183:
MessageTextTWO_184:
MessageTextTWO_185:
MessageTextTWO_186:
MessageTextTWO_187:
MessageTextTWO_188:
MessageTextTWO_189:
MessageTextTWO_18A:
MessageTextTWO_18B:
MessageTextTWO_18C:
MessageTextTWO_18D:
MessageTextTWO_18E:
MessageTextTWO_18F:
MessageTextTWO_190:
MessageTextTWO_191:
MessageTextTWO_192:
MessageTextTWO_193:
MessageTextTWO_194:
MessageTextTWO_195:
MessageTextTWO_196:
MessageTextTWO_197:
MessageTextTWO_198:
MessageTextTWO_199:
MessageTextTWO_19A:
MessageTextTWO_19B:
MessageTextTWO_19C:
MessageTextTWO_19D:
MessageTextTWO_19E:
MessageTextTWO_19F:
MessageTextTWO_1A0:
MessageTextTWO_1A1:
MessageTextTWO_1A2:
MessageTextTWO_1A3:
MessageTextTWO_1A4:
MessageTextTWO_1A5:
MessageTextTWO_1A6:
MessageTextTWO_1A7:
MessageTextTWO_1A8:
MessageTextTWO_1A9:
MessageTextTWO_1AA:
MessageTextTWO_1AB:
MessageTextTWO_1AC:
MessageTextTWO_1AD:
MessageTextTWO_1AE:
MessageTextTWO_1AF:
MessageTextTWO_1B0:
MessageTextTWO_1B1:
MessageTextTWO_1B2:
MessageTextTWO_1B3:
MessageTextTWO_1B4:
MessageTextTWO_1B5:
MessageTextTWO_1B6:
MessageTextTWO_1B7:
MessageTextTWO_1B8:
MessageTextTWO_1B9:
MessageTextTWO_1BA:
MessageTextTWO_1BB:
MessageTextTWO_1BC:
MessageTextTWO_1BD:
MessageTextTWO_1BE:
MessageTextTWO_1BF:
MessageTextTWO_1C0:
MessageTextTWO_1C1:
MessageTextTWO_1C2:
MessageTextTWO_1C3:
MessageTextTWO_1C4:
MessageTextTWO_1C5:
MessageTextTWO_1C6:
MessageTextTWO_1C7:
MessageTextTWO_1C8:
MessageTextTWO_1C9:
MessageTextTWO_1CA:
MessageTextTWO_1CB:
MessageTextTWO_1CC:
MessageTextTWO_1CD:
MessageTextTWO_1CE:
MessageTextTWO_1CF:
MessageTextTWO_1D0:
MessageTextTWO_1D1:
MessageTextTWO_1D2:
MessageTextTWO_1D3:
MessageTextTWO_1D4:
MessageTextTWO_1D5:
MessageTextTWO_1D6:
MessageTextTWO_1D7:
MessageTextTWO_1D8:
MessageTextTWO_1D9:
MessageTextTWO_1DA:
MessageTextTWO_1DB:
MessageTextTWO_1DC:
MessageTextTWO_1DD:
MessageTextTWO_1DE:
MessageTextTWO_1DF:
MessageTextTWO_1E0:
MessageTextTWO_1E1:
MessageTextTWO_1E2:
MessageTextTWO_1E3:
MessageTextTWO_1E4:
MessageTextTWO_1E5:
MessageTextTWO_1E6:
MessageTextTWO_1E7:
MessageTextTWO_1E8:
MessageTextTWO_1E9:
MessageTextTWO_1EA:
MessageTextTWO_1EB:
MessageTextTWO_1EC:
MessageTextTWO_1ED:
MessageTextTWO_1EE:
MessageTextTWO_1EF:
MessageTextTWO_1F0:
MessageTextTWO_1F1:
MessageTextTWO_1F2:
MessageTextTWO_1F3:
MessageTextTWO_1F4:
MessageTextTWO_1F5:
MessageTextTWO_1F6:
MessageTextTWO_1F7:
MessageTextTWO_1F8:
MessageTextTWO_1F9:
MessageTextTWO_1FA:
MessageTextTWO_1FB:
MessageTextTWO_1FC:
MessageTextTWO_1FD:
MessageTextTWO_1FE:
MessageTextTWO_1FF:
MessageTextTWO_200:
MessageTextTWO_201:
MessageTextTWO_202:
MessageTextTWO_203:
MessageTextTWO_204:
MessageTextTWO_205:
MessageTextTWO_206:
MessageTextTWO_207:
MessageTextTWO_208:
MessageTextTWO_209:
MessageTextTWO_20A:
MessageTextTWO_20B:
MessageTextTWO_20C:
MessageTextTWO_20D:
MessageTextTWO_20E:
MessageTextTWO_20F:
MessageTextTWO_210:
MessageTextTWO_211:
MessageTextTWO_212:
MessageTextTWO_213:
MessageTextTWO_214:
MessageTextTWO_215:
MessageTextTWO_216:
MessageTextTWO_217:
MessageTextTWO_218:
MessageTextTWO_219:
MessageTextTWO_21A:
MessageTextTWO_21B:
MessageTextTWO_21C:
MessageTextTWO_21D:
MessageTextTWO_21E:
MessageTextTWO_21F:
MessageTextTWO_220:
MessageTextTWO_221:
MessageTextTWO_222:
MessageTextTWO_223:
MessageTextTWO_224:
MessageTextTWO_225:
MessageTextTWO_226:
MessageTextTWO_227:
MessageTextTWO_228:
MessageTextTWO_229:
MessageTextTWO_22A:
MessageTextTWO_22B:
MessageTextTWO_22C:
MessageTextTWO_22D:
MessageTextTWO_22E:
MessageTextTWO_22F:
MessageTextTWO_230:
MessageTextTWO_231:
MessageTextTWO_232:
MessageTextTWO_233:
MessageTextTWO_234:
MessageTextTWO_235:
MessageTextTWO_236:
MessageTextTWO_237:
MessageTextTWO_238:
MessageTextTWO_239:
MessageTextTWO_23A:
MessageTextTWO_23B:
MessageTextTWO_23C:
MessageTextTWO_23D:
MessageTextTWO_23E:
MessageTextTWO_23F:
MessageTextTWO_240:
MessageTextTWO_241:
MessageTextTWO_242:
MessageTextTWO_243:
MessageTextTWO_244:
MessageTextTWO_245:
MessageTextTWO_246:
MessageTextTWO_247:
MessageTextTWO_248:
MessageTextTWO_249:
MessageTextTWO_24A:
MessageTextTWO_24B:
MessageTextTWO_24C:
MessageTextTWO_24D:
MessageTextTWO_24E:
MessageTextTWO_24F:
MessageTextTWO_250:
MessageTextTWO_251:
MessageTextTWO_252:
MessageTextTWO_253:
MessageTextTWO_254:
MessageTextTWO_255:
MessageTextTWO_256:
MessageTextTWO_257:
MessageTextTWO_258:
MessageTextTWO_259:
MessageTextTWO_25A:
MessageTextTWO_25B:
MessageTextTWO_25C:
MessageTextTWO_25D:
MessageTextTWO_25E:
MessageTextTWO_25F:
MessageTextTWO_260:
MessageTextTWO_261:
MessageTextTWO_262:
MessageTextTWO_263:
MessageTextTWO_264:
MessageTextTWO_265:
MessageTextTWO_266:
MessageTextTWO_267:
MessageTextTWO_268:
MessageTextTWO_269:
MessageTextTWO_26A:
MessageTextTWO_26B:
MessageTextTWO_26C:
MessageTextTWO_26D:
MessageTextTWO_26E:
MessageTextTWO_26F:
MessageTextTWO_270:
MessageTextTWO_271:
MessageTextTWO_272:
MessageTextTWO_273:
MessageTextTWO_274:
MessageTextTWO_275:
MessageTextTWO_276:
MessageTextTWO_277:
MessageTextTWO_278:
MessageTextTWO_279:
MessageTextTWO_27A:
MessageTextTWO_27B:
MessageTextTWO_27C:
MessageTextTWO_27D:
MessageTextTWO_27E:
MessageTextTWO_27F:
MessageTextTWO_280:
MessageTextTWO_281:
MessageTextTWO_282:
MessageTextTWO_283:
MessageTextTWO_284:
MessageTextTWO_285:
MessageTextTWO_286:
MessageTextTWO_287:
MessageTextTWO_288:
MessageTextTWO_289:
MessageTextTWO_28A:
MessageTextTWO_28B:
MessageTextTWO_28C:
MessageTextTWO_28D:
MessageTextTWO_28E:
MessageTextTWO_28F:
MessageTextTWO_290:
MessageTextTWO_291:
MessageTextTWO_292:
MessageTextTWO_293:
MessageTextTWO_294:
MessageTextTWO_295:
MessageTextTWO_296:
MessageTextTWO_297:
MessageTextTWO_298:
MessageTextTWO_299:
MessageTextTWO_29A:
MessageTextTWO_29B:
MessageTextTWO_29C:
MessageTextTWO_29D:
MessageTextTWO_29E:
MessageTextTWO_29F:
MessageTextTWO_2A0:
MessageTextTWO_2A1:
MessageTextTWO_2A2:
MessageTextTWO_2A3:
MessageTextTWO_2A4:
MessageTextTWO_2A5:
MessageTextTWO_2A6:
MessageTextTWO_2A7:
MessageTextTWO_2A8:
MessageTextTWO_2A9:
MessageTextTWO_2AA:
MessageTextTWO_2AB:
MessageTextTWO_2AC:
MessageTextTWO_2AD:
MessageTextTWO_2AE:
MessageTextTWO_2AF:
MessageTextTWO_2B0:
MessageTextTWO_2B1:
MessageTextTWO_2B2:
MessageTextTWO_2B3:
MessageTextTWO_2B4:
MessageTextTWO_2B5:
MessageTextTWO_2B6:
MessageTextTWO_2B7:
MessageTextTWO_2B8:
MessageTextTWO_2B9:
MessageTextTWO_2BA:
MessageTextTWO_2BB:
MessageTextTWO_2BC:
MessageTextTWO_2BD:
MessageTextTWO_2BE:
MessageTextTWO_2BF:
MessageTextTWO_2C0:
MessageTextTWO_2C1:
MessageTextTWO_2C2:
MessageTextTWO_2C3:
MessageTextTWO_2C4:
MessageTextTWO_2C5:
MessageTextTWO_2C6:
MessageTextTWO_2C7:
MessageTextTWO_2C8:
MessageTextTWO_2C9:
MessageTextTWO_2CA:
MessageTextTWO_2CB:
MessageTextTWO_2CC:
MessageTextTWO_2CD:
MessageTextTWO_2CE:
MessageTextTWO_2CF:
MessageTextTWO_2D0:
MessageTextTWO_2D1:
MessageTextTWO_2D2:
MessageTextTWO_2D3:
MessageTextTWO_2D4:
MessageTextTWO_2D5:
MessageTextTWO_2D6:
MessageTextTWO_2D7:
MessageTextTWO_2D8:
MessageTextTWO_2D9:
MessageTextTWO_2DA:
MessageTextTWO_2DB:
MessageTextTWO_2DC:
MessageTextTWO_2DD:
MessageTextTWO_2DE:
MessageTextTWO_2DF:
MessageTextTWO_2E0:
MessageTextTWO_2E1:
MessageTextTWO_2E2:
MessageTextTWO_2E3:
MessageTextTWO_2E4:
MessageTextTWO_2E5:
MessageTextTWO_2E6:
MessageTextTWO_2E7:
MessageTextTWO_2E8:
MessageTextTWO_2E9:
MessageTextTWO_2EA:
MessageTextTWO_2EB:
MessageTextTWO_2EC:
MessageTextTWO_2ED:
MessageTextTWO_2EE:
MessageTextTWO_2EF:
MessageTextTWO_2F0:
MessageTextTWO_2F1:
MessageTextTWO_2F2:
MessageTextTWO_2F3:
MessageTextTWO_2F4:
MessageTextTWO_2F5:
MessageTextTWO_2F6:
MessageTextTWO_2F7:
MessageTextTWO_2F8:
MessageTextTWO_2F9:
MessageTextTWO_2FA:
MessageTextTWO_2FB:
MessageTextTWO_2FC:
MessageTextTWO_2FD:
MessageTextTWO_2FE:
MessageTextTWO_2FF:
MessageTextTWO_300:
MessageTextTWO_301:
MessageTextTWO_302:
MessageTextTWO_303:
MessageTextTWO_304:
MessageTextTWO_305:
MessageTextTWO_306:
MessageTextTWO_307:
MessageTextTWO_308:
MessageTextTWO_309:
MessageTextTWO_30A:
MessageTextTWO_30B:
MessageTextTWO_30C:
MessageTextTWO_30D:
MessageTextTWO_30E:
MessageTextTWO_30F:
MessageTextTWO_310:
MessageTextTWO_311:
MessageTextTWO_312:
MessageTextTWO_313:
MessageTextTWO_314:
MessageTextTWO_315:
MessageTextTWO_316:
MessageTextTWO_317:
MessageTextTWO_318:
MessageTextTWO_319:
MessageTextTWO_31A:
MessageTextTWO_31B:
MessageTextTWO_31C:
MessageTextTWO_31D:
MessageTextTWO_31E:
MessageTextTWO_31F:
MessageTextTWO_320:
MessageTextTWO_321:
MessageTextTWO_322:
MessageTextTWO_323:
MessageTextTWO_324:
MessageTextTWO_325:
MessageTextTWO_326:
MessageTextTWO_327:
MessageTextTWO_328:
MessageTextTWO_329:
MessageTextTWO_32A:
MessageTextTWO_32B:
MessageTextTWO_32C:
MessageTextTWO_32D:
MessageTextTWO_32E:
MessageTextTWO_32F:
MessageTextTWO_330:
MessageTextTWO_331:
MessageTextTWO_332:
MessageTextTWO_333:
MessageTextTWO_334:
MessageTextTWO_335:
MessageTextTWO_336:
MessageTextTWO_337:
MessageTextTWO_338:
MessageTextTWO_339:
MessageTextTWO_33A:
MessageTextTWO_33B:
MessageTextTWO_33C:
MessageTextTWO_33D:
MessageTextTWO_33E:
MessageTextTWO_33F:
MessageTextTWO_340:
MessageTextTWO_341:
MessageTextTWO_342:
MessageTextTWO_343:
MessageTextTWO_344:
MessageTextTWO_345:
MessageTextTWO_346:
MessageTextTWO_347:
MessageTextTWO_348:
MessageTextTWO_349:
MessageTextTWO_34A:
MessageTextTWO_34B:
MessageTextTWO_34C:
MessageTextTWO_34D:
MessageTextTWO_34E:
MessageTextTWO_34F:
MessageTextTWO_350:
MessageTextTWO_351:
MessageTextTWO_352:
MessageTextTWO_353:
MessageTextTWO_354:
MessageTextTWO_355:
MessageTextTWO_356:
MessageTextTWO_357:
MessageTextTWO_358:
MessageTextTWO_359:
MessageTextTWO_35A:
MessageTextTWO_35B:
MessageTextTWO_35C:
MessageTextTWO_35D:
MessageTextTWO_35E:
MessageTextTWO_35F:
MessageTextTWO_360:
MessageTextTWO_361:
MessageTextTWO_362:
MessageTextTWO_363:
MessageTextTWO_364:
MessageTextTWO_365:
MessageTextTWO_366:
MessageTextTWO_367:
MessageTextTWO_368:
MessageTextTWO_369:
MessageTextTWO_36A:
MessageTextTWO_36B:
MessageTextTWO_36C:
MessageTextTWO_36D:
MessageTextTWO_36E:
MessageTextTWO_36F:
MessageTextTWO_370:
MessageTextTWO_371:
MessageTextTWO_372:
MessageTextTWO_373:
MessageTextTWO_374:
MessageTextTWO_375:
MessageTextTWO_376:
MessageTextTWO_377:
MessageTextTWO_378:
MessageTextTWO_379:
MessageTextTWO_37A:
MessageTextTWO_37B:
MessageTextTWO_37C:
MessageTextTWO_37D:
MessageTextTWO_37E:
MessageTextTWO_37F:
MessageTextTWO_380:
MessageTextTWO_381:
MessageTextTWO_382:
MessageTextTWO_383:
MessageTextTWO_384:
MessageTextTWO_385:
MessageTextTWO_386:
MessageTextTWO_387:
MessageTextTWO_388:
MessageTextTWO_389:
MessageTextTWO_38A:
MessageTextTWO_38B:
MessageTextTWO_38C:
MessageTextTWO_38D:
MessageTextTWO_38E:
MessageTextTWO_38F:
MessageTextTWO_390:
MessageTextTWO_391:
MessageTextTWO_392:
MessageTextTWO_393:
MessageTextTWO_394:
MessageTextTWO_395:
MessageTextTWO_396:
MessageTextTWO_397:
MessageTextTWO_398:
MessageTextTWO_399:
MessageTextTWO_39A:
MessageTextTWO_39B:
MessageTextTWO_39C:
MessageTextTWO_39D:
MessageTextTWO_39E:
MessageTextTWO_39F:
MessageTextTWO_3A0:
db $FF


MessageTextTWO_00:
db "MERMAIDS DO NOT" : db $FE
db "USE WEAPONS." : db $FE
db "THEY USE MAGIC" : db $FE
db "INSTEAD."
db $FF

MessageTextTWO_01:
db "APPARENTLY THERE" : db $FE
db "IS A MAGIC SHOP" : db $FE
db "THAT CAN TURN" : db $FE
db "YOU INTO A TWO" : db $FE

db "LEGGED HUMAN," : db $FE
db "BUT I DONT THINK" : db $FE
db "I COULD FALL IN" : db $FE
db "LOVE WITH A" : db $FE

db "A HUMAN OF LIGHT"
db $FF

MessageTextTWO_02:
db "WHAT, WHAT!"
db $FF

MessageTextTWO_03:
db "LONG TIME AGO" : db $FE
db "I WAS SO PRETTY."
db $FF

MessageTextTWO_04:
db "LIGHT AND " : db $FE
db "DARKNESS PEOPLE" : db $FE
db "SAY THAT EATING" : db $FE
db "THE FRUIT OF" : db $FE

db "LIFE WILL MAKE" : db $FE
db "YOU FEEL BETTER" : db $FE
db "WHEN YOU HAVE" : db $FE
db "USED ALL YOUR" : db $FE

db "STRENGTH." : db $FE
db "IT GROWS IN THE" : db $FE
db "LAND OF DARKNESS" : db $FE
db "SO WHY IS IT" : db $FE

db "POSSIBLE FOR" : db $FE
db "PEOPLE OF LIGHT" : db $FE
db "TO GET IT?"

db $FF

MessageTextTWO_05:
db "ITS OVER FOR ME" : db $2D, $3E, $FE
db "SNIF SNIF..." : db $2D, $3E
db $FF

MessageTextTWO_06:
db "YOU...?!" : db $FE
db "THERE ARE THREE" : db $FE
db "THINGS..."
db $FE

db "1ST THING IS" : db $FE
db "IT COST LOT OF" : db $FE
db "TO GET SICK..." : db $FE
db "SO IF YOU COULD" : db $FE

db "GIVE US 5000 RIL"
db $FF

MessageTextTWO_07:
db "2ND THING, THERE" : db $FE
db "IS SOMEWHERE IN" : db $FE
db "THIS VILLAGE A" : db $FE
db "MERMAID MEDECINE" : db $FE
db "PLEASE FIND IT.."
db $FF

MessageTextTWO_08:
db "3RD THING IS IF" : db $FE
db "YOU GIVE ME ALL" : db $FE
db "YOUR STRENGTH" : db $FE
db "I AM SURE I WILL" : db $FE
db "BE FINE..."
db $FF

MessageTextTWO_09:
db "I AM SORRY..." : db $FE
db "THE CHIEF ASKED" : db $FE
db "ME... BUT I AM" : db $FE
db "REALLY SICK..."
db $FF

MessageTextTWO_0A:
db "THE TREE OF LIFE" : db $FE
db "HAS BEEN REVIVED" : db $FE
db "SO I AM CURED!" : db $FE
db "THANKS TO YOU!"
db $FF

MessageTextTWO_0B:
db $D2, $3D
db $D2, $3D
db $D2, $3D
db $D2, $3D
db "!!!"
db $FF

MessageTextTWO_0C:
db !SMILEY, !SMILEY, !SMILEY, !SMILEY, !SMILEY, "!!!"
db $FF

MessageTextTWO_0D:
db "I AM HELPING." : db $FE
db "ITS HOT!!!"
db $FF

MessageTextTWO_0E:
db "COOKIE!"
db $FF

MessageTextTWO_0F:
db "GLUGLULGUG..." : db $FE
db "HIC!" : db $D2, $3C, $FE
db $FF

MessageTextTWO_10:
db "I AM BEETLE." : db $FE
db "MONSTERS LIKE" : db $FE
db "ME MIGHT" : db $FE
db "MIGHT BECOME" : db $FE
db "FRIENDS" : db $FE
db "WHILE FIGHTING."

db $FF

MessageTextTWO_11:
db "UP TO 5 PEOPLE" : db $FE
db "INCLUDING YOU" : db $FE
db "CAN TRAVEL" : db $FE
db "TOGETHER"
db $FF

MessageTextTWO_12:
db "HAVE YOU FOUND" : db $FE
db "A FRIEND YOU" : db $FE
db "LIKE?"
db $FF

MessageTextTWO_13:
db "MY EYES ARE" : db $FE
db "PRETTY" : db $D2, $3D
db $FF

MessageTextTWO_14:
db "PIWI", !PAW, " MY FRIEND" : db $FE
db !NYMPHIE, " IS STUCK" : db $FE
db "IN THE MINA TREE"
db $FF

MessageTextTWO_15:
db "PIUUU!" : db $FE
db "I WILL WAIT FOR" : db $FE
db "YOU HERE!"
db $FF

MessageTextTWO_16:
db "ATTENTION!" : db $FE
db "YOU CAN ONLY" : db $FE
db "EXCHANGE FRIENDS" : db $FE
db "AT THE GODDESS" : db $FE

db "SHRINE, YOU CAN" : db $FE
db "DO REGISTRATION" : db $FE
db "ANYWHERE, THOUGH"
db $FF

MessageTextTWO_17:
db "THERE ARE" : db $FE
db "NOT ONLY HUMANS" : db $FE
db "IN THIS VILLAGE!"
db $FF

MessageTextTWO_18:
db "IT SEEMS THAT" : db $FE
db "MIRADI CAPTURED" : db $FE
db "THE SON OF KONA," : db $FE
db $E0, $2D : db "." : db $FE

db "IT IS A CRISIS" : db $FE
db "AT TAO,ITEM SHOP" : db $FE
db $FE
db $FE

db "I AM TIRED OF" : db $FE
db "HEARING ABOUT" : db $FE
db "DARKNESS AND" : db $FE
db "LIGHT ALL TIME."

db $FF

MessageTextTWO_19:
db "RUMOR HAS IT..." : db $FE
db "IS IT TRUE THAT" : db $FE
db "THE KING OF" : db $FE
db "LIGHT AND THE" : db $FE

db "KING OF DARKNESS" : db $FE
db "WILL FIGHT EACH" : db $FE
db "OTHER?"
db $FF

MessageTextTWO_1A:
db "I AM TAMA THE" : db $FE
db "TIGERCAT, HEHEHE" : db $FE
db "WHAT A COOL" : db $FE
db "NAME."
db $FF

MessageTextTWO_1B:
db "APPARENTLY,THERE" : db $FE
db "IS A HIDDEN SHOP" : db $FE
db "THAT DOES NOT" : db $FE
db "HAVE A SIGNBOARD"
db $FF

MessageTextTWO_1C:
db "KONA HOUSE HAS" : db $FE
db "BEEN TAKEN CARE" : db $FE
db "OF BY UNCLE TAO" : db $FE
db "SINCE HIS FATHER" : db $FE
db "DIED. IT IS" : db $FE
db "DIFFICULT."
db $FF

MessageTextTWO_1D:
db "HEHEHE..." : db $FE
db "I AM SORRY I" : db $FE
db "KEPT QUIET" : db $FE
db "EARLIER!" : db $FE
db "HEHEHE" : db $FE
db "ITS A SECRET", !SMILEY

db $FF

MessageTextTWO_1E:
db "I AM SORRY." : db $FE
db "I THOUGHT A" : db $FE
db "GODDESS HAD COME" : db $FE
db "TO PLAY YOU AND" : db $FE

db "MISLEAD YOU." : db $FE
db "TO MAKE UP FOR" : db $FE
db "MY SILENCE, I" : db $FE
db "WILL TELL YOU" : db $FE

db "A GOOD THING..." : db $FE
db "YOU TO GO" : db $FE
db "THROUGH A PATH" : db $FE
db "CALLED THE PATH" : db $FE
db "OF THE MOLE TO" : db $FE
db "GET TO THE" : db $FE
db "DRAGON LAND" : db $FE
db "THERE IS A GUARD" : db $FE
db "AT THE ENTRANCE.." : db $FE
db "BUT SHE ONE OF US"
db $FF

MessageTextTWO_1F:
db "WE HAVE BEEN" : db $FE
db "VERY WELL TAKEN" : db $FE
db "CARE OF BY THE" : db $FE
db "VILLAGE CHIEF" : db $FE

db "HERE! IF THE" : db $FE
db "VILLAGE CHIEF" : db $FE
db "ASK FOR" : db $FE
db "SOMETHING..." : db $FE

db "WE CANT REFUSE!"
db $FF

MessageTextTWO_20:
db "I AM A TRAVELER!" : db $FE
db "I WILL SEAL THE" : db $FE
db "DEMON DRAGON AND" : db $FE
db "BECOME A HERO!"
db $FF

MessageTextTWO_21:
db "IF YOU WANT TO" : db $FE
db "KNOW THE" : db $FE
db "LOCATION OF THIS" : db $FE
db "HEN, GO TO" : db $FE
db "URANIYA."
db $FF

MessageTextTWO_22:
db "YOU DONT KNOW" : db $FE
db "THE STORY OF THE" : db $FE
db "DEMON DRAGON DO" : db $FE
db "YOU?, HE WAS" : db $FE

db "ORIGINALLY BORN" : db $FE
db "AS A POWERFUL" : db $FE
db "DRAGON THAT IS" : db $FE
db "SAID TO BE 1 IN" : db $FE

db "1000 YEARS, AND" : db $FE
db "EVEN NOW HE" : db $FE
db "GATHERS THE" : db $FE
db "POWERS OF" : db $FE

db "MONSTERS." : db $FE
db "CHILDREN LIKE" : db $FE
db "YOU SHOULD GO" : db $FE
db "HOME AND SLEEP."
db $FF

MessageTextTWO_23:
db "IF I HAD THE" : db $FE
db "SWORD OF THE" : db $FE
db "EARTH AND A" : db $FE
db "NOVA ARMOR" : db $FE
db "I WOULD BE ALL" : db $FE
db "RIGHT..." : db $FE
db "I THINK I COULD" : db $FE
db "DO IT!"
db $FF

MessageTextTWO_24:
db "IT IS SAID THAT" : db $FE
db "IN THE TIP OF" : db $FE
db "THE SWORD" : db $FE
db "THERE IS A" : db $FE
db "MESSAGE FROM" : db $FE
db "THE BEGINNING" : db $FE
db "OF THE WORLD..."
db $FF

MessageTextTWO_25:
db "THIS PLACE IS A" : db $FE
db "REALL BIG PLACE!" : db $FE
db "ITS SO BIG HAVE" : db $FE
db "YOU SEEN IT?"
db $FF

MessageTextTWO_26:
db "I HAVE BEEN" : db $FE
db "HIDING FROM" : db $FE
db "MY MOM AND DAD!" : db $FE
db "...BUT I AM SURE" : db $FE
db "THEY ARE WORRIED" : db $FE
db "ABOUT ME NOW...", !PAW
db $FF


MessageTextTWO_27:
db "SHH!, KEEP IT" : db $FE
db "DOWN, I AM" : db $FE
db "PLAYING HIDE AND" : db $FE
db "SEEK!"
db $FF

MessageTextTWO_28:
db "BE CAREFUL,THERE" : db $FE
db "ARE SOME NASTY," : db $FE
db "SCARY, AND BRAVE" : db $FE
db "PEOPLE" : db $FE
db "IN THE INN."

db $FF

MessageTextTWO_29:
db "WHAT! MASTER LI" : db $FE
db "THE WIZARD?" : db $FE
db "ABOUT THE KING" : db $FE
db "OF THE DARKNESS." : db $FE
db "...YOU ARE GOING" : db $FE
db "THE WRONG WAY IF" : db $FE
db "YOU FOLLOW THAT" : db $FE
db "PATH..."
db $FF

MessageTextTWO_2A:
db "HAVE YOU EVER" : db $FE
db "SEEN THE ROCK" : db $FE
db "OF KNOWLEDGE?" : db $FE
db "I HEARD THAT IT" : db $FE
db "WAS ORIGINALLY" : db $FE
db "A NORMAL ROCK." : db $FE
db "IT SEEMS THAT" : db $FE
db "THE POWER OF THE" : db $FE
db "GODDESS WAS IN" : db $FE
db "IT, AND THAT IS" : db $FE
db "WHY THEY WERE" : db $FE
db "ABLE TO TALK" : db $FE
db "LIKE THEY DO."
db $FF

MessageTextTWO_2B:
db "WE DRAGONS" : db $FE
db "ACTUALLY LIVE" : db $FE
db "ON THE DRAGON" : db $FE
db "LAND."
db $FF

MessageTextTWO_2C:
db "MY DAD AND THE" : db $FE
db "OTHERS CAME DOWN" : db $FE
db "HERE BECAUSE" : db $FE
db "THEY SAID IT WAS" : db $FE

db "DANGEROUS TO GO" : db $FE
db "TO THE DRAGON" : db $FE
db "LAND."
db $FF

MessageTextTWO_2D:
db "MII! MII!", !SWEAT2 : db $FE
db "EVERYONE BULLIES" : db $FE
db "ME BECAUSE I AM" : db $FE
db "A DRAGON!!"
db $FF

MessageTextTWO_2E:
db "PIPAPU!", !NL
db "RUMOR HAS IT YOU", !NL
db "CAN GO INSIDE", !NL
db "THE MOON ROCK!"
db $FF

MessageTextTWO_2F:
db "WHAT IS IT, WHAT", !NL
db "IS WRONG WITH", !NL
db "THAT KID?", !NL
db !NL
db "KEEP WANDERING", !NL
db "AROUND, YOU WILL", !NL
db "GET YOUR ASS", !NL
db "KICKED!"
db $FF

MessageTextTWO_30:
db "DONT PLAY GAMES", !NL
db "WITH ME,YOU KIDS", !NL
db "SHOULD NOT BE", !NL
db "WANDERING AROUND", !NL
db "HERE!", !NL
db "IT IS DANGEROUS!"
db $FF

MessageTextTWO_31:
db "GRRR... HIC!", !NL
db "NOT YET! GET", !NL
db "AWAY FROM ME!"
db $FF

MessageTextTWO_32:
db "DANG IT, WHAT IS", !NL
db "WRONG WITH THE", !NL
db "DEMONS!", !NL
db "THERE IS TOO", !NL

db "MANY HUMANS IN", !NL
db "THIS WORLD!", !NL
db "WE DEMONS ARE", !NL
db "ALIVE TOO!", !NL

db "THE DEMON DRAGON", !NL
db "IS GOING TOO FAR", !NL
db "BUT MAKE HUMANS", !NL
db "THINK, I THINK", !NL

db "IT IS A GOOD", !NL
db "CHANCE TO MAKE", !NL
db "HUMANS THINK!"
db $FF

MessageTextTWO_33:
db "MAN LOSES TO", !NL
db "HIMSELF BEFORE", !NL
db "HE LOSES TO THE", !NL
db "OTHERS....", !NL

db "WE ARE DEFEATED", !NL
db "BY OUR OWN HEART", !NL
db "IF YOU DONT", !NL
db "SERVE YOUR HEART", !NL

db "YOU CANT REALLY", !NL
db "WIN."
db $FF

MessageTextTWO_34:
db "FROM HERE,", !NL
db "ITS THE CASTLE", !NL
db "OF LIGHT."
db $FF

MessageTextTWO_35:
db "THIS IS A", !NL
db "VILLAGE", !NL
db "PROTECTED BY", !NL
db "THE GODDESS.", !NL
db "THAT IS WHY", !NL
db "LIGHT,", !NL
db "DARKNESS,", !NL
db "DEMONS ARE NOT", !NL
db "DISCRIMINATED."
db $FF

MessageTextTWO_36:
db "IT IS SAID THAT", !NL
db "THERE IS A SECRET", !NL
db "ON THE ROAD OF", !NL
db "MOLES THAT MAKES", !NL

db "IT SAFE TO GO TO", !NL
db "THE DRAGON LAND."
db $FF

MessageTextTWO_37:
db "HMM?WHO ARE YOU?", !NL
db "THIS IS", !NL
db "THE CASTLE", !NL
db "OF DARKNESS", !NL

db "NO ONE WILL", !NL
db "STAND AGAINST", !NL
db "ME!"

db $FF

MessageTextTWO_38:
db "UNYIU NYU" : db $FE
db "MERMAIDS CANNOT" : db $FE
db "LIVE WITHOUT THE" : db $FE
db "TREE OF LIFE..."
db $FF

MessageTextTWO_39:
db "MERMAIDS ARE" : db $FE
db "FROM THE" : db $FE
db "DARKNESS." : db $FE
db $FE 
db "PEOPLE OF LIGHT" : db $FE
db "ARE ADMIRED BUT" : db $FE
db "NOT FAVORED, SO" : db $FE
db "BE CAREFUL..."
db $FF

MessageTextTWO_3A:
db "ALL MONSTERS" : db $FE
db "HATE HUMANS, BUT" : db $FE
db "HUMANS SEEMS TO" : db $FE
db "HATE MONSTERS." : db $FE

db "IT WOULD BE NICE" : db $FE
db "IF EVERYONE GOT" : db $FE
db "ALONG!"
db $FF

MessageTextTWO_3B:
db "WHAT? A CHILD" : db $FE
db "LIKE YOU IS" : db $FE
db "GOING TO SEE THE" : db $FE
db "DEMON DRAGON?" : db $FE
db "I CANT STAND IT!"
db $FF

MessageTextTWO_3C: ;TODO
db "FOR THAT..." : db $FE
db "WHAT SHOULD I DO"
db $FF

MessageTextTWO_3D:
db "WHAT THE HELL" : db $FE
db "ARE YOU?" : db $FE
db "GET THE HELL OUT" : db $FE
db "OF HERE!"
db $FF

MessageTextTWO_3E:
db "A LETTER FROM" : db $FE
db "THE VILLAGE" : db $FE
db "CHIEF?" : db $FE
db "WHICH ONE? HMM" : db $FE

db "I WILL LET YOU" : db $FE
db "IN IF THAT IS" : db $FE
db "WHAT YOU WANT..." : db $FE
db !NL

db "I WILL TELL YOU" : db $FE
db "SOMETHING." : db $FE
db "YOU NEED DRAGON" : db $FE
db "SCALES TO GET TO" : db $FE

db "THE DRAGON LAND." : db $FE
db "OTHERWISE YOU" : db $FE
db "WILL DIE." : db $FE
db !NL

db "I THINK SOMEONE" : db $FE
db "IN HERE KNOW" : db $FE
db "WHERE YOU CAN" : db $FE
db "FIND THEM." : db $FE

db "TEHY ARE NOT AS" : db $FE
db "UNDERSTANDING AS" : db $FE
db "I AM." : db $FE
db "BE CAREFUL."
db $FF

MessageTextTWO_3F:
db "AH,DRAGON SCALES" : db $FE
db "WITHOUT THEM YOU" : db $FE
db "WILL DIE IN THE" : db $FE
db "DRAGON LAND..." : db $FE

db "I CAN TELL YOU.." : db $FE
db "GO BACK AND" : db $FE
db "CHECK THE LIGHTS" : db $FE
db "ITS UNDER THE" : db $FE

db "THE LIGHT."
db $FF

MessageTextTWO_40:
db "I HEARD A STORY!", !NL 
db !NL
db !NL
db !NL

db "HAVE YOU EVER", !NL 
db "HEARD OF THE", !NL 
db "SNOW CASTLE?", !NL 
db "RUMOR HAS IT", !NL 


db "THAT THERE IS", !NL 
db "THE BEST ARMOR", !NL 
db "IN THE WORLD", !NL 
db "OVER THERE.", !NL 

db "THEY DONT TELL", !NL 
db "YOU THAT ITS", !NL 
db "THERE."
db $FF

MessageTextTWO_41:
db "WHY ARE HUMANS", !NL 
db "OF LIGHT HERE!?", !NL 
db "I SEE YOU HAVE", !NL 
db "COME FOR THE", !NL 
db "DRAGON?", !NL 
db "THIS PLACE IS", !NL 
db "NOT THE SAME AS", !NL 
db "BEFORE."
db $FF

MessageTextTWO_42:
db "I AM TIRED OF", !NL 
db "WAITING " : db $E0, $00 : db "!", !NL 
db "THIS WILL BE", !NL 
db "YOUR TOMB!"
db $FF

MessageTextTWO_43:
db "HAHAHAHAHA...", !NL 
db "I AM LIZ!", !NL 
db "A DISCIPLE", !NL 
db "OF DARKNESS!"
db $FF

MessageTextTWO_44:
db "THE MAN FROM" : db $FE
db "EARLIER IS" : db $FE
db "A LIE! A BLATANT" : db $FE
db "LIE THAT YOU" : db $FE

db "WERE ATTACKED!" : db $FE
db "...ARE YOU " : db $E0, $00 : db $FE
db "I HEARD YOU HAVE" : db $FE
db "THE BLOOD OF" : db $FE

db "HERO IN YOU" : db $FE
db "BUT YOU DONT" : db $FE
db "LOOKS LIKE ONE.." : db $FE
db "HAHAHAHAHA!!" : db $FE

db "THIS IS A CLOSED" : db $FE
db "FOREST WITH NO" : db $FE
db "WAY OUT! YOU MAY" : db $FE
db "DIE..." : db $FE

db "FROM EXHAUSTION!"
db $FF

MessageTextTWO_45:
db "HOW DID YOU" : db $FE
db "COME THIS FAR!" : db $FE
db "YOU BRAT" : db $FE
db "WONT GO FURTHER!" : db $FE
db $FE
db $FE
db "I WILL KILL YOU!"


db $FF

MessageTextTWO_46:
db "HMM? ARE YOU A" : db $FE
db "PERSON OF LIGHT?" : db $FE
db "DID YOU COME TO" : db $FE
db "GET THE SACRED" : db $FE

db "RELIC OF LIGHT?!" : db $FE
db "I AM THE DARK" : db $FE
db "MONSTER MIRADI" : db $FE
db "SINCE YOU HAVE" : db $FE

db "ENTERED THIS" : db $FE
db "CAVE I CANNOT" : db $FE
db "LET YOU LEAVE" : db $FE
db "ALIVE!!"

db $FF

MessageTextTWO_47:
db "HA HA HA HA!!" : db $FE
db "I AM BAROUX..." : db $FE
db "A DISCIPLE OF" : db $FE
db "DARKNESS." : db $FE

db "YOU ARE THE ONE" : db $FE
db "THAT HAS BEEN" : db $FE
db "CALLED BY THE" : db $FE
db "KING OF LIGHT!" : db $FE

db "I CAME TO SEE" : db $FE
db "HOW GOOD YOU ARE" : db $FE
db "BUT YOURE NOT AS" : db $FE
db "GOOD AS THEY SAY" : db $FE

db "I HAVE BEEN" : db $FE
db "ORDERED BY THE" : db $FE
db "KING OF DARKNESS" : db $FE
db "TO ATTACK THE" : db $FE

db "DESERT VILLAGE" : db $FE
db "OF CAINUN." : db $FE
db $FE
db $FE

db "IF YOU CAN" : db $FE
db "PREVENT IT THEN" : db $FE
db "DO IT !!" : db $FE
db "HAHAHAHA...!"


db $FF

MessageTextTWO_48:
db "SEE YOU AGAIN,", !NL
db "COME ON...!", !NL
db "THOSE WHO HAVE", !NL
db "NOT BEEN ABLE", !NL

db "TO REACH BAROUX", !NL
db "HERE ARE THOSE", !NL
db "WHO DISOBEY", !NL
db "THE KING OF", !NL

db "DARKNESS WHO", !NL
db "WAS IN THE", !NL
db "VILLAGE OF", !NL
db "CAINUN...!", !NL

db "BELIEVE IN THE", !NL
db "JUSTICE OF LIGHT", !NL
db "IF I BEAT YOU,", !NL
db "THEY WILL CHANGE", !NL

db "THEIR MINDS.", !NL
db "MY RANK AS A", !NL
db "DISCIPLE OF", !NL
db "DARKNESS", !NL

db "WILL RISE", !NL
db "AS WELL...!", !NL
db "DIE!!!"
db $FF

MessageTextTWO_49:
db "WHOO-HOO-HOO!", !NL
db "I AM THE", !NL
db "DISCIPLE OF THE", !NL
db "DARKNESS, DIVA", !NL

db !NAME, ", DID YOU", !NL
db "REALLY THINK", !NL
db "THAT THE", !NL
db "DARKNESS ", !NL

db "WOULD LET YOU", !NL
db "HAVE ", !LEFINA, " AND", !NL
db "THE MIRROR OF", !NL
db "LIGHT?", !NL

db "WOO HOO... ", !NL
db "HE THINKS HE", !NL
db "CAN HAVE BOTH!", !NL
db "I WILL HELP YOU", !NL

db "OUT IF YOU GIVE", !NL
db "UP THE MIRROR", !NL
db "OF LIGHT NICELY!", !NL
db "WOO HOO...!"
db $FF

MessageTextTWO_4A:
db "OKAY", !NL
db !NL
db !NL
db !NL
db "THEN...", !NL
db "I WILL TAKE CARE", !NL
db "OF YOU!", !NL
db "WOOHOO...!"
db $FF

MessageTextTWO_4B:
db "BOOOOOOOO! I AM", !NL
db "THE 2ND DISCIPLE", !NL
db "OF DARKNESS,", !NL
db "DWELL!", !NL

db "YO... HOW DARE", !NL
db "YOU HURT MY POOR", !NL
db "BROTHER?", !NL
db "...YOU KILLED MY", !NL

db "BROTHER!", !NL
db "I WONT FORGIVE", !NL
db "YOU!", !NL
db "BOOOOOOOO!"
db $FF

MessageTextTWO_4C:
db "LIAR!!!!"
db $FF

MessageTextTWO_4D:
db "I AM LI, THE", !NL
db "WIZARD. NOW IS", !NL
db "THE TIME FOR", !NL
db "DEMONS", !NL

db "TO RISE UP!", !NL
db !NL
db !NL
db !NL

db !TOLI, "...", !NL
db "IF YOU ARE MY", !NL
db "APPRENTICE.", !NL
db "COME FIGHT ME!"
db $FF

MessageTextTWO_4E: ;TODO VERY UNSURE
db "... IF YOU GO", !NL
db "THAT FAR, I AM", !NL
db "SORRY FOR YOU!", !NL
db !NL

db "THE SPELL I CAST", !NL
db "ON THE DAUGHTER", !NL
db "OF DARKNESS IS", !NL
db "MY NOROI MAGIC..", !NL

db "IT WONT", !NL
db "DISAPPEAR UNTIL", !NL
db "I DIE."
db $FF

MessageTextTWO_4F:
db !TOLI, " YOU BECAME", !NL
db "STRONGER...", !NL
db "I AM SORRY", !NL
db "I SAID SOMETHING", !NL

db "TO OFFEND YOU", !NL
db "HUMANS AND", !NL
db "DEMONS TODAY", !NL
db "SHOULD NOT BE", !NL

db "DARK HEARTED", !NL
db "DEMONS LIKE ME", !NL
db "... WE NEED A", !NL
db "DEMON WITH A", !NL

db "HEART OF LIGHT", !NL
db "LIKE YOU...", !NL
db !NL
db "DO YOU", !NL

db "UNDERSTAND...?", !NL
db "SO YOU MUST", !NL
db "SURPASS ME", !NL
db "THAT IS WHAT", !NL

db "THE BATTLE WAS", !NL
db "FOR...", !NL
db "ALSO YOU SHOULD", !NL
db "BRING THIS WITH", !NL

db "WITH YOU. YOU"
db $FF

MessageTextTWO_50:
db "FAREWELL..", !TOLI, "!"
db $FF

MessageTextTWO_51:
db "I KNEW IT...!"
db $FF

MessageTextTWO_52:
db !NAME, "...", !NL
db "IS THAT ALL YOU", !NL
db "GOT.", !NL
db "HAHAHAHA!", !NL

db "DONT YOU DARE", !NL
db "TRY TO KILL ME", !NL
db "SHE IS MINE!", !NL
db !NL

db "I NEED HER TO", !NL
db "RULE THE WORLD", !NL
db "WITHIN THE POWER", !NL
db "OF DEMONS...!"
db $FF

MessageTextTWO_53:
db "KING OF DARKNESS", !NL
db "IT IS BETTER FOR", !NL
db "YOU IF YOU DONT", !NL
db "TRY TO STOP ME.!"
db $FF


MessageTextTWO_54:
db "HAHAHAHAHA...!!"
db $FF

MessageTextTWO_55:
db "HAHAHA...!", !NL
db "ITS HERE", !NL
db "COME ON"
db $FF

MessageTextTWO_56:
db !NAME, " YOU HAVE", !NL
db "DONE YOUR DUTY.", !NL
db "NOW GIVE ME THE", !NL
db "THE SWORD OF THE", !NL

db "EARTH. AND THE", !NL
db "WORLD WILL", !NL
db "BELONG TO DEMONS", !NL
db "THE DAY THE", !NL

db "DEMONS HIDE AND", !NL
db "DWELL WILL BE", !NL
db "OVER... AND THE", !NL
db "GLORIOUS HISTORY", !NL

db "OF DEMONS", !NL
db "WILL BE WRITTEN", !NL
db "ON THIS LAND!"
db $FF

MessageTextTWO_57:
db "HAHAHA...", !NL
db "WHAT ARE YOU", !NL
db "GOING TO DO WITH", !NL
db "THAT WEAK SWORD?", !NL

db "HAHAHAHAHA!!!", !NL
db "COME ON, DIE!"
db $FF

MessageTextTWO_58:
db "IS THAT YOU?" : db $FE
db "YOU ARE THE ONE" : db $FE
db "WHO TOOK MY" : db $FE
db "TREASURE. WHAT" : db $FE

db "ARE YOU DOING" : db $FE
db "WITH MY TREASURE" : db $FE
db "I WONT FORGIVE" : db $FE
db "YOU!" : db $FE

db $FE
db "GUYS !"
db "COME OUT !" : db $FE
db $FE 

db $FE
db $FE
db "GET THEM !"

db $FF

MessageTextTWO_59:
db "...HEH HE.HE..." : db $D2, $3F, $FE
db "YOU ARE SO" : db $FE
db "STRONG! ALRIGHT" : db $FE
db "YOU CAN USE MY" : db $FE

db "STORAGE FOR YOUR" : db $FE
db "ITEMS. PLEASE" : db $FE
db "TAKE THIS I WILL" : db $FE
db "BE THERE FOR YOU" : db $FE

db "EXCEPT IN BATTLE" : db $FE
db "OR IN A DUNGEON."
db $FF

MessageTextTWO_5A:
db "YOU WANTED TO", !NL
db "SEE ME? BROTHER!"
db $FF

MessageTextTWO_5B:
db "HEY HEY, WHAT", !NL
db "ARE YOU", !NL
db "DEPOSITING?"
db $FF

MessageTextTWO_5C:
db "SEE YOU AGAIN!"
db $FF

MessageTextTWO_5D:
db "AH!, ITS A NOVA", !NL
db "FRUIT! YOU HAVE", !NL
db "SOME GOOD STUFF", !NL
db "SELL IT TO ME!"
db $FF

MessageTextTWO_5E:
db "HMM! WHY ARE YOU", !NL
db "SO STINGY."
db $FF

MessageTextTWO_5F:
db "YAY", !MNOTE, " THANK YOU!", !NL
db "THEN THE PRICE", !NL
db "IS 2000RILS."
db $FF

MessageTextTWO_60:
db "OH NO, THERE WAS", !NL
db "SOMETHING, DID", !NL
db "YOUR HEARD THAT?"
db $FF

MessageTextTWO_61:
db "DONT BE SO HARD", !NL
db "ON ME", !SWEAT 
db $FF

MessageTextTWO_62:
db "YOU CAN EXCHANGE" : db $FE
db "PARTY MEMBERS" : db $FE
db "AT THE GODDESS."
db $FF

MessageTextTWO_63:
db "THIS VILLAGE AND" : db $FE
db "AND THE VILLAGE" : db $FE
db "OF AEZ ARE GOOD" : db $FE
db "FRIENDS AND" : db $FE
db "OFTEN EXCHANGE" : db $FE
db "CROPS." : db $FE
db $FE
db $FE
db "BUT... LATELY" : db $FE
db "I HAVE NOT SEEN" : db $FE
db "ANYONE FROM AEZ" : db $FE
db "VILLAGE IS" : db $FE
db "SOMETHING WRONG?"

db $FF

MessageTextTWO_64:
db "CHILDREN?" : db $FE
db "THERE ARE LOTS" : db $FE
db "OF CHILDREN" : db $FE
db "HERE."
db $FF

MessageTextTWO_65:
db "THE VILLAGE" : db $FE
db "OF AEZ?, GO" : db $FE
db "ALONG THE ROAD" : db $FE
db "ITS RIGHT THERE."
db $FF

MessageTextTWO_66:
db "THIS BIG TREE" : db $FE
db "OUTSIDE IS" : db $FE
db "THE CALLED MINA" : db $FE
db "TREE, WHICH IS" : db $FE
db "THE GUARDIAN" : db $FE
db "TREE OF THE" : db $FE
db "VILLAGE OF FARAS"
db $FF

MessageTextTWO_67:
db "AAH! HELP ME!"
db $FF

MessageTextTWO_68:
db "THE PARTY IS" : db $FE
db "LOUD AND NOISY."
db $FF

MessageTextTWO_69:
db "NO NO NO NO!"
db $FF

MessageTextTWO_6A:
db "HEY! GET OUT" : db $FE
db "OF THE WAY!!" : db $FE
db "THIS IS NO TIME" : db $FE
db "TO BE STUPID!"
db $FF

MessageTextTWO_6B:
db "NOW I CAN LIVE" : db $FE
db "IN PEACE!" : db $FE
db "THANK YOU!"
db $FF

MessageTextTWO_6C:
db "MOVE AWAY!", !NL
db "I DONT HAVE TIME", !NL
db "TO WORRY ABOUT", !NL
db "YOU!"
db $FF

MessageTextTWO_6D:
db "WHAT? NO MORE", !NL
db "DARKNESS?", !NL
db "THANK GOD!"
db $FF

MessageTextTWO_6E:
db "WHAT HAPPENED?"
db $FF

MessageTextTWO_6F:
db "AFTER ALL,", !NL
db "SOMETHING", !NL
db "HAPPENED!"
db $FF

MessageTextTWO_70:
db "THIS IS" : db $FE
db "AEZ VILLAGE."
db $FF

MessageTextTWO_71:
db "THIS IS THE", !NL
db "BUSIEST VILLAGE", !NL
db "AROUND HERE.", !NL
db !NL
db "THAT IS BECAUSE", !NL
db "TRAVELERS COME", !NL
db "AND GO, AND", !NL
db "NATURALLY PEOPLE", !NL
db "GATHER HERE.", !NL
db "THATS RIGHT!"
db $FF

MessageTextTWO_72:
db "HEY!, DONT", !NL
db "INTERRUPT", !NL
db "MY DATE!"
db $FF

MessageTextTWO_73:
db "THE NOVA TREE IS", !NL
db "THE FATHER", !NL
db "FATHER FATHER OF", !NL
db "THE MINA TREE IN", !NL

db "FARAS VILLAGE...", !NL
db "THATS RIGHT.", !NL
db "I HEARD THAT", !NL
db "IT HAS BEEN", !NL

db "STANDING SINCE", !NL
db "BEGINNING OF THE", !NL
db "WORLD."
db $FF

MessageTextTWO_74:
db "THE ROCK OF", !NL
db "KNOWLEDGE IS A", !NL
db "LITTLE YOUNGER", !NL
db "THAN THE NOVA", !NL
db "TREE!"
db $FF

MessageTextTWO_75:
db "WOW!", !NL
db "I WAS SURPRISED!", !NL
db "I NEVER KNEW THE", !NL
db "LIGHT COULD BE", !NL

db "SO BRIGHT! NOW", !NL
db "IF ONLY THE", !NL
db "DEMON DRAGON", !NL
db "WOULD DISAPPEAR!"
db $FF

MessageTextTWO_76:
db "THIS IS THE", !NL
db "VILLAGE OF TES."
db $FF


MessageTextTWO_77:
db "OOOH", !SWEAT2, " HIC", !MNOTE, !NL
db "I AM DRUNK!"
db $FF

MessageTextTWO_78:
db "WELCOME!, COME", !NL
db "AND STAY WITH US", !NL
db "YOU WILL BE FULL", !NL
db "OF ENERGY!"
db $FF

MessageTextTWO_79:
db "SERYU? THAT", !NL
db "PSYCHOTIC OLD", !NL
db "MAN!", !NL

db "YOU SAID", !NL
db "YOU WERE GOING", !NL
db "TO THE TAVERN."
db $FF

MessageTextTWO_7A:
db "OH!, WE ARE", !NL
db "KEEPING IT FOR", !NL
db "YOU. ITS IN", !NL
db "THERE.", !NL
db "COULD YOU COME", !NL
db "HERE A MINUTE?"
db $FF

MessageTextTWO_7B:
db "SHH,SHH! QUIET!", !NL
db !NL
db !NL
db !NL
db "IF I PUT MONEY", !NL
db "INTO PLAY AND MY", !NL
db "WIFE FIND OUT", !NL
db "SHE WILL KILL ME"
db $FF

MessageTextTWO_7C:
db "DID YOU HEAR?", !NL
db "THE GODDESS", !NL
db "MITY KIDNAPPED", !NL
db "SNOWBABY BECAUSE", !NL

db "SHE WANTED TO", !NL
db "GET THE POWER OF", !NL
db "THE SNOW FROM", !NL
db "THE SWORD OF THE", !NL

db "EARTH IN RETURN.", !NL
db "THE DEMON DRAGON", !NL
db "CORRUPTED HER!"
db $FF

MessageTextTWO_7D:
db "THIS VILLAGE IS", !NL
db "INHABITED BY", !NL
db "DEMONS. MAYBE", !NL
db "THATS WHY I AM", !NL

db "ON GOOD TERM", !NL
db "WITH DEMONS.", !NL
db "BUT I DONT CARE", !NL
db "IF ITS LIGHT OR", !NL

db "DARKNESS..."
db $FF

MessageTextTWO_7E:
db "FINALLY, THE", !NL
db "THE GODDESS", !NL
db "IS BACK!", !NL
db !NL 

db "IT WAS HARD...", !NL
db "SHE PRETENDED TO", !NL
db "BE A HERO AND", !NL
db "AND CAME TO THE", !NL

db "VILLAGE CHIEF", !NL
db "AND STORMED THE", !NL
db "VILLAGE!", !NL
db "I REMEMBER WE", !NL

db "HAD TO CLEAN UP", !NL
db "THE WHOLE", !NL
db "VILLAGE WITH", !NL
db "OUR HANDS."
db $FF

MessageTextTWO_7F:
db "IT IS RUMORED", !NL
db "THAT THE DRAGON", !NL
db "VENOM IS SO", !NL
db "STRONG THAT IF", !NL

db "A HUMAN ENTERS", !NL
db "THEY WILL DIE", !NL
db "RIGHT AWAY!", !NL
db "BUT IF YOU HAVE", !NL

db "DRAGON SCALES", !NL
db "YOU WILL BE FINE"
db $FF

MessageTextTWO_80:
db "I HEARD THAT", !NL
db "THERE ARE PEOPLE", !NL
db "WHO HAVE A STORE", !NL
db "BUT NO SIGN ON", !NL
db "THEIR HOUSE."
db $FF

MessageTextTWO_81:
db "YOU SHOULD" : db $FE
db "ALWAYS TALK TO" : db $FE
db "EVERYONE IN" : db $FE
db "VILLAGES" 

db $FF

MessageTextTWO_82:
db "HAVE YOU MADE" : db $FE
db "SOME FRIENDS" : db $FE
db "ALREADY?" : db $FE
db "DONT BE" : db $FE
db "DISCOURAGED," : db $FE
db "WHY DO NOT YOU" : db $FE
db "INVITE A LOT OF" : db $FE
db "PEOPLE?"
db $FF

MessageTextTWO_83:
db "LIGHT AND" : db $FE
db "DARKNESS REALLY" : db $FE
db "SHOULD WORK" : db $FE
db "TOGETHER, WHERE" : db $FE
db "DID THEY GO" : db $FE
db "WRONG..."

db $FF

MessageTextTWO_84:
db "THERE IS A LOT" : db $FE
db "EVIL OUT THERE." : db $FE
db "BEWARE OF THE" : db $FE
db "DARK MONSTERS..."
db $FF

MessageTextTWO_85:
db "SINCE THE BATTLE" : db $FE
db "SYSTEM IS SUCH A" : db $FE
db "HASSLE YOU CAN" : db $FE
db "USE AUTO MODE" : db $FE
db "BUT, YOU ARE" : db $FE
db "LESS LIKELY" : db $FE
db "TO DIE IF YOU" : db $FE
db "USE MANUAL MODE."
db $FF

MessageTextTWO_86:
db "THEY SUDDENLY" : db $FE
db "ATTACKED OUR" : db $FE
db "VILLAGE..." : db $FE
db !NL
db "THE VILLAGE WILL" : db $FE
db "BE DESTROYED..." : db $FE
db !NL
db !NL
db "...WHAT!?..." : db $FE
db "TWO CHILDREN?" : db $FE
db "THEN I HAVE TO" : db $FE
db "GO BACK TOO!"
db $FF

MessageTextTWO_87:
db "NOW WE CAN GO" : db $FE
db "BACK TO THE" : db $FE
db "VILLAGE...!" : db $FE
db "THE DARK RELIC?" : db $FE

db "I SAW A DEMON" : db $FE
db "NEAR THE KING" : db $FE
db "CARRYING IT."
db $FF

MessageTextTWO_88:
db "YOU ARE...!" : db $FE
db "I AM YOSHI I" : db $FE
db "WAS A SERVANT OF" : db $FE
db "THE KING OF" : db $FE

db "DARKNESS, BUT" : db $FE
db "WHEN I DISOBEYED" : db $FE
db "THE KING WORDS.." : db $FE
db "HE TOOK ME INTO" : db $FE

db "THIS DARK FOREST" : db $FE
db "PRISON... I" : db $FE
db "ESCAPED BUT I" : db $FE

db "CAN NO LONGER" : db $FE
db "MOVE,THE CASTLE" : db $FE
db "OF DARKNESS IS" : db $FE
db "FULL OF DEMONS.." : db $FE

db "THE PRINCE LEFT" : db $FE
db "AND THE PRINCESS" : db $FE
db "REMAINS ALONE IN" : db $FE
db "THE CASTLE..UGH!"


db $FF

MessageTextTWO_89:
db "WELCOME!" : db $FE
db "THIS IS AN INN!" : db $FE
db "WE HAVE " : db $FE
db "DELICIOUS MEALS" : db $FE
db "AND FLUFFY BEDS!" : db $FE
db "PLEASE USE IT!"
db $FF

MessageTextTWO_8A:

db "THIS PLACE IS" : db $FE
db "CLOSED TODAY" : db $FE
db "I DONT HAVE TIME" : db $FE
db "TO OPEN IT!"
db $FF

MessageTextTWO_8B:
db "WELCOME! ARE YOU" : db $FE
db "SLEEPING HERE?" : db $FE
db "2RIL PER PERSON" : db $FE
db $FE
db $FE
db $FE
db "SO IT WILL COST" : db $FE
dw RILCostGroup : db "RIL ?"




db $FF

MessageTextTWO_8C:
db "WE LOOK FORWARD" : db $FE
db "TO SEEING YOU" : db $FE
db "AGAIN."
db $FF

MessageTextTWO_8D:
db "YES! " : db $E0, $00 : db $FE
db "I WILL GUIDE YOU" : db $FE
db "TO YOUR ROOM!"
db $FF

MessageTextTWO_8E:
db "EVEN IF YOU ARE" : db $FE
db "A HERO... PLEASE" : db $FE
db "COME BACK AGAIN" : db $FE
db "WITH MONEY!"
db $FF

MessageTextTWO_8F:
db "SORRY TODAY IS", !NL
db "MY DAY OFF!"
db $FF

MessageTextTWO_90:
db "OHH?,ARE YOU THE", !NL
db !NAME, " I HAVE", !NL
db "HEARD SO MUCH", !NL
db "ABOUT?", !NL

db "WELL,HELLO THERE"
db $FF

MessageTextTWO_91:
db "WELCOME!!", !NL
db "ARE YOU SLEEPING", !NL
db "IN A FLUFFY BED?", !NL
db "3RILS PER PERSON", !NL

db "FOR A TOTAL OF", !NL
db !E021, "RILS."
db $FF


MessageTextTWO_93:
MessageTextTWO_92:
db "WELCOME!!", !NL
db "ARE YOU SLEEPING", !NL
db "IN A FLUFFY BED?", !NL
db "10RIL PER PERSON", !NL

db "FOR A TOTAL OF", !NL
db !E021, "RILS."
db $FF


MessageTextTWO_94:
db "MAY I HELP YOU?" : db $FE
db "THIS IS THE ITEM" : db $FE
db "SHOP, YOU NEED?"
db $FF

MessageTextTWO_95:
db "WHICH ONE ARE", !NL
db "YOU SELLING?"
db $FF

MessageTextTWO_96:
db "I WILL BUY IT", !NL
db "FOR ", !E021, "RILS", !NL
db "ARE YOU SURE?"
db $FF

MessageTextTWO_97:
db "WE HAVE LOT OF" : db $FE
db "GOOD STUFF!" : db $FE
db "NEED ANYTHING?"
db $FF

MessageTextTWO_98:
db "ITS ", !E022, "RILS", !NL
db "DO YOU BUY IT?"
db $FF

MessageTextTWO_99:
db "THANK YOU!"
db $FF

MessageTextTWO_9A:
db "PLEASE", !NL
db "COME AGAIN!!"
db $FF

MessageTextTWO_9B:
db "YOU HAVE TOO", !NL
db "MANY ITEMS!", !NL
db "COME BACK WITH", !NL
db "SPACE IN BAG"
db $FF

MessageTextTWO_9C:
db "WHAT ELSE?"
db $FF

MessageTextTWO_9D:
db "HEHEHE, WELCOME!", !NL
db "GO AHEAD AND", !NL
db "PLAY!"
db $FF

MessageTextTWO_9E:
db "WELCOME! THIS" : db $FE
db "IS THE WEAPON" : db $FE
db "SHOP, DO YOU" : db $FE
db "WANT SOMETHING?"
db $FF

MessageTextTWO_9F:
db "YO! OUR WEAPONS", !NL
db "ARE THE BEST!!", !NL
db "NEED ANYTHING?"
db $FF

MessageTextTWO_A0:
db "IT IS ", !E021, "RILS", !NL
db "WOULD YOU LIKE", !NL
db "TO BUY IT?"
db $FF

MessageTextTWO_A1:
db "THANK YOU!"
db $FF

MessageTextTWO_A2:
db "OH WELL THEN?", !NL
db "COME BACK LATER!"
db $FF

MessageTextTWO_A3:
db "I AM SO RELIEVED", !NL
db "THAT MIRADI DID", !NL
db "NOT SHOW UP!"
db $FF

MessageTextTWO_A4:
db "YOU ARE LUCKY" : db $FE
db "YOU FOUND THE" : db $FE
db "HIDDEN SHOP,WHAT" : db $FE
db "DO YOU WANT?"
db $FF

MessageTextTWO_A5:
db "THAT IS ", !E021, "RILS", !NL
db "OKAY ?"
db $FF

MessageTextTWO_A6:
db "THANK YOU!!", !NL
db "BUT DONT TELL", !NL
db "ANYONE ABOUT", !NL
db "THIS PLACE!"
db $FF

MessageTextTWO_A7:
db "I DONT LIKE IT..", !NL
db !NL
db !NL
db !NL
db "I WILL GIVE YOU", !NL
db !E021, "RILS", !NL
db "PLUS AN EXTRA 50", !NL
db "HOW ABOUT IT?"

db $FF

MessageTextTWO_A8:
db "IF YOU DONT", !NL
db "LIKE IT I DONT", !NL
db "KNOW!"
db $FF

MessageTextTWO_A9:
db "HOW ABOUT THIS?", !NL
db "WHICH ONE DO", !NL
db "YOU LIKE?"
db $FF

MessageTextTWO_AA:
db "ITS ", !E022, ".", !NL
db "OKAY, ", !E021, "RILS", !NL
db "DO YOU WANT IT?"
db $FF

MessageTextTWO_AB:
db "WHY!", !NL
db "WE CANT SELL IT", !NL
db "WITHOUT MONEY!"
db $FF

MessageTextTWO_AC:
db "EASY TO USE!!", !NL
db "WELCOME!", !NL
db "WE HAVE THINGS", !NL
db "CANT BE BEATEN", !NL
db "ANYWHERE ELSE!", !NL
db "NEED ANYTHING?"
db $FF

MessageTextTWO_AD:
db "DEAR CUSTOMER...", !NL
db "WE ARE A LITTLE", !NL
db "SLOW ON THE", !NL
db "UPTAKE SO PLEASE", !NL
db "DONT BE LIKE", !NL
db "THAT!"
db $FF

MessageTextTWO_AE:
db "WHICH ONE DID", !NL
db "YOU CHOOSE?"
db $FF

MessageTextTWO_AF:
db !E022, " RIGHT?", !NL
db "BONUS...", !NL
db "THATS ", !E021, "RILS!", !NL
db "AFFORDABLE?"
db $FF

MessageTextTWO_B0:
db "OH NO!!", !NL
db "THANK YOU VERY", !NL
db "MUCH!!"
db $FF

MessageTextTWO_B1:
db "THATS IT!", !NL
db "SEE YOU LATER!"
db $FF

MessageTextTWO_B2:
db "UGH UGH..."
db $FF

MessageTextTWO_B3:
db "I HAVE BEEN" : db $FE
db "LOOKING FOR THE" : db $FE
db "NOVA ITEM FOR" : db $FE
db "SUCH A LONG TIME" : db $FE
db "BUT I CANT FIND" : db $FE
db "IT... I WANT IT!"
db $FF

MessageTextTWO_B4:
db "KING!", !NL
db !NL
db !NL
db !NL

db "LET ME GO WITH", !NL
db !LEFINA, ", I", !NL
db "PROMISE TO COME", !NL
db "BACK! ... KING!"

db $FF

MessageTextTWO_B5:
db "...OK, GOT IT!", !NL
db !NAME, ", ", !LEFINA, !NL
db "I WILL LET YOU", !NL
db "BOTH GO.", !NL
db "IN RETURN, WHEN", !NL
db "THE TIME COMES,", !NL
db "YOU WILL GIVE", !NL
db "ME THIS CASTLE!"
db $FF

MessageTextTWO_B6:
db "I UNDERSTAND!"
db $FF

MessageTextTWO_B7:
db "THIS YEAR", !NL
db "RADISHES DID", !NL
db "WELL. WE ARE", !NL
db "GOING TO SELL", !NL

db "THEM TO AEZ", !NL
db "VILLAGE."
db $FF

MessageTextTWO_B8:
db "I AM AN EVENT", !NL
db "PRODUCER.", !NL
db "I AM FUJISAWA.", !NL
db "FINALLY,ITS OVER", !NL
db "WE JUST GOT", !NL
db "MARRIED.", !HEART
db $FF

MessageTextTWO_B9:
db "HAVE YOU EVER" : db $FE
db "BEEN TO THE" : db $FE
db "DESERT? YOU" : db $FE
db "COULD NOT GET" : db $FE

db "IN. THEY SAY" : db $FE
db "THERE IS SOME" : db $FE
db "KIND OF SECRET" : db $FE
db "DOWN THERE."
db $FF

MessageTextTWO_BA:
db "I HAVE HEARD" : db $FE
db "RUMORS ABOUT A" : db $FE
db "HIDDEN SHOP..." : db $FE
db "HMMM..." : db $FE

db "DONT YOU THINK" : db $FE
db "THIS HOUSE IS" : db $FE
db "A LITTLE WEIRD?"

db $FF

MessageTextTWO_BB:
db "HURRY UP AND" : db $FE
db "FINISH THE GAME" : db $FE
db "LETS GET THE" : db $FE
db "CORVETTE ON HIS" : db $FE
db "WHEELS!" : db $FE
db "THAT WAS" : db $FE
db "KUROSOWA THE" : db $FE
db "BATTLE" : db $FE
db "PROGRAMMER"
db $FF

MessageTextTWO_BC:
db "I AM TRAVELING", !NL
db "WITH MY FAMILY."
db $FF

MessageTextTWO_BD: ;TODO
db "THIS IS MY FIRST" : db $FE
db "PROJECT" : db $FE 
db "MY NAME IS MISU," : db $FE
db "MISU MADE A" : db $FE
db "MISTAKE, SORRY", !SWEAT
db $FF

MessageTextTWO_BE:
db "DO YOU KNOW?" : db $FE
db "THE KEEPER OF" : db $FE
db "THE MOLE ROAD" : db $FE
db "IS AMAZINGLY" : db $FE
db "STRONG!" : db $FE
db "KUWA KUWA!"
db $FF

MessageTextTWO_BF:
db "TO GET THE SWORD" : db $FE
db "EDGE, YOU NEED" : db $FE
db "THE HELP OF A" : db $FE
db "PHOENIX. BUT ITS" : db $FE
db "A BIRD ABOVE THE" : db $FE
db "CLOUDS."
db $FF

MessageTextTWO_C0:
db "I AM GOING ON" : db $FE
db "A TRIP AND MAKE" : db $FE
db "SOME MONEY! ..." : db $FE
db "BUT I CANT" : db $FE
db "AFFORD IT!"
db $FF

MessageTextTWO_C1:
db "I MADE THE" : db $FE
db "MISTAKE OF" : db $FE
db "THINKING I" : db $FE
db "COULD WIN SOME" : db $FE
db "MONEY GAMBLING.." : db $FE
db "UGH, I CAME ALL" : db $FE
db "THE WAY HERE..."
db $FF


MessageTextTWO_C2:
db "THIS HIDING" : db $FE
db "PLACE IS A" : db $FE
db "SECRET TO" : db $FE
db "EVERYONE!"

db $FF

MessageTextTWO_C3:
db "HMMM..." : db $FE
db "TAKE A BREAK..."
db $FF

MessageTextTWO_C4:
db "HEY,HEY," : db $FE
db "YOU WILL BE" : db $FE
db "IN TROUBLE IF" : db $FE
db "YOU STAY HERE!"
db $FF

MessageTextTWO_C5:
db "THIS IS THE" : db $FE
db "DEVELOPPERS" : db $FE
db "ROOM."

db $FF

MessageTextTWO_C6:
db "30%, 40% !!" : db $FE
db "IF YOU DONT" : db $FE
db "BUT IT YOU" : db $FE
db "ARE NOT A MAN!"
db $FF

MessageTextTWO_C7:
db "WHO ARE THE" : db $FE
db "SELLERS?"
db $FF

MessageTextTWO_C8:
db "I CANT SAY IT" : db $FE
db "LOUD, BUT THE" : db $FE
db "STUFF HERE IS" : db $FE
db "FULL OF PHONIES" : db $FE
db "WATCH OUT!!"
db $FF

MessageTextTWO_C9:
db "THE OLD WOMAN" : db $FE
db "IN AEZ VILLAGE" : db $FE
db "IS KNOWLEDGEABLE"
db $FF

MessageTextTWO_CA:
db "THE KEEPER OF" : db $FE
db "THE MOLE ROAD" : db $FE
db "AND THE CHIEF OF" : db $FE
db "THIS VILLAGE ARE" : db $FE
db "ACQUAINTANCES."
db $FF

MessageTextTWO_CB:
db "AH, THE GODDESS" : db $FE
db "WAS A GOOD" : db $FE
db "PERSON AFTER ALL"
db $FF

MessageTextTWO_CC:
db "WHICH GODDESS OF" : db $FE
db "WATER DO YOU" : db $FE
db "PREFER?" : db $FE
db "I LOVE KAREN...", !HEART  
db $FF

MessageTextTWO_CD:
db "PI,PI,PI..!"
db $FF

MessageTextTWO_CE:
db "PYU,PYU,PYU!"
db $FF

MessageTextTWO_CF:
db "HELENA, LOOK" : db $FE
db "OVER HERE!"
db $FF


MessageTextTWO_D0:
db "I HAVE BEEN" : db $FE
db "STANDING UP FOR" : db $FE
db "TOO LONG AH" : db $D2, $3E : db " I" : db $FE
db "WANT TO SIT DOWN"
db $FF

MessageTextTWO_D1:
db "I WONDER IF I" : db $FE
db "WILL BE STANDING" : db $FE
db "AFTER THIS GAME" : db $FE
db "IS OVER."
db $FF

MessageTextTWO_D2:
db "LATELY, THE TREE" : db $FE
db "OF MINA DOES NOT" : db $FE
db "GIVE US ANYTHING" : db $FE
db "ON THE CONTRARY," : db $FE
db "IT CAUSES" : db $FE
db "EARTHQUAKES." : db $FE
db "I AM SO SCARED."
db $FF

MessageTextTWO_D3:
db "HEY, DID YOU" : db $FE
db "ENTER THE MINA" : db $FE
db "TREE?, HOW WAS" : db $FE
db "IT? THATS" : db $FE
db "AMAZING! YOU ARE" : db $FE
db "STILL A CHILD!"
db $FF

MessageTextTWO_D4:
db "THE MINA TREE" : db $FE
db "CAN TALK BUT" : db $FE
db "ONLY THE ELDER" : db $FE
db "CAN TALK TO IT" : db $FE
db "I WISH I COULD" : db $FE
db "TALK TOO."
db $FF

MessageTextTWO_D5:
db "WHAT YOU TALKED" : db $FE
db "TO THE MINA TREE" : db $FE
db "COOL! I LOVE IT!"
db $FF

MessageTextTWO_D6:

db "BOY.NEVER FORGET" : db $FE
db "YOUR RIGHTEOUS" : db $FE
db "HEART AND DO" : db $FE
db "YOUR BEST UNTIL" : db $FE
db "THE END."
db $FF

MessageTextTWO_D7:
db $E0, $01 : db " JUMPED" : db $FE
db "INTO THE MINA" : db $FE
db "TREE AND NEVER" : db $FE
db "CAME OUT AGAIN." : db $FE
db "THAT IS SCARY."
db $FF

MessageTextTWO_D8:
db "OH!, YOU ARE OK!" : db $FE
db "THATS GREAT!" : db $FE
db "I WAS WORRIED" : db $FE
db "ABOUT YOU!"
db $FF

MessageTextTWO_D9:
db "I HAVE BEEN" : db $FE
db "LIVING QUIETLY" : db $FE
db "BUT I HAVE TO" : db $FE
db "ESCAPE...!"
db $FF

MessageTextTWO_DA:
db "SO WE DONT HAVE" : db $FE
db "TO RUN ANYMORE?"
db $FF

MessageTextTWO_DB:
db "WHAT PEOPLE OF" : db $FE
db "DARKNESS ARE" : db $FE
db "DOING?" : db $FE
db "DAMN IT."
db $FF

MessageTextTWO_DC:
db "HEHEHE" : db $FE
db "THAT GIRL WAS A" : db $FE
db "DARK PERSON TOO!"
db $FF

MessageTextTWO_DD:
db "THEY SAY THEY" : db $FE
db "WERE ATTACKED BY" : db $FE
db "THE DARKNESS...!" : db $FE

db $FF

MessageTextTWO_DE:
db "I HAVE HAD" : db $FE
db "ENOUGH OF FEAR." : db $FE
db "I WANT TO GO" : db $FE
db "BACK TO WHEN I" : db $FE
db "WAS RELAXED."
db $FF

MessageTextTWO_DF:
db "MIRADI IS GONNA" : db $FE
db "COME TO ATTACK!!" : db $FE
db "HURRY UP FLEE!!"
db $FF

MessageTextTWO_E0:
db "MIRADI IS" : db $FE
db "CONTAINED?" : db $FE
db "NO WAY! I DONT" : db $FE
db "BELIEVE IT!"
db $FF

MessageTextTWO_E1:
db "UH, OOOH!" : db $FE
db "REALLY?, COOL!"
db $FF

MessageTextTWO_E2:
db "WHERE HAS MY" : db $FE
db "MAN GONE?" : db $FE
db "GAMBLING...!" : db $FE
db "IF YOU SEE HIM" : db $FE
db "DONT LET HIM GO!"
db $FF

MessageTextTWO_E3:
db "THE NOVA TREE" : db $FE
db "IS AT THE" : db $FE
db "SOUTHEAST OF" : db $FE
db "HERE."
db $FF

MessageTextTWO_E4:
db "OH!! THE LIGHT IS" : db $FE
db "BEAUTIFUL!" : db $FE
db "YOU LOOK GREAT," : db $FE
db "TOO!"
db $FF

MessageTextTWO_E5:
db "MY NAME IS YUKI." : db $FE
db "THAT IS WHY I" : db $FE
db "LOVE SNOWLAND" : db $FE
db "SO MUCH!" : db $FE

db "THEY HAVE THE" : db $FE
db "CUTEST SNOWBABY" : db $FE
db "THERE!"
db $FF

MessageTextTWO_E6:
db "HAVE YOU HEARD" : db $FE
db "OF THE NOVA" : db $FE
db "FRUIT? I HEARD" : db $FE
db "THAT THEY ARE" : db $FE

db "BEAUTIFUL" : db $FE
db "LIKE TREASURES!" : db $FE
db "I WANT ONE!"

db $FF

MessageTextTWO_E7:
db "THIS VILLAGE IS" : db $FE
db "FULL OF DEMONS" : db $FE
db "BUT THEY DONT" : db $FE
db "CAUSE TROUBLE"
db $FF

MessageTextTWO_E8:
db "THIS VILLAGE IS" : db $FE
db "LIVELY,BUT THERE" : db $FE
db "ARE ALSO A LOT" : db $FE
db "OF SCARY PEOPLE!"
db $FF

MessageTextTWO_E9:
db "MY LITTLE SISTER" : db $FE
db "FELL FOR A" : db $FE
db "CHEATER..I WILL" : db $FE
db "HUNT HIM DOWN!"
db $FF

MessageTextTWO_EA:
db "I AM SORRY, DID" : db $FE
db "NOT TELL YOU." : db $FE
db "FROM NOW ON," : db $FE
db "BE CAREFUL"

db $FF

MessageTextTWO_EB:
db "IF ITS TRUE..." : db $FE
db "LIGHT, DARKNESS" : db $FE
db "DEMONS, SHOULD" : db $FE
db "NOT BE SEPARATED" : db $FE
db "GET ALONG WELL," : db $FE
db "IF WE DONT HELP" : db $FE
db "EACH OTHER...!"
db $FF

MessageTextTWO_EC:
db "I AM A PERSON" : db $FE
db "OF DARKNESS, SO" : db $FE
db "I DONT GET ALONG" : db $FE
db "WELL WITH PEOPLE" : db $FE
db "OF LIGHT." 
db $FF

MessageTextTWO_ED:
db "REAL COURAGE..." : db $FE
db "WHAT IS A TRUE" : db $FE
db "COMPANION?" : db $FE
db "HMM IM THINKING"
db $FF

MessageTextTWO_EE:
db "THERE HAVE BEEN" : db $FE
db "MANY PEOPLE WHO" : db $FE
db "SAID THEY WERE" : db $FE

db "HERO AND THEY" : db $FE
db "WERE LYING. ARE" : db $FE
db "YOU REALLY ONE!?"
db $FF

MessageTextTWO_EF:
db "THIS IS THE" : db $FE
db "CASTLE TOWN" : db $FE
db "OF LIGHT."
db $FF

MessageTextTWO_F0:
db "EACH VILLAGE" : db $FE
db "SELLS DIFFERNT" : db $FE
db "ITEMS, SO ITS" : db $FE
db "A GOOD IDEA TO" : db $FE
db "CHECK THE MENU" : db $FE
db "CAREFULLY BEFORE" : db $FE
db "BUYING."
db $FF

MessageTextTWO_F1:
db "IT IS BETTER TO" : db $FE
db "ALL THE HEALING" : db $FE
db "SPELLS AS SOON" : db $FE
db "AS POSSIBLE."
db $FF

MessageTextTWO_F2:
db "SORRY TO BOTHER" : db $FE
db "YOU, WHAT ABOUT" : db $FE
db "THE VILLAGE..." : db $FE
db "WHAT HAPPENED TO" : db $FE

db "CAINUN VILLAGE?" : db $FE
db "I HAVE NOT HEARD" : db $FE
db "ANYTHING SINCE" : db $FE
db "THE ATTACK." : db $FE

db "...WHAT?" : db $FE
db "THE WELL IN THE" : db $FE
db "DESERT?" : db $FE
db "LOUIS AND MAY" : db $FE

db "WERE GUARDING" : db $FE
db "IT?, WELL WE" : db $FE
db "HAVE TO GO BACK" : db $FE
db "NOW...!"
db $FF

MessageTextTWO_F3:
db "OH ", !NAME, "THANKS" : db $FE
db "FOR THAT TIME!"
db $FF

MessageTextTWO_F4:
db "I HAVE JUST" : db $FE
db "ARRIVED TO WORK" : db $FE
db "HERE WAS THERE A" : db $FE
db "A PRINCESS IN" : db $FE
db "THIS CASTLE..." : db $FE
db "WHERE DID SHE GO"
db $FF

MessageTextTWO_F5:
db "BOOM!, EASY!" : db $FE
db "WELCOME!" : db $FE
db "WE HAVE LOTS OF" : db $FE
db "STUFF IN THE" : db $FE
db "IN THE STORE" : db $FE
db "NEED ANYTHING?"

db $FF

MessageTextTWO_F6:
db "WHICH ONE WOULD" : db $FE
db "YOU LIKE?"
db $FF

MessageTextTWO_F7:
db !E022, ", RIGHT?" : db $FE
db "AND I WILL GIVE" : db $FE
db "YOU... ", !E021, "RILS!" : db $FE
db "THATS A BARGAIN!" : db $FE

db "WOULD YOU LIKE" : db $FE
db "TO BUY ?"
db $FF

MessageTextTWO_F8:
db "NO!!" : db $FE
db "THANK YOU FOR" : db $FE
db "YOUR SUPPORT!"
db $FF

MessageTextTWO_F9:
db "THATS IT?" : db $FE
db "WELL THEN PLEASE" : db $FE
db "COME AGAIN!"
db $FF

MessageTextTWO_FA:
db "OH MY GOD!" : db $FE
db "WITHOUT MONEY I" : db $FE
db "CANNOT SELL!"
db $FF

MessageTextTWO_FB:
db "WAIT A SECOND!" : db $FE
db "YOU BAG IS FULL!" : db $FE
db "PLEASE COME BACK" : db $FE
db "WITH SOME SPACE."
db $FF

MessageTextTWO_FC:
db "WELCOME!" : db $FE
db "YOU CAN HAVE" : db $FE
db "A MEAL HERE." : db $FE
db "WOULD YOU LIKE" : db $FE
db "ONE?"
db $FF

MessageTextTWO_FD:
db "THIS IS THE MENU" : db $FE
db "WHAT WOULD YOU" : db $FE
db "LIKE?"
db $FF

MessageTextTWO_FE:
db !E022, " RIGHT?" : db $FE
db "ITS ", !E021, "RILS" : db $FE
db "IS IT OK?" 
db $FF

MessageTextTWO_FF:
db "I WILL BRING" : db $FE
db "IT TO YOU." : db $FE
db "PLEASE WAIT" : db $FE
db "A MOMENT."
db $FF

MessageTextTWO_100:
db "ALRIGHT." : db $FE
db "PLEASE" : db $FE
db "COME AGAIN."
db $FF

MessageTextTWO_101:
db "OH, YOU DO NOT" : db $FE
db "HAVE ANY MONEY?" : db $FE
db "IT CANNOT BE" : db $FE
db "HELPED." : db $FE

db "I AM SORRY." : db $FE
db "I WILL GIVE YOU" : db $FE
db "THIS."
db $FF

MessageTextTWO_102:
db "NO MONEY?" : db $FE
db "YOU CAN SELL" : db $FE
db "ITEMS TO MAKE" : db $FE
db "MONEY!"
db $FF

MessageTextTWO_103:
db "WELCOME!" : db $FE
db "THIS IS THE" : db $FE
db "ARMOR SHOP !" : db $FE
db "WHAT CAN I DO" : db $FE
db "FOR YOU ?"
db $FF

MessageTextTWO_104:
db "WHICH ONE ARE" : db $FE
db "YOU SELLING?"
db $FF

MessageTextTWO_105:
db "I WILL BUY IT", !NL
db "FOR ", !E021, "RILS", !NL
db "ARE YOU SURE?"
db $FF

MessageTextTWO_106:
db "I AM SO HAPPY!!", !NL
db "OUR ARMORS", !NL
db "ARE GOOD!", !NL
db "NEED ANYTHING?"
db $FF

MessageTextTWO_107:
db "SO IS IT ", !E021,  "?" : db $FE
db "IT WILL BE ", !E022 : db $FE
db "WOULD YOU LIKE" : db $FE
db "TO BUY IT?"
db $FF

MessageTextTWO_108:
db "THANK YOU VERY" : db $FE
db "MUCH!!!"
db $FF

MessageTextTWO_109:
db "REALLY?" : db $FE
db "IM DISAPPOINTED!" : db $FE
db "OH WELL" : db $FE
db "COME AGAIN!"
db $FF

MessageTextTWO_10A:
db "WAIT A MINUTE!" : db $FE
db "YOUR BAG IS FULL" : db $FE
db "MAKE SOME SPACE" : db $FE
db "COME BACK LATER."
db $FF

MessageTextTWO_10B:
db "OH MY!" : db $FE
db "HE WENT TO THE" : db $FE
db "VILLAGE OF AEZ" : db $FE
db "AND NEVER CAME" : db $FE

db "BACK!, YOU GO" : db $FE
db "CHECK IT OUT!"
db $FF

MessageTextTWO_10C:
db "I AM HAKETA," : db $FE
db "ALSO NAMED" : db $FE
db "AFTER MY" : db $FE
db "REAL NAME" : db $FE

db "HEHEHE", !HEART, "I GOT" : db $FE
db "MARRIED." : db $FE
db !NL
db !NL
db "FROM THE STORY" : db $FE
db "OF THIS GAME TO" : db $FE
db "THE CHARACTER" : db $FE
db "DESIGN..." : db $FE
db "I DID ALL OF IT" : db $FE

db "IT WAS LOT" : db $FE
db "OF WORK TO" : db $FE
db "DRAW ALL" : db $FE
db "THE CHARACTERS" : db $FE
db "BUT IT WAS FUN", !SMILEY : db $FE

db "I HOPE EVERYONE" : db $FE
db "ENJOYED IT." : db $FE
db "I WILL BE" : db $FE
db "WAITING FOR YOUR" : db $FE
db "RESPONSE!"
db $FF

MessageTextTWO_10D:
db "IF YOU WANT TO" : db $FE
db "CURE THUNDER USE" : db $FE
db "JELLYFISH LEGS!" : db $FE
db "IF YOU WANT TO" : db $FE
db "CAST THUNDER USE" : db $FE
db "JELLYFISH LEGS!" : db $FE
db "REMEMBER THAT!"
db $FF

MessageTextTWO_10E:
db "THE ITEMS VARIES" : db $FE
db "FROM STORE TO" : db $FE
db "STORE YOU SHOULD" : db $FE
db "BUY CAREFULLY."
db $FF

MessageTextTWO_10F:
db "I HAVE COME TO" : db $FE
db "ASK FOR" : db $FE
db "A FORTUNE TELLER" : db $FE
db "FOR THE FUTURE" : db $FE

db "OF THIS GAME" : db $D2, $3F
db $FF

MessageTextTWO_110:
db "I WONDER WHERE" : db $FE
db "SHE WENT!!"
db $FF

MessageTextTWO_111:
db "WHERE IS THE" : db $FE
db "SWORD OF THE" : db $FE
db "EARTH SAID TO" : db $FE
db "HAVE BEEN USED" : db $FE

db "BY THE HERO OF" : db $FE
db "THE EARTH?"
db $FF

MessageTextTWO_112:
db "THE WEAPON SHOP" : db $FE
db "OVER THERE IS" : db $FE
db "FULL OF DISTANCE" : db $FE
db "WEAPONS..."
db $FF

MessageTextTWO_113:
db "DID YOU KNOW?" : db $FE
db "THERE IS A" : db $FE
db "MYSTERIOUS WORLD" : db $FE
db "OF SNOW." : db $FE

db "THE SNOW DOES" : db $FE
db "NOT LEAK" : db $FE
db "OUTSIDE BECAUSE" : db $FE
db "IT IS SURROUNDED" : db $FE

db "BY HIGH" : db $FE
db "MOUNTAINS!" : db $FE
db $FE
db $FE

db "OH, BY THE WAY.." : db $FE
db "THEY SAY THERE" : db $FE
db "IS A SNOW CASTLE" : db $FE
db "THERE WITH A" : db $FE

db "CUTE LITTLE" : db $FE
db "SNOW BABY" : db $D2, $3D




db $FF

MessageTextTWO_114:
db "HEY! YOU ARE IN" : db $FE
db "MY WAY!"
db $FF

MessageTextTWO_115:
db "THATS IT!" : db $FE
db "I SAW IT FIRST!!" : db $FE
db $FF

MessageTextTWO_116:
db "WOMEN FIGHTS ARE" : db $FE
db "SCARY..." : db $FE
db "OH, I AM WOMAN" : db $FE
db "TOO. NOOO" : db $D2, $3E
db $FF

MessageTextTWO_117:
db "YOU ARE A MAN" : db $FE
db "OF LIGHT?" : db $FE
db "ARE YOU IN" : db $FE
db "TROUBLE?" : db $FE

db "IS THE KING OKAY"
db $FF

MessageTextTWO_118:
db "OF COURSE, THERE" : db $FE
db "ARE WOUND MEDS," : db $FE
db "BUT THERE ARE" : db $FE
db "ALSO ITEMS THAT" : db $FE

db "HEAL YOUR BODY," : db $FE
db "SO YOU SHOULD" : db $FE
db "DEFINITELY BUY" : db $FE
db "THEM!!!" : db $FE

db "THAT IS RIGHT..." : db $FE
db "I WILL TELL YOU" : db $FE
db "WORKS IN SECRET" : db $D2, $3D : db $FE
db $FE

db "BURN..." : db $FE
db "...WATERGUN" : db $FE
db "SHOCK..." : db $FE
db "..JELLYFISH LEGS" : db $FE

db "ROCK..." : db $FE
db "...AROM.HERB" : db $FE
db "WATER..." : db $FE
db "...HEATER" : db $FE

db "CHARM..." : db $FE
db "...FATHER WINK" : db $FE
db "HUNGRY..." : db $FE
db "...GOLDEN FORK" : db $FE

db "CONFUSED..." : db $FE
db "...BECAREFUL" : db $FE
db "SURPRISE..." : db $FE
db "...CANDY" : db $FE

db "POISON..." : db $FE
db "...ANTIDOTE" : db $FE
db "SLEEP..." : db $FE
db "...ALARM CLOCK" : db $FE

db "MINI..." : db $FE
db "...MALLET" : db $FE
db "AND NOT SOLD" : db $FE
db "HERE. YOU HAVE" : db $FE

db "DEATH..." : db $FE
db "...FRUIT OF LIFE" : db $FE
db "THIS IS ONLY" : db $FE
db "FOUND IN THE" : db $FE

db "MERMAID VILLAGE."
db $FF

MessageTextTWO_119:
db "EVERYONE CAN USE" : db $FE
db "MAGIC THE MAX" : db $FE
db "MP IS DIFFERENT" : db $FE
db "FOR EVERYONE." : db $FE
db "YOU SHOULD THINK" : db $FE
db "ABOUT IT BEFORE" : db $FE
db "YOU BUY ONE."
db $FF

MessageTextTWO_11A:
db "HERE YOU CAN" : db $FE
db "EARN MONEY BY" : db $FE
db "PLAYING MINI" : db $FE
db "GAMES, BUT" : db $FE

db "IT DEPENDS ON" : db $FE
db "WHAT YOU DO," : db $FE
db "SO DO YOUR" : db $FE
db "BEST!"
db $FF

MessageTextTWO_11B:
db "MY HUSBAND IS" : db $FE
db "OBSESSED WITH" : db $FE
db "THE DANCERS HERE" : db $FE
db "EVEN THOUGH I AM" : db $FE
db "SEXIER!"
db $FF

MessageTextTWO_11C:
db "AT THIS POINT," : db $FE
db "ITS A GOOD IDEA" : db $FE
db "TO GET YOUR" : db $FE
db "EQUIPMENT IN" : db $FE
db "ORDER."
db $FF

MessageTextTWO_11D:
db "UGH... THE..." : db $FE
db "VILLAGE....." : db $FE
db "IS BEING..." : db $FE
db "ATTACKED BY" : db $FE

db "THE DARKNESS" : db $FE
db "... I AM BEGGING" : db $FE
db "YOU... UGH. HELP" : db $FE
db "THE VILLAGE..."
db $FF

MessageTextTWO_11E:
db "THIS BOX CAN" : db $FE
db "HOLD YOUR ITEMS" : db $FE
db "WHAT DO YOU" : db $FE
db "WANT TO DO?"
db $FF

MessageTextTWO_11F:
db "WHICH ONE?"
db $FF


warnpc $25FFFF


;EXPANSION MESSAGES1
org $268000

dw MessageTextExp_00
dw MessageTextExp_01
dw MessageTextExp_02
dw MessageTextExp_03
dw MessageTextExp_04
dw MessageTextExp_05
dw MessageTextExp_06
dw MessageTextExp_07
dw MessageTextExp_08
dw MessageTextExp_09
dw MessageTextExp_0A
dw MessageTextExp_0B
dw MessageTextExp_0C
dw MessageTextExp_0D
dw MessageTextExp_0E
dw MessageTextExp_0F
dw MessageTextExp_10
dw MessageTextExp_11
dw MessageTextExp_12
dw MessageTextExp_13
dw MessageTextExp_14
dw MessageTextExp_15
dw MessageTextExp_16
dw MessageTextExp_17
dw MessageTextExp_18
dw MessageTextExp_19
dw MessageTextExp_1A
dw MessageTextExp_1B
dw MessageTextExp_1C
dw MessageTextExp_1D
dw MessageTextExp_1E
dw MessageTextExp_1F
dw MessageTextExp_20
dw MessageTextExp_21
dw MessageTextExp_22
dw MessageTextExp_23
dw MessageTextExp_24
dw MessageTextExp_25
dw MessageTextExp_26
dw MessageTextExp_27
dw MessageTextExp_28
dw MessageTextExp_29
dw MessageTextExp_2A
dw MessageTextExp_2B
dw MessageTextExp_2C
dw MessageTextExp_2D
dw MessageTextExp_2E
dw MessageTextExp_2F
dw MessageTextExp_30
dw MessageTextExp_31
dw MessageTextExp_32
dw MessageTextExp_33
dw MessageTextExp_34
dw MessageTextExp_35
dw MessageTextExp_36
dw MessageTextExp_37
dw MessageTextExp_38
dw MessageTextExp_39
dw MessageTextExp_3A
dw MessageTextExp_3B
dw MessageTextExp_3C
dw MessageTextExp_3D
dw MessageTextExp_3E
dw MessageTextExp_3F
dw MessageTextExp_40
dw MessageTextExp_41
dw MessageTextExp_42
dw MessageTextExp_43
dw MessageTextExp_44
dw MessageTextExp_45
dw MessageTextExp_46
dw MessageTextExp_47
dw MessageTextExp_48
dw MessageTextExp_49
dw MessageTextExp_4A
dw MessageTextExp_4B
dw MessageTextExp_4C
dw MessageTextExp_4D
dw MessageTextExp_4E
dw MessageTextExp_4F
dw MessageTextExp_50
dw MessageTextExp_51
dw MessageTextExp_52
dw MessageTextExp_53
dw MessageTextExp_54
dw MessageTextExp_55
dw MessageTextExp_56
dw MessageTextExp_57
dw MessageTextExp_58
dw MessageTextExp_59
dw MessageTextExp_5A
dw MessageTextExp_5B
dw MessageTextExp_5C
dw MessageTextExp_5D
dw MessageTextExp_5E
dw MessageTextExp_5F
dw MessageTextExp_60
dw MessageTextExp_61
dw MessageTextExp_62
dw MessageTextExp_63
dw MessageTextExp_64
dw MessageTextExp_65
dw MessageTextExp_66
dw MessageTextExp_67
dw MessageTextExp_68
dw MessageTextExp_69
dw MessageTextExp_6A
dw MessageTextExp_6B
dw MessageTextExp_6C
dw MessageTextExp_6D
dw MessageTextExp_6E
dw MessageTextExp_6F
dw MessageTextExp_70
dw MessageTextExp_71
dw MessageTextExp_72
dw MessageTextExp_73
dw MessageTextExp_74
dw MessageTextExp_75
dw MessageTextExp_76
dw MessageTextExp_77
dw MessageTextExp_78
dw MessageTextExp_79
dw MessageTextExp_7A
dw MessageTextExp_7B
dw MessageTextExp_7C
dw MessageTextExp_7D
dw MessageTextExp_7E
dw MessageTextExp_7F
dw MessageTextExp_80
dw MessageTextExp_81
dw MessageTextExp_82
dw MessageTextExp_83
dw MessageTextExp_84
dw MessageTextExp_85
dw MessageTextExp_86
dw MessageTextExp_87
dw MessageTextExp_88
dw MessageTextExp_89
dw MessageTextExp_8A
dw MessageTextExp_8B
dw MessageTextExp_8C
dw MessageTextExp_8D
dw MessageTextExp_8E
dw MessageTextExp_8F
dw MessageTextExp_90
dw MessageTextExp_91
dw MessageTextExp_92
dw MessageTextExp_93
dw MessageTextExp_94
dw MessageTextExp_95
dw MessageTextExp_96
dw MessageTextExp_97
dw MessageTextExp_98
dw MessageTextExp_99
dw MessageTextExp_9A
dw MessageTextExp_9B
dw MessageTextExp_9C
dw MessageTextExp_9D
dw MessageTextExp_9E
dw MessageTextExp_9F
dw MessageTextExp_A0
dw MessageTextExp_A1
dw MessageTextExp_A2
dw MessageTextExp_A3
dw MessageTextExp_A4
dw MessageTextExp_A5
dw MessageTextExp_A6
dw MessageTextExp_A7
dw MessageTextExp_A8
dw MessageTextExp_A9
dw MessageTextExp_AA
dw MessageTextExp_AB
dw MessageTextExp_AC
dw MessageTextExp_AD
dw MessageTextExp_AE
dw MessageTextExp_AF
dw MessageTextExp_B0
dw MessageTextExp_B1
dw MessageTextExp_B2
dw MessageTextExp_B3
dw MessageTextExp_B4
dw MessageTextExp_B5
dw MessageTextExp_B6
dw MessageTextExp_B7
dw MessageTextExp_B8
dw MessageTextExp_B9
dw MessageTextExp_BA
dw MessageTextExp_BB
dw MessageTextExp_BC
dw MessageTextExp_BD
dw MessageTextExp_BE
dw MessageTextExp_BF
dw MessageTextExp_C0
dw MessageTextExp_C1
dw MessageTextExp_C2
dw MessageTextExp_C3
dw MessageTextExp_C4
dw MessageTextExp_C5
dw MessageTextExp_C6
dw MessageTextExp_C7
dw MessageTextExp_C8
dw MessageTextExp_C9
dw MessageTextExp_CA
dw MessageTextExp_CB
dw MessageTextExp_CC
dw MessageTextExp_CD
dw MessageTextExp_CE
dw MessageTextExp_CF
dw MessageTextExp_D0
dw MessageTextExp_D1
dw MessageTextExp_D2
dw MessageTextExp_D3
dw MessageTextExp_D4
dw MessageTextExp_D5
dw MessageTextExp_D6
dw MessageTextExp_D7
dw MessageTextExp_D8
dw MessageTextExp_D9
dw MessageTextExp_DA
dw MessageTextExp_DB
dw MessageTextExp_DC
dw MessageTextExp_DD
dw MessageTextExp_DE
dw MessageTextExp_DF
dw MessageTextExp_E0
dw MessageTextExp_E1
dw MessageTextExp_E2
dw MessageTextExp_E3
dw MessageTextExp_E4
dw MessageTextExp_E5
dw MessageTextExp_E6
dw MessageTextExp_E7
dw MessageTextExp_E8
dw MessageTextExp_E9
dw MessageTextExp_EA
dw MessageTextExp_EB
dw MessageTextExp_EC
dw MessageTextExp_ED
dw MessageTextExp_EE
dw MessageTextExp_EF
dw MessageTextExp_F0
dw MessageTextExp_F1
dw MessageTextExp_F2
dw MessageTextExp_F3
dw MessageTextExp_F4
dw MessageTextExp_F5
dw MessageTextExp_F6
dw MessageTextExp_F7
dw MessageTextExp_F8
dw MessageTextExp_F9
dw MessageTextExp_FA
dw MessageTextExp_FB
dw MessageTextExp_FC
dw MessageTextExp_FD
dw MessageTextExp_FE
dw MessageTextExp_FF
dw MessageTextExp_100
dw MessageTextExp_101
dw MessageTextExp_102
dw MessageTextExp_103
dw MessageTextExp_104
dw MessageTextExp_105
dw MessageTextExp_106
dw MessageTextExp_107
dw MessageTextExp_108
dw MessageTextExp_109
dw MessageTextExp_10A
dw MessageTextExp_10B
dw MessageTextExp_10C
dw MessageTextExp_10D
dw MessageTextExp_10E
dw MessageTextExp_10F
dw MessageTextExp_110
dw MessageTextExp_111
dw MessageTextExp_112
dw MessageTextExp_113
dw MessageTextExp_114
dw MessageTextExp_115
dw MessageTextExp_116
dw MessageTextExp_117
dw MessageTextExp_118
dw MessageTextExp_119
dw MessageTextExp_11A
dw MessageTextExp_11B
dw MessageTextExp_11C
dw MessageTextExp_11D
dw MessageTextExp_11E
dw MessageTextExp_11F
dw MessageTextExp_120
dw MessageTextExp_121
dw MessageTextExp_122
dw MessageTextExp_123
dw MessageTextExp_124
dw MessageTextExp_125
dw MessageTextExp_126
dw MessageTextExp_127
dw MessageTextExp_128
dw MessageTextExp_129
dw MessageTextExp_12A
dw MessageTextExp_12B
dw MessageTextExp_12C
dw MessageTextExp_12D
dw MessageTextExp_12E
dw MessageTextExp_12F
dw MessageTextExp_130
dw MessageTextExp_131
dw MessageTextExp_132
dw MessageTextExp_133
dw MessageTextExp_134
dw MessageTextExp_135
dw MessageTextExp_136
dw MessageTextExp_137
dw MessageTextExp_138
dw MessageTextExp_139
dw MessageTextExp_13A
dw MessageTextExp_13B
dw MessageTextExp_13C
dw MessageTextExp_13D
dw MessageTextExp_13E
dw MessageTextExp_13F
dw MessageTextExp_140
dw MessageTextExp_141
dw MessageTextExp_142
dw MessageTextExp_143
dw MessageTextExp_144
dw MessageTextExp_145
dw MessageTextExp_146
dw MessageTextExp_147
dw MessageTextExp_148
dw MessageTextExp_149
dw MessageTextExp_14A
dw MessageTextExp_14B
dw MessageTextExp_14C
dw MessageTextExp_14D
dw MessageTextExp_14E
dw MessageTextExp_14F
dw MessageTextExp_150
dw MessageTextExp_151
dw MessageTextExp_152
dw MessageTextExp_153
dw MessageTextExp_154
dw MessageTextExp_155
dw MessageTextExp_156
dw MessageTextExp_157
dw MessageTextExp_158
dw MessageTextExp_159
dw MessageTextExp_15A
dw MessageTextExp_15B
dw MessageTextExp_15C
dw MessageTextExp_15D
dw MessageTextExp_15E
dw MessageTextExp_15F
dw MessageTextExp_160
dw MessageTextExp_161
dw MessageTextExp_162
dw MessageTextExp_163
dw MessageTextExp_164
dw MessageTextExp_165
dw MessageTextExp_166
dw MessageTextExp_167
dw MessageTextExp_168
dw MessageTextExp_169
dw MessageTextExp_16A
dw MessageTextExp_16B
dw MessageTextExp_16C
dw MessageTextExp_16D
dw MessageTextExp_16E
dw MessageTextExp_16F
dw MessageTextExp_170
dw MessageTextExp_171
dw MessageTextExp_172
dw MessageTextExp_173
dw MessageTextExp_174
dw MessageTextExp_175
dw MessageTextExp_176
dw MessageTextExp_177
dw MessageTextExp_178
dw MessageTextExp_179
dw MessageTextExp_17A
dw MessageTextExp_17B
dw MessageTextExp_17C
dw MessageTextExp_17D
dw MessageTextExp_17E
dw MessageTextExp_17F
dw MessageTextExp_180
dw MessageTextExp_181
dw MessageTextExp_182
dw MessageTextExp_183
dw MessageTextExp_184
dw MessageTextExp_185
dw MessageTextExp_186
dw MessageTextExp_187
dw MessageTextExp_188
dw MessageTextExp_189
dw MessageTextExp_18A
dw MessageTextExp_18B
dw MessageTextExp_18C
dw MessageTextExp_18D
dw MessageTextExp_18E
dw MessageTextExp_18F
dw MessageTextExp_190
dw MessageTextExp_191
dw MessageTextExp_192
dw MessageTextExp_193
dw MessageTextExp_194
dw MessageTextExp_195
dw MessageTextExp_196
dw MessageTextExp_197
dw MessageTextExp_198
dw MessageTextExp_199
dw MessageTextExp_19A
dw MessageTextExp_19B
dw MessageTextExp_19C
dw MessageTextExp_19D
dw MessageTextExp_19E
dw MessageTextExp_19F
dw MessageTextExp_1A0
dw MessageTextExp_1A1
dw MessageTextExp_1A2
dw MessageTextExp_1A3
dw MessageTextExp_1A4
dw MessageTextExp_1A5
dw MessageTextExp_1A6
dw MessageTextExp_1A7
dw MessageTextExp_1A8
dw MessageTextExp_1A9
dw MessageTextExp_1AA
dw MessageTextExp_1AB
dw MessageTextExp_1AC
dw MessageTextExp_1AD
dw MessageTextExp_1AE
dw MessageTextExp_1AF
dw MessageTextExp_1B0
dw MessageTextExp_1B1
dw MessageTextExp_1B2
dw MessageTextExp_1B3
dw MessageTextExp_1B4
dw MessageTextExp_1B5
dw MessageTextExp_1B6
dw MessageTextExp_1B7
dw MessageTextExp_1B8
dw MessageTextExp_1B9
dw MessageTextExp_1BA
dw MessageTextExp_1BB
dw MessageTextExp_1BC
dw MessageTextExp_1BD
dw MessageTextExp_1BE
dw MessageTextExp_1BF
dw MessageTextExp_1C0
dw MessageTextExp_1C1
dw MessageTextExp_1C2
dw MessageTextExp_1C3
dw MessageTextExp_1C4
dw MessageTextExp_1C5
dw MessageTextExp_1C6
dw MessageTextExp_1C7
dw MessageTextExp_1C8
dw MessageTextExp_1C9
dw MessageTextExp_1CA
dw MessageTextExp_1CB
dw MessageTextExp_1CC
dw MessageTextExp_1CD
dw MessageTextExp_1CE
dw MessageTextExp_1CF
dw MessageTextExp_1D0
dw MessageTextExp_1D1
dw MessageTextExp_1D2
dw MessageTextExp_1D3
dw MessageTextExp_1D4
dw MessageTextExp_1D5
dw MessageTextExp_1D6
dw MessageTextExp_1D7
dw MessageTextExp_1D8
dw MessageTextExp_1D9
dw MessageTextExp_1DA
dw MessageTextExp_1DB
dw MessageTextExp_1DC
dw MessageTextExp_1DD
dw MessageTextExp_1DE
dw MessageTextExp_1DF
dw MessageTextExp_1E0
dw MessageTextExp_1E1
dw MessageTextExp_1E2
dw MessageTextExp_1E3
dw MessageTextExp_1E4
dw MessageTextExp_1E5
dw MessageTextExp_1E6
dw MessageTextExp_1E7
dw MessageTextExp_1E8
dw MessageTextExp_1E9
dw MessageTextExp_1EA
dw MessageTextExp_1EB
dw MessageTextExp_1EC
dw MessageTextExp_1ED
dw MessageTextExp_1EE
dw MessageTextExp_1EF
dw MessageTextExp_1F0
dw MessageTextExp_1F1
dw MessageTextExp_1F2
dw MessageTextExp_1F3
dw MessageTextExp_1F4
dw MessageTextExp_1F5
dw MessageTextExp_1F6
dw MessageTextExp_1F7
dw MessageTextExp_1F8
dw MessageTextExp_1F9
dw MessageTextExp_1FA
dw MessageTextExp_1FB
dw MessageTextExp_1FC
dw MessageTextExp_1FD
dw MessageTextExp_1FE
dw MessageTextExp_1FF
dw MessageTextExp_200
dw MessageTextExp_201
dw MessageTextExp_202
dw MessageTextExp_203
dw MessageTextExp_204
dw MessageTextExp_205
dw MessageTextExp_206
dw MessageTextExp_207
dw MessageTextExp_208
dw MessageTextExp_209
dw MessageTextExp_20A
dw MessageTextExp_20B
dw MessageTextExp_20C
dw MessageTextExp_20D
dw MessageTextExp_20E
dw MessageTextExp_20F
dw MessageTextExp_210
dw MessageTextExp_211
dw MessageTextExp_212
dw MessageTextExp_213
dw MessageTextExp_214
dw MessageTextExp_215
dw MessageTextExp_216
dw MessageTextExp_217
dw MessageTextExp_218
dw MessageTextExp_219
dw MessageTextExp_21A
dw MessageTextExp_21B
dw MessageTextExp_21C
dw MessageTextExp_21D
dw MessageTextExp_21E
dw MessageTextExp_21F
dw MessageTextExp_220
dw MessageTextExp_221
dw MessageTextExp_222
dw MessageTextExp_223
dw MessageTextExp_224
dw MessageTextExp_225
dw MessageTextExp_226
dw MessageTextExp_227
dw MessageTextExp_228
dw MessageTextExp_229
dw MessageTextExp_22A
dw MessageTextExp_22B
dw MessageTextExp_22C
dw MessageTextExp_22D
dw MessageTextExp_22E
dw MessageTextExp_22F
dw MessageTextExp_230
dw MessageTextExp_231
dw MessageTextExp_232
dw MessageTextExp_233
dw MessageTextExp_234
dw MessageTextExp_235
dw MessageTextExp_236
dw MessageTextExp_237
dw MessageTextExp_238
dw MessageTextExp_239
dw MessageTextExp_23A
dw MessageTextExp_23B
dw MessageTextExp_23C
dw MessageTextExp_23D
dw MessageTextExp_23E
dw MessageTextExp_23F
dw MessageTextExp_240
dw MessageTextExp_241


MessageTextExp_00:
MessageTextExp_01:
MessageTextExp_02:
MessageTextExp_03:
MessageTextExp_04:
MessageTextExp_05:
MessageTextExp_06:
MessageTextExp_07:
MessageTextExp_08:
MessageTextExp_09:
MessageTextExp_0A:
MessageTextExp_0B:
MessageTextExp_0C:
MessageTextExp_0D:
MessageTextExp_0E:
MessageTextExp_0F:
MessageTextExp_10:
MessageTextExp_11:
MessageTextExp_12:
MessageTextExp_13:
MessageTextExp_14:
MessageTextExp_15:
MessageTextExp_16:
MessageTextExp_17:
MessageTextExp_18:
MessageTextExp_19:
MessageTextExp_1A:
MessageTextExp_1B:
MessageTextExp_1C:
MessageTextExp_1D:
MessageTextExp_1E:
MessageTextExp_1F:
MessageTextExp_20:
MessageTextExp_21:
MessageTextExp_22:
MessageTextExp_23:
MessageTextExp_24:
MessageTextExp_25:
MessageTextExp_26:
MessageTextExp_27:
MessageTextExp_28:
MessageTextExp_29:
MessageTextExp_2A:
MessageTextExp_2B:
MessageTextExp_2C:
MessageTextExp_2D:
MessageTextExp_2E:
MessageTextExp_2F:
MessageTextExp_30:
MessageTextExp_31:
MessageTextExp_32:
MessageTextExp_33:
MessageTextExp_34:
MessageTextExp_35:
MessageTextExp_36:
MessageTextExp_37:
MessageTextExp_38:
MessageTextExp_39:
MessageTextExp_3A:
MessageTextExp_3B:
MessageTextExp_3C:
MessageTextExp_3D:
MessageTextExp_3E:
MessageTextExp_3F:
MessageTextExp_40:
MessageTextExp_41:
MessageTextExp_42:
MessageTextExp_43:
MessageTextExp_44:
MessageTextExp_45:
MessageTextExp_46:
MessageTextExp_47:
MessageTextExp_48:
MessageTextExp_49:
MessageTextExp_4A:
MessageTextExp_4B:
MessageTextExp_4C:
MessageTextExp_4D:
MessageTextExp_4E:
MessageTextExp_4F:
MessageTextExp_50:
MessageTextExp_51:
MessageTextExp_52:
MessageTextExp_53:
MessageTextExp_54:
MessageTextExp_55:
MessageTextExp_56:
MessageTextExp_57:
MessageTextExp_58:
MessageTextExp_59:
MessageTextExp_5A:
MessageTextExp_5B:
MessageTextExp_5C:
MessageTextExp_5D:
MessageTextExp_5E:
MessageTextExp_5F:
MessageTextExp_60:
MessageTextExp_61:
MessageTextExp_62:
MessageTextExp_63:
MessageTextExp_64:
MessageTextExp_65:
MessageTextExp_66:
MessageTextExp_67:
MessageTextExp_68:
MessageTextExp_69:
MessageTextExp_6A:
MessageTextExp_6B:
MessageTextExp_6C:
MessageTextExp_6D:
MessageTextExp_6E:
MessageTextExp_6F:
MessageTextExp_70:
MessageTextExp_71:
MessageTextExp_72:
MessageTextExp_73:
MessageTextExp_74:
MessageTextExp_75:
MessageTextExp_76:
MessageTextExp_77:
MessageTextExp_78:
MessageTextExp_79:
MessageTextExp_7A:
MessageTextExp_7B:
MessageTextExp_7C:
MessageTextExp_7D:
MessageTextExp_7E:
MessageTextExp_7F:
MessageTextExp_80:
MessageTextExp_81:
MessageTextExp_82:
MessageTextExp_83:
MessageTextExp_84:
MessageTextExp_85:
MessageTextExp_86:
MessageTextExp_87:
MessageTextExp_88:
MessageTextExp_89:
MessageTextExp_8A:
MessageTextExp_8B:
MessageTextExp_8C:
MessageTextExp_8D:
MessageTextExp_8E:
MessageTextExp_8F:
MessageTextExp_90:
MessageTextExp_91:
MessageTextExp_92:
MessageTextExp_93:
MessageTextExp_94:
MessageTextExp_95:
MessageTextExp_96:
MessageTextExp_97:
MessageTextExp_98:
MessageTextExp_99:
MessageTextExp_9A:
MessageTextExp_9B:
MessageTextExp_9C:
MessageTextExp_9D:
MessageTextExp_9E:
MessageTextExp_9F:
MessageTextExp_A0:
MessageTextExp_A1:
MessageTextExp_A2:
MessageTextExp_A3:
MessageTextExp_A4:
MessageTextExp_A5:
MessageTextExp_A6:
MessageTextExp_A7:
MessageTextExp_A8:
MessageTextExp_A9:
MessageTextExp_AA:
MessageTextExp_AB:
MessageTextExp_AC:
MessageTextExp_AD:
MessageTextExp_AE:
MessageTextExp_AF:
MessageTextExp_B0:
MessageTextExp_B1:
MessageTextExp_B2:
MessageTextExp_B3:
MessageTextExp_B4:
MessageTextExp_B5:
MessageTextExp_B6:
MessageTextExp_B7:
MessageTextExp_B8:
MessageTextExp_B9:
MessageTextExp_BA:
MessageTextExp_BB:
MessageTextExp_BC:
MessageTextExp_BD:
MessageTextExp_BE:
MessageTextExp_BF:
MessageTextExp_C0:
MessageTextExp_C1:
MessageTextExp_C2:
MessageTextExp_C3:
MessageTextExp_C4:
MessageTextExp_C5:
MessageTextExp_C6:
MessageTextExp_C7:
MessageTextExp_C8:
MessageTextExp_C9:
MessageTextExp_CA:
MessageTextExp_CB:
MessageTextExp_CC:
MessageTextExp_CD:
MessageTextExp_CE:
MessageTextExp_CF:
MessageTextExp_D0:
MessageTextExp_D1:
MessageTextExp_D2:
MessageTextExp_D3:
MessageTextExp_D4:
MessageTextExp_D5:
MessageTextExp_D6:
MessageTextExp_D7:
MessageTextExp_D8:
MessageTextExp_D9:
MessageTextExp_DA:
MessageTextExp_DB:
MessageTextExp_DC:
MessageTextExp_DD:
MessageTextExp_DE:
MessageTextExp_DF:
MessageTextExp_E0:
MessageTextExp_E1:
MessageTextExp_E2:
MessageTextExp_E3:
MessageTextExp_E4:
MessageTextExp_E5:
MessageTextExp_E6:
MessageTextExp_E7:
MessageTextExp_E8:
MessageTextExp_E9:
MessageTextExp_EA:
MessageTextExp_EB:
MessageTextExp_EC:
MessageTextExp_ED:
MessageTextExp_EE:
MessageTextExp_EF:
MessageTextExp_F0:
MessageTextExp_F1:
MessageTextExp_F2:
MessageTextExp_F3:
MessageTextExp_F4:
MessageTextExp_F5:
MessageTextExp_F6:
MessageTextExp_F7:
MessageTextExp_F8:
MessageTextExp_F9:
MessageTextExp_FA:
MessageTextExp_FB:
MessageTextExp_FC:
MessageTextExp_FD:
MessageTextExp_FE:
MessageTextExp_FF:
MessageTextExp_100:
MessageTextExp_101:
MessageTextExp_102:
MessageTextExp_103:
MessageTextExp_104:
MessageTextExp_105:
MessageTextExp_106:
MessageTextExp_107:
MessageTextExp_108:
MessageTextExp_109:
MessageTextExp_10A:
MessageTextExp_10B:
MessageTextExp_10C:
MessageTextExp_10D:
MessageTextExp_10E:
MessageTextExp_10F:
MessageTextExp_110:
MessageTextExp_111:
MessageTextExp_112:
MessageTextExp_113:
MessageTextExp_114:
MessageTextExp_115:
MessageTextExp_116:
MessageTextExp_117:
MessageTextExp_118:
MessageTextExp_119:
MessageTextExp_11A:
MessageTextExp_11B:
MessageTextExp_11C:
MessageTextExp_11D:
MessageTextExp_11E:
MessageTextExp_11F:
db $FF


MessageTextExp_120:

db "TAKE CARE...!"
db $FF

MessageTextExp_121:
db "I HATE..." : db $FE
db "MAN OF LIGHT..." : db $FE
db "THE MAN OF LIGHT" : db $FE
db "DECEIVED ME" : db $FE

db "BECAUSE OF THEM" : db $FE
db "MY MOTHER DIED" : db $FE
db "AND I WAS BORN" : db $FE
db "BLIND." : db $FE

db "THE TREE OF LIFE" : db $FE
db "IS STILL DEAD..." : db $FE
db "IT MUST BE" : db $FE
db "BECAUSE IT HATE" : db $FE

db "PEOPLE OF LIGHT." : db $FE
db "IT IS BECAUSE WE" : db $FE
db "LET PEOPLE OF" : db $FE
db "LIGHT INTO THE" : db $FE

db "SANCTUARY..." : db $FE
db "ITS ALL THE" : db $FE
db "FAULT OF THE" : db $FE
db "PEOPLE OF LIGHT" : db $FE

db "I HAVE BEEN" : db $FE
db "WAITING FOR THIS" : db $FE
db "MOMENT... THE" : db $FE
db "DAY WHEN ALL" : db $FE

db "WILL BE CONSUMED" : db $FE
db "BY THE BLOOD OF" : db $FE
db "LIGHT..." : db $FE
db $FE

db "LET THEM DIE!!!"
db $FF

MessageTextExp_122:
db "I AM SORRY CHIEF" : db $FE
db "I UNDERSTAND" : db $FE
db "YOUR ANGER BUT.." : db $FE
db "I GOT BAD FEELIN" : db $FE

db "I WAS CURIOUS." : db $FE
db "CHIEF... YOUR" : db $FE
db "HATRED IS WRONG" : db $FE
db "NOTHING COMES" : db $FE

db "FROM HATRED." : db $FE
db "CHIEF.. PLEASE" : db $FE
db "REALIZE...!"

db $FF

MessageTextExp_123:
db $E0, $2E : db " YOU ARE A" : db $FE
db "MERMAID I AM" : db $FE
db "YOUR CHIEF, OBEY" : db $FE
db "MY ORDERS!" : db $FE

db "OTHERWISE I" : db $FE
db "WILL NOT FORGIVE" : db $FE
db "YOU!"

db $FF

MessageTextExp_124:
db "CHIEF......" : db $FE
db "I USED TO GO SEE" : db $FE
db "GRANDPA DEW ON" : db $FE
db "THE GROUND." : db $FE

db "GRANDPA DEW IS" : db $FE
db "YOUR FATHER AND" : db $FE
db "I HAVE TALKED TO" : db $FE
db "HIM MANY TIMES." : db $FE

db "BETWEEN LIGHT," : db $FE
db "DARKNESS, HOW" : db $FE
db "DEEPLY THEY WERE" : db $FE
db "IN LOVE WITH" : db $FE

db "EACH OTHER....!" : db $FE
db "MOTHER ALWAYS" : db $FE
db "TOLD ME. THAT" : db $FE
db "SHE WISHED THAT" : db $FE

db "THE TABOO OF" : db $FE
db "LIGHT AND" : db $FE
db "DARKNESS BEING" : db $FE
db "TOGETHER AMONG" : db $FE

db "US WOULD BE" : db $FE
db "BROKEN. I WISH" : db $FE
db "THAT THE TABOO" : db $FE
db "OF LIGHT AND" : db $FE

db "DARKNESS" : db $FE
db "BECOMING ONE" : db $FE
db "AMONG US WOULD" : db $FE
db "BE BROKEN." : db $FE

db "MOTHER PUT ALL" : db $FE
db "HER LIFE INTO" : db $FE
db "THE NEW LIFE," : db $FE
db "AND AS SOON AS" : db $FE

db "THE CHIEF WAS" : db $FE
db "BORN, SHE TURNED" : db $FE
db "INTO BUBBLES AND" : db $FE
db "RETURNED TO THE" : db $FE

db "TREE OF LIFE." : db $FE
db "THE TREE OF LIFE" : db $FE
db "MUST HAVE THE" : db $FE
db "HEART OF MOTHER" : db $FE

db "BECAUSE YOU LIVE" : db $FE
db "IN HATRED..." : db $FE
db "THE TREE OF LIFE" : db $FE
db "IS BEING TOSSED" : db $FE
db "TO ITS DEATH...!" : db $FE

db "YOU WERE BORN" : db $FE
db "FROM THE LOVE OF" : db $FE
db "TWO PEOPLE." : db $FE
db "PLEASE..." : db $FE

db "UNDERSTAND THAT" : db $FE
db "THEY LOVED EACH" : db $FE
db "OTHER...!"

db $FF

MessageTextExp_125:
db "LOVE....?!"
db $FF

MessageTextExp_126:
db "FATHER AND MOTHER" : db $FE
db "LOVE..."
db $FF

MessageTextExp_127:
db "AH! THE TREE" : db $FE
db "OF LIFE, MOTHERS" : db $FE
db "HEART WAS" : db $FE
db "REVIVED BECAUSE" : db $FE

db "THE CHIEF" : db $FE
db "UNDERSTOOD!"

db $FF

MessageTextExp_128:
db "I ALMOST MADE" : db $FE
db "A TERRIBLE" : db $FE
db "MISTAKE..." : db $FE
db "I DID NOT KNOW" : db $FE

db "MY FATHER AND" : db $FE
db "MOTHER HAD SUCH" : db $FE
db "LOVE AND HEART.." : db $FE
db "I WAS VERY RUDE" : db $FE

db "TO YOU EARLIER.." : db $FE
db "I AM SORRY..." : db $FE
db "PLEASE FORGIVE" : db $FE
db "ME..." : db $D2, $3F

db $FF

MessageTextExp_129:
db "THIS IS THE" : db $FE
db "FRUIT OF LIFE..." : db $FE
db "PLEASE TAKE IT" : db $FE
db "WITH YOU."
db $FF

MessageTextExp_12A:
db "I...,WENT TO SEE" : db $FE
db "TO SEE MY FATHER" : db $FE
db "HE WAS SO HAPPY" : db $FE
db "TO SEE ME. I..." : db $FE
db "I THINK I" : db $FE
db "UNDERSTAND A" : db $FE
db "LITTLE BIT MORE" : db $FE
db "ABOUT THE LIGHT" : db $FE
db "AND DARKNESS."
db $FF

MessageTextExp_12B:
db "HOW CAN I THANK" : db $FE
db "YOU... I AM" : db $FE
db "REALLY THANKFUL" : db $FE
db "TO YOU."
db $FF

MessageTextExp_12C:
db "THANK YOU VERY" : db $FE
db "MUCH FOR YOUR" : db $FE
db "HELP ON THAT" : db $FE
db "OCCASION!"
db $FF

MessageTextExp_12D:
db "PIOU! PIOU!" : db $FE
db "PIOU! PIOU!!" : db $D2, $3D
db $FF

MessageTextExp_12E:
db "WELCOME BOY..." : db $FE
db "WHAT DO YOU WANT" : db $FE
db "FROM THE GODDESS" : db $FE
db $FE
db " CHANGE PARTY M." : db $FE
db " CHANGE NAME" : db $FE
db " REVIVE" : db $FE
db " NOTHING"
db $FC
db $FF

MessageTextExp_12F:
db "I WISH YOU TO" : db $FE
db "BECOME A TRUE" : db $FE
db "HERO OF EARTH."
db $FF

MessageTextExp_130:
db "LIGHT FROM THE" : db $FE
db "BANDANA OF THE" : db $FE
db "GODDESS!!"
db $FF

MessageTextExp_131:
db "HUH? NOBODY" : db $FE
db "IS DEAD"
db $FF

MessageTextExp_132:
db "LIFE OF DEATH..." : db $FE
db "THE MISSION..." : db $FE
db "NOT FULFILLED..." : db $FE
db "UNDER THE TRUE" : db $FE

db "LAW REVIVE, AND" : db $FE
db "TOGETHER WITH" : db $FE
db $E0, $00 : db " OPEN THE" : db $FE
db "PATH OF TRUTH!" 
db $FF

MessageTextExp_133:
db "I AM SORRY," : db $FE
db "BUT IT WILL COST" : db $FE
db $E0, $21, "RILS TO" : db $FE
db "BRING THEM BACK" : db $FE

db "TO LIFE." : db $FE
db "IS THAT OKAY?"
db $FF

MessageTextExp_134:
db "IN THE CAUSE OF" : db $FE
db "JUSTICE, WE WILL" : db $FE
db "LEAD THE WAY" : db $FE
db "WITH THE HERO" : db $FE

db "OF THE EARTH!"
db $FF

MessageTextExp_135:
db "WHOSE NAME" : db $FE
db "DO YOU WANT" : db $FE
db "TO CHANGE?"
db $FF

MessageTextExp_136:
db "I HEREBY BESTOW" : db $FE
db "UPON YOU THE" : db $FE
db "NAME OF" : db $FE
db !NL

db "THE RIGHTEOUS" : db $FE
db "SOURCE OF LIGHT!"
db $FF

MessageTextExp_137:
db "OH MY!, IT MUST",  !NL
db "BE A BIG DEAL",  !NL
db "IF YOU HAVE THAT",  !NL
db "THAT NOVA FRUIT",  !NL

db "I AM THE GODDESS",  !NL
db "OF ROCKS.",  !NL
db !NL
db !NL

db "YOU ARE LOOKING",  !NL
db "FOR THE POWER",  !NL
db "OF THE ROCK FOR",  !NL
db "THE SWORD OF",  !NL

db "THE EARTH? BUT",  !NL
db "IF I GIVE IT TO",  !NL
db "YOU NOW,THE ROCK",  !NL
db "OF KNOWLEDGE",  !NL

db "WILL BREAK...",  !NL
db !NL
db !NL
db !NL

db "DO YOU HAVE THE",  !NL
db "RED, GREEN, BLUE",  !NL
db "RINGS? IT IS THE",  !NL
db "SOURCE OF LIGHT.",  !NL

db "WITH IT YOU CAN",  !NL
db "INCREASE THE",  !NL
db "POWER OF THE",  !NL
db "THE ROCK."

db $FF

MessageTextExp_138:
db "HOW ABOUT THAT?"
db $FF

MessageTextExp_139:
db "THEN...JUST PICK",  !NL
db "UP YOU SWORD.",  !NL
db !NL
db !NL 

db "THE POWER OF A",  !NL
db "ROCK IS THE",  !NL
db "WEIGHT OF THE",  !NL
db "SWORD! IT WILL",  !NL

db "WEIGHT JUST",  !NL
db "ENOUGH FOR YOU!",  !NL
db "COME BACK IF YOU",  !NL
db "NEED ANYTHING!"

db $FF

MessageTextExp_13A:
db "IF YOU DO NOT",  !NL
db "LIKE IT, FINE,",  !NL
db "BUT I DONT CARE!",  !NL
db "YOU ARE THE ONE",  !NL
db "CRYING.",  !NL
db "THINK AGAIN."

db $FF

MessageTextExp_13B:
db "OH?, YOU BETTER",  !NL
db "BRING IT BACK!",  !NL
db "RED, GREEN, BLUE",  !NL
db "RINGS."
db $FF

MessageTextExp_13C:
db "YOU GUYS ARE...?", !NL
db "I AM... THE SNOW", !NL
db "GODDESS. IF", !NL
db "THE SNOW QUEEN", !NL

db "GAVE YOU THE KEY", !NL
db "THEN YOU ARE A", !NL
db "BRAVE SOUL! ...", !NL
db "THE POWER OF THE", !NL

db "SWORD OF THE", !NL
db "EARTH?", !NL
db "GIVE ME THE", !NL
db "SWORD", !NL
db "I WILL GIVE YOU", !NL
db "THE POWER OF", !NL
db "WATER...", !NL

db "LETS MAKE THAT", !NL
db "SWORD STRONGER."

db $FF

MessageTextExp_13D:
db "I AM THE WATER", !NL
db "GODDESS, KAREN.", !NL
db "I KNOW...  IT IS", !NL
db "ABOUT MY SISTER.", !NL

db "MY SISTER MITY", !NL
db "WHO IS BOTHERING", !NL
db "YOU."
db $FF

MessageTextExp_13E:
db "MY SISTER USED", !NL
db "TO BE A RIGHT", !NL
db "MINDED GODDESS.", !NL
db "... WHEN THE", !NL

db "DEMON DRAGON", !NL
db "APPEARED, MY", !NL
db "SISTER... MITY", !NL
db "WENT ALONE TO", !NL

db "THE DEMON DRAGON", !NL
db "TO PROTECT THE", !NL
db "HUMANS.", !NL
db "BUT...", !NL

db "SISTER, SHE", !NL
db "WAS DEFEATED.", !NL

MessageTextExp_13F:
db "YES. THE DRAGON", !NL
db "WAS SO POWERFUL", !NL
db "THAT THE POWER", !NL
db "OF A SINGLE", !NL

db "GODDESS WAS NO", !NL
db "MATCH FOR IT.", !NL
db !NL
db !NL

db "WHEN MY SISTER", !NL
db "CAME BACK, SHE", !NL
db "BACK HAD BEEN", !NL
db "DEFEATED BY", !NL

db "THE EVIL POWER", !NL
db "OF THE DRAGON.", !NL
db !NL
db !NL

db "IF THIS", !NL
db "CONTINUES,", !NL
db "SHE IS BOUND TO", !NL
db "START DOING EVEN", !NL

db "WORSE!", !NL
db !NL
db "AAW..! WE MUST", !NL
db "QUICKLY REMIND", !NL

db "HER OF THE HEART", !NL
db "OF THE", !NL
db "GODDESS...."
db $FF

MessageTextExp_140:
db "I HAVE HEARD IN", !NL
db "THE VILLAGE OF", !NL
db "GILTS YOU CAN", !NL
db "MAKE THEM DRINK", !NL

db "A MOON DROP.", !NL
db "IF THIS IS TRUE", !NL
db "I WOULD LIKE TO", !NL
db "GO THERE.", !NL

db "BUT... NOW MITY", !NL
db "IS NOT HERE,", !NL
db "SHE HAS PUT A", !NL
db "CURSE ON ME TOO.", !NL

db "I CANNOT GET OUT", !NL
db "OF HERE.", !NL
db !NL
db !NL

db "THE POWER OF", !NL
db "WATER CAN ONLY", !NL
db "BE PROTECTED IF", !NL
db "THE SISTERS WORK", !NL

db "TOGETHER....", !NL
db "UGH ", !SWEAT

db $FF

MessageTextExp_141:
db "THE MOONSTONE", !NL
db "WARDING...?", !NL
db !NL
db !NL


db "IF YOU HAVE THE", !NL
db "SWORD OF THE", !NL
db "EARTH, YOU CAN", !NL
db "ENTER THAT", !NL

db "ENTRANCE, BUT", !NL
db "THE BARRIER", !NL
db "WOULD KILL A", !NL
db "NORMAL PERSON.", !NL

db "I WILL GIVE YOU", !NL
db "A BANDANA TO", !NL
db "PROTECT YOU FROM", !NL
db "FROM THE BARRIER", !NL

db "OF THE GODDESS."


db $FF

MessageTextExp_142:
db "SHH! MITY IS", !NL
db "HOME. MITY HAS", !NL
db "COME HOME AND IS", !NL
db "SLEEPING.", !NL

db "PLEASE GO GENTLY", !NL
db "INTO THE WATER", !NL
db "SO SHE DOES NOT", !NL
db "NOTICE YOU."
db $FF

MessageTextExp_143:
db "MOONDROPS..."
db $FF

MessageTextExp_144:
db "SISTER! YOU", !NL
db "HAVE BEEN DOING", !NL
db "ALL KINDS OF BAD", !NL
db "THINGS BECAUSE", !NL

db "OF THE DRAGON!"
db $FF

MessageTextExp_145:
db "IF YOU FEEL BAD", !NL
db "GIVE ME YOUR", !NL
db "HAND! AND GIVE", !NL
db "POWER TO THIS", !NL

db "HERO!,GIVE POWER", !NL
db "BACK TO THE", !NL
db "SWORD OF THE", !NL
db "EARTH!", !NL

db "THE POWER OF", !NL
db "WATER IS THE", !NL
db "SWORD LIGHT!", !NL
db !NL
db "DONT GIVE UP ON", !NL
db "THE DEMON DRAGON", !NL
db "THAT MY SISTER", !NL
db "COULD NOT BEAT!"
db $FF

MessageTextExp_146:
db "I HOPE", !NL
db "YOU ARE SAFE."
db $FF

MessageTextExp_147:
db "LIGHT", !NL
db "AND DARKNESS", !NL
db "ARE INSEPARABLE.", !NL
db "MAN AND MONSTER", !NL

db "ARE TO BE", !NL
db "PRESERVED.", !NL
db "THANKS TO YOU", !NL
db "THINGS ARE", !NL

db "FINALLY BY TO", !NL
db "NORMAL.", !NL
db "THANK YOU!", !NL
db !NL
db "WE WILL DO OUR", !NL
db "BEST FOR THE", !NL
db "SAKE OF HUMANITY", !NL
db "FROM NOW ON!"
db $FF

MessageTextExp_148:
db "OH..?", !NL
db "KAREN?", !NL
db "WHAT IS WRONG?"

db $FF

MessageTextExp_149:
db "..! I KNOW, !...", !NL
db "OH, MY!", !NL
db "KAREN..KAREN..IT", !NL
db "MUST HAVE BEEN", !NL
db "SO HARD FOR YOU.", !NL

db "I AM SORRY", !NL
db "FOR WHAT I DID!"
db $FF

MessageTextExp_14A:
db "OH, I AM SORRY", !NL
db "I HAVE TO", !NL
db "APOLOGIZE TO THE", !NL
db "VILLAGE CHIEF.", !NL

db "I AM GOING TO", !NL
db "GILTS VILLAGE", !NL
db "FIRST."
db $FF

MessageTextExp_14B:
db "WHEN FIGTHING A", !NL
db "DRAGON YOU MUST", !NL
db "HAVE A RANGE", !NL
db "WEAPON OR MAGIC", !NL

db "THE DEMON DRAGON", !NL
db "IS SURROUNDED BY", !NL
db "LAVA, MAKING", !NL
db "IT IMPOSSIBLE TO", !NL

db "GET CLOSE TO IT.", !NL
db "PLEASE REMEMBER", !NL
db "THAT."
db $FF

MessageTextExp_14C:
db "HERO!", !NL
db "TELEPATHICALLY.", !NL
db "I HEARD FROM", !NL
db "KAREN AND THE", !NL

db "OTHERS.", !NL
db "I AM THE", !NL
db "GODDESS OF THE", !NL
db "EARTH.", !NL

db "I AM HERE TO", !NL
db "PROTECT", !NL
db "THE EARTH.", !NL
db "GIVE ME YOUR", !NL

db "SWORD. I WILL", !NL
db "GIVE YOU THE", !NL
db "HANDLE", !NL
db "OF MY SWORD!"

db $FF

MessageTextExp_14D:
db "ALMOST THERE...", !NL
db "GOOD LUCK!"
db $FF

MessageTextExp_14E:
db "I AM THE GODDESS" : db $FE
db "OF FIRE." : db $FE
db "I HAVE BEEN THE" : db $FE
db "DRAGON GRIP FOR" : db $FE

db "A LONG TIME." : db $FE
db "YOU ARE THE ONLY" : db $FE
db "ONE WHO CAN SLAY" : db $FE
db "THE DRAGON!" : db $FE

db "GIVE ME YOUR" : db $FE
db "SWORD!" : db $FE
db "THE POWER OF THE" : db $FE
db "FLAME IS THE" : db $FE

db "STRENGTH OF" : db $FE
db "THE SWORD." : db $FE
db "GO NOW!"

db $FF

MessageTextExp_14F:
db "I AM THE GODDESS" : db $FE
db "OF THE WIND." : db $FE
db $FE
db $FE

db "PLEASE GIVE ME" : db $FE
db "YOUR SWORD. I" : db $FE
db "WILL GIVE YOU" : db $FE
db "THE POWER OF" : db $FE

db "THE WIND, THIS" : db $FE
db "IS THE SWIFTNESS" : db $FE
db "OF THE SWORD." : db $FE
db $FE

db "THE FUTURE" : db $FE
db "DEPENDS ON" : db $FE
db "YOUR COURAGE." : db $FE

db "MAY YOU BE THE" : db $FE
db "HERO OF THE" : db $FE
db "EARTH!"
db $FF

MessageTextExp_150: ;
db "ARE YOU FROM" : db $FE
db "THE DARKNESS?" : db $FE
db "DID YOU COME TO" : db $FE
db "ATTACK ME..." : db $FE
db "I WANT YOU TO" : db $FE
db "STOP!"
db $FF

MessageTextExp_151: 
db "I SEE, THAT IS A" : db $FE
db "DIFFERENT STORY." : db $FE
db $FE
db $FE
db $FE
db "IN FACT, I HAD" : db $FE
db "EATEN A OFFERING" : db $FE
db "A FEW DAYS AGO," : db $FE
db "BUT SOMETHING" : db $FE
db "GOT STUCK IN" : db $FE
db "AND IT FELT SO" : db $FE
db "BAD THAT I KEPT" : db $FE
db "SHAKING MY BODY." : db $FE
db $FE
db $FE
db "IF YOU COULD" : db $FE
db "JUST TAKE IT" : db $FE
db "AWAY IT WOULD" : db $FE
db "BE FINE..." : db $FE
db $FE
db $FE
db "I AM GONNA" : db $FE
db "HEAL YOU SO" : db $FE
db "PLEASE..."

db $FF

MessageTextExp_152:
db "THANK YOU, BOY.." : db $FE
db $FE
db $FE
db $FE
db "BY THE WAY COULD" : db $FE
db "YOU TAKE " : db $E0, $01 : db $FE
db "WHO HAS BEEN" : db $FE
db "WANDERING HERE" : db $FE
db "FOR FEW DAYS..." : db $FE
db "I CANT STAND HER" : db $FE

db "SHE IS MEAN" : db $FE
db "TO ME... " : db $D2, $3E, $FE

db "I AM EXHAUSTED.."

db $FF

MessageTextExp_153:
db "LET ME TELL YOU" : db $FE
db "SOMETHING, BOY.." : db $FE
db "A MISSION IS NOT" : db $FE

db "SOMETHING THAT" : db $FE
db "IS ASSIGNED BY" : db $FE
db "ANYONE..." : db $FE

db "THE MISSION IS" : db $FE
db "TO USE YOUR LIFE" : db $FE
db $FE 

db "BE STRONG, DONT" : db $FE
db "LOSE TO YOUR WEAK" : db $FE
db "HEART...!" : db $FE

db "IN RETURN,I WILL" : db $FE
db "GIVE YOU MY" : db $FE
db "STRENGTH!"


db $FF

MessageTextExp_154:
db "YOU WANT TO ASK" : db $FE 
db "ME SOMETHING?"
db $FF

MessageTextExp_155:
db "SWORD OF THE" : db $FE 
db "EARTH... IT IS" : db $FE 
db "THE SWORD OF" : db $FE
db "HEROES." : db $FE

db "IT WILL DESTROY" : db $FE 
db "THE WORLD IF IT" : db $FE 
db "IS USED WITH" : db $FE 
db "AN EVIL HEART." : db $FE 

db "THE SWORD SHOULD" : db $FE
db "STILL BE STUCK" : db $FE
db "IN ITS HILT." : db $FE   
db $FE 

db "BUT ONLY A MAN" : db $FE 
db "WITH HERO HEART" : db $FE 
db "CAN WIELD IT." : db $FE 
db $FE

db "YOU ARE GOING?" : db $FE 
db "WELL..." : db $FE 
db "YOU WILL NEED" : db $FE 
db "PHOENIX SHOES TO" : db $FE 

db "BE ABLE TO REACH" : db $FE 
db "THE SWORD." : db $FE 
db $FE 
db $FE 

db "COME BACK WHEN" : db $FE 
db "YOU GET THE" : db $FE 
db "SWORD I WANT TO" : db $FE 
db "SEE IT TOO."

db $FF

MessageTextExp_156:
db "DID YOU HEARD OF" : db $FE 
db "THE PHOENIX? HAS" : db $FE 
db "THE SWORD OF THE" : db $FE 
db "EARTH BEEN" : db $FE 
db "REMOVED?"
db $FF

MessageTextExp_157:
db "SWORD OF THE" : db $FE 
db "EARTH IT IS BEEN" : db $FE 
db "A LONG TIME..." : db $FE 
db $FE 

db "THE SWORD IS" : db $FE 
db "USELESS AS IT IS." : db $FE 
db $FE
db $FE

db "I KNOW IT IS" : db $FE 
db "A LOT TO ASK..." : db $FE 
db "YOU MUST RESTORE" : db $FE 
db "THE 8 POWERS" : db $FE 

db "THAT HAS BEEN" : db $FE 
db "WROUGHT BY THE" : db $FE 
db "GODDESSES." : db $FE 
db "ONE OF THE POWER" : db $FE 

db "I KNOW IS NEARBY" : db $FE 
db "WHY DONT YOU ASK" : db $FE 
db "THE ROCK OF" : db $FE 
db "KNOWLEDGE IN" : db $FE 

db "THE MOUNTAINS?"
db $FF

MessageTextExp_158:
db "HAHA YOU SAY SO!" : db $FE 
db "THE ROCK OF" : db $FE 
db "KNOWLEDGE IS" : db $FE 
db "JUST A ROCK" : db $FE 

db "WITHOUT THE" : db $FE 
db "POWER OF THE" : db $FE 
db "GODDESS!" : db $FE 
db $FE

db "THEN TAKE THIS" : db $FE 
db "WITH YOU. YOU" : db $FE 
db "CAN TRUST ME." : db $FE 
db $FE
db "I WILL ONLY" : db $FE 
db "GIVE IT TO THOSE" : db $FE 
db "I DEEM WORTHY." : db $FE 
db $FE
db "YOU WILL TRUST" : db $FE 
db "ME WHEN YOU" : db $FE 
db "SEE IT."
db $FF

MessageTextExp_159:
db "WHAT? YOU SOLD" : db $FE 
db "IT! YOU IDIOT!" : db $FE 
db "I WILL GIVE YOU" : db $FE 

db "ONE MORE CHANCE" : db $FE 
db "BUT IF YOU DO IT" : db $FE 
db "AGAIN..." : db $FE 

db "I DONT KNOW...!"
db $FF

MessageTextExp_15A:
db "GOOD LUCK " : db $E0, $00 : db "!"
db $FF

MessageTextExp_15B:
db "YEAH? SNOWBABY" : db $FE 
db "IS GONE...?" : db $FE 
db "REALLY...?" : db $FE 
db "TRY USING" : db $FE 

db "THE LIGHT RELIC."
db $FF

MessageTextExp_15C:
db "IF YOU LEAVE IT" : db $FE 
db "AS IT IS, HE" : db $FE 
db "WILL MELT. TAKE" : db $FE 
db "THIS WITH YOU." : db $FE 

db "PUT THIS ON HIM."

db $FF

MessageTextExp_15D:
db $E0, $00 : db "!! I SAW" : db $FE 
db "IN YOU THE HEART" : db $FE 
db "OF A HERO!" : db $FE 

db "DO NOT EVER LET" : db $FE 
db "ME DOWN!!"
db $FF

MessageTextExp_15E:
db "WHAT !?" : db $FE 
db "...SO YOU WANT" : db $FE 
db "MY ROCK POWER!" : db $FE 

db "I DONT WANT TO" : db $FE 
db "IF I LOSE THE" : db $FE 
db "POWER OF THE" : db $FE 

db "GODDESS I WILL" : db $FE 
db "BE NOTHING BUT" : db $FE 
db "A ROCK..." : db $FE 

db "GO BACK TO NOVA!"
db $FF

MessageTextExp_15F:
db "I AM SORRY ABOUT" : db $FE 
db "THE OTHER DAY..." : db $FE 
db $FE

db "IF YOU NEED ANY" : db $FE 
db "HELP, COME" : db $FE 
db "SEE ME!" 

db $FF

MessageTextExp_160: ;TODO
db $E0, $00 : db " WHAT" : db $FE
db "DO YOU WANT?" : db $FE 
db "...SNOWBABY?" : db $FE 

db "I HEARD SHE LIKE" : db $FE 
db "SHINY THINGS..." : db $FE 
db "ASK NOVA FOR A" : db $FE 

db "LIGHT WEAPON..." : db $FE 
db "IT WILL BE" : db $FE 
db "ALL RIGHT!"


db $FF

MessageTextExp_161:
db "OOPS, WATCH OUT!"
db $FF

MessageTextExp_162:
db "GOOD LUCK! AAAH!"
db $FF

MessageTextExp_163:
db $E0, $00 : db "! GOOD JOB!" : db $FE
db "THE GODDESS" : db $FE
db "IS PLEASED...!"
db $FF

MessageTextExp_164:
db "THIS FOREST IS A" : db $FE
db "TALKING FOREST" : db $FE
db "LIGHT, DARKNESS" : db $FE
db "I DONT CARE"

db $FF

MessageTextExp_165:
db "NO WATER." : db $FE
db "I AM THIRSTY."
db $FF

MessageTextExp_166:
db "YUMY WHAT IS IT?"
db $FF

MessageTextExp_167:
db "DEMON" : db $D2, $3E : db ",DEMON" : db $FE
db "DEMON! DEMON!" : db $FE
db "DEMON!" : db $D2, $3E
db $FF

MessageTextExp_168:
db "LIGHT SCARY" : db $FE
db "DARKNESS SCARY" : db $FE
db "MONSTERS SCARY." : db $FE

db "EVERYONE SCARY."
db $FF

MessageTextExp_169:
db "PINK TREE." : db $FE
db "PINK TREE." : db $FE
db "TALKING TREE."
db $FF

MessageTextExp_16A:
db "I AM DEMON" : db $FE
db "WAGNER" : db $FE
db "A GOOD PERSON"
db $FF

MessageTextExp_16B:
db "I WANT WATER..."
db $FF

MessageTextExp_16C:
db "ARE YOU A DEMON?" : db $FE
db "WHAT ARE YOU" : db $FE
db "DOING HERE?"
db $FF

MessageTextExp_16D:
db "I SEE... MY NAME" : db $FE
db "IS WAGNER"
db $FF

MessageTextExp_16E:
db "I USED TO BE" : db $FE
db "A HUMAN."
db $FF

MessageTextExp_16F:
db "A LONG TIME AGO" : db $FE
db "LIGHT, DARKNESS" : db $FE
db "THERE WAS NO" : db $FE
db "MONSTERS." : db $FE

db "JUST ME AND MY" : db $FE
db "EXPERIMENTS." : db $FE
db "AND I REJECTED" : db $FE
db "THE WORLD AND" : db $FE

db "SETTLED DOWN IN" : db $FE
db "A WELL IN THE" : db $FE
db "DESERT." : db $FE
db $FE 

db "I DID NOT CARED" : db $FE
db "IF MY INVENTIONS" : db $FE
db "CAUSED BATTLES"  : db $FE
db "ON THE EARTH..." : db $FE

db "THE DAY OF" : db $FE
db "RECKONING" : db $FE
db "HAS COME."
db $FF

MessageTextExp_170:
db "AFTER A FAILED" : db $FE
db "EXPERIMENT, I" : db $FE
db "FOUND MYSELF IN" : db $FE
db "A ROOM COVERED" : db $FE

db "WITH TREES AND I" : db $FE
db "WAS TRANSFORMED" : db $FE
db "INTO A TREE" : db $FE
db $FE

db "FOR A LONG TIME" : db $FE
db "I THOUGHT. WHAT" : db $FE
db "WAS THE PURPOSE" : db $FE
db "OF MY INVENTION!" : db $FE

db "SHOULD NOT I" : db $FE
db "HAVE INVENTED" : db $FE
db "SOMETHING THAT" : db $FE
db "WOULD BENEFIT" : db $FE

db "LIVING THINGS..." : db $FE
db "BUT IT IS TOO" : db $FE
db "LATE ANYWAYS..."
db $FF

MessageTextExp_171:
db "TREES NEED WATER" : db $FE
db "BUT THE WATER" : db $FE
db "HAS BEEN STOPPED" : db $FE
db "BY THE" : db $FE

db "STAR FLASK..." : db $FE
db "DEMONS TOOK IT" : db $FE
db "FROM ME AND THIS" : db $FE
db "IS TERRIBLE..." : db $FE

db $E0, $00 : db ". FOR THE" : db $FE
db "SAKE OF THE TREE" : db $FE
db "THAT LIVES HERE," : db $FE
db "FOR THE SAKE OF" : db $FE

db "WHO USE THE WELL" : db $FE
db "WILL YOU RESTORE" : db $FE
db "THE WATER...?" : db $FE
db $FE

db "IF I COULD MOVE" : db $FE
db "I WOULD GIVE MY" : db $FE
db "LIFE TO DO SO..." 

db $FF

MessageTextExp_172:; NOT SURE ABOUT THAT ONE TODO
db "IT CAN" : db $FE
db "MANIPULATE" : db $FE
db "THE WATER." : db $FE

db "WAS THIS WHAT" : db $FE
db "YOU WERE" : db $FE
db "LOOKING FOR?" : db $FE

db "I AM SURE YOU" : db $FE
db "WILL PUT IT TO" : db $FE
db "GOOD USE." : db $FE

db "IT IS OKAY." : db $FE
db "TAKE IT." : db $FE
db "AND THIS TOO." 
db $FF

MessageTextExp_173:
db "WHAT DO YOU" : db $FE
db "THINK ABOUT" : db $FE
db "THE DARK ONES" : db $FE
db "AND THE DEMONS?" : db $FE

db "DO YOU THINK" : db $FE
db "THAT THEY STILL" : db $FE
db "HAVE LIFE IN" : db $FE
db "THEM?"
db $FF

MessageTextExp_174:
db "EXCUSEME,PLEASE!"
db $FF

MessageTextExp_175:
db "YOU WILL SEE..." : db $FE
db "WITH YOUR" : db $FE
db "COURAGE..." : db $FE
db "YOU WILL FIND IT" : db $FE

db "THIS PLACE WILL" : db $FE
db "BE FULL OF WATER" : db $FE
db "SOON. NOW GO..."
db $FF

MessageTextExp_176:
db "I FEEL LIKE A" : db $FE
db "YOUNG MAN AGAIN!"
db $FF

MessageTextExp_177:
db "I WANT TO GO TOO"
db $FF

MessageTextExp_178:
db "WHO ARE YOU?"
db $FF

MessageTextExp_179:
db "HI OH OH!" : db $FE
db "YOU ARE SO CUTE!" : db $FE
db "I LOVE YOU! " : db $D2, $3D 
db $FF

MessageTextExp_17A:
db "NO LUCK WITH" : db $FE
db "THE DANCER"
db $FF

MessageTextExp_17B:
db "AH! DO NOT GO" : db $FE
db "ON MY FIELD!"
db $FF

MessageTextExp_17C:
db "HERE I AM GONNA" : db $D2, $3D : db $FE
db "HAVE A DATE WITH" : db $FE
db "GRANDMA." : db $FE
db "OH OH OH " : db $D2, $3D

db $FF

MessageTextExp_17D:
db "WHAT IS GOING TO" : db $FE
db "HAPPENS TO THE" : db $FE
db "WORLD?"
db $FF

MessageTextExp_17E:
db "I WILL BE LATE" : db $FE
db "FOR A DATE WITH" : db $FE
db "MY GRANDFATHER."

db $FF

MessageTextExp_17F:
db "WELCOME... THIS" : db $FE
db "IS THE MAGIC" : db $FE
db "SHOP WHAT DO YOU" : db $FE
db "WANT...?"

db $FF

MessageTextExp_180:
db "WHICH ONE" : db $FE
db "DO I SELL...?"
db $FF

MessageTextExp_181:
db "I WILL BUY IT" : db $FE
db "FOR ", !E021, "RILS" : db $FE
db "IS THAT OKAY?"
db $FF

MessageTextExp_182:
db "MAGIC HERE IS" : db $FE
db "GOOD. WHICH...?"
db $FF

MessageTextExp_183:
db !E021, "RILS WOULD" : db $FE
db "YOU LIKE TO BUY?"
db $FF

MessageTextExp_184:
db "THANK YOU."
db $FF

MessageTextExp_185:
db "SEE YOU LATER."
db $FF

MessageTextExp_186:
db "MONEY, NO NO..."
db $FF

MessageTextExp_187:
db "YOUR BAG IS FULL" : db $FE
db "PLEASE EMPTY IT."
db $FF

MessageTextExp_188:
db "HEHE! I HAVE A" : db $FE
db "MAGIC THAT NO" : db $FE
db "ONE ELSE CAN USE" : db $FE

db "TO CAST IT, I" : db $FE
db "NEED 1000RIL..." : db $FE
db "WHAT DO YOU SAY?"

db $FF

MessageTextExp_189:; TODO NO IDEA WHAT IS THE MEANING OF THIS
db "I HAVE BEEN" : db $FE
db "WANTING IT SINCE" : db $FE
db "LONG AGO, I DONT" : db $FE
db "SO I DONT HAVE" : db $FE

db "TO BE BUBBLY." : db $FE
db "HIEEHEHEHEHEH!!"
db $FF

MessageTextExp_18A:
db "HELLO... I AM" : db $FE
db "A FORTUNE TELLER" : db $FE
db "FOR 2 RIL I WILL" : db $FE
db "TELL YOU WHAT" : db $FE
db "YOU WANT TO KNOW" : db $FE
db $FE
db $FE
db "WHAT DO YOU SAY?"
db $FF

MessageTextExp_18B:
db "WELL THERE WILL" : db $FE
db "BE TIMES..." : db $FE
db "COME BACK" : db $FE
db "ANYTIME"
db $FF

MessageTextExp_18C:
db "OKAY... OKAY..." : db $FE
db "........"

db $FF

MessageTextExp_18D:
db "...ALL THE BIG" : db $FE
db "WORLDS..." : db $FE
db "TWO RESENTFUL..." : db $FE

db "THE WORLD" : db $FE
db "IS DIVIDED" : db $FE
db "INTO TWO..."
db $FF

MessageTextExp_18E:
db "TO THE EAST OF" : db $FE
db "FARAS VILLAGE" : db $FE
db "LIES AEZ..." 
db $FF

MessageTextExp_18F:
db "THE SOURCE OF" : db $FE
db "IMMORTALITY IS" : db $FE
db "HIDDEN IN THE" : db $FE

db "WATERS, WHERE" : db $FE
db "THE MERMAIDS" : db $FE
db "LIVES..."
db $FF

MessageTextExp_190:
db "A PHOENIX" : db $FE
db "LIVES ON THE" : db $FE
db "MOUNTAIN OF FIRE"
db $FF

MessageTextExp_191:
db "A CASTLE OF" : db $FE
db "DARKNESS" : db $FE
db "CONNECTING" : db $FE

db "TWO WORLDS..." : db $FE
db $FE
db $FE

db "DOORS ARE OPENED" : db $FE
db "BY THE" : db $FE
db "SACRED RELICS" : db $FE

db "OF LIGHTS AND" : db $FE
db "DARKNESS..."

db $FF

MessageTextExp_192:
db "NORTH OF GILTS.." : db $FE
db "UNDER THE DEEP" : db $FE
db "DARKNESS..." : db $FE

db "A LONG ROAD" : db $FE
db "LEADS TO THE" : db $FE
db "LAND OF DRAGONS" : db $FE

db "IT IS A LAND" : db $FE
db "OF FEAR..." : db $FE
db $FE
db "THE SCALES OF" : db $FE
db "THE DRAGON ARE" : db $FE
db "ON THE ROAD..."
db $FF

MessageTextExp_193:
db "GO EAST THROUGH" : db $FE
db "GILTS... ALL THE" : db $FE  ; TODO VILLAGE NAME
db "WAY SOUTH..." : db $FE
db "THERE ARE TWIN" : db $FE
db "GODDESSES IN THE" : db $FE
db "HEART OF WATER"
db $FF

MessageTextExp_194:
db "SOUTH OF TES," : db $FE 
db "IN THE WOODS..." : db $FE
db "SURROUNDED BY" : db $FE
db "TREES... THE" : db $FE
db "TREE OF NOVA CAN" : db $FE
db "BE SEEN..."
db $FF

MessageTextExp_195:
db "TO THE WEST OF" : db $FE
db "THE TWIN GODDESS" : db $FE
db "A MOON ROCK IS" : db $FE
db "FLOATING IN THE" : db $FE
db "FOREST..." : db $FE
db $FF

MessageTextExp_196:
db "EAST OF TES" : db $FE
db "THERE IS A LAND" : db $FE
db "OF POWER" : db $FE
db "SURROUNDED BY" : db $FE
db "THE SOUTHERN" : db $FE
db "MOUNTAINS OF" : db $FE
db "THE WISDOM"
db $FF

MessageTextExp_197:
db "IF YOU TAKE THE" : db $FE
db "ROAD THAT SKIRTS" : db $FE
db "THE EAST SIDE OF" : db $FE
db "NOVA, GO SOUTH." : db $FE
db "YOU WILL REACH" : db $FE
db "GILTS, WHICH IS" : db $FE
db "SAID TO BE" : db $FE
db "PROTECTED BY A" : db $FE
db "GODDESS..."
db $FF

MessageTextExp_198:
db "THIS MONTH" : db $FE
db "THE MONEY" : db $FE
db "IS IN THE RED!"
db $FF

MessageTextExp_199:
db "THIS MONTH" : db $FE
db "YOU WILL BE" : db $FE
db "IRRESISTIBLE!"
db $FF

MessageTextExp_19A:
db "THIS MONTH" : db $FE
db "YOU WILL BE" : db $FE
db "POOR!"
db $FF

MessageTextExp_19B:
db "THIS MONTH," : db $FE
db "PEOPLES WILL" : db $FE
db "HATE YOU...!" : db $FE
db "WHAT HAVE" : db $FE
db "YOU DONE?"
db $FF

MessageTextExp_19C:
db "OH, THE PRINCESS" : db $FE
db "OF LIGHT IS" : db $FE
db "BEING ATTACKED" : db $FE
db "BY SOME" : db $FE
db "MYSTERIOUS FORCE"
db $FF

MessageTextExp_19D:
db "1 SAKE, 5 RIL." : db $FE
db $FE
db $FE
db "DO YOU WANT?"
db $FF

MessageTextExp_19E:
db "THAT IS WHAT" : db $FE
db "AM TALKING ABOUT"
db $FF

MessageTextExp_19F:
db "IF YOU WERE A" : db $FE
db "MAN I THINK YOU" : db $FE
db "SHOULD DRINK!" : db $FE
db "AT LEAST JUST" : db $FE
db "A LITTLE!"

db $FF

MessageTextExp_1A0:
db "GO OUT AND GET" : db $FE
db "SOME MONEY TO" : db $FE
db "DRINK !!"
db $FF

MessageTextExp_1A1:
db "HEY! MAYBE IT IS" : db $FE
db "TIME TO STOP UH?"
db $FF

MessageTextExp_1A2:
db "LOOK!!!"
db $FF

MessageTextExp_1A3:
db "ARE YOU OKAY?" : db $FE
db $FE
db $FE
db $FE
db "YOU HAVE BEEN" : db $FE
db "KNOCKED OUT!" : db $FE
db "OH, MAN, I AM" : db $FE
db "GOING TO DIE" : db $FE
db "SOON...!"
db $FF

MessageTextExp_1A4:
db "DO YOU WANT" : db $FE
db "ANOTHER ONE?"
db $FF

MessageTextExp_1A5:
db "GEEZ..."
db "GOBBLE, GOBBLE" : db $D2, $3E
db $FF

MessageTextExp_1A6:
db "...NICE...!"
db $FF

MessageTextExp_1A7:
db "WHAT IS IT!"
db $FF

MessageTextExp_1A8:
db "WANT TO PLAY" : db $FE
db "WITH ME?" : db $FE
db "1 GUESS 200 RIL?"
db $FF

MessageTextExp_1A9:
db "YES! LETS GO!!"
db $FF

MessageTextExp_1AA:
db "I DO NOT CARE" : db $FE
db "ABOUT YOU PEOPLE"
db $FF

MessageTextExp_1AB:
db "YOU NEED AT" : db $FE
db "LEAST 200 RIL!"
db $FF

MessageTextExp_1AC:
db "HUH! YOU ARE" : db $FE
db "PRETTY GOOD!"
db $FF

MessageTextExp_1AD:;Unsure TODO
db "WASH YOUR HANDS" : db $FE
db "AND COME BACK!"
db $FF

MessageTextExp_1AE:
db "WELCOME..." : db $FE
db "2 HOURS, 100RIL." : db $FE
db "WHAT DO YOU SAY?"
db $FF

MessageTextExp_1AF:
db "OKAY, GOT IT" : db $FE
db "TAKE YOUR TIME."
db $FF

MessageTextExp_1B0:
db "OKAY, OKAY..." : db $FE
db "WELL THEN..."
db $FF

MessageTextExp_1B1:
db "YOU DO NOT HAVE" : db $FE
db "ENOUGH MONEY..."
db $FF

MessageTextExp_1B2:
db !E005, " AND THE", !NL
db "OTHERS GOT THEIR", !NL
db "EARS PLUCKED!"
db $FF

MessageTextExp_1B3:
db !E005, " HAD A" : db $FE
db "BEAUTY CLINIC." : db $FE
db "WOWOWO", !HEART : db $FE
db "BEAUTIFUL?"
db $FF

MessageTextExp_1B4:
db $E0, $00 : db "AND HIS" : db $FE
db "FRIENDS GOT" : db $FE
db "THEIR OUTIES" : db $FE
db "FIXED!"
db $FF

MessageTextExp_1B5:
db "WHERE IS MY GIRL"
db $FF

MessageTextExp_1B6:
db "WHICH ONE IS" : db $FE
db "BETTER."
db $FF

MessageTextExp_1B7:
db "HEY! DONT BE SHY"
db $FF

MessageTextExp_1B8:
db "I LIKE TO" : db $FE
db "COLLECT WEIRD" : db $FE
db "THINGS!"
db $FF

MessageTextExp_1B9:
db "WHO IS SERYU?" : db $FE
db "HE SAID HE WAS" : db $FE
db "GOING ON ANOTHER" : db $FE
db "TRIP HE SEND HIS" : db $FE
db "BEST WISHES TO" : db $FE
db "YOU."
db $FF

MessageTextExp_1BA:
db "OH, NO, I HAVE" : db $FE
db "BEEN DISCOVERED" : db $FE
db "I HAVE ESCAPED" : db $FE
db "FROM THE PRISON." : db $FE

db "DONT TELL" : db $FE
db "THE KING" : db $FE
db $FE
db $FE
db "I WILL GIVE" : db $FE
db "YOU THIS!" 

db $FF

MessageTextExp_1BB:
db "THIS IS" : db $FE
db "FARAS VILLAGE" : db $FE
db $FF

MessageTextExp_1BC:
db "THE KNOW-IT-ALL" : db $FE
db "OWL IN THIS" : db $FE
db "VILLAGE KNOWS" : db $FE
db "A LOT ABOUT THE" : db $FE
db "VILLAGE."
db $FF

MessageTextExp_1BD:
db "WOW! MITY HAS" : db $FE
db "BECOME THE" : db $FE
db "GODDESS SHE" : db $FE
db "USED TO BE!"
db $FF

MessageTextExp_1BE:
db "EVERY VILLAGE" : db $FE
db "HAS A STORAGE" : db $FE
db "WHERE YOU CAN" : db $FE
db "DROP YOUR ITEMS" : db $FE
db "LOOK FOR IT!"
db $FF

MessageTextExp_1BF: ; TODO Unsure
db "I AM FINE" : db $FE
db "BECAUSE I" : db $FE
db "DO NOT EAT" : db $FE
db "ANYTHING!!"
db $FF

MessageTextExp_1C0:
db "HEY! DRAGON!!"
db $FF

MessageTextExp_1C1:
db "I HEARD THERE IS" : db $FE
db "A STUFFED ANIMAL" : db $FE
db "SOMEWHERE THAT" : db $FE
db "IS BIG ENOUGH" : db $FE
db "TO FIT INSIDE!" : db $FE
db "I WANT ONE!" : db $D2, $3D
db $FF

MessageTextExp_1C2:
db "MY DOG IS" : db $FE
db "SOOOOOOO" : db $FE
db "CUTE. " : db $D2, $3D

db $FF

MessageTextExp_1C3:
db "WHERE ARE YOU" : db $FE
db "GOING?, PLEASE" : db $FE
db "BE CAREFUL."
db $FF

MessageTextExp_1C4:
db "YOU LOOKS LIKE" : db $FE
db "MY DEAD SON." : db $FE
db "HE WAS A REALLY" : db $FE
db "NICE BOY..."
db $FF

MessageTextExp_1C5:
db "THIS IS THE" : db $FE
db "VILLAGE OF GILTS"
db $FF

MessageTextExp_1C6:
db "DO NOT FORGET" : db $FE
db "TO SAVE !"
db $FF

MessageTextExp_1C7:
db "I CAME TO VISIT" : db $FE
db "MY AUNTIE AND" : db $FE
db "THIS HAPPENED..I" : db $FE
db "WANT TO GO HOME."
db $FF

MessageTextExp_1C8:
db "FINALLY WE CAN" : db $FE
db "GO HOME." : db $FE
db "MOM YOU ARE" : db $FE
db "PROBABLY UPSET.."
db $FF

MessageTextExp_1C9:
db "KUKA. SUPHI."
db $FF

MessageTextExp_1CA:
db "THERE ARE MANY" : db $FE
db "HEROES OUT THERE" : db $FE
db "BUT ONLY THOSE" : db $FE
db "WHO KNOW THE" : db $FE

db "TRUE COURAGE AND" : db $FE
db "JUSTICE, ARE" : db $FE
db "THE HERO OF THE" : db $FE
db "EARTH!"
db $FF

MessageTextExp_1CB:
db "GODESSES" : db $FE
db "THEY SAY THEY" : db $FE
db "ONLY HELP THE" : db $FE
db "TRUE HEROES" : db $FE

db "OF THE EARTH!"
db $FF


MessageTextExp_1CC:
db "HELLO! BROTHER" : db $FE
db "OF LIGHT!"
db $FF

MessageTextExp_1CD:
db "THE FORTUNE" : db $FE
db "TELLER WILL" : db $FE
db "GIVE YOU HINTS" : db $FE
db "LISTEN" : db $FE
db "CAREFULLY."
db $FF

MessageTextExp_1CE:
db "YOU WANT TO" : db $FE
db "PLAY A GAME" : db $FE
db "WITH ME?"
db $FF

MessageTextExp_1CF:
db "GREAT!" : db $FE
db "WELCOME..."
db $FF

MessageTextExp_1D0:
db "I AM NOT DEALING" : db $FE
db "WITH A KID WHO" : db $FE
db "DOES NOT HAVE" : db $FE
db "THE GUTS!"
db $FF

MessageTextExp_1D1:
db "IF YOU DO NOT" : db $FE
db "HAVE AT LEAST" : db $FE
db "100RILS I CANT" : db $FE
db "HELP YOU."
db $FF

MessageTextExp_1D2:
db "NOT BAD," : db $FE
db "HUH? BOY!"
db $FF

MessageTextExp_1D3:
db "HAHAHAHAHA! NOT" : db $FE
db "YET! YOU LOST!"
db $FF

MessageTextExp_1D4:
db "HMPH..." : db $FE
db "PEOPLES CALL ME" : db $FE
db "A MAD GENIOUS..." : db $FE
db "UH..."
db $FF

MessageTextExp_1D5: ; TODO
db "IT WAS FINE" : db $FE
db "UNTIL I GOT" : db $FE
db "HAD A BABY," : db $FE
db "NOW I CANT HELP" : db $FE
db "BUT CLING ON" : db $FE
db "MY BED"
db $FF

MessageTextExp_1D6:
db "HELLO " : db $D2, $3D : db $FE
db "I AM BETTY." : db $FE
db "NOW OPEN YOUR" : db $FE
db "MOUTH!"
db $FF

MessageTextExp_1D7:
db "HIII " : db $D2, $3D : db $FE
db "MY NAME IS RUBY." : db $FE
db "I WILL SERVE YOU"
db $FF

MessageTextExp_1D8:
db "DO NOT PUSH" : db $FE
db "YOURSELF TOO" : db $FE
db "HARD, REST YOUR" : db $FE
db "EYES FOR 30MIN!"
db $FF

MessageTextExp_1D9:
db "KYAA! AHH!" : db $FE
db "THIS IS MINE!"
db $FF

MessageTextExp_1DA:
db "WAIT A SECOND!" : db $FE
db "THERE IS NO" : db $FE
db "REFUND!"
db $FF

MessageTextExp_1DB:
db "IF YOUR FRIENDS" : db $FE
db "DIE, GO TO THE" : db $FE
db "GODDESS SHRINE"
db $FF

MessageTextExp_1DC:
db "OH, I WANT TO" : db $FE
db "GO ON A TRIP" : db $FE
db "TOO."
db $FF

MessageTextExp_1DD:
db "HEHEHE." : db $FE
db "IM JUST SHOPPING"
db $FF

MessageTextExp_1DE:
db "WHY ARE THEY" : db $FE
db "SO BUSY!"
db $FF

MessageTextExp_1DF:
db "I CAN BREATHE" : db $FE
db "WITH MY GILLS" : db $FE
db "SO I AM FINE" : db $FE
db "IN THE WATER."
db $FF

MessageTextExp_1E0:
db "THE ONLY WAY TO" : db $FE
db "GET INFORMATIONS" : db $FE
db "IS TO TALK TO" : db $FE
db "EVERYONE." : db $FE
db "ESPECIALLY IN" : db $FE
db "TAVERN AND INN!"
db $FF

MessageTextExp_1E1:
db "WHETER YOU MAKE" : db $FE
db "MONEY HERE" : db $FE
db "OR NOT IS UP" : db $FE
db "TO YOU." : db $FE

db "IT DEPENDS ON" : db $FE
db "HOW GOOD" : db $FE
db "YOU ARE", !SMILEY
db $FF

MessageTextExp_1E2:
db "HELLO, WELCOME!" : db $D2, $3D : db $FE
db "I AM GONNA" : db $FE
db "TEACH YOU" : db $FE
db "SOMETHING" : db $D2, $3D : db $FE
db $FE
db $FE

db "DONT FORGET TO" : db $FE
db "SAVE FREQUENTLY" : db $D2, $3C

db $FF

MessageTextExp_1E3:
db "I SERVED IN THE"  : db $FE
db "DARK CASTLE ONCE" : db $FE
db "NOW I HEAR THE" : db $FE
db "DARKNESS KING" : db $FE
db "HAS LOST HIS" : db $FE
db "MIND."
db $FF

MessageTextExp_1E4:
db "THE KING OF" : db $FE
db "DARKNESS HAS TWO" : db $FE
db "CHILDREN. BUT I" : db $FE
db "HEARD THAT WHEN" : db $FE

db "THIS BATTLE " : db $FE
db "STARTED, THE" : db $FE
db "OLDER RAN AWAY" : db $FE
db "FROM THE CASTLE."
db $FF

MessageTextExp_1E5:
db "I HAVE SEEN MANY" : db $FE
db "HEROES GO FOR" : db $FE
db "THE SWORD OF THE" : db $FE
db "EARTH...." : db $FE

db "DO YOU HAVE" : db $FE
db "REAL COURAGE?" : db $FE
db "IF YOU DONT," : db $FE
db "YOU WILL NEVER" : db $FE

db "BE ABLE TO PULL" : db $FE
db "OUT THE SWORD" : db $FE
db "OF THE EARTH"
db $FF

MessageTextExp_1E6:
db "I HEARD THAT", !NL
db "THERE IS A SWORD", !NL
db "CALLED THE SWORD", !NL
db "OF THE EARTH", !NL

db "THAT HAS THE", !NL
db "POWER OF GODDESS", !NL
db "BUT SUCH STRONG", !NL
db "POWER IS SCARY."
db $FF

MessageTextExp_1E7:
db "THIS TREE...", !NL
db "WHAT TREE...", !NL
db "THE NOVA TREE", !MNOTE, !NL
db "ITS A VERY", !NL
db "BIG TREE.", !HEART
db $FF

MessageTextExp_1E8:
db "YAY, ITS BEEN A", !NL
db "LONG TIME SINCE", !NL
db "I HAD A CUSTOMER"
db $FF

MessageTextExp_1E9:
db "I WONDER WHAT", !NL
db "LIFE IS LIKE", !NL
db "FOR A GODDESS?"
db $FF

MessageTextExp_1EA:
db ""
db $FF

MessageTextExp_1EB:
db "OK!, I WILL WAIT" : db $FE
db "FOR YOU AT THE" : db $FE
db "GODDESS SHRINE!"
db $FF

MessageTextExp_1EC:
db "IT MIGHT BE A", !NL
db "GOOD IDEA", !NL
db "TO INVITE PEOPLE", !NL
db "TO JOIN YOU.", !NL

db "WHAT ABOUT ME?", !NL
db "WOWOW", !HEART


db $FF

MessageTextExp_1ED:
db "BLUBLU, YOU" : db $FE
db "SHOULD HAVE" : db $FE
db "ITEMS THAT ARE" : db $FE
db "NOT FOR SALE..."
db $FF

MessageTextExp_1EE:
db "KYAA", !PAW, " DONT" : db $FE
db "COME UP ON" : db $FE
db "STAGE!!"
db $FF

MessageTextExp_1EF:
db "I AM LUNLUN" : db $D2, $3D
db $FF

MessageTextExp_1F0:
db "I AM LENLEN" : db $FE
db "WE ARE TWINS" : db $D2, $3D
db $FF

MessageTextExp_1F1:
db "THIS IS A" : db $FE
db "HAPPY DANCE", !MNOTE : db $FE
db "UND.ER.STAND?"
db $FF


MessageTextExp_1F2:
db "UGH, SOMEONE PUT" : db $FE
db "A BUG IN MY SHOE" : db $FE
db "BUT I CANT LOSE!" : db $FE
db "SOMEDAY I WILL" : db $FE
db "BE A GREAT" : db $FE
db "DANCER..."
db $FF

MessageTextExp_1F3:
db "IF YOU DONT KNOW" : db $FE
db "WHAT TO DO YOU" : db $FE
db "CAN ASK YOUR" : db $FE
db "FRIENDS."
db $FF

MessageTextExp_1F4:
db "I AM HELENA." : db $FE
db "I BECAME A" : db $FE
db "DANCER AFTER" : db $FE
db "MY BROTHER DIED."
db $FF

MessageTextExp_1F5:
db "I WOULD DANCE IN" : db $FE
db "FIRE AND WATER" : db $FE
db "BLUBLU..."
db $FF

MessageTextExp_1F6:
db "WOOF, WOOF"
db $FF

MessageTextExp_1F7:
db "WOOF!"
db $FF

MessageTextExp_1F8:
db "WAOUF", !MNOTE
db $FF

MessageTextExp_1F9:
db "WOOF, WOOF..."
db $FF

MessageTextExp_1FA:
db ""
db $FF

MessageTextExp_1FB:
db "OWH! KYUN KYUN", !HEART
db $FF

MessageTextExp_1FC:
db "YOU SEE TOMORROW" : db $FE
db "I CAN SEE TODAY" : db $FE
db "LEAVE IT TO" : db $FE
db "KESUKA!!!"
db $FF

MessageTextExp_1FD:
db "RIGHT NOW I AM" : db $FE
db "TRYING TO FIGURE" : db $FE
db "OUT HOW TO SEAL" : db $FE
db "THE DEMON DRAGON"
db $FF

MessageTextExp_1FE:
db "OH, ITS NOT THIS"
db $FF

MessageTextExp_1FF:
db "NOT EVEN THIS."
db $FF

MessageTextExp_200:
db "THE EXAMINEE" : db $FE
db "HAS EXAMINED" : db $FE
db "THE EXAMINATION." : db $FE
db !NL

db "HMMM, NICE PUN!!"

db $FF

MessageTextExp_201:
db "DONT PLAY" : db $FE
db "WITH ME!"
db $FF

MessageTextExp_202:
db "ALRIGHT WE" : db $FE
db "SHOULD GO BACK" : db $FE
db "TO THE VILLAGE" : db $FE
db "ELDER NOW."
db $FF

MessageTextExp_203:
db "NOT MUCH GOOD" : db $FE
db "STUFF HERE!"
db $FF

MessageTextExp_204:
db "THEY SAY THE" : db $FE
db "NOVA TREE HAS" : db $FE
db "BEEN GROWING" : db $FE
db "SINCE THE" : db $FE

db "BEGINNING OF THE" : db $FE
db "WORLD!" : db $FE
db "I, TOO, HOPE" : db $FE
db "TO LIVE LONG!"
db $FF

MessageTextExp_205:
db "WELCOME!"
db $FF

MessageTextExp_206:
db "I, MISAKO", !HEART : db $FE
db "DREW SPRITES" : db $FE
db "AND PICTURES."
db $FF

MessageTextExp_207:
db "HEY, HAVE YOU" : db $FE
db "HEARD A MYTHICAL" : db $FE
db "MEAL THAT SEEMS" : db $FE
db "TO BE ON A MENU" : db $FE

db "SOMEWHERE THE" : db $FE
db !QUOTE1, "NEKOMANMA", !QUOTE2, "!!" : db $FE
db "I WONDER WHAT" : db $FE
db "IT TASTE LIKE..."
db $FF

MessageTextExp_208: ;TODO NOT SURE
db "PSST, PSST" : db $FE
db "EVERYONE CALL ME" : db $FE
db "DEMON MATSUHASHI" : db $FE
db "THE GREAT BOSS!"
db $FF


MessageTextExp_209:
db ""
db $FF

MessageTextExp_20A:
db "I AM AN" : db $FE
db "APPRENTICE."
db $FF

MessageTextExp_20B:
db "DONT TALK TO ME!" : db $FE
db "I AM ON A HUNT!"
db $FF

MessageTextExp_20C:
db "I LOVE THIS" : db $FE
db "THIS PLACE ITS" : db $FE
db "SO CUTE, BUT,ITS" : db $FE
db "ALWAYS CROWDED!"
db $FF

MessageTextExp_20D:
db "I AM A MANAGER" : db $FE
db "I AM CHECKING" : db $FE
db "FOR CHEATERS."
db $FF


MessageTextExp_20E:
db "DO YOU HAVE" : db $FE
db "ANYHTING" : db $FE
db "INTERESTING" : db $FE
db "TO OFFER?"
db $FF

MessageTextExp_20F:
db "YOU CAN HAVE UP" : db $FE
db "TO FIVE MEMBERS" : db $FE
db "IN YOUR PARTY," : db $FE
db "BUT IF SOMEONE" : db $FE

db "WITH A STAR OF" : db $FE
db "DESTINY APPEARS" : db $FE
db "YOU WILL HAVE TO" : db $FE
db "REMOVE ONE." : db $FE

db "ALSO IF A PERSON" : db $FE
db "WITH THE STAR OF" : db $FE
db "DESTINY DIES, IT" : db $FE
db "IS THE SAME AS" : db $FE

db "IF YOU DIED, SO" : db $FE
db "YOU SHOULD BE" : db $FE
db "CAREFUL TO WATCH" : db $FE
db "YOUR HP!"
db $FF

MessageTextExp_210:
db "I AM SO WORRIED" : db $FE
db "ABOUT THE" : db $FE
db "PRINCESS " : db $E0, $06 : db "!"
db $FF

MessageTextExp_211:
db "I WONDER WHAT" : db $FE
db "WILL HAPPEN TO" : db $FE
db "THE" : db $FE
db "CASTLE OF LIGHT"
db $FF

MessageTextExp_212:
db "BOY. NEVER" : db $FE
db "NEVER LOSE IF" : db $FE
db "YOU LOSE TODAY" : db $FE
db "YOU WILL WIN" : db $FE
db "TOMORROW!" : db $FE
db "NEVER LET" : db $FE
db "YOURSELF" : db $FE
db "BE DEFEATED!"
db $FF

MessageTextExp_213:
db "THIS IS THE" : db $FE
db "CASTLE OF LIGHT."
db $FF

MessageTextExp_214:
db "I AM THE PRISON" : db $FE
db "GUARD, I DONT" : db $FE
db "LIKE IT..."
db $FF

MessageTextExp_215:
db "BEFORE YESTERDAY" : db $FE
db "I SAW A KID GO" : db $FE
db "TOWARDS THE" : db $FE
db "VILLAGE OF FARAS" : db $FE
db $FE
db $FE
db "YEAH... I THINK" : db $FE
db "THAT IS A LITTLE" : db $FE
db "BIT STRANGE." : db $FE
db $FF

MessageTextExp_216:
db "OH!, I AM SO" : db $FE
db "HUNGRY..."
db $FF

MessageTextExp_217:
db "UHOH!, KING!" : db $FE
db "THE ..." : db $FE
db "MIRROR OF LIGHT" : db $FE
db "SOMEONE STOLE IT" : db $FE
db "FROM THE" : db $FE
db "TREASURY!"
db $FF

MessageTextExp_218:
db "AH, I WONDER" : db $FE
db "WHAT IS GOING" : db $FE
db "TO HAPPEN..."
db $FF

MessageTextExp_219:
db "THE KING BODY IS" : db $FE
db "FULL OF BLISTERS" : db $FE
db "HOW CAN HE STAND" : db $FE
db "STILL."
db $FF

MessageTextExp_21A:
db "OH, KING...!" : db $FE
db "I FEEL SORRY"
db $FF

MessageTextExp_21B:
db "YOU SHOULD GO TO" : db $FE
db "THE TREASURY" : db $FE
db "AND LISTEN TO" : db $FE
db "THE STORY. THE" : db $FE
db "TREASURY IS NEXT" : db $FE
db "TO THE PRISON"
db $FF

MessageTextExp_21C:
db "I AM COUNTING ON" : db $FE
db "YOU " : db $E0, $00
db $FF

MessageTextExp_21D:
db "PLEASE HELP" : db $FE
db $E0, $06 : db "...!"
db $FF

MessageTextExp_21E:
db "IN THE VILLAGE" : db $FE
db "OF FARAS, THERE" : db $FE
db "IS A GUARDIAN" : db $FE
db "TREE, CALLED" : db $FE

db "THE MINA TREE."
db $FF

MessageTextExp_21F:
db "I HEARD THAT" : db $FE
db "PRINCESS ", !LEFINA : db $FE
db "HAD A MYSTERIOUS" : db $FE
db "POWER..." : db $FE

db "I WONDER WHY."
db $FF

MessageTextExp_220:
db "THIS CASTLE USED" : db $FE
db "TO BE FULL OF" : db $FE
db "PEOPLE..." : db $FE
db !NL
db "BUT THEY ALL" : db $FE
db "DISAPPEARED IN" : db $FE
db "THIS BATTLE", !SWEAT2

db $FF

MessageTextExp_221:
db "LIGHT IS HOPE." : db $FE
db "DARKNESS IS" : db $FE
db "COMFORT." : db $FE
db "BOTH ARE ONE." : db $FE

db "WE MUST HELP" : db $FE
db "EACH OTHER TO" : db $FE
db "LIVE." : db $FE
db !NL

db "HOW DID THIS" : db $FE
db "HAPPEN..."
db $FF

MessageTextExp_222:
db "MERMAIDS ARE" : db $FE
db "MAGICAL BECAUSE" : db $FE
db "THEY CANNOT USE" : db $FE
db "WEAPON OR ARMOR." : db $FE

db "THAT IS WHY IN" : db $FE
db "THIS VILLAGE," : db $FE
db "YOU ARE SURE TO" : db $FE
db "GET MAGIC THAT" : db $FE
db "YOU CANT FIND" : db $FE
db "ANYWHERE ELSE." 
db $FF

MessageTextExp_223:
db "A LONG TIME AGO" : db $FE
db "THERE WAS A" : db $FE
db "MERMAID WHO FELL" : db $FE
db "IN LOVE WITH A" : db $FE

db "MAN OF LIGHT." : db $FE
db "THE MERMAID HAS" : db $FE
db "GIVEN UP HER" : db $FE
db "BEAUTIFUL VOICE" : db $FE

db "TO HAVE 2 LEGS" : db $FE
db "HOWEVER, THE" : db $FE
db "MAGIC ONLY" : db $FE
db "LASTED 3 DAYS" : db $FE

db "AND THEN THE" : db $FE
db "MERMAID VANISHED" : db $FE
db "INTO BUBBLES," : db $FE
db "AND OUT OF THESE" : db $FE

db "BUBBLES WAS BORN" : db $FE
db "A BEAUTIFUL" : db $FE
db "MERMAID WHOSE" : db $FE
db "BLIND."

db $FF

MessageTextExp_224:
db "THIS IS THE" : db $FE
db "MERMAID VILLAGE."
db $FF

MessageTextExp_225:
db "THIS IS THE" : db $FE
db "CHIEF HOUSE." : db $FE
db "SHE IS IN THE" : db $FE
db "SANCTUARY."

db $FF

MessageTextExp_226:
db "WHAT WILL WE DO" : db $FE
db "WHEN THE FRUIT" : db $FE
db "OF LIFE IS GONE?" : db $FE
db "AAW... THERE IS" : db $FE

db "NO POINT IN" : db $FE
db "TELLING THAT TO" : db $FE
db "A MAN OF LIGHT." : db $FE
db $FE

db "WILL YOU LEAVE" : db $FE
db "ME ALONE?"
db $FF

MessageTextExp_227:
db "OH, THE MERMAIDS" : db $FE
db "HAVE BEEN SAVED!" : db $FE
db "... WHAT?" : db $FE
db "BECAUSE OF YOU ?" : db $FE

db "YOU ARE A MAN" : db $FE
db "OF LIGHT AND YOU" : db $FE
db "WENT TO OUR" : db $FE
db "SACRED LAND!" : db $FE

db "I AM SURPRISED" : db $FE
db "THE CHIEF LET" : db $FE
db "YOU GO."
db $FF

MessageTextExp_228:
db "THE CHIEF IS THE" : db $FE
db "PRETTIEST OF ALL" : db $FE
db "THE MERMAIDS." : db $FE
db "THAT IS WHY" : db $FE

db "MERMAID GIRLS" : db $FE
db "IMMITATE HER AND" : db $FE
db "GROW THEIR HAIR." : db $FE
db $FE

db "SHE IS BLIND" : db $FE
db "THOUGH." : db $FE
db "THAT IS BECAUSE" : db $FE
db "HER ELDER FATHER" : db $FE

db "WAS A MAN OF" : db $FE
db "LIGHT. WE ARE" : db $FE
db "PEOPLES OF DARK" : db $FE
db "NESS, SO WE GET" : db $FE

db "A LITTLE OLD" : db $FE
db "COMPARED TO" : db $FE
db "PEOPLES OF LIGHT"







db $FF

MessageTextExp_229:
db "THERE ARE RUMORS" : db $FE
db "THAT THERE IS A" : db $FE
db "MAGICIAN WHO CAN" : db $FE
db "MAKE YOU TWO" : db $FE

db "LEGGED LIKE A" : db $FE
db "HUMAN."
db $FF

MessageTextExp_22A:
db "I HEARD A SECRET" : db $FE
db "THE FATHER OF" : db $FE
db "THE CHIEF IS" : db $FE
db "GRANDFATHER DEW" : db $FE

db "WHO LIVES BY THE" : db $FE
db "SEA OF WATER!" : db $FE
db "HE STILL LOVES" : db $FE
db "HIS DEAD WIFE"
db $FF

MessageTextExp_22B:
db !SWEAT, !STAR, !STAR, !PAW, !SWEAT, " ", !SMILEY, !SWEAT, "!?"
db $FF

MessageTextExp_22C:
db "WHAT IS IT?" : db $FE
db "YOU ARE GOING TO" : db $FE
db "DRAIN THE WATER" : db $FE
db "FROM THE SEA?" : db $FE
db $FE
db $FE
db $FE
db $FE
db "...OKAY,I SEE." : db $FE
db "I WILL TELL" : db $FE
db "THE OTHERS."
db $FF

MessageTextExp_22D:
db "I TOLD EVERYONE."
db $FF

MessageTextExp_22E:
db "WHAT ARE YOU" : db $FE
db "DOING ALL OF" : db $FE
db "A SUDDEN!" : db $FE
db "...UGH..." : db $FE

db "HMMM, GOOD!"
db $FF


MessageTextExp_22F:
db ""
db $FF

MessageTextExp_230:
db "THERE ARE NO" : db $FE
db "MORE SCALES" : db $D2, $3E
db $FF

MessageTextExp_231:
db "WELCOME. WOW A" : db $FE
db "LIGHT BEING THAT" : db $FE
db "IS PRETTY RARE." : db $FE
db "THIS IS AN INN." : db $FE

db "WE HAVE FOOD" : db $FE
db "AND WATER BEDS." : db $FE
db "PLEASE FEEL FREE" : db $FE
db "TO USE IT."
db $FF

MessageTextExp_232:
db "WELCOME!!!" : db $FE
db "? A LIGHT BEING?" : db $FE
db "THIS IS SO RARE!" : db $FE
db "ARE YOU SLEEPING" : db $FE

db "ON A WATERBED?" : db $FE
db "5RIL PER PERSON" : db $FE
db "SO IT WILL COST" : db $FE
db !E021 : db "RILS?"

db $FF

MessageTextExp_233:
db "I AM SORRY BUT" : db $FE
db "YOU NEED MONEY." : db $FE
db "PLEASE COME BACK" : db $FE
db "WITH MONEY."
db $FF

MessageTextExp_234:
db "NICE TO MEET YOU" : db $FE
db "THIS IS AN ITEM" : db $FE
db "SHOP." : db $FE
db "OH YOU ARE A" : db $FE

db "PERSON OF LIGHT" : db $FE
db "THAT IS UNUSUAL" : db $FE
db "WHAT CAN I DO" : db $FE
db "FOR YOU?"
db $FF
MessageTextExp_235:
db "WHICH ONE DO YOU" : db $FE
db "WANT TO SELL?"
db $FF

MessageTextExp_236:
db "IN THAT CASE," : db $FE
db "WILL BUY IT FOR" : db $FE
db !E021, "RILS...?"
db $FF

MessageTextExp_237:
db "OHOH! I HAVE LOT" : db $FE
db "OF GOOD STUFF" : db $FE
db "WHICH ONE SHOULD" : db $FE
db "I PICK?"
db $FF

MessageTextExp_238:
db !E022, "RILS" : db $FE
db "ARE YOU GOING" : db $FE
db "TO BUY IT?"
db $FF

MessageTextExp_239:
db "THANK YOU" : db $FE
db "VERY MUCH!"
db $FF

MessageTextExp_23A:
db "WHAT A SURPRISE!" : db $FE
db "PLEASE" : db $FE
db "COME AGAIN..."

db $FF

MessageTextExp_23B:
db "WHAT!, YOU DONT" : db $FE
db "HAVE THE MONEY?" : db $FE
db "GET SOME MONEY" : db $FE
db "AND COME BACK!" : db $FE

db "THAT IS WHY" : db $FE
db "I DONT LIKE" : db $FE
db "PEOPLE OF LIGHT!"
db $FF

MessageTextExp_23C:
db "WAIT A MINUTE" : db $FE
db "YOU HAVE TO MANY" : db $FE
db "ITEMS, PLEASE" : db $FE
db "MAKE SOME SPACE" : db $FE
db "AND COME AGAIN."
db $FF

MessageTextExp_23D:
db "A WHILE AGO," : db $FE
db "I FOUND A BOX" : db $FE
db "ON THE BACK OF" : db $FE
db "A BUILDING THAT" : db $FE

db "WOULD NOT OPEN.." : db $FE
db "I WONDER WHAT" : db $FE
db "WAS IN THAT BOX."
db $FF

MessageTextExp_23E:
db "THERE ARE THREE" : db $FE
db "DECENT MAGIC" : db $FE
db "SHOP HERE..." : db $FE
db "WE ARE THE BEST!"
db $FF

MessageTextExp_23F:
db "MY WIFE IS SICK" : db $FE
db "AND MAGIC IS NOT" : db $FE
db "WORKING..." : db $D2, $3E : db $FE
db "MAN OF LIGHT," : db $FE

db "CANT YOU DO" : db $FE
db "SOMETHING?" : db $FE
db "ALL I CAN DO IS" : db $FE
db "CRY, SNIF,SNIF" : db $D2, $3E

db $FF

MessageTextExp_240:
db "OH NO!" : db $FE
db "THANK YOU!" : db $FE
db "NOT ONLY DID" : db $FE
db "IT BRING BACK" : db $FE

db "GOD MUSIC, IT" : db $FE
db "BROUGHT BACK THE" : db $FE
db "TREE OF LIFE!" : db $FE
db "THANK YOU!" : db $FE

db "IM SO HAPPY, IM" : db $FE
db "ALMOST WETTING" : db $FE
db "MY PANTS."
db $FF

MessageTextExp_241:
db "WHAT DO YOU WANT" : db $FE
db "MAN OF LIGHT?" : db $FE
db "GET OUT OF HERE" : db $FE
db "IF YOU HAVE" : db $FE

db "NOTHING TO" : db $FE
db "DO HERE!" : db $FE
db "I DONT LIKE" : db $FE
db "PEOPLE OF LIGHT!"

db $FF


NewElementsText:
;IF X == 0 ROCK
;IF X == 2 ICE
;IF X == 4 WATER
;IF X == 6 EARTH
;IF X == 8 FIRE
;IF X == 0A WIND
;IF X == 0C DARKNESS
;IF X == 0E LIGHT
CPX #$000F : BCS +
PHX : PHY
TXA : ASL : ASL
TAX
LDY #$0008

--
DEX
DEY 
LDA.l Elements+8, X : STA $1FA0, Y
CPY #$0000 : BNE --


PLY : PLX
LDA #$FF
STA $1FA8
RTL
+
; restore original code instead
LDA $03EB9A, X
STA $1FA0
LDA $03EB9B, X
STA $1FA1
LDA #$FF
STA $1FA2
RTL

Elements:
db "ROCK    "
db "ICE     "
db "WATER   "
db "EARTH   "
db "FIRE    "
db "WIND    "
db "DARKNESS"
db "LIGHT   "

MessageExpansionCode:
LDY.w #$0000
PHP
SEP.b #$20
LDA.w $102D : CMP.b #$0B : BEQ ++


REP.b #$20
LDA.b $64
CMP.w #$8240 : BCC ++ ; if message id is <= 0x120
SEP.b #$20
LDA.w $102D : CMP.b #$25 : BNE + 
LDA.b #$27 : STA.w $102D ; Load from expansion bank instead
BRA .cont
+; messagestwo not expanded yet TODO
LDA.b #$26 : STA.w $102D ; Load from expansion bank instead
.cont
+
PHA 
PLB ; set data bank to 26
++
PLP
LDA.b ($64), Y
RTL


org $278000

dw MessageTextTWOExp_00
dw MessageTextTWOExp_01
dw MessageTextTWOExp_02
dw MessageTextTWOExp_03
dw MessageTextTWOExp_04
dw MessageTextTWOExp_05
dw MessageTextTWOExp_06
dw MessageTextTWOExp_07
dw MessageTextTWOExp_08
dw MessageTextTWOExp_09
dw MessageTextTWOExp_0A
dw MessageTextTWOExp_0B
dw MessageTextTWOExp_0C
dw MessageTextTWOExp_0D
dw MessageTextTWOExp_0E
dw MessageTextTWOExp_0F
dw MessageTextTWOExp_10
dw MessageTextTWOExp_11
dw MessageTextTWOExp_12
dw MessageTextTWOExp_13
dw MessageTextTWOExp_14
dw MessageTextTWOExp_15
dw MessageTextTWOExp_16
dw MessageTextTWOExp_17
dw MessageTextTWOExp_18
dw MessageTextTWOExp_19
dw MessageTextTWOExp_1A
dw MessageTextTWOExp_1B
dw MessageTextTWOExp_1C
dw MessageTextTWOExp_1D
dw MessageTextTWOExp_1E
dw MessageTextTWOExp_1F
dw MessageTextTWOExp_20
dw MessageTextTWOExp_21
dw MessageTextTWOExp_22
dw MessageTextTWOExp_23
dw MessageTextTWOExp_24
dw MessageTextTWOExp_25
dw MessageTextTWOExp_26
dw MessageTextTWOExp_27
dw MessageTextTWOExp_28
dw MessageTextTWOExp_29
dw MessageTextTWOExp_2A
dw MessageTextTWOExp_2B
dw MessageTextTWOExp_2C
dw MessageTextTWOExp_2D
dw MessageTextTWOExp_2E
dw MessageTextTWOExp_2F
dw MessageTextTWOExp_30
dw MessageTextTWOExp_31
dw MessageTextTWOExp_32
dw MessageTextTWOExp_33
dw MessageTextTWOExp_34
dw MessageTextTWOExp_35
dw MessageTextTWOExp_36
dw MessageTextTWOExp_37
dw MessageTextTWOExp_38
dw MessageTextTWOExp_39
dw MessageTextTWOExp_3A
dw MessageTextTWOExp_3B
dw MessageTextTWOExp_3C
dw MessageTextTWOExp_3D
dw MessageTextTWOExp_3E
dw MessageTextTWOExp_3F
dw MessageTextTWOExp_40
dw MessageTextTWOExp_41
dw MessageTextTWOExp_42
dw MessageTextTWOExp_43
dw MessageTextTWOExp_44
dw MessageTextTWOExp_45
dw MessageTextTWOExp_46
dw MessageTextTWOExp_47
dw MessageTextTWOExp_48
dw MessageTextTWOExp_49
dw MessageTextTWOExp_4A
dw MessageTextTWOExp_4B
dw MessageTextTWOExp_4C
dw MessageTextTWOExp_4D
dw MessageTextTWOExp_4E
dw MessageTextTWOExp_4F
dw MessageTextTWOExp_50
dw MessageTextTWOExp_51
dw MessageTextTWOExp_52
dw MessageTextTWOExp_53
dw MessageTextTWOExp_54
dw MessageTextTWOExp_55
dw MessageTextTWOExp_56
dw MessageTextTWOExp_57
dw MessageTextTWOExp_58
dw MessageTextTWOExp_59
dw MessageTextTWOExp_5A
dw MessageTextTWOExp_5B
dw MessageTextTWOExp_5C
dw MessageTextTWOExp_5D
dw MessageTextTWOExp_5E
dw MessageTextTWOExp_5F
dw MessageTextTWOExp_60
dw MessageTextTWOExp_61
dw MessageTextTWOExp_62
dw MessageTextTWOExp_63
dw MessageTextTWOExp_64
dw MessageTextTWOExp_65
dw MessageTextTWOExp_66
dw MessageTextTWOExp_67
dw MessageTextTWOExp_68
dw MessageTextTWOExp_69
dw MessageTextTWOExp_6A
dw MessageTextTWOExp_6B
dw MessageTextTWOExp_6C
dw MessageTextTWOExp_6D
dw MessageTextTWOExp_6E
dw MessageTextTWOExp_6F
dw MessageTextTWOExp_70
dw MessageTextTWOExp_71
dw MessageTextTWOExp_72
dw MessageTextTWOExp_73
dw MessageTextTWOExp_74
dw MessageTextTWOExp_75
dw MessageTextTWOExp_76
dw MessageTextTWOExp_77
dw MessageTextTWOExp_78
dw MessageTextTWOExp_79
dw MessageTextTWOExp_7A
dw MessageTextTWOExp_7B
dw MessageTextTWOExp_7C
dw MessageTextTWOExp_7D
dw MessageTextTWOExp_7E
dw MessageTextTWOExp_7F
dw MessageTextTWOExp_80
dw MessageTextTWOExp_81
dw MessageTextTWOExp_82
dw MessageTextTWOExp_83
dw MessageTextTWOExp_84
dw MessageTextTWOExp_85
dw MessageTextTWOExp_86
dw MessageTextTWOExp_87
dw MessageTextTWOExp_88
dw MessageTextTWOExp_89
dw MessageTextTWOExp_8A
dw MessageTextTWOExp_8B
dw MessageTextTWOExp_8C
dw MessageTextTWOExp_8D
dw MessageTextTWOExp_8E
dw MessageTextTWOExp_8F
dw MessageTextTWOExp_90
dw MessageTextTWOExp_91
dw MessageTextTWOExp_92
dw MessageTextTWOExp_93
dw MessageTextTWOExp_94
dw MessageTextTWOExp_95
dw MessageTextTWOExp_96
dw MessageTextTWOExp_97
dw MessageTextTWOExp_98
dw MessageTextTWOExp_99
dw MessageTextTWOExp_9A
dw MessageTextTWOExp_9B
dw MessageTextTWOExp_9C
dw MessageTextTWOExp_9D
dw MessageTextTWOExp_9E
dw MessageTextTWOExp_9F
dw MessageTextTWOExp_A0
dw MessageTextTWOExp_A1
dw MessageTextTWOExp_A2
dw MessageTextTWOExp_A3
dw MessageTextTWOExp_A4
dw MessageTextTWOExp_A5
dw MessageTextTWOExp_A6
dw MessageTextTWOExp_A7
dw MessageTextTWOExp_A8
dw MessageTextTWOExp_A9
dw MessageTextTWOExp_AA
dw MessageTextTWOExp_AB
dw MessageTextTWOExp_AC
dw MessageTextTWOExp_AD
dw MessageTextTWOExp_AE
dw MessageTextTWOExp_AF
dw MessageTextTWOExp_B0
dw MessageTextTWOExp_B1
dw MessageTextTWOExp_B2
dw MessageTextTWOExp_B3
dw MessageTextTWOExp_B4
dw MessageTextTWOExp_B5
dw MessageTextTWOExp_B6
dw MessageTextTWOExp_B7
dw MessageTextTWOExp_B8
dw MessageTextTWOExp_B9
dw MessageTextTWOExp_BA
dw MessageTextTWOExp_BB
dw MessageTextTWOExp_BC
dw MessageTextTWOExp_BD
dw MessageTextTWOExp_BE
dw MessageTextTWOExp_BF
dw MessageTextTWOExp_C0
dw MessageTextTWOExp_C1
dw MessageTextTWOExp_C2
dw MessageTextTWOExp_C3
dw MessageTextTWOExp_C4
dw MessageTextTWOExp_C5
dw MessageTextTWOExp_C6
dw MessageTextTWOExp_C7
dw MessageTextTWOExp_C8
dw MessageTextTWOExp_C9
dw MessageTextTWOExp_CA
dw MessageTextTWOExp_CB
dw MessageTextTWOExp_CC
dw MessageTextTWOExp_CD
dw MessageTextTWOExp_CE
dw MessageTextTWOExp_CF
dw MessageTextTWOExp_D0
dw MessageTextTWOExp_D1
dw MessageTextTWOExp_D2
dw MessageTextTWOExp_D3
dw MessageTextTWOExp_D4
dw MessageTextTWOExp_D5
dw MessageTextTWOExp_D6
dw MessageTextTWOExp_D7
dw MessageTextTWOExp_D8
dw MessageTextTWOExp_D9
dw MessageTextTWOExp_DA
dw MessageTextTWOExp_DB
dw MessageTextTWOExp_DC
dw MessageTextTWOExp_DD
dw MessageTextTWOExp_DE
dw MessageTextTWOExp_DF
dw MessageTextTWOExp_E0
dw MessageTextTWOExp_E1
dw MessageTextTWOExp_E2
dw MessageTextTWOExp_E3
dw MessageTextTWOExp_E4
dw MessageTextTWOExp_E5
dw MessageTextTWOExp_E6
dw MessageTextTWOExp_E7
dw MessageTextTWOExp_E8
dw MessageTextTWOExp_E9
dw MessageTextTWOExp_EA
dw MessageTextTWOExp_EB
dw MessageTextTWOExp_EC
dw MessageTextTWOExp_ED
dw MessageTextTWOExp_EE
dw MessageTextTWOExp_EF
dw MessageTextTWOExp_F0
dw MessageTextTWOExp_F1
dw MessageTextTWOExp_F2
dw MessageTextTWOExp_F3
dw MessageTextTWOExp_F4
dw MessageTextTWOExp_F5
dw MessageTextTWOExp_F6
dw MessageTextTWOExp_F7
dw MessageTextTWOExp_F8
dw MessageTextTWOExp_F9
dw MessageTextTWOExp_FA
dw MessageTextTWOExp_FB
dw MessageTextTWOExp_FC
dw MessageTextTWOExp_FD
dw MessageTextTWOExp_FE
dw MessageTextTWOExp_FF
dw MessageTextTWOExp_100
dw MessageTextTWOExp_101
dw MessageTextTWOExp_102
dw MessageTextTWOExp_103
dw MessageTextTWOExp_104
dw MessageTextTWOExp_105
dw MessageTextTWOExp_106
dw MessageTextTWOExp_107
dw MessageTextTWOExp_108
dw MessageTextTWOExp_109
dw MessageTextTWOExp_10A
dw MessageTextTWOExp_10B
dw MessageTextTWOExp_10C
dw MessageTextTWOExp_10D
dw MessageTextTWOExp_10E
dw MessageTextTWOExp_10F
dw MessageTextTWOExp_110
dw MessageTextTWOExp_111
dw MessageTextTWOExp_112
dw MessageTextTWOExp_113
dw MessageTextTWOExp_114
dw MessageTextTWOExp_115
dw MessageTextTWOExp_116
dw MessageTextTWOExp_117
dw MessageTextTWOExp_118
dw MessageTextTWOExp_119
dw MessageTextTWOExp_11A
dw MessageTextTWOExp_11B
dw MessageTextTWOExp_11C
dw MessageTextTWOExp_11D
dw MessageTextTWOExp_11E
dw MessageTextTWOExp_11F
dw MessageTextTWOExp_120
dw MessageTextTWOExp_121
dw MessageTextTWOExp_122
dw MessageTextTWOExp_123
dw MessageTextTWOExp_124
dw MessageTextTWOExp_125
dw MessageTextTWOExp_126
dw MessageTextTWOExp_127
dw MessageTextTWOExp_128
dw MessageTextTWOExp_129
dw MessageTextTWOExp_12A
dw MessageTextTWOExp_12B
dw MessageTextTWOExp_12C
dw MessageTextTWOExp_12D
dw MessageTextTWOExp_12E
dw MessageTextTWOExp_12F
dw MessageTextTWOExp_130
dw MessageTextTWOExp_131
dw MessageTextTWOExp_132
dw MessageTextTWOExp_133
dw MessageTextTWOExp_134
dw MessageTextTWOExp_135
dw MessageTextTWOExp_136
dw MessageTextTWOExp_137
dw MessageTextTWOExp_138
dw MessageTextTWOExp_139
dw MessageTextTWOExp_13A
dw MessageTextTWOExp_13B
dw MessageTextTWOExp_13C
dw MessageTextTWOExp_13D
dw MessageTextTWOExp_13E
dw MessageTextTWOExp_13F
dw MessageTextTWOExp_140
dw MessageTextTWOExp_141
dw MessageTextTWOExp_142
dw MessageTextTWOExp_143
dw MessageTextTWOExp_144
dw MessageTextTWOExp_145
dw MessageTextTWOExp_146
dw MessageTextTWOExp_147
dw MessageTextTWOExp_148
dw MessageTextTWOExp_149
dw MessageTextTWOExp_14A
dw MessageTextTWOExp_14B
dw MessageTextTWOExp_14C
dw MessageTextTWOExp_14D
dw MessageTextTWOExp_14E
dw MessageTextTWOExp_14F
dw MessageTextTWOExp_150
dw MessageTextTWOExp_151
dw MessageTextTWOExp_152
dw MessageTextTWOExp_153
dw MessageTextTWOExp_154
dw MessageTextTWOExp_155
dw MessageTextTWOExp_156
dw MessageTextTWOExp_157
dw MessageTextTWOExp_158
dw MessageTextTWOExp_159
dw MessageTextTWOExp_15A
dw MessageTextTWOExp_15B
dw MessageTextTWOExp_15C
dw MessageTextTWOExp_15D
dw MessageTextTWOExp_15E
dw MessageTextTWOExp_15F
dw MessageTextTWOExp_160
dw MessageTextTWOExp_161
dw MessageTextTWOExp_162
dw MessageTextTWOExp_163
dw MessageTextTWOExp_164
dw MessageTextTWOExp_165
dw MessageTextTWOExp_166
dw MessageTextTWOExp_167
dw MessageTextTWOExp_168
dw MessageTextTWOExp_169
dw MessageTextTWOExp_16A
dw MessageTextTWOExp_16B
dw MessageTextTWOExp_16C
dw MessageTextTWOExp_16D
dw MessageTextTWOExp_16E
dw MessageTextTWOExp_16F
dw MessageTextTWOExp_170
dw MessageTextTWOExp_171
dw MessageTextTWOExp_172
dw MessageTextTWOExp_173
dw MessageTextTWOExp_174
dw MessageTextTWOExp_175
dw MessageTextTWOExp_176
dw MessageTextTWOExp_177
dw MessageTextTWOExp_178
dw MessageTextTWOExp_179
dw MessageTextTWOExp_17A
dw MessageTextTWOExp_17B
dw MessageTextTWOExp_17C
dw MessageTextTWOExp_17D
dw MessageTextTWOExp_17E
dw MessageTextTWOExp_17F
dw MessageTextTWOExp_180
dw MessageTextTWOExp_181
dw MessageTextTWOExp_182
dw MessageTextTWOExp_183
dw MessageTextTWOExp_184
dw MessageTextTWOExp_185
dw MessageTextTWOExp_186
dw MessageTextTWOExp_187
dw MessageTextTWOExp_188
dw MessageTextTWOExp_189
dw MessageTextTWOExp_18A
dw MessageTextTWOExp_18B
dw MessageTextTWOExp_18C
dw MessageTextTWOExp_18D
dw MessageTextTWOExp_18E
dw MessageTextTWOExp_18F
dw MessageTextTWOExp_190
dw MessageTextTWOExp_191
dw MessageTextTWOExp_192
dw MessageTextTWOExp_193
dw MessageTextTWOExp_194
dw MessageTextTWOExp_195
dw MessageTextTWOExp_196
dw MessageTextTWOExp_197
dw MessageTextTWOExp_198
dw MessageTextTWOExp_199
dw MessageTextTWOExp_19A
dw MessageTextTWOExp_19B
dw MessageTextTWOExp_19C
dw MessageTextTWOExp_19D
dw MessageTextTWOExp_19E
dw MessageTextTWOExp_19F
dw MessageTextTWOExp_1A0
dw MessageTextTWOExp_1A1
dw MessageTextTWOExp_1A2
dw MessageTextTWOExp_1A3
dw MessageTextTWOExp_1A4
dw MessageTextTWOExp_1A5
dw MessageTextTWOExp_1A6
dw MessageTextTWOExp_1A7
dw MessageTextTWOExp_1A8
dw MessageTextTWOExp_1A9
dw MessageTextTWOExp_1AA
dw MessageTextTWOExp_1AB
dw MessageTextTWOExp_1AC
dw MessageTextTWOExp_1AD
dw MessageTextTWOExp_1AE
dw MessageTextTWOExp_1AF
dw MessageTextTWOExp_1B0
dw MessageTextTWOExp_1B1
dw MessageTextTWOExp_1B2
dw MessageTextTWOExp_1B3
dw MessageTextTWOExp_1B4
dw MessageTextTWOExp_1B5
dw MessageTextTWOExp_1B6
dw MessageTextTWOExp_1B7
dw MessageTextTWOExp_1B8
dw MessageTextTWOExp_1B9
dw MessageTextTWOExp_1BA
dw MessageTextTWOExp_1BB
dw MessageTextTWOExp_1BC
dw MessageTextTWOExp_1BD
dw MessageTextTWOExp_1BE
dw MessageTextTWOExp_1BF
dw MessageTextTWOExp_1C0
dw MessageTextTWOExp_1C1
dw MessageTextTWOExp_1C2
dw MessageTextTWOExp_1C3
dw MessageTextTWOExp_1C4
dw MessageTextTWOExp_1C5
dw MessageTextTWOExp_1C6
dw MessageTextTWOExp_1C7
dw MessageTextTWOExp_1C8
dw MessageTextTWOExp_1C9
dw MessageTextTWOExp_1CA
dw MessageTextTWOExp_1CB
dw MessageTextTWOExp_1CC
dw MessageTextTWOExp_1CD
dw MessageTextTWOExp_1CE
dw MessageTextTWOExp_1CF
dw MessageTextTWOExp_1D0
dw MessageTextTWOExp_1D1
dw MessageTextTWOExp_1D2
dw MessageTextTWOExp_1D3
dw MessageTextTWOExp_1D4
dw MessageTextTWOExp_1D5
dw MessageTextTWOExp_1D6
dw MessageTextTWOExp_1D7
dw MessageTextTWOExp_1D8
dw MessageTextTWOExp_1D9
dw MessageTextTWOExp_1DA
dw MessageTextTWOExp_1DB
dw MessageTextTWOExp_1DC
dw MessageTextTWOExp_1DD
dw MessageTextTWOExp_1DE
dw MessageTextTWOExp_1DF
dw MessageTextTWOExp_1E0
dw MessageTextTWOExp_1E1
dw MessageTextTWOExp_1E2
dw MessageTextTWOExp_1E3
dw MessageTextTWOExp_1E4
dw MessageTextTWOExp_1E5
dw MessageTextTWOExp_1E6
dw MessageTextTWOExp_1E7
dw MessageTextTWOExp_1E8
dw MessageTextTWOExp_1E9
dw MessageTextTWOExp_1EA
dw MessageTextTWOExp_1EB
dw MessageTextTWOExp_1EC
dw MessageTextTWOExp_1ED
dw MessageTextTWOExp_1EE
dw MessageTextTWOExp_1EF
dw MessageTextTWOExp_1F0
dw MessageTextTWOExp_1F1
dw MessageTextTWOExp_1F2
dw MessageTextTWOExp_1F3
dw MessageTextTWOExp_1F4
dw MessageTextTWOExp_1F5
dw MessageTextTWOExp_1F6
dw MessageTextTWOExp_1F7
dw MessageTextTWOExp_1F8
dw MessageTextTWOExp_1F9
dw MessageTextTWOExp_1FA
dw MessageTextTWOExp_1FB
dw MessageTextTWOExp_1FC
dw MessageTextTWOExp_1FD
dw MessageTextTWOExp_1FE
dw MessageTextTWOExp_1FF
dw MessageTextTWOExp_200
dw MessageTextTWOExp_201
dw MessageTextTWOExp_202
dw MessageTextTWOExp_203
dw MessageTextTWOExp_204
dw MessageTextTWOExp_205
dw MessageTextTWOExp_206
dw MessageTextTWOExp_207
dw MessageTextTWOExp_208
dw MessageTextTWOExp_209
dw MessageTextTWOExp_20A
dw MessageTextTWOExp_20B
dw MessageTextTWOExp_20C
dw MessageTextTWOExp_20D
dw MessageTextTWOExp_20E
dw MessageTextTWOExp_20F
dw MessageTextTWOExp_210
dw MessageTextTWOExp_211
dw MessageTextTWOExp_212
dw MessageTextTWOExp_213
dw MessageTextTWOExp_214
dw MessageTextTWOExp_215
dw MessageTextTWOExp_216
dw MessageTextTWOExp_217
dw MessageTextTWOExp_218
dw MessageTextTWOExp_219
dw MessageTextTWOExp_21A
dw MessageTextTWOExp_21B
dw MessageTextTWOExp_21C
dw MessageTextTWOExp_21D
dw MessageTextTWOExp_21E
dw MessageTextTWOExp_21F
dw MessageTextTWOExp_220
dw MessageTextTWOExp_221
dw MessageTextTWOExp_222
dw MessageTextTWOExp_223
dw MessageTextTWOExp_224
dw MessageTextTWOExp_225
dw MessageTextTWOExp_226
dw MessageTextTWOExp_227
dw MessageTextTWOExp_228
dw MessageTextTWOExp_229
dw MessageTextTWOExp_22A
dw MessageTextTWOExp_22B
dw MessageTextTWOExp_22C
dw MessageTextTWOExp_22D
dw MessageTextTWOExp_22E
dw MessageTextTWOExp_22F
dw MessageTextTWOExp_230
dw MessageTextTWOExp_231
dw MessageTextTWOExp_232
dw MessageTextTWOExp_233
dw MessageTextTWOExp_234
dw MessageTextTWOExp_235
dw MessageTextTWOExp_236
dw MessageTextTWOExp_237
dw MessageTextTWOExp_238
dw MessageTextTWOExp_239
dw MessageTextTWOExp_23A
dw MessageTextTWOExp_23B
dw MessageTextTWOExp_23C
dw MessageTextTWOExp_23D
dw MessageTextTWOExp_23E
dw MessageTextTWOExp_23F
dw MessageTextTWOExp_240
dw MessageTextTWOExp_241
dw MessageTextTWOExp_242
dw MessageTextTWOExp_243
dw MessageTextTWOExp_244
dw MessageTextTWOExp_245
dw MessageTextTWOExp_246
dw MessageTextTWOExp_247
dw MessageTextTWOExp_248
dw MessageTextTWOExp_249
dw MessageTextTWOExp_24A
dw MessageTextTWOExp_24B
dw MessageTextTWOExp_24C
dw MessageTextTWOExp_24D
dw MessageTextTWOExp_24E
dw MessageTextTWOExp_24F
dw MessageTextTWOExp_250
dw MessageTextTWOExp_251
dw MessageTextTWOExp_252
dw MessageTextTWOExp_253
dw MessageTextTWOExp_254
dw MessageTextTWOExp_255
dw MessageTextTWOExp_256
dw MessageTextTWOExp_257
dw MessageTextTWOExp_258
dw MessageTextTWOExp_259
dw MessageTextTWOExp_25A
dw MessageTextTWOExp_25B
dw MessageTextTWOExp_25C
dw MessageTextTWOExp_25D
dw MessageTextTWOExp_25E
dw MessageTextTWOExp_25F
dw MessageTextTWOExp_260
dw MessageTextTWOExp_261
dw MessageTextTWOExp_262
dw MessageTextTWOExp_263
dw MessageTextTWOExp_264
dw MessageTextTWOExp_265
dw MessageTextTWOExp_266
dw MessageTextTWOExp_267
dw MessageTextTWOExp_268
dw MessageTextTWOExp_269
dw MessageTextTWOExp_26A
dw MessageTextTWOExp_26B
dw MessageTextTWOExp_26C
dw MessageTextTWOExp_26D
dw MessageTextTWOExp_26E
dw MessageTextTWOExp_26F
dw MessageTextTWOExp_270
dw MessageTextTWOExp_271
dw MessageTextTWOExp_272
dw MessageTextTWOExp_273
dw MessageTextTWOExp_274
dw MessageTextTWOExp_275
dw MessageTextTWOExp_276
dw MessageTextTWOExp_277
dw MessageTextTWOExp_278
dw MessageTextTWOExp_279
dw MessageTextTWOExp_27A
dw MessageTextTWOExp_27B
dw MessageTextTWOExp_27C
dw MessageTextTWOExp_27D
dw MessageTextTWOExp_27E
dw MessageTextTWOExp_27F
dw MessageTextTWOExp_280
dw MessageTextTWOExp_281
dw MessageTextTWOExp_282
dw MessageTextTWOExp_283
dw MessageTextTWOExp_284
dw MessageTextTWOExp_285
dw MessageTextTWOExp_286
dw MessageTextTWOExp_287
dw MessageTextTWOExp_288
dw MessageTextTWOExp_289
dw MessageTextTWOExp_28A
dw MessageTextTWOExp_28B
dw MessageTextTWOExp_28C
dw MessageTextTWOExp_28D
dw MessageTextTWOExp_28E
dw MessageTextTWOExp_28F
dw MessageTextTWOExp_290
dw MessageTextTWOExp_291
dw MessageTextTWOExp_292
dw MessageTextTWOExp_293
dw MessageTextTWOExp_294
dw MessageTextTWOExp_295
dw MessageTextTWOExp_296
dw MessageTextTWOExp_297
dw MessageTextTWOExp_298
dw MessageTextTWOExp_299
dw MessageTextTWOExp_29A
dw MessageTextTWOExp_29B
dw MessageTextTWOExp_29C
dw MessageTextTWOExp_29D
dw MessageTextTWOExp_29E
dw MessageTextTWOExp_29F
dw MessageTextTWOExp_2A0
dw MessageTextTWOExp_2A1
dw MessageTextTWOExp_2A2
dw MessageTextTWOExp_2A3
dw MessageTextTWOExp_2A4
dw MessageTextTWOExp_2A5
dw MessageTextTWOExp_2A6
dw MessageTextTWOExp_2A7
dw MessageTextTWOExp_2A8
dw MessageTextTWOExp_2A9
dw MessageTextTWOExp_2AA
dw MessageTextTWOExp_2AB
dw MessageTextTWOExp_2AC
dw MessageTextTWOExp_2AD
dw MessageTextTWOExp_2AE
dw MessageTextTWOExp_2AF
dw MessageTextTWOExp_2B0
dw MessageTextTWOExp_2B1
dw MessageTextTWOExp_2B2
dw MessageTextTWOExp_2B3
dw MessageTextTWOExp_2B4
dw MessageTextTWOExp_2B5
dw MessageTextTWOExp_2B6
dw MessageTextTWOExp_2B7
dw MessageTextTWOExp_2B8
dw MessageTextTWOExp_2B9
dw MessageTextTWOExp_2BA
dw MessageTextTWOExp_2BB
dw MessageTextTWOExp_2BC
dw MessageTextTWOExp_2BD
dw MessageTextTWOExp_2BE
dw MessageTextTWOExp_2BF
dw MessageTextTWOExp_2C0
dw MessageTextTWOExp_2C1
dw MessageTextTWOExp_2C2
dw MessageTextTWOExp_2C3
dw MessageTextTWOExp_2C4
dw MessageTextTWOExp_2C5
dw MessageTextTWOExp_2C6
dw MessageTextTWOExp_2C7
dw MessageTextTWOExp_2C8
dw MessageTextTWOExp_2C9
dw MessageTextTWOExp_2CA
dw MessageTextTWOExp_2CB
dw MessageTextTWOExp_2CC
dw MessageTextTWOExp_2CD
dw MessageTextTWOExp_2CE
dw MessageTextTWOExp_2CF
dw MessageTextTWOExp_2D0
dw MessageTextTWOExp_2D1
dw MessageTextTWOExp_2D2
dw MessageTextTWOExp_2D3
dw MessageTextTWOExp_2D4
dw MessageTextTWOExp_2D5
dw MessageTextTWOExp_2D6
dw MessageTextTWOExp_2D7
dw MessageTextTWOExp_2D8
dw MessageTextTWOExp_2D9
dw MessageTextTWOExp_2DA
dw MessageTextTWOExp_2DB
dw MessageTextTWOExp_2DC
dw MessageTextTWOExp_2DD
dw MessageTextTWOExp_2DE
dw MessageTextTWOExp_2DF
dw MessageTextTWOExp_2E0
dw MessageTextTWOExp_2E1
dw MessageTextTWOExp_2E2
dw MessageTextTWOExp_2E3
dw MessageTextTWOExp_2E4
dw MessageTextTWOExp_2E5
dw MessageTextTWOExp_2E6
dw MessageTextTWOExp_2E7
dw MessageTextTWOExp_2E8
dw MessageTextTWOExp_2E9
dw MessageTextTWOExp_2EA
dw MessageTextTWOExp_2EB
dw MessageTextTWOExp_2EC
dw MessageTextTWOExp_2ED
dw MessageTextTWOExp_2EE
dw MessageTextTWOExp_2EF
dw MessageTextTWOExp_2F0
dw MessageTextTWOExp_2F1
dw MessageTextTWOExp_2F2
dw MessageTextTWOExp_2F3
dw MessageTextTWOExp_2F4
dw MessageTextTWOExp_2F5
dw MessageTextTWOExp_2F6
dw MessageTextTWOExp_2F7
dw MessageTextTWOExp_2F8
dw MessageTextTWOExp_2F9
dw MessageTextTWOExp_2FA
dw MessageTextTWOExp_2FB
dw MessageTextTWOExp_2FC
dw MessageTextTWOExp_2FD
dw MessageTextTWOExp_2FE
dw MessageTextTWOExp_2FF
dw MessageTextTWOExp_300
dw MessageTextTWOExp_301
dw MessageTextTWOExp_302
dw MessageTextTWOExp_303
dw MessageTextTWOExp_304
dw MessageTextTWOExp_305
dw MessageTextTWOExp_306
dw MessageTextTWOExp_307
dw MessageTextTWOExp_308
dw MessageTextTWOExp_309
dw MessageTextTWOExp_30A
dw MessageTextTWOExp_30B
dw MessageTextTWOExp_30C
dw MessageTextTWOExp_30D
dw MessageTextTWOExp_30E
dw MessageTextTWOExp_30F
dw MessageTextTWOExp_310
dw MessageTextTWOExp_311
dw MessageTextTWOExp_312
dw MessageTextTWOExp_313
dw MessageTextTWOExp_314
dw MessageTextTWOExp_315
dw MessageTextTWOExp_316
dw MessageTextTWOExp_317
dw MessageTextTWOExp_318
dw MessageTextTWOExp_319
dw MessageTextTWOExp_31A
dw MessageTextTWOExp_31B
dw MessageTextTWOExp_31C
dw MessageTextTWOExp_31D
dw MessageTextTWOExp_31E
dw MessageTextTWOExp_31F
dw MessageTextTWOExp_320
dw MessageTextTWOExp_321
dw MessageTextTWOExp_322
dw MessageTextTWOExp_323
dw MessageTextTWOExp_324
dw MessageTextTWOExp_325
dw MessageTextTWOExp_326
dw MessageTextTWOExp_327
dw MessageTextTWOExp_328
dw MessageTextTWOExp_329
dw MessageTextTWOExp_32A
dw MessageTextTWOExp_32B
dw MessageTextTWOExp_32C
dw MessageTextTWOExp_32D
dw MessageTextTWOExp_32E
dw MessageTextTWOExp_32F
dw MessageTextTWOExp_330
dw MessageTextTWOExp_331
dw MessageTextTWOExp_332
dw MessageTextTWOExp_333
dw MessageTextTWOExp_334
dw MessageTextTWOExp_335
dw MessageTextTWOExp_336
dw MessageTextTWOExp_337
dw MessageTextTWOExp_338
dw MessageTextTWOExp_339
dw MessageTextTWOExp_33A
dw MessageTextTWOExp_33B
dw MessageTextTWOExp_33C
dw MessageTextTWOExp_33D
dw MessageTextTWOExp_33E
dw MessageTextTWOExp_33F
dw MessageTextTWOExp_340
dw MessageTextTWOExp_341
dw MessageTextTWOExp_342
dw MessageTextTWOExp_343
dw MessageTextTWOExp_344
dw MessageTextTWOExp_345
dw MessageTextTWOExp_346
dw MessageTextTWOExp_347
dw MessageTextTWOExp_348
dw MessageTextTWOExp_349
dw MessageTextTWOExp_34A
dw MessageTextTWOExp_34B
dw MessageTextTWOExp_34C
dw MessageTextTWOExp_34D
dw MessageTextTWOExp_34E
dw MessageTextTWOExp_34F
dw MessageTextTWOExp_350
dw MessageTextTWOExp_351
dw MessageTextTWOExp_352
dw MessageTextTWOExp_353
dw MessageTextTWOExp_354
dw MessageTextTWOExp_355
dw MessageTextTWOExp_356
dw MessageTextTWOExp_357
dw MessageTextTWOExp_358
dw MessageTextTWOExp_359
dw MessageTextTWOExp_35A
dw MessageTextTWOExp_35B
dw MessageTextTWOExp_35C
dw MessageTextTWOExp_35D
dw MessageTextTWOExp_35E
dw MessageTextTWOExp_35F
dw MessageTextTWOExp_360
dw MessageTextTWOExp_361
dw MessageTextTWOExp_362
dw MessageTextTWOExp_363
dw MessageTextTWOExp_364
dw MessageTextTWOExp_365
dw MessageTextTWOExp_366
dw MessageTextTWOExp_367
dw MessageTextTWOExp_368
dw MessageTextTWOExp_369
dw MessageTextTWOExp_36A
dw MessageTextTWOExp_36B
dw MessageTextTWOExp_36C
dw MessageTextTWOExp_36D
dw MessageTextTWOExp_36E
dw MessageTextTWOExp_36F
dw MessageTextTWOExp_370
dw MessageTextTWOExp_371
dw MessageTextTWOExp_372
dw MessageTextTWOExp_373
dw MessageTextTWOExp_374
dw MessageTextTWOExp_375
dw MessageTextTWOExp_376
dw MessageTextTWOExp_377
dw MessageTextTWOExp_378
dw MessageTextTWOExp_379
dw MessageTextTWOExp_37A
dw MessageTextTWOExp_37B
dw MessageTextTWOExp_37C
dw MessageTextTWOExp_37D
dw MessageTextTWOExp_37E
dw MessageTextTWOExp_37F
dw MessageTextTWOExp_380
dw MessageTextTWOExp_381
dw MessageTextTWOExp_382
dw MessageTextTWOExp_383
dw MessageTextTWOExp_384
dw MessageTextTWOExp_385
dw MessageTextTWOExp_386
dw MessageTextTWOExp_387
dw MessageTextTWOExp_388
dw MessageTextTWOExp_389
dw MessageTextTWOExp_38A
dw MessageTextTWOExp_38B
dw MessageTextTWOExp_38C
dw MessageTextTWOExp_38D
dw MessageTextTWOExp_38E
dw MessageTextTWOExp_38F
dw MessageTextTWOExp_390
dw MessageTextTWOExp_391
dw MessageTextTWOExp_392
dw MessageTextTWOExp_393
dw MessageTextTWOExp_394
dw MessageTextTWOExp_395
dw MessageTextTWOExp_396
dw MessageTextTWOExp_397
dw MessageTextTWOExp_398
dw MessageTextTWOExp_399
dw MessageTextTWOExp_39A
dw MessageTextTWOExp_39B
dw MessageTextTWOExp_39C
dw MessageTextTWOExp_39D
dw MessageTextTWOExp_39E
dw MessageTextTWOExp_39F
dw MessageTextTWOExp_3A0






MessageTextTWOExp_00:
MessageTextTWOExp_01:
MessageTextTWOExp_02:
MessageTextTWOExp_03:
MessageTextTWOExp_04:
MessageTextTWOExp_05:
MessageTextTWOExp_06:
MessageTextTWOExp_07:
MessageTextTWOExp_08:
MessageTextTWOExp_09:
MessageTextTWOExp_0A:
MessageTextTWOExp_0B:
MessageTextTWOExp_0C:
MessageTextTWOExp_0D:
MessageTextTWOExp_0E:
MessageTextTWOExp_0F:
MessageTextTWOExp_10:
MessageTextTWOExp_11:
MessageTextTWOExp_12:
MessageTextTWOExp_13:
MessageTextTWOExp_14:
MessageTextTWOExp_15:
MessageTextTWOExp_16:
MessageTextTWOExp_17:
MessageTextTWOExp_18:
MessageTextTWOExp_19:
MessageTextTWOExp_1A:
MessageTextTWOExp_1B:
MessageTextTWOExp_1C:
MessageTextTWOExp_1D:
MessageTextTWOExp_1E:
MessageTextTWOExp_1F:
MessageTextTWOExp_20:
MessageTextTWOExp_21:
MessageTextTWOExp_22:
MessageTextTWOExp_23:
MessageTextTWOExp_24:
MessageTextTWOExp_25:
MessageTextTWOExp_26:
MessageTextTWOExp_27:
MessageTextTWOExp_28:
MessageTextTWOExp_29:
MessageTextTWOExp_2A:
MessageTextTWOExp_2B:
MessageTextTWOExp_2C:
MessageTextTWOExp_2D:
MessageTextTWOExp_2E:
MessageTextTWOExp_2F:
MessageTextTWOExp_30:
MessageTextTWOExp_31:
MessageTextTWOExp_32:
MessageTextTWOExp_33:
MessageTextTWOExp_34:
MessageTextTWOExp_35:
MessageTextTWOExp_36:
MessageTextTWOExp_37:
MessageTextTWOExp_38:
MessageTextTWOExp_39:
MessageTextTWOExp_3A:
MessageTextTWOExp_3B:
MessageTextTWOExp_3C:
MessageTextTWOExp_3D:
MessageTextTWOExp_3E:
MessageTextTWOExp_3F:
MessageTextTWOExp_40:
MessageTextTWOExp_41:
MessageTextTWOExp_42:
MessageTextTWOExp_43:
MessageTextTWOExp_44:
MessageTextTWOExp_45:
MessageTextTWOExp_46:
MessageTextTWOExp_47:
MessageTextTWOExp_48:
MessageTextTWOExp_49:
MessageTextTWOExp_4A:
MessageTextTWOExp_4B:
MessageTextTWOExp_4C:
MessageTextTWOExp_4D:
MessageTextTWOExp_4E:
MessageTextTWOExp_4F:
MessageTextTWOExp_50:
MessageTextTWOExp_51:
MessageTextTWOExp_52:
MessageTextTWOExp_53:
MessageTextTWOExp_54:
MessageTextTWOExp_55:
MessageTextTWOExp_56:
MessageTextTWOExp_57:
MessageTextTWOExp_58:
MessageTextTWOExp_59:
MessageTextTWOExp_5A:
MessageTextTWOExp_5B:
MessageTextTWOExp_5C:
MessageTextTWOExp_5D:
MessageTextTWOExp_5E:
MessageTextTWOExp_5F:
MessageTextTWOExp_60:
MessageTextTWOExp_61:
MessageTextTWOExp_62:
MessageTextTWOExp_63:
MessageTextTWOExp_64:
MessageTextTWOExp_65:
MessageTextTWOExp_66:
MessageTextTWOExp_67:
MessageTextTWOExp_68:
MessageTextTWOExp_69:
MessageTextTWOExp_6A:
MessageTextTWOExp_6B:
MessageTextTWOExp_6C:
MessageTextTWOExp_6D:
MessageTextTWOExp_6E:
MessageTextTWOExp_6F:
MessageTextTWOExp_70:
MessageTextTWOExp_71:
MessageTextTWOExp_72:
MessageTextTWOExp_73:
MessageTextTWOExp_74:
MessageTextTWOExp_75:
MessageTextTWOExp_76:
MessageTextTWOExp_77:
MessageTextTWOExp_78:
MessageTextTWOExp_79:
MessageTextTWOExp_7A:
MessageTextTWOExp_7B:
MessageTextTWOExp_7C:
MessageTextTWOExp_7D:
MessageTextTWOExp_7E:
MessageTextTWOExp_7F:
MessageTextTWOExp_80:
MessageTextTWOExp_81:
MessageTextTWOExp_82:
MessageTextTWOExp_83:
MessageTextTWOExp_84:
MessageTextTWOExp_85:
MessageTextTWOExp_86:
MessageTextTWOExp_87:
MessageTextTWOExp_88:
MessageTextTWOExp_89:
MessageTextTWOExp_8A:
MessageTextTWOExp_8B:
MessageTextTWOExp_8C:
MessageTextTWOExp_8D:
MessageTextTWOExp_8E:
MessageTextTWOExp_8F:
MessageTextTWOExp_90:
MessageTextTWOExp_91:
MessageTextTWOExp_92:
MessageTextTWOExp_93:
MessageTextTWOExp_94:
MessageTextTWOExp_95:
MessageTextTWOExp_96:
MessageTextTWOExp_97:
MessageTextTWOExp_98:
MessageTextTWOExp_99:
MessageTextTWOExp_9A:
MessageTextTWOExp_9B:
MessageTextTWOExp_9C:
MessageTextTWOExp_9D:
MessageTextTWOExp_9E:
MessageTextTWOExp_9F:
MessageTextTWOExp_A0:
MessageTextTWOExp_A1:
MessageTextTWOExp_A2:
MessageTextTWOExp_A3:
MessageTextTWOExp_A4:
MessageTextTWOExp_A5:
MessageTextTWOExp_A6:
MessageTextTWOExp_A7:
MessageTextTWOExp_A8:
MessageTextTWOExp_A9:
MessageTextTWOExp_AA:
MessageTextTWOExp_AB:
MessageTextTWOExp_AC:
MessageTextTWOExp_AD:
MessageTextTWOExp_AE:
MessageTextTWOExp_AF:
MessageTextTWOExp_B0:
MessageTextTWOExp_B1:
MessageTextTWOExp_B2:
MessageTextTWOExp_B3:
MessageTextTWOExp_B4:
MessageTextTWOExp_B5:
MessageTextTWOExp_B6:
MessageTextTWOExp_B7:
MessageTextTWOExp_B8:
MessageTextTWOExp_B9:
MessageTextTWOExp_BA:
MessageTextTWOExp_BB:
MessageTextTWOExp_BC:
MessageTextTWOExp_BD:
MessageTextTWOExp_BE:
MessageTextTWOExp_BF:
MessageTextTWOExp_C0:
MessageTextTWOExp_C1:
MessageTextTWOExp_C2:
MessageTextTWOExp_C3:
MessageTextTWOExp_C4:
MessageTextTWOExp_C5:
MessageTextTWOExp_C6:
MessageTextTWOExp_C7:
MessageTextTWOExp_C8:
MessageTextTWOExp_C9:
MessageTextTWOExp_CA:
MessageTextTWOExp_CB:
MessageTextTWOExp_CC:
MessageTextTWOExp_CD:
MessageTextTWOExp_CE:
MessageTextTWOExp_CF:
MessageTextTWOExp_D0:
MessageTextTWOExp_D1:
MessageTextTWOExp_D2:
MessageTextTWOExp_D3:
MessageTextTWOExp_D4:
MessageTextTWOExp_D5:
MessageTextTWOExp_D6:
MessageTextTWOExp_D7:
MessageTextTWOExp_D8:
MessageTextTWOExp_D9:
MessageTextTWOExp_DA:
MessageTextTWOExp_DB:
MessageTextTWOExp_DC:
MessageTextTWOExp_DD:
MessageTextTWOExp_DE:
MessageTextTWOExp_DF:
MessageTextTWOExp_E0:
MessageTextTWOExp_E1:
MessageTextTWOExp_E2:
MessageTextTWOExp_E3:
MessageTextTWOExp_E4:
MessageTextTWOExp_E5:
MessageTextTWOExp_E6:
MessageTextTWOExp_E7:
MessageTextTWOExp_E8:
MessageTextTWOExp_E9:
MessageTextTWOExp_EA:
MessageTextTWOExp_EB:
MessageTextTWOExp_EC:
MessageTextTWOExp_ED:
MessageTextTWOExp_EE:
MessageTextTWOExp_EF:
MessageTextTWOExp_F0:
MessageTextTWOExp_F1:
MessageTextTWOExp_F2:
MessageTextTWOExp_F3:
MessageTextTWOExp_F4:
MessageTextTWOExp_F5:
MessageTextTWOExp_F6:
MessageTextTWOExp_F7:
MessageTextTWOExp_F8:
MessageTextTWOExp_F9:
MessageTextTWOExp_FA:
MessageTextTWOExp_FB:
MessageTextTWOExp_FC:
MessageTextTWOExp_FD:
MessageTextTWOExp_FE:
MessageTextTWOExp_FF:
MessageTextTWOExp_100:
MessageTextTWOExp_101:
MessageTextTWOExp_102:
MessageTextTWOExp_103:
MessageTextTWOExp_104:
MessageTextTWOExp_105:
MessageTextTWOExp_106:
MessageTextTWOExp_107:
MessageTextTWOExp_108:
MessageTextTWOExp_109:
MessageTextTWOExp_10A:
MessageTextTWOExp_10B:
MessageTextTWOExp_10C:
MessageTextTWOExp_10D:
MessageTextTWOExp_10E:
MessageTextTWOExp_10F:
MessageTextTWOExp_110:
MessageTextTWOExp_111:
MessageTextTWOExp_112:
MessageTextTWOExp_113:
MessageTextTWOExp_114:
MessageTextTWOExp_115:
MessageTextTWOExp_116:
MessageTextTWOExp_117:
MessageTextTWOExp_118:
MessageTextTWOExp_119:
MessageTextTWOExp_11A:
MessageTextTWOExp_11B:
MessageTextTWOExp_11C:
MessageTextTWOExp_11D:
MessageTextTWOExp_11E:
MessageTextTWOExp_11F:
db $FF

MessageTextTWOExp_120:
db "I AM SO FULL!!"
db $FF

MessageTextTWOExp_121:
db "WE LOOK FORWARD" : db $FE
db "TO SEEING YOU" : db $FE
db "AGAIN."
db $FF

MessageTextTWOExp_122:
db "WHAT THE HELL" : db $FE
db "ARE YOU?"
db $FF

MessageTextTWOExp_123:
db "OOH!" : db $FE
db "YOU ARE GOING" : db $FE
db "INSTEAD OF TAO?" : db $FE
db "I SEE BE CAREFUL" : db $FE

db "THAT KEY IS THE" : db $FE
db "KEY TO THE" : db $FE
db "PRISON MIRADI" : db $FE
db "WAS LOOKING FOR." : db $FE

db "THE DESARI CAVE" : db $FE
db "WHERE MIRADI IS" : db $FE
db "IS JUST OUTSIDE" : db $FE
db "PAST THE FOREST." : db $FE

db "THE CAVE IS VERY" : db $FE
db "DARK. YOU SHOULD" : db $FE
db "TAKE A TORCH" : db $FE
db "WITH YOU."


db $FF

MessageTextTWOExp_124:
db "YOU HAVE BEEN A" : db $FE
db "GREAT HELP!" 
db $FF

MessageTextTWOExp_125: ;TODO really not sure
db "HEHEHEHE." : db $FE
db "I AM A " : db $FE
db "SUBORDINATE" : db $FE
db "DRAGON UNDER" : db $FE

db "THE DEMON DRAGON" : db $FE
db "LORD, SHALL I" : db $FE
db "RECEIVE THE" : db $FE
db "SWORD OF THE" : db $FE

db "SACRED LAND," : db $FE
db "INFUSED WITH" : db $FE
db "THE POWER OF" : db $FE
db "THE GODDESS?" : db $FE

db "TOGETHER WITH" : db $FE
db "THE FLAME" : db $FE
db "GODDESS I" : db $FE
db "CAPTURED AND" : db $FE

db "THE DAUGHTER OF" : db $FE
db "THE" : db $FE
db "KING OF DARKNESS" : db $FE
db "I WILL CONFRONT" : db $FE

db "THE DEMON DRAGON" : db $FE
db "LORD WITH" : db $FE
db "RESOLVE!"
db $FF

MessageTextTWOExp_126:
db "ITS... I DONT" : db $FE
db "KNOW... ALL I" : db $FE
db "CAN SAY NOW IS" : db $FE
db "THAT WE HAVE TO" : db $FE

db "FACE IT WITH ALL" : db $FE
db "OUR MIGHT."
db $FF

MessageTextTWOExp_127:
db "WOAH! IM SORRY!!" : db $FE
db "IT IS WHAT THE" : db $FE
db "DEMON DRAGON" : db $FE
db "TOLD ME TO DO..." : db $FE

db "I WILL GIVE IT" : db $FE
db "TO YOU ALONG" : db $FE
db "WITH THE" : db $FE
db "PRINCESS..." : db $FE

db "PLEASE SPARE MY" : db $FE
db "LIFE."

db $FF

MessageTextTWOExp_128:
db "WELL THEN..." : db $D2, $3F
db $FF

MessageTextTWOExp_129:
db "I AM THE GHOULIE" : db $FE
db "WHO HAUNT THIS" : db $FE
db "TREE. " : db $FE
db $FE
db "YOU GUYS CAME TO" : db $FE
db "GET RID OF ME?" : db $FE
db "DO IT!" : db $FE
db "IF YOU CAN!"
db $FF

MessageTextTWOExp_12A:
db "UH HE! ...!" : db $FE
db "WHY... I DONT" : db $FE
db "UNDERS... IS..." : db $FE
db "OH ... NO..." : db $FE
db "UH HE UHG..G..."
db $FF

MessageTextTWOExp_12B:
db "I AM A TOOLMAKER" : db $FE
db "A MAN FROM THIS" : db $FE
db "VILLAGE CALLED" : db $FE
db "ME. DO YOU WANT" : db $FE
db "SOMETHING TOO?"
db $FF

MessageTextTWOExp_12C:
db "I AM AN OLD MAN!" : db $FE
db $FE 
db $FE 
db $FE 
db "WOW!,YOU MUST BE" : db $FE
db $E0, $00 : db " THE ONE" : db $FE
db "WHO HELPED US" : db $FE
db "ALL! THEN I WILL" : db $FE
db "SERVE YOU!" : db $FE
db "I DONT WANT YOUR" : db $FE
db "MONEY! JUST EAT!"

db $FF

MessageTextTWOExp_12D:
db "WOOF WOOF " : db $D2, $40
db $FF

MessageTextTWOExp_12E:
db "THAT IS AWESOME!" : db $FE
db "WELL DONE!!"
db $FF

MessageTextTWOExp_12F:
db "I KNEW YOU" : db $FE
db "WOULD DO IT !"
db $FF

MessageTextTWOExp_130:
db "YOU ARE STRONG!" : db $FE
db "DID THE THINGS" : db $FE
db "YOU BOUGHT AT" : db $FE
db "OUR PLACE STAND" : db $FE
db "UP WELL?"
db $FF

MessageTextTWOExp_131:
db "WE MADE A NEW" : db $FE
db "CRACKER THE" : db $FE
db "YUSHA SENBEI," : db $FE
db "(HERO CRACKER)" : db $FE

db "DONT THEY LOOK" : db $FE
db "DELICIOUS!" : db $FE
db "HOW ABOUT SOME" : db $FE
db "RICE CRACKERS?" 
db $FF

MessageTextTWOExp_132:
db "OH, THANK" : db $FE
db "GOODNESS! I AM" : db $FE
db "SURE THE KING" : db $FE
db "WILL BE FINE NOW" 
db $FF

MessageTextTWOExp_133:
db "THANKS TO YOU" : db $FE
db "LIGHT WILL" : db $FE
db "RETURN TO ALL" : db $FE
db "THE WORLD!"
db $FF

MessageTextTWOExp_134:
db "I NEVER THOUGHT" : db $FE
db "PEACE WOULD COME" : db $FE
db "IN MY LIFETIME!"
db $FF

MessageTextTWOExp_135:
db "AH!, HOW MANY" : db $FE
db "TIMES HAVE I" : db $FE
db "DREAMED OF SUCH" : db $FE
db "PEACEFUL DAY..!"
db $FF

MessageTextTWOExp_136:
db "ITS WONDERFUL" : db $FE
db "THAT MONSTERS" : db $FE
db "AND HUMANS LIVE" : db $FE
db "TOGETHER!!!"
db $FF

MessageTextTWOExp_137:
db "HIII! YOU ARE" : db $FE
db "AMAZING!! HOW" : db $FE
db "DID YOU GET THAT" : db $FE
db "KIND OF COURAGE?"
db $FF

MessageTextTWOExp_138:
db "YOU ARE AMAZING!" : db $FE
db "EVEN THOUGH YOU" : db $FE
db "ARE STILL SUCH" : db $FE
db "A CHILD!" 
db $FF

MessageTextTWOExp_139:
db "YOU ARE SO" : db $FE
db "SO STRONG!!" : db $FE
db "IM GONNA" : db $FE
db "LOSE IT!!"
db $FF

MessageTextTWOExp_13A:
db "YO! I WILL BUY" : db $FE
db "YOU LOT OF DRINK" : db $FE
db "DRINK UP, MAN." : db $FE
db "OH, YOU ARE GOING" : db $FE
db "TO THE PARTY NOW!"
db $FF

MessageTextTWOExp_13B:
db "OH, " : db $E0, $00 : db "!" : db $FE
db "YOU ARE SO COOL!" : db $FE
db "GIVE ME YOUR" : db $FE
db "AUTOGRAPH!"
db $FF

MessageTextTWOExp_13C:
db "TARIRARA" : db $D2, $3C  : db $FE
db "THIS IS THE" : db $FE
db "DANCE OF JOY" : db $D2, $3D : db $FE
db $FF

MessageTextTWOExp_13D:
db "HEY! YOU ARE" : db $FE
db "DOING GREAT!" : db $FE
db "CONGRATULATIONS!"
db $FF

MessageTextTWOExp_13E:
db "YOU ARE NOT ONLY" : db $FE
db "A MERMAID, YOU" : db $FE
db "ARE A SYMBOL" : db $FE
db "FOR ALL LIVING" : db $FE
db "CREATURES!"
db $FF

MessageTextTWOExp_13F:
db "OH, YOU HAVE" : db $FE
db "COME AT A GOOD" : db $FE
db "TIME! IF YOU ARE" : db $FE
db "FREE, PLEASE" : db $FE
db "COME AND JOIN" : db $FE
db "US FOR A" : db $FE
db "CELEBRATION IN" : db $FE
db "THIS VILLAGE" : db $FE
db "TODAY!"
db $FF

MessageTextTWOExp_140:
db $E0, $00 : db "..." : db $FE
db "CONGRATULATIONS!" : db $FE
db "KEEP UP THE" : db $FE
db "GOOD WORK."
db $FF

MessageTextTWOExp_141:
db " LIGHT,DARKNESS" : db $FE
db "WORKING TOGETHER" : db $FE
db "  TO CREATE A" : db $FE
db " PEACEFUL WORLD"
db $FF

MessageTextTWOExp_142:
db "  " : db $E0, $01 : db $FE
db " LIVING WELL AS" : db $FE
db "  THE CHIEF OF" : db $FE
db " THE FAIRY TRIBE"
db $FF

MessageTextTWOExp_143:
db "   " : db $E0, $02 : db $FE
db "   IS STUDYING" : db $FE
db " MAGIC TO FOLLOW" : db $FE
db "  LI FOOTSTEPS!"
db $FF

MessageTextTWOExp_144:
db $E0, $03 : db " IS HELPING" : db $FE
db "HER BROTHER" : db $FE
db " AND SHE HELP " : db $FE
db " WOUNDED PEOPLE"
db $FF

MessageTextTWOExp_145:
db $E0, $04 : db " SUCCEEDED" : db $FE
db "THE THRONE AND IS" : db $FE
db "DEVOTED TO CREATE" : db $FE
db " A WORLD FOR ALL"
db $FF

MessageTextTWOExp_146:
db "   " : db $E0, $06 : db $FE
db "IS TRAVELING THE" : db $FE
db "WORLD TOGETHER" : db $FE
db "WITH " : db $E0, $00
db $FF

MessageTextTWOExp_147:
db $E0, $00 : db " MARRIED" : db $FE
db $E0, $06 : db " AND" : db $FE
db "CONTINUE TO FIGHT" : db $FE
db "  FOR JUSTICE."
db $FF

MessageTextTWOExp_148:
db "KING OF DARKNESS" : db $FE
db " GAVE THRONE TO" : db $FE
db "KOTARO,AND LIVES" : db $FE
db "A SECLUDED LIFE."

db $FF

MessageTextTWOExp_149:
db "I WISH I COULD" : db $FE
db "MEET YOU AGAIN.." : db $FE
db "I WILL BE HAPPY" : db $FE
db "IF I DO..."
db $FF

MessageTextTWOExp_14A:
db "HURRY UP, TO THE" : db $FE
db "SNOW CASTLE!"
db $FF

MessageTextTWOExp_14B:
db "BEST REGARDS" : db $FE
db "FROM NOW!"
db $FF

MessageTextTWOExp_14C:
db "I AM HUNGRY..."
db $FF

MessageTextTWOExp_14D:
db "AH! I AM TIRED.."
db $FF

MessageTextTWOExp_14E:
db "HURRY UP" : db $FE
db "LETS GO!"
db $FF

MessageTextTWOExp_14F:
db "I WONDER IF I" : db $FE
db "WILL MAKE IT" : db $FE
db "BACK ALIVE..."
db $FF

MessageTextTWOExp_150:
db "I SEE! THE" : db $FE
db "CASTLE OF" : db $FE
db "DARKNESS! " : db $E0, $00 : db $FE
db "LETS GO!" 
db $FF

MessageTextTWOExp_151: ; PICK A VILLAGE?
db " TES VILLAGE" : db $FE
db " GILTS VILLAGE" : db $FE
db " MERMAID VILLAGE" : db $FE
db " LEAVE"
db $FC
db $FF

MessageTextTWOExp_152:
db "HOWEVER, NO" : db $FE
db "ANSWER CAME BACK"
db $FF

MessageTextTWOExp_153:
db "BYE BYE...!"
db $FF

MessageTextTWOExp_154:
db $E0, $05 : db " USE" : db $FE ; User USING ITEM
db $E0, $22 ; ITEM NAME
db $FF

MessageTextTWOExp_155:
db "BIG BROTHER..YOU" : db $FE
db "ARE GETTING" : db $FE
db "STRONGER! I WILL" : db $FE
db "DO MY BEST TOO!"
db $FF

MessageTextTWOExp_156:
MessageTextTWOExp_157:
db $E0, $05 : db " HP IS BACK!"
db $FF

MessageTextTWOExp_158:
db $E0, $05 : db " POISON HAS" : db $FE
db "DISAPPEARED!!"
db $FF

MessageTextTWOExp_159:
db "MOM, ARE YOU" : db $FE
db "WORRIED?" : db $FE
db "I AM A LITTLE..." : db $FE
db "HOMESICK." : db $D2, $3E
db $FF
MessageTextTWOExp_15A:
db "HEY! " : db $E0, $05 : db " WAS" : db $FE
db "POISONED"
db $FF

MessageTextTWOExp_15B:
db "OH NO!," : db $FE
db "WE ARE TOO LATE!"
db $FF

MessageTextTWOExp_15C:
db "SHAZAM!!!" : db $FE
db $E0, $05 : db " GOT HIS" : db $FE
db "HP, MP, ALL" : db $FE
db "RETURNED!"
db $FF
MessageTextTWOExp_15D:
db "SLOWLY SLOWLY!"
db $FF

MessageTextTWOExp_15E:
db "I DID IT !" : db $FE
db "I CAME BACK" : db $FE
db "TO LIFE!!!"
db $FF

MessageTextTWOExp_15F:
db "WHEN YOU GO TO" : db $FE
db "A CAVE, YOU" : db $FE
db "NEED TO BRING A" : db $FE
db "TORCH WITH YOU" : db $FE
db "OR IT WILL BE" : db $FE
db "VERY DARK." 
db $FF

MessageTextTWOExp_160:
db "JELLYFISH."
db $FF

MessageTextTWOExp_161:
db "OH, I DID NOT" : db $FE
db "MEAN I DID NOT" : db $FE
db "LIKE IT..."
db $FF

MessageTextTWOExp_162:
db "I LIT A FIRE."
db $FF

MessageTextTWOExp_163:
db "SORRY... I AM" : db $FE
db "AFRAID I CANNOT" : db $FE
db "DO BUSINESS" : db $FE
db "WITH YOU."
db $FF

MessageTextTWOExp_164:
db $E0, $05 : db " IS" : db $FE
db "BACK TO NORMAL!"
db $FF

MessageTextTWOExp_165:
db "..AMAZING SMELL!"
db $FF

MessageTextTWOExp_166:
db "BONY!"
db $FF

MessageTextTWOExp_167:
db "HOT, HOT, HOT..."
db $FF

MessageTextTWOExp_168:
db "TSUNTSUN... !"
db $FF

MessageTextTWOExp_169:
db "PURE!"
db $FF

MessageTextTWOExp_16A:
db "FU....."
db $FF

MessageTextTWOExp_16B:
db "OH... I DONT"
db "FEEL GOOD" : db $D2, $3F
db $FF

MessageTextTWOExp_16C:
db "I GOT A STOMACH" : db $FE
db "ACHE WHEN I TOOK" : db $FE
db "IT... " : db $D2, $3F
db $FF

MessageTextTWOExp_16D:
db "WHAT DO WE DO?"
db $FF

MessageTextTWOExp_16E:
db "I WROTE IT DOWN."
db $FF

MessageTextTWOExp_16F:
db "THE LID DOES" : db $FE
db "NOT OPEN."
db $FF

MessageTextTWOExp_170:
db "I CAN HEAR THE" : db $FE
db "WATER RUNNING..."
db $FF

MessageTextTWOExp_171:
db "OUCH " : db $D2, $3F
db $FF

MessageTextTWOExp_172:
db "A REMINDER" : db $FE
db  "OF THE PAST"
db $FF

MessageTextTWOExp_173:
db "ITS NO USE NOW!"
db $FF

MessageTextTWOExp_174:
db "RESTORE EVERYONE" : db $FE
db "MP TO 100% !"
db $FF

MessageTextTWOExp_175:
db "UGH, BEAUTIFUL" : db $D2, $3D
db $FF

MessageTextTWOExp_176:
db "EH" : db $D2, $3F, $FE  
db "CANNOT BE READ" : db $D2, $3E
db $FF

MessageTextTWOExp_177:
db "SHABOOM DA MA" : db $FE
db "TOODLE DOO " : db $D2, $3C
db $FF

MessageTextTWOExp_178:
db "PUT A FINGER ON" : db $FE
db "THE FLAT PART..." : db $FE
db $FE
db "PRICK PRICK."
db $FF

MessageTextTWOExp_179:
db "WAIT A MINUTE."
db $FF

MessageTextTWOExp_17A:
db "I FEEL BETTER!" : db $FE
db "BACK ON MY FEET!"
db $FF

MessageTextTWOExp_17B:
db "BOOM! SPARKS FLY"
db $FF

MessageTextTWOExp_17C:
db "THIS IS NO GOOD!" : db $FE
db "I CANT THROW IT" : db $FE
db "AWAY!"
db $FF

MessageTextTWOExp_17D:
db "SHY" : db $D2, $3D
db $FF

MessageTextTWOExp_17E:
db "I AM SLEEPY..."
db $FF

MessageTextTWOExp_17F:
db "WOW, SLURP" : db $D2, $3D
db $FF

MessageTextTWOExp_180:
db "OUCH!!, BURNING!"
db $FF

MessageTextTWOExp_181:
db "ITS STUCK!" : db $FE
db "ITS FROZEN!!!"
db $FF

MessageTextTWOExp_182:
db "SOMETHING VERY" : db $FE
db "MONSTRUOUS."
db $FF

MessageTextTWOExp_183:
db "I DONT KNOW..."
db $FF

MessageTextTWOExp_184:
db "UGH! IT SMELL" : db $FE
db "LIKE PISS!"
db $FF

MessageTextTWOExp_185:
db "DISGUSTING..."
db $FF

MessageTextTWOExp_186:
db "OUCH!"
db $FF

MessageTextTWOExp_187:
db "JEJU WAS ALIVE!"
db $FF

MessageTextTWOExp_188:
db "TA TA TA TA."
db $FF

MessageTextTWOExp_189:
db "HUZZAH!!" : db $FE
db $FE 
db "OH NO!" : db $FE
db "I MESSED UP!"

db $FF

MessageTextTWOExp_18A: ;todo
db "OHOHOHO" : db $FE
db "LADIES" : db $FE
db "AND" : db $FE
db "GENTLEMEN!"
db $FF

MessageTextTWOExp_18B:
db "AH! A LUMP OF" : db $FE
db "LIGHT COMES" : db $FE
db "OUT OF THE TIP!"
db $FF

MessageTextTWOExp_18C:
db "AH! A LUMP OF" : db $FE
db "DARKNESS COMES" : db $FE
db "OUT OF THE TIP!"
db $FF

MessageTextTWOExp_18D:
db "MEOW" : db $D2, $40
db $FF

MessageTextTWOExp_18E:
db "THERE!"
db $FF

MessageTextTWOExp_18F:
db "GOOOOO!!!"
db $FF

MessageTextTWOExp_190:
db "ITS SPARKLING..." : db $FE
db "ITS BEAUTIFUL."
db $FF

MessageTextTWOExp_191:
db "IT HAS A DRAGON" : db $FE
db "HORN ON IT."
db $FF

MessageTextTWOExp_192:
db $E0, $05 : db " HAS LOST MP"
db $FF

MessageTextTWOExp_193:
db "...PRICKLY" : db $D2, $3D : db "HUHU"
db $FF

MessageTextTWOExp_194:
db "I WONDER" : db $FE
db "IF ITS REAL...?"
db $FF

MessageTextTWOExp_195:
db "I CAN SMELL THE" : db $FE
db "GODDESS"
db $FF

MessageTextTWOExp_196:
db "WHAT KIND OF" : db $FE
db "LEATHER IS THIS?"
db $FF

MessageTextTWOExp_197:
db "ITS... BIG..." : db $D2, $3F
db $FF

MessageTextTWOExp_198:
db "ITS FULL OF" : db $FE
db "PRICKLES" : db $D2, $3F
db $FF

MessageTextTWOExp_199:
db "WOAHAAA" : db $D2, $3D : db $FE
db "ITS A DRAGON!"
db $FF

MessageTextTWOExp_19A:
db "ITS MADE FROM" : db $FE
db "NOVA LEAVES."
db $FF

MessageTextTWOExp_19B:
db "CAUTION NOTICE" : db $FE
db $FE
db $FE
db $FE

db $FE
db "PLEASE MAKE AN" : db $FE
db "AIR HOLE."
db $FF

MessageTextTWOExp_19C:
db "WATCH OUT," : db $FE
db "FEE.LIN.NG" : db $D2, $3D
db $FF

MessageTextTWOExp_19D:
db "YAY" : db $D2, $3C : db "SURI" : db $D2, $3D
db $FF

MessageTextTWOExp_19E:
db "WOW!, SOMETHING" : db $D2, $3D
db $FF

MessageTextTWOExp_19F:
db "ITS A DRINK CUP" : db $D2, $3F
db $FF

MessageTextTWOExp_1A0:
db "THE LIGHT" : db $FE
db "OVERFLOWS...!"
db $FF

MessageTextTWOExp_1A1:
db "THE DARKNESS" : db $FE
db "OVERFLOWS...!"
db $FF

MessageTextTWOExp_1A2:
db "WHAT, ITS NOT" : db $FE
db "A DIAMOND!?"
db $FF

MessageTextTWOExp_1A3:
db "NOT COOL" : db $D2, $3F : db "SHSHH."
db $FF

MessageTextTWOExp_1A4:
db "SAFETY FIRST...!"
db $FF

MessageTextTWOExp_1A5:
db "FEEL THE POWER.."
db $FF

MessageTextTWOExp_1A6:
db "UGGH" : db $D2, $3E : db "BUBBU.." : db $D2, $3F
db $FF

MessageTextTWOExp_1A7:
db "BLARGH"  : db $D2, $3E
db $FF

MessageTextTWOExp_1A8:
db "KIND OF..HAPPY." : db $D2, $3D 
db $FF

MessageTextTWOExp_1A9:
db "HMM!, COOL!"
db $FF

MessageTextTWOExp_1AA:
db "I CANNOT SEE" : db $FE
db "WHERE IT IS..."
db $FF

MessageTextTWOExp_1AB: ; ヤン  YAN, KEY , not sure if that's a pun
db "HEHE! " : db $E0, $2D : db $FE
db "ITS THE KEY!"
db $FF

MessageTextTWOExp_1AC:
db "GOOD FOR SMALL" : db $FE
db "CHILDREN."
db $FF

MessageTextTWOExp_1AD:
db "ITS SUPER NYAN!"
db $FF

MessageTextTWOExp_1AE:
db "IT GLOWS RED" : db $FE
db "LIKE FIRE..."
db $FF

MessageTextTWOExp_1AF:
db "IT SHINES BLUE" : db $FE
db "LIKE WATER..."
db $FF

MessageTextTWOExp_1B0:
db "IT GLOWS GREEN" : db $FE
db "AND BRIGHT..."
db $FF

MessageTextTWOExp_1B1:
db "THERE IS A DEMON" : db $FE
db "INSIDE!," : db $FE
db "OH NO HE IS" : db $FE
db "SCOWLING AT ME!"

db $FF

MessageTextTWOExp_1B2:
db "UGH" : db $D2, $3E : db $FE
db "WITH WATER BUGS!"
db $FF

MessageTextTWOExp_1B3: : db $FE
db "WHAT IS THAT" : db $FE
db "KEY?"
db $FF

MessageTextTWOExp_1B4:
db "MHHMM, CRISPY..." : db $FE
db "MMM... MMM...!!!"
db $FF

MessageTextTWOExp_1B5:
db "PLEASE DO SO" : db $FE
db "WHEN YOU HAVE" : db $FE
db "MONEY."
db $FF

MessageTextTWOExp_1B6:
db "THERE ARE MANY" : db $FE
db "PLACES TO" : db $FE
db "REGISTER!"
db $FF

MessageTextTWOExp_1B7:
db " GOT IT!" : db $FE
db " UH NO!"
db $FC ; FUNCTION MENU
db $FF

MessageTextTWOExp_1B8:
db " WRITE" : db $FE
db " READ" : db $FE
db " NOTHING"
db $FC ; FUNCTION MENU
db $FF

MessageTextTWOExp_1B9:
db " HERE TO BUY!" : db $FE
db " HERE TO SELL!" : db $FE
db " NOTHING"
db $FC ; FUNCTION MENU
db $FF

MessageTextTWOExp_1BA:
db "WHAT? " : db $FE
db "YOU HEARD" : db $FE
db "ABOUT ME?" : db $FE
db $FE

db "I AM FINE..." : db $FE
db "AS LONG AS LUCIA" : db $FE
db "DOES HER DUTY" : db $FE
db "AS CHIEF..." : db $FE

db "HER MOTHER WAS" : db $FE
db "A BEAUTIFUL" : db $FE
db "MERMAID..." : db $FE
db "I HEARD LUCIA" : db $FE

db "WAS BLIND." : db $FE
db "SHE MUST BE" : db $FE
db "BEAUTIFUL." : db $FE
db "I WOULD LIKE TO" : db $FE

db "SEE HER...." : db $FE
db "SSSSHHH...." : db $FE
db "I GET DROOPY" : db $FE
db "WITH AGE. EHEH.."

db $FF

MessageTextTWOExp_1BB:
db " I WILL DO IT" : db $FE
db " I WILL PASS"
db $FC
db $FF

MessageTextTWOExp_1BC:
db " HMM YES!" : db $FE 
db " NO THANKS!" : db $FE
db $FC
db $FF

MessageTextTWOExp_1BD:
db " STORE" : db $FE
db " TAKE" : db $FE
db " NOTHING"
db $FC
db $FF

MessageTextTWOExp_1BE:
db "TO " : db $E0, $02 : db $FE
db $FE
db $FE
db $FE
db "I APOLOGIZE FOR" : db $FE
db "NOT WAITING FOR" : db $FE
db "YOU, BUT I HAVE" : db $FE
db "BEEN SUMMONED BY" : db $FE

db "THE KING OF" : db $FE
db "DARKNESS, TO THE" : db $FE
db "CASTLE OF" : db $FE
db "DARKNESS." : db $FE

db "I HOPE YOU WILL" : db $FE
db "COME LATER." : db $FE
db "I AM WAITING." : db $FE
db $FE

db "              LI"


db $FF

MessageTextTWOExp_1BF:
db "I WANNA GO HOME!"
db $FF

MessageTextTWOExp_1C0:
db "I DONT HAVE IT" : db $D2, $3E
db $FF

MessageTextTWOExp_1C1:
db "HUH?, WHERE IS" : db $FE
db "MASTER LI...?"
db $FF

MessageTextTWOExp_1C2:
db "I THINK" : db $FE
db "I AM FORGETTING" : db $FE
db "SOMETHING." : db $FE
db "I MUST GO BACK!"
db $FF

MessageTextTWOExp_1C3:
db "I HAVE NO MAGIC."
db $FF

MessageTextTWOExp_1C4:
db "NOTHING THERE."
db $FF

MessageTextTWOExp_1C5:
db "WHERE ARE YOU" : db $FE
db "GOING TO?" : db $FE
db $FE
db $FE
db " CASTLE OF LIGHT" : db $FE
db " FARAS VILLAGE" : db $FE
db " AEZ VILLAGE" : db $FE
db " NEXT"
db $FC
db $FF

MessageTextTWOExp_1C6:
db "SHHHH...."
db $FF

MessageTextTWOExp_1C7:
db "HMM I CANNOT" : db $FE
db "USE THAT " : db $D2, $3F
db $FF

MessageTextTWOExp_1C8:
db "I THINK I SHOULD" : db $FE
db "KEEP THIS, BUT" : db $FE
db "I HAVE NO MORE" : db $FE
db "SPACE IN MY BAG!" : db $FE

db "I WILL HAVE TO" : db $FE
db "THROW SOMETHING" : db $FE
db "AWAY!"
db $FF

MessageTextTWOExp_1C9:
db "OOOH, I CANT...!"
db $FF

MessageTextTWOExp_1CA:
db "I AM THE GODDESS" : db $FE
db "OF THE WARP." : db $FE
db "THIS PLACE WAS" : db $FE
db "CREATED FOR" : db $FE

db "THOSE WHO SEEK" : db $FE
db "TO DEFEAT THE" : db $FE
db "DEMON DRAGON," : db $FE
db "YOU CAN WARP" : db $FE

db "TO A VILLAGE" : db $FE
db "FOR THE COST OF" : db $FE
db "100 RIL PER WARP" : db $FE
db "USE THE WARP?"
db $FF

MessageTextTWOExp_1CB:
db "I CANT TAKE IT" : db $FE
db "ANYMORE!"
db $FF

MessageTextTWOExp_1CC:
db "MY BAG IS FULL," : db $FE
db "I CANNOT TAKE" : db $FE
db "IT OFF!"
db $FF

MessageTextTWOExp_1CD:
db "TREASURE OPENED."
db $FF

MessageTextTWOExp_1CE:
db "IT IS EMPTY" : db $D2, $3E
db $FF

MessageTextTWOExp_1CF:
db "UGH" : db $D2, $3E : db ",I HAVE BEEN" : db $FE
db "REJECTED"
db $FF

MessageTextTWOExp_1D0:
db $E0, $05 : db " RETURNED" : db $FE
db "TO THE GROUP!"
db $FF

MessageTextTWOExp_1D1:
db !E005, ",JOINED YOU"
db $FF

MessageTextTWOExp_1D2:
db "THROWING THINGS" : db $FE
db "AWAY IS NOT COOL" : db $FE
db $FE
db $FE
db "I BURRIED A" : db $FE
db "DEEP HOLE!"
db $FF

MessageTextTWOExp_1D3:
db "IS THAT OKAY?"
db $FF

MessageTextTWOExp_1D4:
db "THAT IS RIGHT!" : db $FE
db "WHO WILL PROTECT" : db $FE
db "MEI IF YOU DIE?" : db $FE
db "FOR YOUR FATHER" : db $FE

db "SAKE, YOU NEED" : db $FE
db "TO BE BRAVE..."
db $FF

MessageTextTWOExp_1D5:
db "WHAT THE HELL" : db $FE
db "ARE YOU GUYS!"
db $FF

MessageTextTWOExp_1D6:
db "THAT WAS NOT LIZ" : db $FE
db $FE
db "WHERE IS THE" : db $FE
db "REAL LIZ!!!"
db $FF

MessageTextTWOExp_1D7:
db "HAVE A NICE DAY!"
db $FF

MessageTextTWOExp_1D8:
db "GOBBLE!"
db $FF

MessageTextTWOExp_1D9:
db "SNAP, SNAP" : db $FE
db $FE
db $FE
db $FE
db "MUMBLE, MUBMLE" : db $FE
db $FE
db $FE
db $FE
db "MUMBLE, GLUP"
db $FF

MessageTextTWOExp_1DA:
db "GOTCHA" : db $D2, $3F
db $FF

MessageTextTWOExp_1DB:
db "WAH AN ENTRANCE!"
db $FF

MessageTextTWOExp_1DC:
db "WOW!" : db "MONEY!" : db "LUCKY" : db $D2, $43, $FE
db $FE
db $FE
db $FE
db "I GOT " : db $E0, $21 : db "RIL!"
db $FF

MessageTextTWOExp_1DD: ; Functions ?
db $E0, $22
db " FOUND!" : db $FE

db $FF

MessageTextTWOExp_1DE:
db $E0, $22
db " I GOT " : db $D2, $40
db $FF

MessageTextTWOExp_1DF:
db "THE SWORD OF THE" : db $FE
db "EARTH IS" : db $FE
db "RESTORED!"
db $FF

MessageTextTWOExp_1E0:
db "I GOT " : db $E0, $22 : db " !"
db $FF

MessageTextTWOExp_1E1:
db "COURAGE GATHERED" : db $FE
db "FROM ALL OVER" : db $FE
db "THE WORLD, AND" : db $FE
db "WITH THAT HEART," : db $FE
db "EVERYONE CAME" : db $FE
db "BACK TO LIFE!"
db $FF

MessageTextTWOExp_1E2:
db "IT IS LOCKED."
db $FF

MessageTextTWOExp_1E3:
db "I WONT GIVE YOU" : db $FE
db "ANY MORE.  GO" : db $FE
db "SELL SOMETHING" : db $FE
db "AND MAKE MONEY."
db $FF

MessageTextTWOExp_1E4:
db "AH! A GIFT FOR" : db $FE
db "YOU!" : db $FE
db "WOW! " : db $D2, $41 : db $FE
db "MUMBLE MUMBLE."
db $FF

MessageTextTWOExp_1E5: ; BATTLE MESSAGE LVL UP I THINK
db "PAMPAKAPAN" : db $FE
db $E0, $05 : db " LEVEL UP!" : db $FE
db "CHECK YOUR STATS"
db $FF

MessageTextTWOExp_1E6:
db "WAS IT DELICIOUS" : db $FE
db "NEKOMANMA CALLS" : db $FE
db "LUCK, ITS FOOD." : db $FE
db $FE
db "ITS A SECRET" : db $FE
db "TO EVERYONE" : db $D2, $3D

db $FF

MessageTextTWOExp_1E7:
db "WELCOME!! OH MY" : db $FE
db "ITS RARE TO SEE" : db $FE
db "A LIGHT BEING" : db $FE
db $FE
db "SINCE YOU CAME" : db $FE
db "ALL THE WAY HERE" : db $FE
db "I WILL TELL YOU" : db $FE
db "SOMETHING GOOD." : db $FE

db "THIS IS WHERE" : db $FE
db "WE SELL THE" : db $FE
db "NEKOMANMA MEAL" : db $FE
db "DO YOU WANT IT?"
db $FF

MessageTextTWOExp_1E8:
db "WOAH! DELICIOUS!"
db $FF

MessageTextTWOExp_1E9:
db "AH! THE KEY IS A" : db $FE
db "A CELL DOOR KEY!" : db $FE
db $FE 
db "LETS GO" : db $FE
db "SAVE " : db $E0, $2D : db "!"

db $FF

MessageTextTWOExp_1EA:
db "...STILL LACKING" : db $FE
db "IN STRENGTH..." : db $FE
db "MAYBE... OH ITS" : db $FE
db "GETTING DARKER"
db $FF

MessageTextTWOExp_1EB:
db "I CANNOT LEAVE" : db $FE
db "SOMEONE THAT HAS" : db $FE
db "A STAR OF" : db $FE
db "DESTINY!"
db $FF

MessageTextTWOExp_1EC:
db $E0, $2D : db "!"
db $FF

MessageTextTWOExp_1ED:
db "BE CAREFUL ON" : db $FE
db "YOUR WAY!"
db $FF

MessageTextTWOExp_1EE:
db "I APOLOGIZE FOR" : db $FE
db "THE TROUBLE..." : db $FE
db $FE
db $FE
db "THE KNOW-IT-ALL" : db $FE
db "OWL KNOW THE" : db $FE
db "LOCATION OF" : db $FE
db "MIRADI...!"

db $FF

MessageTextTWOExp_1EF:
db "THE SWORD OF THE" : db $FE
db "EARTH NOW HAS" : db $FE
db "THE POWER OF" : db $FE
db $E0, $25 : db "!"
db $FF

MessageTextTWOExp_1F0:
db "SOMETHING IS" : db $FE
db "STUCK IN THERE"
db $FF

MessageTextTWOExp_1F1:
db "...? THERE IS" : db $FE
db "A LETTER...!"
db $FF

MessageTextTWOExp_1F2:
db "WOW, WATER!"
db $FF

MessageTextTWOExp_1F3:
db "KONA, I WILL" : db $FE
db "SAVE HIM..." : db $FE
db "STAY STRONG!!"
db $FF

MessageTextTWOExp_1F4:
db "BE CAREFUL..."
db $FF

MessageTextTWOExp_1F5:
db "SOMEWHERE,A DOOR" : db $FE
db "HAS OPENED."
db $FF

MessageTextTWOExp_1F6:
db "TO " : db $E0, $00 : db $FE
db $FE
db "AS SOMEONE OF" : db $FE
db "THE SAME BLOOD," : db $FE

db "I PASS THIS ON" : db $FE
db "TO YOU.  ONCE" : db $FE
db "UPON A TIME," : db $FE
db "I WAS A HERO" : db $FE

db "AND WENT ON A" : db $FE
db "JOURNEY THINKING" : db $FE
db "THAT I WAS THE" : db $FE
db "CHOSEN ONE..." : db $FE

db "HOWEVER I WAS A" : db $FE
db "PERSON WITH A" : db $FE
db "GREEDY HEART AND" : db $FE
db "HAD LOST MANY" : db $FE

db "FRIENDS WITHOUT" : db $FE
db "REALIZING IT." : db $FE
db "STILL I MANAGED" : db $FE
db "TO GET THESE" : db $FE

db "SHOES AND WENT" : db $FE
db "TO THE VALLEY" : db $FE
db "OF THE SACRED" : db $FE
db "SWORD." : db $FE

db "THE SWORD OF" : db $FE
db "THE EARTH..." : db $FE
db $FE
db $FE

db "I COULD NOT" : db $FE
db "GET IT OUT..." : db $FE
db "IT IS SAD TO SAY" : db $FE
db "BUT MY HERO" : db $FE

db "HEART WAS NOT" : db $FE
db "REAL..." : db $FE
db $FE
db $FE

db "THEN I CONTINUE" : db $FE
db "MY JOURNEY TO" : db $FE
db "BECOME A REAL" : db $FE
db "HERO." : db $FE

db "WHEN I MET YOU,I" : db $FE
db "WAS SO ENVIOUS" : db $FE
db "AND FRUSTRATED" : db $FE
db "AND I TEASED YOU" : db $FE

db "BUT PLEASE" : db $FE
db "REMEMBER THAT" : db $FE
db "THERE ARE MANY" : db $FE
db "PEOPLES LIKE ME" : db $FE

db "IN THE WORLD." : db $FE
db "I WILL SUPPORT" : db $FE
db "YOU FROM THE" : db $FE
db "SHADOWS." : db $FE

db "WELL, TAKE CARE." : db $FE
db $FE
db $FE
db "          SERYU."

db $FF

MessageTextTWOExp_1F7:
db "OH CHILD OF MINE" : db $FE
db "AND CHILD OF MY" : db $FE
db "CHILD, BORN WITH" : db $FE
db "THE HERO BLOOD," : db $FE

db "WHEN CONFUSION" : db $FE
db "BEFALLS THE" : db $FE
db "WORLD, OH HERO" : db $FE
db "EMERGE FROM" : db $FE

db "THE EARTH AND" : db $FE
db "EMBRACE YOUR" : db $FE
db "DESTINY" : db $FE
db "WITH COURAGE" : db $FE

db "BY YOUR SIDE," : db $FE
db "WIELD THE SWORD" : db $FE
db "HARNESSING THE" : db $FE
db "COUNTLESS POWERS" : db $FE

db "THAT SUPPORT THE" : db $FE
db "BLADE. YOU MUST" : db $FE
db "FIGHT AGAINST THE" : db $FE
db "FORCES OF EVIL," : db $FE

db "BRAVERY MUST NOT" : db $FE
db "FALTER..."

db $FF

MessageTextTWOExp_1F8:
db "THE LIGHT HAS" : db $FE
db "BROKEN THROUGHT" : db $FE
db "THE ILLUSIONARY" : db $FE
db "BARRIER! NOW" : db $FE

db "WE CAN ENTER THE" : db $FE
db "PLACE WE WERE" : db $FE
db "REPELLED!"
db $FF

MessageTextTWOExp_1F9:
db "WHO DARES TO" : db $FE
db "ENTER THE VALLEY" : db $FE
db "OF THE SACRED" : db $FE
db "SWORD...?" : db $FE

db "THIS SWORD IS" : db $FE
db "SEALED AND" : db $FE
db "PROTECTED." : db $FE
db $FE
db "NO ONE SHALL" : db $FE
db "LAY A HAND" : db $FE
db "ON IT !"

db $FF

MessageTextTWOExp_1FA: 
db "I AM NAOKI" : db $FE
db "I DREW THE MAP" : db $FE
db "DO YOU THINK" : db $FE
db "IT IS OKAY?"
db $FF

MessageTextTWOExp_1FB:
db "UNEXPECTEDLY...."
db $FE
db $FE
db $FE
db "A WOMAN" : db $FE
db $FE
db "IT WAS V MAX" : db $FE
db "THAT TOOK THE" : db $FE
db "EDGE OFF..."
db $FF

MessageTextTWOExp_1FC:
db " YES PLEASE!" : db $FE
db " NO THANKS!"
db $FC ;function
db $FF

MessageTextTWOExp_1FD:
db "   A LONG LONG  " : db $FE
db "    TIME AGO"
db $FF

MessageTextTWOExp_1FE:
db " WHEN EVERYTHING" : db $FE
db "  WAS ONE MASS" : db $FE
db "  A HERO ROSE" : db $FE
db " FROM THE EARTH"
db $FF

MessageTextTWOExp_1FF:
db "   CARRYING A" : db $FE
db " A SINGLE SWORD.." : db $FE
db " WITH HIS SWORD" : db $FE
db "   HE CUT THE"
db $FF

MessageTextTWOExp_200:
db "  MASS AND MADE" : db $FE
db "    THE EARTH" : db $FE
db "  MOUNTAINS AND" : db $FE
db "    VALLEYS"
db $FF

MessageTextTWOExp_201:
db " LIGHT, DARKNESS" : db $FE
db " WAS BORN THERE" : db $FE
db "KING WHO GOVERNED" : db $FE
db "THEM APPEARED..."
db $FF

MessageTextTWOExp_202:
db "...WHO ARE YOU?!"
db $FF

MessageTextTWOExp_203:
db "...I AM THE" : db $FE
db "DEMON DRAGON..."
db $FF

MessageTextTWOExp_204:
db "KING OF DARKNESS"
db $FF

MessageTextTWOExp_205:
db " WOULD YOU NOT" : db $FE
db "LIKE TO HAVE THE" : db $FE
db "    WORLD..." : db $FE
db "IN YOUR HANDS..?"
db $FF

MessageTextTWOExp_206:
db "   THIS IS THE" : db $FE
db "BEGINNING OF THE" : db $FE
db "   TERROR OF" : db $FE
db "  DARKNESS..."
db $FF

MessageTextTWOExp_207:
db "IT IS A GUESSING" : db $FE
db "GAME."
db $FF

MessageTextTWOExp_208:
db "DECIDE ON YOUR" : db $FE
db "BET."
db $FF

MessageTextTWOExp_209:
db "I WILL EXPLAIN." : db $FE
db $FE
db $FE
db $FE
db "CHOOSE A NUMBER" : db $FE
db "FOR EACH OF THE" : db $FE
db "5 HIDDEN CARDS." : db $FE
db $FE
db "IF THE NUMBER" : db $FE
db "ARE THE SAME!" : db $FE
db "YOU GET A" : db $FE
db "MULTIPLIER FOR" : db $FE

db "EACH NUMBER" : db $FE
db "MATCHING."

db $FF

MessageTextTWOExp_20A:
db "PICK A NUMBER."
db $FF

MessageTextTWOExp_20B:
db "TURNING CARDS."
db $FF

MessageTextTWOExp_20C:
db "I AM SORRY."
db $FF

MessageTextTWOExp_20D:
db "AMAZING!" : db $FE
db $FE
db $E0, $24 : db "RIL WON!"
db $FF

MessageTextTWOExp_20E:
db " STAFF"
db $FF

MessageTextTWOExp_20F:
db " PROGRAMER"
db $FF

MessageTextTWOExp_210:
db "NAOHISA KUROSAWA" : db $FE
db "NOBORU FUJISAWA"
db $FF

MessageTextTWOExp_211:
db "DESIGN"
db $FF

MessageTextTWOExp_212:
db "NAOKI IWAI" : db $FE
db "A.YU KI" : db $FE
db "MIS"
db $FF

MessageTextTWOExp_213:
db "SCENARIO" : db $FE
db "CHARACTER DESIGN"
db $FF

MessageTextTWOExp_214:
db " REIKO HAKETA"
db $FF

MessageTextTWOExp_215:
db " DIRECTION"
db $FF

MessageTextTWOExp_216:
db " V MAX"
db $FF

MessageTextTWOExp_217:
db " SOUND"
db $FF

MessageTextTWOExp_218:
db " MITIHARU HASUYA" : db $FE
db " OSAMU KASAI" : db $FE
db " TURUCHAN"
db $FF

MessageTextTWOExp_219:
db "SPECIAL THANKS TO"
db $FF

MessageTextTWOExp_21A:
db "HIROAKI HASEGAWA" : db $FE
db "HIRONOBU TERAKADO" : db $FE
db "VEGETA" : db $FE
db "KAZUYUKI KAIHO" 
db $FF

MessageTextTWOExp_21B:
db "SHEEN" : db $FE
db "HIDEBO" : db $FE
db "F.YANO" : db $FE
db "YUKA KIKUCHI"
db $FF

MessageTextTWOExp_21C:
db "DIRECTOR" : db $FE
db $FF

MessageTextTWOExp_21D:
db "S.MATSU" : db $FE
db $FE
db "FAN TRANSLATION" : db $FE
db "BY ZARBY89"
db $FF

MessageTextTWOExp_21E:
db "STILL WATCHING?" : db $FE
db $FF

MessageTextTWOExp_21F:
db "    THERE IS" : db $FE
db "  NOTHING MORE!"
db $FF

MessageTextTWOExp_220:
db "    PRESENTED" : db $FE
db "       BY" : db $FE
db "   TONKINHOUSE"
db $FF

MessageTextTWOExp_221:

db $E0, $00 : db ". THERE ARE" : db $FE
db "3 SACRED RELIC" : db $FE
db $FE
db $FE

db "THE ROD," : db $FE
db "THE TREASURE" : db $FE
db "AND THE MIRROR." : db $FE
db $FE

db "THE DARKNESS" : db $FE
db "HAVE THE SAME" : db $FE
db "3 OPPOSITES" : db $FE
db $FE

db "THIS IS A SYMBOL" : db $FE
db "OF THEIR POWER" : db $FE
db "TO RULE THE" : db $FE
db "WORLD..." : db $FE

db "MIRROR OF LIGHT" : db $FE
db "IS ALSO KNOWN AS" : db $FE
db "MIRROR OF TRUTH" : db $FE
db "IT CAN SHOW" : db $FE

db "THINGS THAT YOU" : db $FE
db "CANT SEE WITH" : db $FE
db "YOUR OWN EYES." : db $FE
db $FE

db "IN THE LAST" : db $FE
db "BATTLE WE LOST" : db $FE
db "2 OF THE 3" : db $FE
db "SACRED RELIC..." : db $FE

db "ONLY THE MIRROR" : db $FE
db "OF LIGHT REMAINS" : db $FE
db "IF YOU CANNOT" : db $FE
db "BRING THE RELICS" : db $FE

db "BACK WE WILL" : db $FE
db "NOT BE ABLE TO" : db $FE
db "SAVE " : db $E0, $06 : db "." : db $FE
db $FE
db $FE
db $FE
db "OH. HE IS BACK!"
db $FF



MessageTextTWOExp_222:
db "OH, I FORGOT." : db $FE
db $E0, $00 : db " THE" : db $FE
db "GODESS BOOK" : db $FE
db "WITH THAT YOU" : db $FE
db "CAN SAVE YOUR" : db $FE
db "PROGRESS." 
db $FF

MessageTextTWOExp_223:
db "THAT ONE?, IT" : db $FE
db "SEEMS LIKE YOU" : db $FE
db "ALREADY HAVE" : db $FE
db "THAT MAGIC?"
db $FF

MessageTextTWOExp_224:
db "KING..." : db $FE
db $FE
db $FE
db $FE
db "IM REALLY SCARED" : db $FE
db "I DONT WANT TO" : db $FE
db "TO GO, BUT" : db $FE
db $E0, $06 : db " SAID" : db $FE

db "SHE IS WAITING" : db $FE
db "FOR ME, SO..." : db $FE
db "I WOULD LIKE TO" : db $FE
db "TO LEAVE!"
db $FF

MessageTextTWOExp_225:
db $E0, $00 : db " DID YOU HAD" : db $FE
db "TIME TO THINK" : db $FE
db "ABOUT IT IN" : db $FE
db "JAIL YESTERDAY?"
db $FF

MessageTextTWOExp_226:
db "I WILL BE" : db $FE
db "WAITING FOR YOU" : db $FE
db "INSIDE MY HOUSE."
db $FF

MessageTextTWOExp_227:
db "AH..ITS NOT HOT."
db $FF

MessageTextTWOExp_228:
db "THE POWER IS" : db $FE
db "GONE..."
db $FF

MessageTextTWOExp_229:
db "I AM NOT LETTING" : db $FE
db "IN A SOBER GUY!"
db $FF

MessageTextTWOExp_22A:
db "HUAHAHAHAHA...!!" : db $FE
db "DIE, DIE!"
db $FF

MessageTextTWOExp_22B:
db "YOU LITTLE BRAT!" : db $FE
db "I WILL SHOW YOU" : db $FE
db "WHAT I CAN DO!!!"

db $FF

MessageTextTWOExp_22C:
db "ALRIGHT!" : db $FE
db "YOU CAN GO NOW!"
db $FF

MessageTextTWOExp_22D:
db "WHAT DO YOU GUYS" : db $FE
db "THINK WE SHOULD" : db $FE
db "DO?"
db $FF

MessageTextTWOExp_22E:
db $D2, $3C : db "I AM " : db $E0, $00, $D2, $3C : db $FE
db "A BOY WHO AIM" : db $D2, $3C : db $FE
db $D2, $3C : db "TO BE A HERO" : db $D2, $3C

db $FF

MessageTextTWOExp_22F:
db "HUH!, HEY" : db $FE
db "DID YOU..." : db $FE
db "DID YOU NOT HEAR" : db $FE
db $E0, $06 : db " VOICE?" : db $FE
db $FE
db $FE
db "I AM SURE SHE IS" : db $FE
db "CALLING FOR ME!!"
db $FF

MessageTextTWOExp_230:
db "GO BACK TO THE" : db $FE
db "CASTLE OF LIGHT."
db $FF

MessageTextTWOExp_231:
db "LUCIA, THE CHIEF" : db $FE
db "OF THE MERMAID" : db $FE
db "TRIBE... SHE" : db $FE
db "HATES PEOPLE OF" : db $FE

db "LIGHT..." : db $FE
db $FE
db $FE
db "I WONDER WHY..." : db $D0, $3F
db $FF

MessageTextTWOExp_232:
db "I AM GLAD THAT" : db $FE
db "CHIEF LUCIA" : db $FE
db "UNDERSTANDS THE" : db $FE
db "PEOPLE OF LIGHT!"
db $FF

MessageTextTWOExp_233:
db "I LIKE PEOPLE" : db $FE
db "OF LIGHT." : db $FE
db "ESPECIALLY " : db $E0, $00 : db $FE
db $FE

db "EH?" : db $FE
db $FE
db $FE
db $FE
db "THERE IS SOMEONE" : db $FE
db "NAMED " : db $E0, $06 : db $FE
db "WOAH."


db $FF

MessageTextTWOExp_234:
db "EVEN IF YOU USED" : db $FE
db "UP A FRUIT OF" : db $FE
db "LIFE,YOU CAN GET" : db $FE
db "MORE BY GOING TO" : db $FE

db "MERMAID VILLAGE"
db $FF

MessageTextTWOExp_235:
db "OH,I WANT TO SEE" : db $FE
db "MY CHILD SOON!"
db $FF

MessageTextTWOExp_236:
db $E0, $00 : db " ITS FRESHLY" : db $FE
db "IT MIGHT STILL" : db $FE
db "BE HOT. DONT" : db $FE
db "GET TOO CLOSE."
db $FF

MessageTextTWOExp_237:
db "WE USED TO LIVE" : db $FE
db "QUIETLY TOGETHER" : db $FE
db "FOR A LONG TIME" : db $FE
db "I AM SO HAPPY" : db $FE
db "THAT WE CAN HAVE" : db $FE
db "A CHILD!"
db $FF

MessageTextTWOExp_238:
db "FOR THE SAKE OF" : db $FE
db "OUR CHILDREN, WE" : db $FE
db "MUST MAKE THE" : db $FE
db "WORLD A BETTER" : db $FE
db "PLACE!!"
db $FF

MessageTextTWOExp_239:
db "!!!!!!"
db $FF

MessageTextTWOExp_23A:
db "WOAH! THAT WAS" : db $FE
db "EASY I GOT IT" : db $FE
db "ALL!! YOU GOT" : db $FE
db $E0, $24 : db "RIL BONUS!!"
db $FF

MessageTextTWOExp_23B:
db "COME ON,LETS GO!"
db $FF

MessageTextTWOExp_23C:
db "UNLOCKED!"
db $FF

MessageTextTWOExp_23D:
db $E0, $05 : db " CASTED" : db $FE
db $E0, $22
db $FF

MessageTextTWOExp_23E:
db "UGH?" : db $FE
db "THEY CANT" : db $FE
db "HAVE THAT MAGIC!"
db $FF

MessageTextTWOExp_23F:
db "DONT GO! TAO!" : db $FE
db "YOU CANT DO" : db $FE
db "THIS!"
db $FF

MessageTextTWOExp_240:
db "WHAT HAPPENED?"
db $FF

MessageTextTWOExp_241:
db "WHAT THE HELL" : db $FE
db "ARE YOU DOING!"
db $FF

MessageTextTWOExp_242:
db "YAN DONT TALK" : db $FE
db "LIKE THAT!," : db $FE
db "MR. TAO WAS" : db $FE
db "GOING TO FIGHT" : db $FE

db "MIRADI BY" : db $FE
db "HIMSELF! EVEN IF" : db $FE
db "HE HAD NO CHANCE" : db $FE
db "THIS WAS ALL" : db $FE

db "FOR YOU!"


db $FF

MessageTextTWOExp_243:
db "ITS A SECRET TO" : db $FE
db "EVERYONE!"
db $FF

MessageTextTWOExp_244:
db "A COLD WIND BLOW"
db $FF

MessageTextTWOExp_245:
db "AS THE CHIEF OF" : db $FE
db "DEMONS, I COULD" : db $FE
db "NOT STAND TO SEE" : db $FE
db "A WORLD IN WHICH" : db $FE

db "DEMONS ARE" : db $FE
db "OPRESSED..." : db $FE
db $FE
db $FE

db "WHEN DARKNESS" : db $FE
db "AND LIGHT, BOTH" : db $FE
db "OF WHICH HAVE" : db $FE
db "GREAT POWER" : db $FE

db "COLLIDE, THEY" : db $FE
db "DESTROY EACH" : db $FE
db "OTHER..." : db $FE
db $FE

db "AND THE WORLD OF" : db $FE
db "DEMONS WILL" : db $FE
db "REMAIN... THEN" : db $FE
db "THE DEMONS WILL" : db $FE

db "HAVE ALL OF THE" : db $FE
db "POWER IN THE" : db $FE
db "WORLD."
db $FF

MessageTextTWOExp_246:
db $E0, $06 : db " WEAVED" : db $FE
db "THE SACRED RELIC" : db $FE
db "OF DARKNESS INTO" : db $FE
db "THE WATER!!!"
db $FF

MessageTextTWOExp_247:
db "    GAME OVER"
db $FF

MessageTextTWOExp_248:
db "EH! NO NO NO" : db $FE
db "BE MY FRIEND" : db $FE
db "UNCLE DEW!" : db $FE
db "LISTEN THIS" : db $FE

db "PERSON IS BEING" : db $FE
db "MEAN!" 
db $FF

MessageTextTWOExp_249:
db $E0, $2E : db "!"
db $FE
db $FE
db $FE
db "...THIS GIRL IS" : db $FE
db "A REAL STUNNER.." : db $FE
db "...SHE SEEMS TO" : db $FE
db "HAVE A THING FOR" : db $FE

db "PEOPLE OF LIGHT." : db $FE
db "WHAT DO YOU" : db $FE
db "THINK?" : db $FE
db "SHE CAN DO MAGIC" : db $FE

db "WOULD YOU TAKE" : db $FE
db "HER WITH YOU?"
db $FF

MessageTextTWOExp_24A:
db "YAAY" : db $D2, $3C : db $FE
db "THANK YOU"  : db $D2, $3D 
db $FF

MessageTextTWOExp_24B:
db " FAN TRANSLATION" : db $FE
db "   BY ZARBY89"  : db $FE
db "   TONKINHOUSE   " : db $FE
db "    PRESSENTS"
db $FF

MessageTextTWOExp_24C:
db "   NON HUMAN " : db $FE
db "MONSTERS CAME OUT" : db $FE
db "OF THE EARTH AND" : db $FE
db "WERE CALLED DEMON"

db $FF

MessageTextTWOExp_24D:
db "DEMONS GATHERED" : db $FE
db "UNDER MALICIOUS" : db $FE
db "INTENT AND AIMED" : db $FE
db " AT HUMANS..."
db $FF

MessageTextTWOExp_24E:
db " WITH THE HELP" : db $FE
db "  OF THE HERO" : db $FE
db "THE HARD BATTLE" : db $FE
db "ENDED IN VICTORY"
db $FF

MessageTextTWOExp_24F:
db "  DEMONS BEGAN" : db $FE
db "    TO LIVE" : db $FE
db "   ALONGSIDE" : db $FE
db "    HUMANS"
db $FF

MessageTextTWOExp_250:
db " THE HERO FEARS" : db $FE
db " THAT HIS SWORD" : db $FE
db " WILL BE STOLEN" : db $FE
db "     AGAIN"
db $FF

MessageTextTWOExp_251:
db "THE POWER OF THE" : db $FE
db " SWORD WAS GIVEN" : db $FE
db "  TO GODDESSES" : db $FE
db "SWORD ON MOUNTAIN"

db $FF

MessageTextTWOExp_252:
db "    THIS SWORD  " : db $FE
db "   LATER CALLED" : db $FE
db "    THE SWORD" : db $FE
db "   OF THE EARTH"
db $FF

MessageTextTWOExp_253:
db " HERO COMPLETED" : db $FE
db "HIS MISSION AND" : db $FE
db "FOUND SOMEONE TO" : db $FE
db "LIVE NEW MISSION" 

db $FF

MessageTextTWOExp_254:
db $FE
db "THE TIME FLIES.." : db $FE
db $FE
db $FF

MessageTextTWOExp_255:
db "SOMETHING SMELL" : db $FE
db "NICE... " : db $D2, $3D
db $FF

MessageTextTWOExp_256:
db "SOMETHING SMELL" : db $FE
db "AWFUL... YUCK."
db $FF

MessageTextTWOExp_257:
db "OH! THERE IS" : db $FE
db "ANOTHER ONE" : db $FE
db "INSIDE"
db $FF

MessageTextTWOExp_258:
db "BUT...THIS SWORD" : db $FE
db "IS FALLING APART" : db $FE
db "I DONT KNOW IF" : db $FE
db "IT WILL WORK." : db $FE

db "I THINK NOVA" : db $FE
db "MIGHT KNOW" : db $FE
db "SOMETHING, SO" : db $FE
db "LETS GO CHECK IT" : db $FE

db "OUT."
db $FF

MessageTextTWOExp_259:
db "WHERE IS THE" : db $FE
db "DRAGON SCALE?" : db $FE
db "TALK TO THE" : db $FE
db "GODDESS FIRST" : db $FE

db "THEN ASK ME." : db $FE
db "IT SEEMS LIKE" : db $FE
db "THE GODDESS HAS" : db $FE
db "BEEN WAITING FOR" : db $FE

db "YOU FOR A LONG" : db $FE
db "TIME."
db $FF

MessageTextTWOExp_25A:
db "THAT WAS NOT GOOD"
db $FF

MessageTextTWOExp_25B:
db "HEY!, I AM A" : db $FE
db "MOLE DRESSED AS" : db $FE
db "SNOWMAN." : db $FE
db "YOU HEARD ABOUT" : db $FE

db !QUOTE1, "ARMOR", !QUOTE2, " FROM" : db $FE
db "YOUR BUDDY MOLE?" : db $FE
db "THE PRICE IS" : db $FE
db "35000RILS" : db $FE

db "DO YOU WANT IT?"
db $FF

MessageTextTWOExp_25C:
db "I AM SO HAPPY" : db $FE
db "TO HAVE YOU" : db $FE
db "IN MY PARTY" : db $FE
db "AGAIN. " : db $D0, $3D
db $FF

MessageTextTWOExp_25D:
db "I THOUGHT ALL" : db $FE
db "DEMONS WERE BAD." : db $FE
db "BUT I GUESS SOME" : db $FE
db "OF THEM ARE" : db $FE
db "REALL NICE." : db $D0, $3D
db $FF

MessageTextTWOExp_25E:
db "OUR TRIBE IS" : db $FE
db "INCAPABLE OF" : db $FE
db "WEARING HEAVY" : db $FE
db "OBJECTS BUT" : db $FE

db "WE HAVE POWERFUL" : db $FE
db "MAGICs."
db $FF

MessageTextTWOExp_25F:
db ""
db $FF

MessageTextTWOExp_260:
db "ILLUMINATE THE" : db $FE
db "DARK PLACES"
db $FF

MessageTextTWOExp_261:
db "YOU CAN READ" : db $FE
db "AND WRITE YOUR" : db $FE
db "TRAVEL RECORDS." : db $FE
db "(LOAD & SAVE)"
db $FF

MessageTextTWOExp_262:
db "LET YOU TALK TO" : db $FE
db "THE NOVA" : db $FE
db "TREE"
db $FF

MessageTextTWOExp_263:
db "CAN OPEN THE" : db $FE
db "DOOR OF THE" : db $FE
db "PRISON"
db $FF

MessageTextTWOExp_264:
db "CAN PUMP THE" : db $FE
db "WATER OF THE" : db $FE
db "MERMAID SEA"
db $FF

MessageTextTWOExp_265:
db "BE ABLE TO TALK" : db $FE
db "TO MERMAIDS"
db $FF

MessageTextTWOExp_266: ; TODO
db "BECOME ABLE TO" : db $FE
db "CROSS THE SWORD?"
db $FF

MessageTextTWOExp_267:
db "FRUIT OF THE" : db $FE
db "NOVA TREE"
db $FF

MessageTextTWOExp_268:
db "A TREASURE THAT" : db $FE
db "THAT HAS BEEN" : db $FE
db "PASSED DOWN FROM" : db $FE
db "GENERATION TO" : db $FE
db "GENERATION IN" : db $FE
db "THE FAIRY TRIBE."
db $FF

MessageTextTWOExp_269:
db "KEY TO OPEN THE" : db $FE
db "TREASURE ROOM"
db $FF

MessageTextTWOExp_26A:
db "LEAF OF THE" : db $FE
db "NOVA TREE"
db $FF

MessageTextTWOExp_26B:
db "THE WATER THAT" : db $FE
db "RESTORES THE" : db $FE
db "HEART OF THE" : db $FE
db "GODDESS"
db $FF

MessageTextTWOExp_26C:
db "LETTER FROM THE" : db $FE
db "VILLAGE CHIEF" : db $FE
db "OF GILTS"
db $FF

MessageTextTWOExp_26D:
db "DRAGON POISON" : db $FE
db "ANTIDOTE"
db $FF

MessageTextTWOExp_26E:
db "ALLOW YOU TO GO" : db $FE
db "UNDERWATER"
db $FF

MessageTextTWOExp_26F:
db "A STRANGE KEY"
db $FF

MessageTextTWOExp_270:
db "MERMAID MEDECINE"
db $FF

MessageTextTWOExp_271:
db "POWER:ROCK,ICE" : db $FE
db "WATER,EARTH,FIRE" : db $FE
db "WIND, DARKNESS" : db $FE
db "LIGHT,ALL POWER" : db $FE
db "RETURNED..." : db $FE
db "ULTIMATE SWORD" : db $FE
db "OF THE EARTH"
db $FF

MessageTextTWOExp_272:
db "A SACRED RELIC" : db $FE
db "OF THE LIGHT"
db $FF

MessageTextTWOExp_273:
db "A SACRED RELIC" : db $FE
db "OF THE DARKNESS"
db $FF

MessageTextTWOExp_274:
db "A SACRED RELIC" : db $FE
db "OF THE LIGHT"
db $FF

MessageTextTWOExp_275:
db "A SACRED RELIC" : db $FE
db "OF THE DARKNESS"
db $FF

MessageTextTWOExp_276:
db "RED GLOWING" : db $FE
db "RING"
db $FF

MessageTextTWOExp_277:
db "BLUE GLOWING" : db $FE
db "RING"
db $FF

MessageTextTWOExp_278:
db "GREEN GLOWING" : db $FE
db "RING"
db $FF

MessageTextTWOExp_279:
db "A BATTERED SWORD" : db $FE
db "WITH NO POWER"
db $FF

MessageTextTWOExp_27A:
db "RESTORE 20 HP"
db $FF

MessageTextTWOExp_27B:
db "RESTORE 20 MP"
db $FF

MessageTextTWOExp_27C:
db "CURE POISON" : db $FE
db $FF

MessageTextTWOExp_27D:
db "WHEN USED APPLY" : db $FE
db "THE STATE POISON"
db $FF

MessageTextTWOExp_27E:
db "RESTORE 999HP,MP"
db $FF

MessageTextTWOExp_27F:
db "HEAL THE STATE" : db $FE
db "SLEEP"
db $FF

MessageTextTWOExp_280:
db "BRING BACK THE" : db $FE
db "DEAD TO LIFE"
db $FF

MessageTextTWOExp_281:
db "HEAL THE STATE" : db $FE
db "LIGHTNING SHOCK"
db $FF

MessageTextTWOExp_282:
db "HEAL THE STATE" : db $FE
db "CONFUSION"
db $FF

MessageTextTWOExp_283:
db "HEAL THE STATE" : db $FE
db "STONE"
db $FF

MessageTextTWOExp_284:
db "HEAL THE STATE" : db $FE
db "WATER"
db $FF

MessageTextTWOExp_285:
db "HEAL THE STATE" : db $FE
db "MINI"
db $FF

MessageTextTWOExp_286:
db "HEAL THE STATE" : db $FE
db "HUNGRY"
db $FF

MessageTextTWOExp_287:
db "HEAL THE STATE" : db $FE
db "BURN"
db $FF

MessageTextTWOExp_288:
db "RESTORE 200 MP" : db $FE
db "FOR EVERYONE"
db $FF

MessageTextTWOExp_289:
db "WHEN USED APPLY" : db $FE
db "THE STATE" : db $FE
db "CONFUSION"
db $FF

MessageTextTWOExp_28A:
db "RESTORE 100 HP"
db $FF

MessageTextTWOExp_28B:
db "RESTORE 100 MP"
db $FF



MessageTextTWOExp_28D:
db "WHEN USED APPLY" : db $FE
db "THE STATE SLEEP"
db $FF

MessageTextTWOExp_28C:
MessageTextTWOExp_28E:
db "WHEN USED APPLY" : db $FE
db "THE STATE BURN"
db $FF

MessageTextTWOExp_28F:
db "WHEN USED APPLY" : db $FE
db "THE STATE WATER"
db $FF

MessageTextTWOExp_290:
db "RESTORE 100 HP" : db $FE
db "FOR EVERYONE"
db $FF

MessageTextTWOExp_291:
db "WHEN USED APPLY" : db $FE
db "THE STATE STONE"
db $FF

MessageTextTWOExp_292:
db "DECREASE HP," : db $FE
db "WHEN USED"
db $FF

MessageTextTWOExp_293:
db "POWER:ROCK" : db $FE
db $FE
db $FE
db "REMAINING", !COLON, "7"
db $FF

MessageTextTWOExp_294:
db "POWER:ROCK,ICE" : db $FE
db $FE
db $FE
db "REMAINING", !COLON, "6"
db $FF

MessageTextTWOExp_295:
db "POWER:ROCK,ICE" : db $FE
db "WATER" : db $FE
db $FE
db "REMAINING", !COLON, "5"
db $FF

MessageTextTWOExp_296:
db "POWER:ROCK,ICE" : db $FE
db "WATER,EARTH" : db $FE
db $FE
db "REMAINING", !COLON, "4"
db $FF

MessageTextTWOExp_297:
db "USE IT AND YOU" : db $FE
db "WILL GET CHEWED" : db $FE
db "UP."
db $FF

MessageTextTWOExp_298:
db "POWER:ROCK,ICE" : db $FE
db "WATER,EARTH,FIRE" : db $FE
db $FE
db "REMAINING", !COLON, "3"
db $FF

MessageTextTWOExp_299:
db "POWER:ROCK,ICE" : db $FE
db "WATER,EARTH,FIRE" : db $FE
db "WIND" : db $FE
db "REMAINING", !COLON, "2"
db $FF

MessageTextTWOExp_29A:
db "WHEN USED, APPLY" : db $FE
db "THE STATE CHARM"
db $FF

MessageTextTWOExp_29B:
db "POWER:ROCK,ICE" : db $FE
db "WATER,EARTH,FIRE" : db $FE
db "WIND,DARKNESS" : db $FE
db "REMAINING", !COLON, "1"
db $FF

MessageTextTWOExp_29C:
db "SECRET"
db $FF

MessageTextTWOExp_29D:
db "FIX THE STATE OF"  : db $FE
db "SURPRISE"
db $FF

MessageTextTWOExp_2F7:
MessageTextTWOExp_2F9:
MessageTextTWOExp_2FA:
MessageTextTWOExp_2FB:
MessageTextTWOExp_2FC:
MessageTextTWOExp_2FD:
MessageTextTWOExp_2FE:
MessageTextTWOExp_2FF:
MessageTextTWOExp_2E7:
MessageTextTWOExp_29E:
db "EQUIPMENT OTHER"  : db $FE
db "(ETC)"
db $FF

MessageTextTWOExp_29F:
MessageTextTWOExp_2A0:
MessageTextTWOExp_2A3:
MessageTextTWOExp_2A4:
MessageTextTWOExp_2A5:
MessageTextTWOExp_2A6:
MessageTextTWOExp_2A7:
MessageTextTWOExp_2A8:
MessageTextTWOExp_2A9:
MessageTextTWOExp_2AA:
MessageTextTWOExp_2AB:
MessageTextTWOExp_2AC:
MessageTextTWOExp_2AD:
MessageTextTWOExp_2AE:
MessageTextTWOExp_2AF:
MessageTextTWOExp_2B0:
MessageTextTWOExp_2B1:
MessageTextTWOExp_2B2:
MessageTextTWOExp_2B3:
MessageTextTWOExp_2B4:
MessageTextTWOExp_2B5:
MessageTextTWOExp_2B6:
MessageTextTWOExp_2B7:
MessageTextTWOExp_2B8:
MessageTextTWOExp_2B9:
MessageTextTWOExp_2BA:
MessageTextTWOExp_2BB:
MessageTextTWOExp_2BC:
MessageTextTWOExp_2BD:
MessageTextTWOExp_2BE:
MessageTextTWOExp_2BF:
MessageTextTWOExp_2C0:
MessageTextTWOExp_2C1:
MessageTextTWOExp_2C2:

db "EQUIPEMENT WEAPON"
db $FF


MessageTextTWOExp_2A1:
db "DURING A TIME" : db $FE
db "NO ENCOUNTERS."
db $FF

MessageTextTWOExp_2A2: ;whistle maybe?
db "TAKE DEVELIVERY"
db $FF

MessageTextTWOExp_2C4:
MessageTextTWOExp_2C5:
MessageTextTWOExp_2C6:
MessageTextTWOExp_2C7:
MessageTextTWOExp_2C8:
MessageTextTWOExp_2C9:
MessageTextTWOExp_2CA:
MessageTextTWOExp_2CB:
MessageTextTWOExp_2CC:
MessageTextTWOExp_2CD:
MessageTextTWOExp_2CE:
MessageTextTWOExp_2CF:
MessageTextTWOExp_2D0:
MessageTextTWOExp_2D1:
MessageTextTWOExp_2D2:
MessageTextTWOExp_2D3:
MessageTextTWOExp_2D4:
MessageTextTWOExp_2D5:
MessageTextTWOExp_2D6:
MessageTextTWOExp_2D7:
MessageTextTWOExp_2D8:
MessageTextTWOExp_2D9:
MessageTextTWOExp_2DA:
MessageTextTWOExp_2C3:
db "BODY ARMOR"
db $FF

MessageTextTWOExp_2DC:
MessageTextTWOExp_2DD:
MessageTextTWOExp_2DE:
MessageTextTWOExp_2DF:
MessageTextTWOExp_2E0:
MessageTextTWOExp_2E1:
MessageTextTWOExp_2E2:
MessageTextTWOExp_2E3:
MessageTextTWOExp_2E4:
MessageTextTWOExp_2E5:
MessageTextTWOExp_2E6:
MessageTextTWOExp_2DB:
db "SHIELD"
db $FF

MessageTextTWOExp_2E9:
MessageTextTWOExp_2EA:
MessageTextTWOExp_2EB:
MessageTextTWOExp_2EC:
MessageTextTWOExp_2ED:
MessageTextTWOExp_2EE:
MessageTextTWOExp_2E8:
MessageTextTWOExp_2F0:
MessageTextTWOExp_2F1:
MessageTextTWOExp_2F2:
MessageTextTWOExp_2F4:
MessageTextTWOExp_2F5:
MessageTextTWOExp_2F6:
db "HELMET"
db $FF



MessageTextTWOExp_2EF:
db "CURE THE STATE" : db $FE
db "CHARM"
db $FF


MessageTextTWOExp_2F3:

db "ARMOR"
db $FF

MessageTextTWOExp_2F8:
db "YOU CAN CALL" : db $FE
db "FOR A DEPOSIT" : db $FE
db "BANK"
db $FF

MessageTextTWOExp_300:
db "CONGRATULATION!" : db $FE
db "OBTAINING THIS" : db $FE
db "ITEM MEANS THAT" : db $FE
db "YOU HAVE FOUND" : db $FE

db "THE DEBUG MODE." : db $FE
db !QUOTE1, "DEATH BOOK", !QUOTE2 : db $FE
db "IS A CONVENIENT" : db $FE
db "ITEM THAT CAN BE" : db $FE

db "USED TO KILL ALL" : db $FE
db "NON BOSS ENEMIES" : db $FE
db "IF YOU USE THIS" : db $FE
db "WITH THIS ITEM" : db $FE

db "YOU SHOULD BE" : db $FE
db "ABLE TO CLEAR" : db $FE
db "THE GAME EASILY." : db $FE
db "NOW, LETS START" : db $FE

db "THE FIGHT..." : db $FE
db $FE
db "THE SAVE DATA" : db $FE
db "OF THIS CASSETTE" : db $FE

db "IS BEING DELETED" : db $FE
db "AUTOMATICALLY..." : db $FE
db $FE
db $FE
db "(THATS A LIE...)"
db $FF

MessageTextTWOExp_301:
db $E0, $00 : db " WE ARE IN" : db $FE
db "TROUBLE! WE HAVE" : db $FE
db "TO GO TO" : db $FE
db "CAINUN VILLAGE" : db $FE
db "AND STOP BAROUX!"
db $FF

MessageTextTWOExp_302:
db "OH NO...!"
db $FF

MessageTextTWOExp_303:
db "AND WE GOT THE" : db $FE
db "STAR FLASK..." : db $FE
db "COME ON! LETS" : db $FE
db "GO TO THE MAGIC" : db $FE
db "ISLAND! OH, I" : db $FE
db "CANT WAIT TO SEE" : db $FE
db "MASTER LI!"
db $FF

MessageTextTWOExp_304:
db "PHOENIX... I" : db $FE
db "WONDER IF IT IS" : db $FE
db "OKAY."
db $FF

MessageTextTWOExp_305:
db "I THOUGHT..." : db $FE
db "I THOUGHT THE" : db $FE
db "SNOW GODDESS WAS" : db $FE
db "IN THE SNOW" : db $FE

db "CASTLE. AND THE" : db $FE
db "POWER OF THE" : db $FE
db "SWORD..." : db $FE
db "MAYBE THAT IS" : db $FE

db "WHY SHE IS" : db $FE
db "AFTER" : db $FE
db "THE SNOWBABY..."
db $FF

MessageTextTWOExp_306:
db "A MOONDROP IS" : db $FE
db "SOMETHING THAT" : db $FE
db "RESOTRES THE" : db $FE
db "HIDDEN HEART" : db $FE
db "OF A GODDESS..."
db $FF

MessageTextTWOExp_307:
db "WE ARE GOING TO" : db $FE
db "THE DRAGON LAND." : db $FE
db "GO THROUGH THE" : db $FE
db "MOLE PATH. ITS A" : db $FE
db "LONG WAY THERE." : db $FE
db "MAKE SURE YOU" : db $FE
db "HAVE EVERYTHING!"
db $FF

MessageTextTWOExp_308:
db "... SWORD OF" : db $FE
db "THE EARTH..." : db $FE
db "WITH THAT," : db $FE
db "WE CAN KILL THE" : db $FE
db "DEMON DRAGON..."
db $FF

MessageTextTWOExp_309:
db "YAY YAY", !MNOTE, " YAY", !SMILEY
db $FF

MessageTextTWOExp_30A:
db "MASTER LI...I AM" : db $FE
db "STILL IN SHOCK." : db $FE
db "I HAVE TO BE" : db $FE
db "STRONG FOR HIM." : db $FE
db "YEAH, OKAY!" : db $FE
db "HAND IN THERE!"
db $FF

MessageTextTWOExp_30B:
db "THE REAL BAD" : db $FE
db "GUY WAS A DEMON" : db $FE
db "DRAGON..." : db $FE
db "AND THATS WHAT" : db $FE
db "MADE YOU..." : db $FE
db "DAMN IT!" : db $FE
db "I WILL GET YOU" : db $FE
db "FORE SURE!"
db $FF

MessageTextTWOExp_30C:
db "I CAN USE MAGIC" : db $FE
db "BETTER THAN" : db $FE
db "BEFORE, RIGHT?"
db $FF

MessageTextTWOExp_30D:
db "I HAD HEARD FEW" : db $FE
db "RUMORS ABOUT IT" : db $FE
db "BUT IT WAS NOT" : db $FE
db "A RUMOR."
db $FF

MessageTextTWOExp_30E:
db "HEY, HEY, HEY." : db $FE
db "HEY BROTHER, ONE" : db $FE
db "OF MY OLD FRIEND" : db $FE
db "WANTS TO MESS" : db $FE

db "WITH YOU, YOU" : db $FE
db "CAN CHOOSE HIM" : db $FE
db "OR ME WHEN YOU" : db $FE
db "USE THE WHISTLE." : db $FE

db "OH I FORGOT." : db $FE
db "HE MAY NOT BE" : db $FE
db "BE ABLE TO COME" : db $FE
db "SEE YOU SOMETIME" : db $FE

db "BECAUSE OH HIS" : db $FE
db "BUSY SCHEDULE," : db $FE
db "BUT DONT BE" : db $FE
db "DISCOURAGED."
db $FF

MessageTextTWOExp_30F:
db "WHO TO CALL?" : db !NL
db !NL
db !NL
db !NL
db " ITEM STORE" : db !NL
db " ITEM BANK" : db !NL
db " CANCEL" : db !NL
db $FC
db $FF

MessageTextTWOExp_310:
db "BUT HE DID NOT" : db $FE
db "SHOW UP."
db $FF

MessageTextTWOExp_311:
db "NO NO, BRO,SORRY" : db $FE
db "FOR THE DELAY!" : db $FE
db "WHAT" : db $FE
db "DO YOU WANT?"
db $FF

MessageTextTWOExp_312:
db "... I AM THE" : db $FE
db "WANDERING GODDES" : db $FE
db "YOU ARE ", !NAME, "!" : db $FE
db "NEED ANYTHING?" : db $FE

db " CHANGE PARTY M." : db $FE
db " CHANGE NAME" : db $FE
db " REVIVE" : db $FE
db " NOTHING"
db $FC
db $FF

MessageTextTWOExp_313:
db "THAT IS RIGHT," : db $FE
db "I SAW A PRINCESS" : db $FE
db "BEING TAKEN AWAY" : db $FE
db "BY A MONSTER." : db $FE

db "SHE WAS A PRETTY" : db $FE
db "GIRL WITH YELLOW" : db $FE
db "GREEN HAIR."
db $FF

MessageTextTWOExp_314:
db "...THAT VOICE..." : db $FE
db $E0, $06 : db "... WAIT" : db $FE
db "FOR ME I WILL" : db $FE
db "HELP YOU..."
db $FF

MessageTextTWOExp_315:
db "I HEARD A RUMOR." : db $FE
db "THE PRINCESS" : db $FE
db "OF THE CASTLE" : db $FE
db "OF LIGHT WAS" : db $FE

db "CAPTURE BY THE" : db $FE
db "DARKNESS IN" : db $FE
db "ORDER TO SAVE" : db $FE
db "KING AND OTHERS."
db $FF

MessageTextTWOExp_316:
db "THERE IS A" : db $FE
db "RUMOR THAT THE" : db $FE
db "PRINCESS ", !LEFINA : db $FE
db "WHO IS BEING" : db $FE

db "HELD BY THE" : db $FE
db "DEMON DRAGON," : db $FE
db "HAS THE POWER" : db $FE
db "OF A GODDESS..." : db $FE

db "IS IT TRUE?"
db $FF

MessageTextTWOExp_317:
db "OH, THANK YOU!" : db $FE
db "I WOULD HAVE" : db $FE
db "DROWNED MYSELF" : db $FE
db "AND DIE IF YOU" : db $FE
db "HAD NOT BEEN" : db $FE
db "HERE...!" 
db $FF

MessageTextTWOExp_318:
db "WAAH! WATCH OUT!"
db $FF

MessageTextTWOExp_319:
db "THE POWER OF THE" : db $FE
db "BARRIER IS" : db $FE
db "DISAPPEARING!" : db $FE
db !NL
db "NOW YOU CAN GO!"
db $FF

MessageTextTWOExp_31A:
db "I AM THE ROCK OF" : db $FE
db "KNOWLEDGE! WHAT" : db $FE
db "DO YOU NEED?" : db $FE
db !NL
db "IF YOU DO NOT" : db $FE
db "NEED ME, DO NOT" : db $FE
db "COME HERE!"
db $FF

MessageTextTWOExp_31B:
db "THE KING OF" : db $FE
db "DARKNESS IS" : db $FE
db "SLUMPED OVER," : db $FE
db "HIS BODY STILL" : db $FE

db "IS TRAPPED BY" : db $FE
db "THE DEMON DRAGON"
db $FF

MessageTextTWOExp_31C:
db !NAME, "! I HEARD" : db $FE
db "YOU BROUGHT THE" : db $FE
db "KING OF DARKNESS" : db $FE
db "BACK! WELL DONE." : db $FE

db "HMM? ME?" : db $FE
db "IM JUST BURNING." : db $FE
db "DO NOT GET TOO" : db $FE
db "CLOSE OR YOU" : db $FE

db "WILL GET BURNED!"

db $FF

MessageTextTWOExp_31D:
db "HERE YOU GO."
db $FF

MessageTextTWOExp_31E:
db "AAAAH!" : db $FE
db "MY BODY IS" : db $FE
db "GETTING CRUSHED" : db $FE
db "BY THE BARRIER!"
db $FF

MessageTextTWOExp_31F:
db "MY BODY CANNOT" : db $FE
db "STAND THE DRAGON" : db $FE
db "POISON!"
db $FF

MessageTextTWOExp_320:
db "OH... IM SLEEPY."
db $FF

MessageTextTWOExp_321: ; todo not sure
db "MAGIC CAN ONLY" : db $FE
db "BE USED ONCE." : db $FE
db "HEHEHE", !MNOTE
db $FF

MessageTextTWOExp_322:
db !TOLI, " IS OUT." : db $FE
db !MINEA, " IS NOW" : db $FE
db "A MEMBER!"
db $FF

MessageTextTWOExp_323:
db "WHAT?, WHAT IS" : db $FE
db "THIS BATTLE?"
db $FF

MessageTextTWOExp_324:
db "I AM A WANDERING" : db $FE
db "WARP GODDESS." : db $FE
db "I WILL LET YOU" : db $FE
db "GO OVER THERE" : db $FE
db "IF YOU WANT" : db $FE
db "1WARP IS 200RILS" : db $FE
db "WHAT DO YOU SAY?"
db $FF

MessageTextTWOExp_325:
db "WE ARE ALREADY" : db $FE
db "HERE. HOW ABOUT" : db $FE
db "ANOTHER PLACE?"
db $FF

MessageTextTWOExp_326:
db "BOY..." : db $FE
db "FROM HERE ON OUT" : db $FE
db "ITS THE GODDESS" : db $FE
db "CALL..." : db $FE
db "RETURN TO ME..."
db $FF

MessageTextTWOExp_327:
db "WOW,THE FEATHERS" : db $FE
db "OF THE PHOENIX" : db $FE
db "SHOES ARE ON MY" : db $FE
db "FEET AND MY BODY" : db $FE

db "IS GROANING!"
db $FF

MessageTextTWOExp_328:
db "THE DRAGON SCALE" : db $FE
db "WILL REMOVE THE" : db $FE
db "POISON AROUND" : db $FE
db "YOUR BODY!" : db $FE

db "GOOD !, WE CAN" : db $FE
db "GO!"
db $FF
MessageTextTWOExp_329:
db "MAKE SPACE FOR A" : db $FE
db "STAR OF DESTINY" : db $FE
db "CHARACTER..." : db $FE
db "WHO IS LEAVING?"
db $FC
db $FF

MessageTextTWOExp_32A:
db "WHAT IS IT...!" : db $FE
db $FE
db $FE
db $FE
db "THAT KEY IS..." : db $FE
db "BEFORE YOU ASK" : db $FE
db "ME GO TO TAO AT" : db $FE
db "THE ITEM STORE!" : db $FE
db "I WILL TELL YOU" : db $FE
db "AFTER THAT!"
db $FF

MessageTextTWOExp_32B:
db "PLASE SAVE ", !YAN, "!"
db $FF

MessageTextTWOExp_32C:
db "PLEASE," : db $FE
db "COME AGAIN."
db $FF

MessageTextTWOExp_32D:
db "I AM SORRY SIR" : db $FE
db "MY LIFE DEPENDS" : db $FE
db "ON IT." : db $FE
db "IF YOU DO NOT" : db $FE
db "HAVE ENOUGH" : db $FE
db "MONEY..."
db $FF
MessageTextTWOExp_32E:
db "FROM NOW ON," : db $FE
db "THE MERMAIDS" : db $FE
db "WILL JOIN" : db $FE
db "FORCES SO THAT" : db $FE

db "LIGHT AND" : db $FE
db "DARKNESS CAN" : db $FE
db "BECOME ONE." : db $FE
db $FE 

db "I WILL CARRY" : db $FE
db "MY MOTHERS WILL."
db $FF

MessageTextTWOExp_32F:
db "IF YOUR BODY" : db $FE
db "SUFFER FROM ANY" : db $FE
db "MAGIC COME HERE" : db $FE
db "AND HAVE A MEAL" : db $FE
db "WHATEVER YOUR" : db $FE
db "CONDITION IS YOU" : db $FE
db "WILL BE CURED." : db $D2, $3D
db $FF

MessageTextTWOExp_330:
db "EVERYONE MP" : db $FE
db "HAS GONE DOWN.", !PAW
db $FF

MessageTextTWOExp_331:
db "NO SAVE DATA."
db $FF

MessageTextTWOExp_332:
db " CHANGE PARTY M." : db $FE
db " CHANGE NAME" : db $FE
db " REVIVE" : db $FE
db " NOTHING"
db $FC
db $FF

MessageTextTWOExp_333:
db "COOKIIIIE!" : db $FE
db "DAMN IT! I LOST!"
db $FF

MessageTextTWOExp_334:
db "WOW", !SWEAT, " OKAY", !SWEAT : db $FE
db "YOU MUST BE" : db $FE
db "THE HERO WHO" : db $FE
db "CAME TO SEE THE" : db $FE

db "KING OF DARKNESS" : db $FE
db "SO PLEASE," : db $FE
db "COME IN..."
db $FF

MessageTextTWOExp_335:
db "UGH... DAMN..." : db $FE
db "BUT EVEN IF YOU" : db $FE
db "CAN KILL ME..." : db $FE
db "YOU CANNOT KILL" : db $FE

db "THE DEMON DRAGON" : db $FE
db "WITH YOUR POWER."
db $FF

MessageTextTWOExp_336:
db "WOW !" : db $FE
db "MY WORLD..." : db $FE
db "MY FOREST IS" : db $FE
db "FADING AWAY..."
db $FF

MessageTextTWOExp_337:
db "UGH, THAT HURT!" : db $FE
db "BROTHER..." : db $FE
db "BROTHER DWELL..." : db $FE
db "PLEASE TAKE CARE" : db $FE

db "OF THE REST..."
db $FF

MessageTextTWOExp_338:
db "IM SORRY..DIVA.." : db $FE
db "I COULD NOT GET" : db $FE
db "YOU BACK..." : db $FE
db "BUT..." : db $FE
db "NOW..." : db $FE
db "I WILL BE THERE."
db $FF

MessageTextTWOExp_339:
db "OH NO...NO WAY.." : db $FE
db "DEMON DRAGON..." : db $FE
db "THE POWER OF A" : db $FE
db "HERO...." : db $FE
db "DO NOT" : db $FE
db "..UNDERESTIMATE."
db $FF

MessageTextTWOExp_33A:
db "I AM GOING TO" : db $FE
db "ASK ", !MINEA, " TO" : db $FE
db "GIVE ME SOME" : db $FE
db !QUOTE1, "ENERGY", !QUOTE2, " AND" : db $FE

db "THEN I AM GOING" : db $FE
db "TO GO THROUGH" : db $FE
db "THAT DOOR." : db $FE
db "I WILL GO TO" : db $FE

db "THE DARK TOWER" : db $FE
db "AND TAKE THE" : db $FE
db "PRINCESS ",!LEFINA, "."
db $FF

MessageTextTWOExp_33B:
db "WAIT A MINUTE." : db $FE
db "LETS LIGHT IT UP" : db $FE
db "ONE MORE TIME."
db $FF

MessageTextTWOExp_33C:
db "MY MAGIC CAN" : db $FE
db "ONLY BE USED ON" : db $FE
db "MERMAIDS."
db $FF

MessageTextTWOExp_33D:
db "PUPU!" : db $FE
db "MOLE WAY..." : db $FE
db "ALL THE WAY..." : db $FE
db "THERE ARE" : db $FE

db "SIX FLOORS..." : db $FE
db "BE CARFUL"
db $FF

MessageTextTWOExp_33E:
db !KOTARO, "!!!"
db $FF
MessageTextTWOExp_33F:
db "KYAAAH!" : db !NL
db "BIG BROTHER!" : db !NL
db "NOO!"
db $FF

MessageTextTWOExp_340:
db !MINEA, "..LIVE.." : db !NL
db "...THAT IS ALL" : db !NL
db "I ASK..." : db !NL
db "FAREWELL... . ."
db $FF

MessageTextTWOExp_341:
db "BROTHER,BROTHER!" : db !NL
db $FE
db $FE
db $FE

db "UGH... UGH...."
db $FF

MessageTextTWOExp_342:
db !MINEA, "..." : db !NL
db "I AM SORRY..." : db !NL
db "IF I WAS STRONG" : db !NL
db "I WOULD NOT HAVE" : db !NL
db "LET ", !KOTARO, " DIE."
db $FF

MessageTextTWOExp_343:
db !NAME, " DO NOT" : db !NL
db "BLAME YOURSELF." : db !NL
db "MY BROTHER MUST" : db !NL
db "HAVE SEEN THIS" : db !NL

db "COMING... I AM.." : db !NL
db "I KNOW ITS HARD" : db !NL
db "BUT I CANNOT" : db !NL
db "HELP IT, BUT..." : db !NL

db "BUT NOW..I THINK" : db !NL
db "I HAVE TO FIGHT" : db !NL
db "THE DEMON DRAGON" : db !NL
db "FOR MY BROTHER.." : db !NL

db "AND HE WOULD" : db !NL
db "HAVE WANTED THAT" : db !NL
db "TOO..." : db !NL
db "COME ON, LETS GO" : db !NL
db !NAME, "."
db $FF

MessageTextTWOExp_344:
db "I HEARD RUMORS" : db !NL
db "ABOUT THE SWORD" : db !NL
db "STRENGTH.  I" : db !NL
db "HEARD THAT SOME" : db !NL

db "KIND OF POWERFUL" : db !NL
db "FORCE IS" : db !NL
db "GATHERING SWORDS"
db $FF

MessageTextTWOExp_345:
db "YOU SHOULD LOOK" : db !NL
db "BETWEEN THE TREE" : db !NL
db "THERE MIGHT BE" : db !NL
db "SOMETHING THERE!"
db $FF

MessageTextTWOExp_346:
db "AH, WHAT A NICE" : db !NL
db "WEATHER", !HEART
db $FF

MessageTextTWOExp_347:
db "I HEARD THAT THE" : db !NL
db "GOD OF ALL TREES" : db !NL
db "IS THE NOVA TREE"
db $FF

MessageTextTWOExp_348:
db "I HEARD YOU GOT" : db !NL
db "A BOYFRIEND IN" : db !NL
db "THE NEIGHBORHOOD" : db !NL
db "       COOL!" : db !NL

db "UGH", !SWEAT : db !NL
db "IS IT FUNNY?"
db $FF

MessageTextTWOExp_349:
db "MOO GOO..." : db !NL
db !NL
db !NL
db !NL
db "OH, THEY FOUND" : db !NL
db "ME SNIFFING" : db !NL
db "AROUND."
db $FF

MessageTextTWOExp_34A:
db "HEY EVERYONE!" : db !NL
db "I AM WAITING FOR" : db !NL
db "THIS GAME!"
db $FF

MessageTextTWOExp_34B:
db "FIGHT WITH" : db !NL
db "STRONG OPPONENT!" : db !NL
db "THEN YOU WILL BE" : db !NL
db "STRONGER!"
db $FF

MessageTextTWOExp_34C:
db "RUMOR HAS IT" : db !NL
db "THAT A HEAVY" : db !NL
db "METAL FAN MADE" : db !NL
db "UP THIS STORY." : db !NL
db "CAN YOU BELIEVE" : db !NL
db "IT...?"
db $FF

MessageTextTWOExp_34D:
db "MEOW, MEOW", !MNOTE : db !NL
db !NL
db !NL
db !NL
db "I AM IMITATING" : db !NL
db "A CAT IS IT NOT" : db !NL
db "GOOD ?"
db $FF

MessageTextTWOExp_34E:
db !NAME, " MADE THE" : db !NL
db "CALL!"
db $FF

MessageTextTWOExp_34F:
db "YES YES, MEALS!" : db !NL
db "THE DELIVERY IS" : db !NL
db "ONLY FOR THE" : db !NL
db "SPECIAL MEAL." : db !NL

db "THE SET PRICE IS" : db !NL
db "300 RILS." : db !NL
db "DO YOU WANT IT?"
db $FF

MessageTextTWOExp_350:
db "THANK YOU FOR" : db !NL
db "ALWAYS BEING MY" : db !NL
db "PATRONAGE." : db !NL
db "IF YOU LIKE YOU" : db !NL

db "CAN USE THIS..." : db !NL
db "YOU CAN USE IT" : db !NL
db "ANYWHERE ON THE" : db !NL
db "MAP....." : db !NL

db "THANK YOU FOR" : db !NL
db "YOUR CONTINUED" : db !NL
db "SUPPORT."
db $FF

MessageTextTWOExp_351:
db "RUMOR SAYS THAT" : db !NL
db "THERE IS A" : db !NL
db "WANDERING" : db !NL
db "GODDESS."
db $FF

MessageTextTWOExp_352:
db "WAH!, SO SCARY!" : db !NL
db !NL
db !NL
db !NL
db "SO BRING A TORCH" : db !NL
db "TO THE CAVE!"
db $FF

MessageTextTWOExp_353:
db "NEKOMANMA..." : db !NL
db "I WANT TO EAT..",!MNOTE
db $FF

MessageTextTWOExp_354:
db "PRINCESS ", !LEFINA : db !NL
db "IS WAITING FOR" : db !NL
db !NAME, ", RIGHT?" : db !NL
db "COME ON,LETS GET" : db !NL
db "YOU OUT OF HERE!"
db $FF

MessageTextTWOExp_355:
db "HEY, LETS GO TO" : db !NL
db "THE INN AND GET" : db !NL
db "SOME REST."
db $FF

MessageTextTWOExp_356:
db "PAMPAKAPAN!" : db !NL
db !NAME, " HAS......" : db !NL
db !NL
db !NL
db "WHAT LIE!!!"
db $FF

MessageTextTWOExp_357:
db "AAN", !PAW, " IM SORRY"
db "IT WAS A JOKE", !SWEAT
db $FF

MessageTextTWOExp_358:
db "NOT ENOUGH MP!"
db $FF

MessageTextTWOExp_359:
db "ORDINARY MERMAID" : db $FE
db "RARELY ENTER THE" : db $FE
db "SANCTUARY SO I." : db $FE
db "I CANT GO."
db $FF


MessageTextTWOExp_35A:
db "MY DOG..." : db $FE
db "TAKE GOOD CARE" : db $FE
db "OF HER!"
db $FF

MessageTextTWOExp_35B:
db "HEY! ", !NAME, "!" : db $FE
db "THIS IS THE WAY" : db $FE
db "OUT!" : db $FE
db !NL
db "BUT YOU CANNOT" : db $FE
db "GO TO THE DRAGON" : db $FE
db "LAND WITHOUT" : db $FE
db "DRAGON SCALES!" : db $FE
db "YOU WILL DIE!" : db $FE
db "GO BACK AND" : db $FE
db "FIND THEM!"
db $FF

MessageTextTWOExp_35C:
db "HEY!, ARE YOU" : db $FE
db "GOING TO DIE?!" : db $FE
db "I AM BACK!"
db $FF

MessageTextTWOExp_35D:
db "OK! ", !NAME, "...!" : db $FE
db "LETS GET READY!" : db $FE
db "WE ARE GOING TO" : db $FE
db "THE DRAGON LAND!"
db $FF

MessageTextTWOExp_35E:
db "THIS IS...  I" : db $FE
db "THINK WE SHOULD" : db $FE
db "GO BACK."
db $FF

MessageTextTWOExp_35F:
db "I GOT 5000 RILS" : db $FE
db "BACK !"
db $FF

MessageTextTWOExp_360:
db !MIA : db $FE
db $FE
db $FE
db $FE
db "WHY DID YOU COME" : db $FE
db "IN? YOU ARE NOT" : db $FE
db "SUPPOSED TO BE" : db $FE
db "IN THE SACRED" : db $FE

db "SANCTUARY IT IS" : db $FE
db "FORBIDDEN!"
db $FF

MessageTextTWOExp_361:
db "IT SMELLS LIKE" : db $FE
db "DEMONS...!!!" : db $FE
db $FE 
db $FE 

db "EVEN IF YOU" : db $FE
db "HIDE, I CAN FEEL" : db $FE
db "YOU!"

db $FF

MessageTextTWOExp_362:
db "UH... WHAT?"
db $FF

MessageTextTWOExp_363:
db "THERE HE IS !" : db $FE
db "DEMON ARE BAD" : db $FE
db "PEOPLES RIGHT?" : db $FE
db "I DONT WANT TO" : db $FE

db "BE WITH SUCH A" : db $FE
db "PERSON! I HATE" : db $FE
db "DEMONS! " : db $FE
db "I HATE YOU !"

db $FF

MessageTextTWOExp_364:
db "BABY... MY BABY", !HEART
db $FF

MessageTextTWOExp_365:
db "POOR THING..." : db !NL 
db "...IT MELTED" : db !NL 
db "LIKE THIS...!" : db !NL 
db !NL 
db "ICEEE !!"
db $FF

MessageTextTWOExp_366:
db "SNOW BABY HAS" : db !NL 
db "RECOVERED!"
db $FF

MessageTextTWOExp_367: ; todo unsure
db "YOU HAVE NOT YET" : db !NL 
db "EXPERIENCED THE" : db !NL 
db "WARM PLACE, OR" : db !NL 
db "THE PROPER" : db !NL 

db "MAGIC RITUALS" : db !NL 
db "TO BECOME AN" : db !NL 
db "ADULT, SO DONT" : db !NL 
db "WORRY. I WILL" : db !NL 

db "DO IT FOR YOU" : db !NL 
db "LATER, SO BE" : db !NL 
db "QUIET FOR NOW!"
db $FF

MessageTextTWOExp_368:
db !NAME, " MADE" : db !NL 
db "MITY DRINK A" : db !NL 
db "MOONDROP!"
db $FF

MessageTextTWOExp_369:
db "BUT... WITH A" : db !NL 
db "BODY LIKE THAT?"
db $FF

MessageTextTWOExp_36A:
db "ITS OKAY...!" : db !NL 
db !NL
db !NL
db !NL
db "I HAVE TO GO..."
db $FF

MessageTextTWOExp_36B:
db "EH?, WHAT?"
db $FF

MessageTextTWOExp_36C:
db "NO, ITS NOTHING." : db !NL 
db "COME ON!  HURRY" : db !NL 
db "AND FOLLOW" : db !NL 
db "MY BROTHER!"
db $FF

MessageTextTWOExp_36D:
db "I ALWAYS WANTED" : db $FE
db "TO HAVE 2 LEGS" : db $FE
db "LIKE HUMANS BUT" : db $FE
db "THAT IS PRETTY" : db $FE
db "EXPENSIVE!"
db $FF

MessageTextTWOExp_36E:
db "THE GODDESS" : db $FE
db "AMULET BROKE." : db $FE
db "I CAN GET" : db $FE
db "ATTACKED AGAIN!"
db $FF

MessageTextTWOExp_36F:
db "MASTER LI!"
db $FF

MessageTextTWOExp_370:
db "YOU CANT..DO YOU" : db !NL 
db "STILL... STILL" : db !NL 
db "THINK OF ME AS" : db !NL 
db "YOUR MASTER...?" : db !NL 

db "YOU HAVE ALWAYS" : db !NL 
db "BEEN..." : db !NL 
db "SO SWEET..." : db !NL 
db "UGH..."
db $FF

MessageTextTWOExp_371:
db "MASTER LI,MAGIC!" : db !NL 
db "THE MAGIC OF" : db !NL 
db !QUOTE1, "HUKKADA", !QUOTE2, "!" : db !NL 
db "ITS NOT TOO LATE"
db $FF

MessageTextTWOExp_372:
db "..THAT IS FINE.." : db !NL 
db !NL
db "ITS OK... ", !TOLI : db !NL 
db "MY OLD DAYS ARE" : db !NL 

db "OVER..." : db !NL 
db "THERE IS NOTHING" : db !NL 
db "TO MISS..." : db !NL 
db "IN YOUR MAGIC MY" : db !NL 

db "BLOOD LIVES ON.." : db !NL 
db "OF MY HOUSE..." : db !NL 
db "I WILL LEAVE THE" : db !NL 
db "REST TO YOU..." : db !NL 

db "I ASKED FOR" : db !NL 
db "YOUR FUTURE..."
db $FF

MessageTextTWOExp_373:
db $E0, $00 : db " I HAD" : db $FE
db "SOMEONE CALL ME" : db $FE
db "ONCE UPON A TIME" : db $FE
db $FE
db "I CERTAINLY" : db $FE

db "DID NOT TURN" : db $FE
db "INTO BUBBLES" : db $FE
db "IN 3 DAYS" : db $FE
db "BUT AFTER 3 DAYS" : db $FE

db "I WAS BACK TO" : db $FE
db "NORMAL..." : db $FE
db "SORRY I MADE" : db $FE
db "YOU SPEND MONEY" : db $FE
db "ON THIS." : db $D2, $3E

db $FF

MessageTextTWOExp_374:
db "WELL... I KNOW" : db !NL 
db "YOU ARE A HERO.." : db !NL 
db "YOU HAVE A LOT" : db !NL 
db "TO DO..." : db !NL 

db "THEN HURRY!" : db !NL 
db "IF YOU SEE THE" : db !NL 
db "KINAPPED PEOPLE" : db !NL 
db "TELL THEM WE ARE" : db !NL 

db "PROTECTING THIS" : db !NL 
db "VILLAGE! I WILL" : db !NL 
db "DO MY BEST UNTIL" : db !NL 
db "THEN!"
db $FF

MessageTextTWOExp_375:
db "OK I PROMISE." : db !NL 
db "I WILL GET THEM" : db !NL 
db "OUT. I PROMISE." : db !NL 
db "UNTIL THEN," : db !NL 
db "PROTECT HER."
db $FF

MessageTextTWOExp_376:
db "YES! IT IS" : db !NL 
db "A PROMISE!"
db $FF

MessageTextTWOExp_377:
db "I WILL DO MY" : db !NL 
db "MY BEST BROTHER!"
db $FF


MessageTextTWOExp_378:
db $E0, $00 : db "!" : db $FE
db $FE
db $FE
db $FE

db "..." : db $FE
db $FE
db $FE
db $FE
db "SORRY LOUIS..." : db $FE
db "WE STILL HAVE" : db $FE
db "LOTS OF THINGS" : db $FE
db "TO ACCOMPLISH" : db $FE

db "AND ALSO" : db $FE
db "LOTS OF" : db $FE
db "PLACES TO GO."

db $FF

MessageTextTWOExp_379:
db "IN RETURN, WE" : db $FE
db "WILL FIND AND" : db $FE
db "RESCUE THE" : db $FE
db "KIDNAPPED" : db $FE

db "VILLAGERS AND" : db $FE
db "BRING THEM BACK!" : db $FE
db "I PROMISE!"
db $FF

MessageTextTWOExp_37A:
db "I UNDERSTAND..." : db $FE
db "..." : db $FE
db "YEAH! OKAY!" : db $FE
db "I WILL HOLD ON!" : db $FE

db "I WILL PROTECT" : db $FE
db "MEI UNTIL THEN!"
db $FF

MessageTextTWOExp_37B:
db "WAIT A MINUTE" : db $FE
db "NOW I AM GOING" : db $FE
db "TO LOWER THE" : db $FE
db "TEMPERATURE OF.!"
db $FF

MessageTextTWOExp_37C:
db "I AM NOT GIVING" : db !NL 
db "ANYTHING AWAY!"
db $FF

MessageTextTWOExp_37D:
db !NAME, " MAY YOU" : db !NL 
db "BE THE BRAVEST" : db !NL 
db "HERO!"
db $FF

MessageTextTWOExp_37E:
db "THE DEMON DRAGON" : db !NL 
db "SPELL HAS BEEN" : db !NL 
db "REMOVED FROM" : db !NL 
db !LEFINA, " BODY" : db !NL 

db "AND SHE IS NOW" : db !NL 
db "HEALTHY!"
db $FF

MessageTextTWOExp_37F:
db "DEMON DRAGON...?" : db !NL
db "YOU WERE WRONG" : db !NL
db "BECAUSE OF YOUR" : db !NL
db "POWER... SO MANY" : db !NL

db "LIVES WERE LOST." : db !NL
db "IF YOU CANNOT" : db !NL
db "PROTECT ONE LIFE" : db !NL
db "WHAT IS THE USE" : db !NL

db "OF YOUR POWER?" : db !NL
db "YOU SHOULD HAVE" : db !NL
db "BEEN KINDER IF" : db !NL
db "YOU REALLY CARED" : db !NL

db "ABOUT THE DEMONS" : db !NL
db "WHEN YOU CHOSE" : db !NL
db "YOUR POWER, YOU" : db !NL
db "GAVE UP YOUR" : db !NL

db "KINDNESS AND" : db !NL
db "LOVE AND GAVE" : db !NL
db "YOUR BODY TO THE" : db !NL
db "EVIL ONE."

db $FF

MessageTextTWOExp_380:
db "I SEE... MAYBE" : db !NL
db "SO. IT SEEMS" : db !NL
db "THAT I WAS" : db !NL
db "RELYING ONLY ON" : db !NL

db "STRENGTH..." : db !NL
db !NAME, " I KNOW IT" : db !NL
db "IS PRESUMPTUOUS" : db !NL
db "OF ME TO SAY..." : db !NL

db "CAN YOU USE YOUR" : db !NL
db "JUSTICE TO" : db !NL
db "CREATE A WORLD" : db !NL
db "WHERE DEMONS CAN" : db !NL
db "LIVE IN PEACE?"
db $FF

MessageTextTWOExp_381:
db "I WILL DO MY" : db !NL
db "BEST, " : db !NL
db "DEMON DRAGON." : db !NL
db "I WILL DO WHAT" : db !NL
db "IS RIGHT AND" : db !NL
db "HEROIC..."
db $FF

MessageTextTWOExp_382:
db "HUH..I AM LOSING" : db !NL
db !NL
db "I WILL DIE SOON." : db !NL
db !NL

db "WHEN I DIE, THIS" : db !NL
db "CASTLE I BUILT" : db !NL
db "WITH MY MAGIC" : db !NL
db "WILL DISAPPEAR.." : db !NL

db "YOU CAN ESCAPE" : db !NL
db "BEFORE THEN." : db !NL
db "FAREWELL, HERO" : db !NL
db "OF THE EARTH!"

db $FF

MessageTextTWOExp_383:
db "SERYU, DO YOU" : db !NL
db "KNOW WHERE I CAN" : db !NL
db "FIND A MOONDROP" : db !NL
db "THAT WILL HELP" : db !NL

db "RESTORE THE" : db !NL
db "GODDESS MITY TO" : db !NL
db "HER ORIGINAL" : db !NL
db "STATE?"

db $FF

MessageTextTWOExp_384:
db "WHAT DID THE" : db !NL
db "GODDESS SAY?"
db $FF

MessageTextTWOExp_385:
db "WHO THE HELL" : db !NL
db "ARE YOU ?"
db $FF

MessageTextTWOExp_386:
db "I AM THE" : db !NL
db "DRAGON KING..." : db !NL
db "I AM GAYLENE" : db !NL
db "THIS IS THE" : db !NL

db "DEMON DRAGON" : db !NL
db "ROOM! BUT YOU" : db !NL
db "CANNOT GET" : db !NL
db "THROUGH HERE!"

db $FF

MessageTextTWOExp_387:

db $FF

MessageTextTWOExp_388:
db "BIRI,BIRI!"
db $FF

MessageTextTWOExp_389:
db "I WANT TO EAT", !SWEAT
db $FF

MessageTextTWOExp_38A:
db "RINGO ", !MNOTE : db !NL
db "COROCORO"
db $FF

MessageTextTWOExp_38B:
db "UGH", !SWEAT, "BAD BOY..."
db $FF

MessageTextTWOExp_38C:
db "...(YOUR VOICE" : db !NL
db "IS TOO LOW TO" : db !NL
db "HEAR", !PAW, ")"
db $FF

MessageTextTWOExp_38D:
db "SOMETHING IS" : db !NL
db "STRONG!" : db !NL
db !NL
db "IM FREAKING OUT"
db $FF

MessageTextTWOExp_38E:
db "HEY!,STAY STRONG" : db !NL
db $FF

MessageTextTWOExp_38F:
db "WHO... WHO THE" : db !NL
db "HELL ARE YOU?"
db $FF

MessageTextTWOExp_390:
db !MINEA, " HAS BEEN" : db !NL
db "TURNED INTO A" : db !NL
db "STONE BY SOMEONE" : db !NL
db "MAGIC!"
db $FF

MessageTextTWOExp_391:
db "NICE! GOT ", !E024 : db !NL
db "PRIZE IS", !NL
db !E022, "!", !NL 
db "CONGRATULATIONS!"
db $FF

MessageTextTWOExp_392:
db " BUY" : db !NL
db " CANCEL"
db $FC
db $FF

MessageTextTWOExp_393:
db "I WILL EXPLAIN." : db $FE
db $FE
db $FE
db $FE
db "CHOOSE A NUMBER" : db $FE
db "FOR EACH OF THE" : db $FE
db "5 HIDDEN CARDS." : db $FE
db $FE
db "IF THE NUMBER" : db $FE
db "ARE THE SAME!" : db $FE
db "YOU WILL GET AN" : db $FE
db "ITEM DEPENDING" : db $FE

db "ON THE NUMBER OF" : db $FE
db "CARDS YOU" : db $FE
db "HAVE WON"

db $FF

MessageTextTWOExp_394:
db "YOU ARE...?"
db $FF

MessageTextTWOExp_395:
db "WELL...?" : db $FE
db "I DONT KNOW" : db $FE
db "ABOUT THAT."
db $FF

MessageTextTWOExp_396:
db "YOU ARE A WRETCH" : db $FE
db "YOU SHOULD KNOW" : db $FE
db "THE POWER OF" : db $FE
db "THIS GREAT SPEAR" : db $FE

db "I WILL KILL YOU!"
db $FF

MessageTextTWOExp_397:
db "WHAT DID" : db $FE
db "YOU SAY..?!"
db $FF

MessageTextTWOExp_398:
db "HUHUHU..." : db $FE
db "DONT TALK,DONT.."
db $FF

MessageTextTWOExp_399:
db "NO MORE, NO..." : db $FE
db "STOP TALKING...!"
db $FF

MessageTextTWOExp_39A:
db !NAME, " TAKE CARE" : db $FE
db "OF ", !MINEA, " PLEASE" : db $FE
db "EVERYONE..." : db $FE
db "DO NOT DIE..."
db $FF

MessageTextTWOExp_39B:
db "GET OUT OF THE" : db $FE
db "WAY GAYLENE OR" : db $FE
db "I WILL FIGHT" : db $FE
db "YOU !"
db $FF

MessageTextTWOExp_39C:
db "I AM LOOKING IN." : db $FE
db "YOU ARE NOTHING!"
db $FF

MessageTextTWOExp_39D:
db "EH", !PAW, " WE MEET" : db $FE
db "AGAIN...! WHAT" : db $FE
db "MEETING YOU..." : db $FE
db "WHAT DO YOU WANT" : db $FE
db "I FEEL SOMETHING" : db $FE
db "INEXPLICABLE..."
db $FF


MessageTextTWOExp_39E:
db !E005 : db $FE
db "LOST ", !E021, " HP!!"
db $FF

MessageTextTWOExp_39F:
db !E005 : db $FE
db "LOST ", !E021, " MP!!"
db $FF

MessageTextTWOExp_3A0:
db ""
db $FF

warnpc $27FFFF