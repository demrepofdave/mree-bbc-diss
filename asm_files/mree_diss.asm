; Constants
event_start_of_vertical_sync            = 4
inkey_key_p                             = 200
osbyte_acknowledge_escape               = 126
osbyte_disable_event                    = 13
osbyte_inkey                            = 129
osbyte_read_adc_or_get_buffer_status    = 128
osbyte_read_write_escape_break_effect   = 200
osbyte_tape                             = 140

; Memory locations
L0000                               = &0000
L0001                               = &0001
L0002                               = &0002
L0003                               = &0003
L0004                               = &0004
L0005                               = &0005
L0006                               = &0006
L0007                               = &0007
zp_possible_remaining_cherry_count  = &0008
L0009                               = &0009
sound_on_off_flag_or_maybe_mask     = &000A
L000B                               = &000B
L000C                               = &000C
L000F                               = &000F
L0010                               = &0010
L0011                               = &0011
L0012                               = &0012
L0013                               = &0013
L0014                               = &0014
zp15_scene_number                   = &0015
L0016                               = &0016
L0017                               = &0017
L0018                               = &0018
L0019                               = &0019
L001A                               = &001A
L001B                               = &001B
L001C                               = &001C
L001D                               = &001D
L001E                               = &001E
zp1F_extra_bitmap                   = &001F
L0020                               = &0020
L0021                               = &0021
L0022                               = &0022
L0023                               = &0023
lives_remaining_0024_possible       = &0024
L0025                               = &0025
L0026                               = &0026
L0027                               = &0027
L0028                               = &0028
L0029                               = &0029
L002A                               = &002A
L002B                               = &002B
L002C                               = &002C
L002D                               = &002D
L002E                               = &002E
keyboard_or_joystick_flag           = &002F
L0030                               = &0030
L0034                               = &0034
L0038                               = &0038
L003C                               = &003C
L0061                               = &0061
zp70_sound_amplitude                = &0070
zp72_sound_amplitude                = &0072
zp74_sound_pitch                    = &0074
zp76_sound_duration                 = &0076
zp78_sound_channel                  = &0078
zp7A_sound_amplitude                = &007A
zp7C_sound_pitch                    = &007C
zp7E_sound_duration                 = &007E
zero_page_80_dest_screenaddr        = &0080
zero_page_81_dest_screenaddr        = &0081
zero_page_82                        = &0082
zero_page_83                        = &0083
zero_page_84_source_spriteaddr      = &0084
zero_page_85_source_spriteaddr      = &0085
L0086                               = &0086
L0087                               = &0087
L0088                               = &0088
L0089                               = &0089
L008A                               = &008A
L008B                               = &008B
L008C                               = &008C
L008F                               = &008F
L0090                               = &0090
L0091                               = &0091
L0092                               = &0092
L0093                               = &0093
L0094                               = &0094
L0095                               = &0095
L0096                               = &0096
L0097                               = &0097
L0098                               = &0098
L0099                               = &0099
L00A0                               = &00A0
L00A1                               = &00A1
L00A2                               = &00A2
L00A3                               = &00A3
L00A4                               = &00A4
L00A5                               = &00A5
L00FF                               = &00FF
L0100                               = &0100
L0101                               = &0101
L03A9                               = &03A9
L0720                               = &0720
L0721                               = &0721
L0730                               = &0730
L0731                               = &0731
L0740                               = &0740
L087F                               = &087F
L0880                               = &0880
L088F                               = &088F
L0890                               = &0890
L089F                               = &089F
L08A0                               = &08A0
L08A9                               = &08A9
L08AF                               = &08AF
L08B0                               = &08B0
L0C00                               = &0C00
L0CA9                               = &0CA9
sub_C3000                           = &3000
L30F1                               = &30F1
L35F2                               = &35F2
L35F3                               = &35F3
L35F4                               = &35F4
L35F5                               = &35F5
L35F6                               = &35F6
start_of_game_sprites_area          = &3618
sprite_01_apple_graphic             = &3640
sprite_02_bonus_base_graphic        = &3680
sprite_03_extra_character_graphic   = &36C0
sprite_04_extra_character_chomp_1   = &3700
sprite_05_extra_character_chomp_2   = &3740
sprite_06_cherry_graphic            = &3780
sprite_07_center_base_graphic       = &37C0
sprite_08_unknown                   = &3800
sprite_09_unknown                   = &3840
sprite_0A_unknown                   = &3880
sprite_0B_unknown                   = &38C0
sprite_0C_unknown                   = &3900
sprite_0D_unknown                   = &3940
sprite_0E_unknown                   = &3980
sprite_0F_unknown                   = &39C0
sprite_10_unknown                   = &3A00
sprite_11_unknown                   = &3A40
sprite_12_unknown                   = &3A80
sprite_13_unknown                   = &3AC0
sprite_14_unknown                   = &3B00
data_to_relocate_3E00               = &3E00
data_to_relocate_3F00               = &3F00
data_to_relocate_4100               = &4100
data_to_relocate_4200               = &4200
L801B                               = &801B
L90E6                               = &90E6
LA1E6                               = &A1E6
LA2E6                               = &A2E6
video_ula_palette                   = &FE21
user_via_t1c_l                      = &FE64
user_via_t1c_h                      = &FE65
user_via_t1l_l                      = &FE66
user_via_t1l_h                      = &FE67
user_via_acr                        = &FE6B
user_via_ifr                        = &FE6D
osnewl                              = &FFE7
oswrch                              = &FFEE
osword                              = &FFF1
osbyte                              = &FFF4

    ORG &1900

.pydis_start

    ORG &0C00
.relocated_data_C00
    EQUB &C3, &66, &3C, &18, &3C, &66, &C3, &81, &0F, &1E, &3C, &78   ; 1900: C3 66 3C 18 3C 66 C3 81 0F 1E 3C 78    .f<.<f....<x :0C00[4]
    EQUB &F0, &E1, &C3, &87,   0                                      ; 190C: F0 E1 C3 87 00                         .....        :0C0C[4]
    EQUS "~~~"                                                        ; 1911: 7E 7E 7E                               ~~~          :0C11[4]
    EQUB   0, &E7, &E7, &E7, &60, &F0, &F9, &FF, &9F, &0F,   6,   0   ; 1914: 00 E7 E7 E7 60 F0 F9 FF 9F 0F 06 00    ....`....... :0C14[4]
; &1920 referenced 1 time by &1A6E
.scene_and_score_zero_string_data
    EQUB  1, 14, 31, 48,  1,  5, 31                                   ; 1920: 01 0E 1F 30 01 05 1F                   ...0...      :0C20[4]
    EQUS "ENECS"                                                      ; 1927: 45 4E 45 43 53                         ENECS        :0C27[4]
    EQUB   0,  13,  31,   2,  17,   4, &3F, &C0, &60, &60, &F0, &30   ; 192C: 00 0D 1F 02 11 04 3F C0 60 60 F0 30    ......?.``.0 :0C2C[4]
    EQUB &98, &10, &8C, &10, &84, &10, &84, &10, &86, &10, &83, &10   ; 1938: 98 10 8C 10 84 10 84 10 86 10 83 10    ............ :0C38[4]
    EQUB &81, &90, &C0, &F0                                           ; 1944: 81 90 C0 F0                            ....         :0C44[4]
    EQUS "``?"                                                        ; 1948: 60 60 3F                               ``?          :0C48[4]
    EQUB &C0, &1F, &15, &73, &18, &4A, &96, &10, &E2, &0F, &C0,   4   ; 194B: C0 1F 15 73 18 4A 96 10 E2 0F C0 04    ...s.J...... :0C4B[4]
    EQUB &60,   4, &30,   4, &10,   4, &10,   4, &10,   4, &10,   4   ; 1957: 60 04 30 04 10 04 10 04 10 04 10 04    `.0......... :0C57[4]
    EQUB &10,   4, &10,   4, &10, &E4, &30, &A4, &60, &FF, &C0, &1D   ; 1963: 10 04 10 04 10 E4 30 A4 60 FF C0 1D    ......0.`... :0C63[4]
    EQUB &62,   8,   1, &33, &86, &15, &E2, &3F, &C0, &60, &60, &C0   ; 196F: 62 08 01 33 86 15 E2 3F C0 60 60 C0    b..3...?.``. :0C6F[4]
    EQUB &30, &80, &10,   0, &10,   0, &10,   4, &30,   7, &E0, &1C   ; 197B: 30 80 10 00 10 00 10 04 30 07 E0 1C    0.......0... :0C7B[4]
    EQUB   0, &70,   0, &C0,   0, &80,   0, &FF, &F0, &1D, &22, &49   ; 1987: 00 70 00 C0 00 80 00 FF F0 1D 22 49    .p........"I :0C87[4]
    EQUB &83,   5, &A8, &13, &E1, &3F, &C0, &60, &60, &C0, &30, &80   ; 1993: 83 05 A8 13 E1 3F C0 60 60 C0 30 80    .....?.``.0. :0C93[4]
    EQUB &10,   0, &10,   0, &10,   4, &30, &0F, &E0,   0             ; 199F: 10 00 10 00 10 04 30 0F E0 00          ......0...   :0C9F[4]
    EQUB &30,   0, &10, &80, &10, &C0, &30, &7F, &E0, &1D, &33, &79   ; 19A9: 30 00 10 80 10 C0 30 7F E0 1D 33 79    0.....0...3y :0CA9[4]
    EQUB   4, &83, &38, &21, &E0, &0F, &C0,   8, &40,   8, &40, &18   ; 19B5: 04 83 38 21 E0 0F C0 08 40 08 40 18    ..8!....@.@. :0CB5[4]
    EQUB &40, &10                                                     ; 19C1: 40 10                                  @.           :0CC1[4]
    EQUS "@0@$@<@"                                                    ; 19C3: 40 30 40 24 40 3C 40                   @0@$@<@      :0CC3[4]
    EQUB &E0, &40, &80, &40, &FF, &F0,   0, &40,   7, &C0, &1D,   1   ; 19CA: E0 40 80 40 FF F0 00 40 07 C0 1D 01    .@.@...@.... :0CCA[4]
    EQUB &1B,   4, &74, &A2, &42, &E0, &FF, &F0, &80,   0, &80,   0   ; 19D6: 1B 04 74 A2 42 E0 FF F0 80 00 80 00    ..t.B....... :0CD6[4]
    EQUB &80,   0, &80,   0, &FF, &E0, &0E, &30, &0E, &10,   0, &10   ; 19E2: 80 00 80 00 FF E0 0E 30 0E 10 00 10    .......0.... :0CE2[4]
    EQUB   0, &10, &80, &10, &C0, &30, &7F, &E0, &1E, &22, &83, &49   ; 19EE: 00 10 80 10 C0 30 7F E0 1E 22 83 49    .....0...".I :0CEE[4]
    EQUB &17, &97, &14, &E0, &3F, &F0, &60,   0, &C0,   0, &80,   0   ; 19FA: 17 97 14 E0 3F F0 60 00 C0 00 80 00    ....?.`..... :0CFA[4]
    EQUB &80,   0, &80,   0, &84,   0, &FF, &E0, &80, &30, &80, &10   ; 1A06: 80 00 80 00 84 00 FF E0 80 30 80 10    .........0.. :0D06[4]
    EQUB &80, &10, &C0, &30, &7F, &E0, &1E, &53, &19, &6A, &23, &A3   ; 1A12: 80 10 C0 30 7F E0 1E 53 19 6A 23 A3    ...0...S.j#. :0D12[4]
    EQUB &21, &E0, &FF, &F0, &80, &10,   0, &30,   0, &60,   0, &C0   ; 1A1E: 21 E0 FF F0 80 10 00 30 00 60 00 C0    !......0.`.. :0D1E[4]
    EQUB   1, &80,   7,   0,   6,   0,   4,   0,   4,   0,   4,   0   ; 1A2A: 01 80 07 00 06 00 04 00 04 00 04 00    ............ :0D2A[4]
    EQUB   4,   0,   4,   0, &1D, &43,   8, &12, &78, &A5, &24, &E3   ; 1A36: 04 00 04 00 1D 43 08 12 78 A5 24 E3    .....C..x.$. :0D36[4]
    EQUB &3F, &C0, &60, &60, &C0, &30, &80, &10, &80, &10, &C0        ; 1A42: 3F C0 60 60 C0 30 80 10 80 10 C0       ?.``.0.....  :0D42[4]
    EQUS "0d`?"                                                       ; 1A4D: 30 64 60 3F                            0d`?         :0D4D[4]
    EQUB &C0, &E0, &70, &80, &10, &80, &10, &C0, &30, &7F, &E0, &1D   ; 1A51: C0 E0 70 80 10 80 10 C0 30 7F E0 1D    ..p.....0... :0D51[4]
    EQUB &19                                                          ; 1A5D: 19                                     .            :0D5D[4]
    EQUS "j", '"', "R"                                                ; 1A5E: 6A 22 52                               j"R          :0D5E[4]
    EQUB &82, &51, &E3, &3F, &C0, &60, &60, &C0, &30, &80, &10, &80   ; 1A61: 82 51 E3 3F C0 60 60 C0 30 80 10 80    .Q.?.``.0... :0D61[4]
    EQUB &10, &80, &10, &C4, &10, &7F, &F0,   0, &10,   0, &10,   0   ; 1A6D: 10 80 10 C4 10 7F F0 00 10 00 10 00    ............ :0D6D[4]
    EQUB &30,   0, &60, &FF, &C0, &1E                                 ; 1A79: 30 00 60 FF C0 1E                      0.`...       :0D79[4]
    EQUS "Rui#"                                                       ; 1A7F: 52 75 69 23                            Rui#         :0D7F[4]
    EQUB   8, &14, &E3                                                ; 1A83: 08 14 E3                               ...          :0D83[4]
; &1A86 referenced 3 times by &0E38, &0E42, &0E60
.L0D86
    EQUB 0                                                            ; 1A86: 00                                     .            :0D86[4]
; &1A87 referenced 3 times by &0E3D, &0E55, &0E5B
.L0D87
    EQUB   0,   0, &90,   4, &19, &10,   0, &F4, &FF,   2,   0,   1   ; 1A87: 00 00 90 04 19 10 00 F4 FF 02 00 01    ............ :0D87[4]
    EQUB   0                                                          ; 1A93: 00                                     .            :0D93[4]

; &1A94 referenced 1 time by &1650
.begin_new_game
    JSR store_x18_to_0017_and_x10_to_0018                             ; 1A94: 20 50 26                                P&          :0D94[4]
    LDX #2                                                            ; 1A97: A2 02                                  ..           :0D97[4]
    STX lives_remaining_0024_possible                                 ; 1A99: 86 24                                  .$           :0D99[4]
    STX L0003                                                         ; 1A9B: 86 03                                  ..           :0D9B[4]
    DEX                                                               ; 1A9D: CA                                     .            :0D9D[4]
    DEX                                                               ; 1A9E: CA                                     .            :0D9E[4]
    STX zp15_scene_number                                             ; 1A9F: 86 15                                  ..           :0D9F[4]
    STX L0005                                                         ; 1AA1: 86 05                                  ..           :0DA1[4]
    STX L0006                                                         ; 1AA3: 86 06                                  ..           :0DA3[4]
    STX L0007                                                         ; 1AA5: 86 07                                  ..           :0DA5[4]
    STX L0028                                                         ; 1AA7: 86 28                                  .(           :0DA7[4]
    STX L0029                                                         ; 1AA9: 86 29                                  .)           :0DA9[4]
    STX L0016                                                         ; 1AAB: 86 16                                  ..           :0DAB[4]
    STX zp1F_extra_bitmap                                             ; 1AAD: 86 1F                                  ..           :0DAD[4]
    LDA #5                                                            ; 1AAF: A9 05                                  ..           :0DAF[4]
    STA L0011                                                         ; 1AB1: 85 11                                  ..           :0DB1[4]
; &1AB3 referenced 1 time by &1165
.begin_next_level
    LDA zp15_scene_number                                             ; 1AB3: A5 15                                  ..           :0DB3[4]
    SED                                                               ; 1AB5: F8                                     .            :0DB5[4]
    CLC                                                               ; 1AB6: 18                                     .            :0DB6[4]
    ADC #1                                                            ; 1AB7: 69 01                                  i.           :0DB7[4]
    CLD                                                               ; 1AB9: D8                                     .            :0DB9[4]
    STA zp15_scene_number                                             ; 1ABA: 85 15                                  ..           :0DBA[4]
    AND #&0F                                                          ; 1ABC: 29 0F                                  ).           :0DBC[4]
    STA L0023                                                         ; 1ABE: 85 23                                  .#           :0DBE[4]
    INC L0003                                                         ; 1AC0: E6 03                                  ..           :0DC0[4]
    LDA L0003                                                         ; 1AC2: A5 03                                  ..           :0DC2[4]
    STA L0002                                                         ; 1AC4: 85 02                                  ..           :0DC4[4]
    LDA zp15_scene_number                                             ; 1AC6: A5 15                                  ..           :0DC6[4]
    CMP #5                                                            ; 1AC8: C9 05                                  ..           :0DC8[4]
    BCC C0DCF                                                         ; 1ACA: 90 03                                  ..           :0DCA[4]
    LSR A                                                             ; 1ACC: 4A                                     J            :0DCC[4]
    BCC C0DD8                                                         ; 1ACD: 90 09                                  ..           :0DCD[4]
; &1ACF referenced 1 time by &0DCA
.C0DCF
    LDA L0011                                                         ; 1ACF: A5 11                                  ..           :0DCF[4]
    SED                                                               ; 1AD1: F8                                     .            :0DD1[4]
    CLC                                                               ; 1AD2: 18                                     .            :0DD2[4]
    ADC #5                                                            ; 1AD3: 69 05                                  i.           :0DD3[4]
    CLD                                                               ; 1AD5: D8                                     .            :0DD5[4]
    STA L0011                                                         ; 1AD6: 85 11                                  ..           :0DD6[4]
; &1AD8 referenced 1 time by &0DCD
.C0DD8
    LDA #5                                                            ; 1AD8: A9 05                                  ..           :0DD8[4]
    LDX zp15_scene_number                                             ; 1ADA: A6 15                                  ..           :0DDA[4]
    CPX #3                                                            ; 1ADC: E0 03                                  ..           :0DDC[4]
    BCC C0DE2                                                         ; 1ADE: 90 02                                  ..           :0DDE[4]
    LDA #7                                                            ; 1AE0: A9 07                                  ..           :0DE0[4]
; &1AE2 referenced 1 time by &0DDE
.C0DE2
    STA L0014                                                         ; 1AE2: 85 14                                  ..           :0DE2[4]
    STA L001D                                                         ; 1AE4: 85 1D                                  ..           :0DE4[4]
    LDA #&28 ; '('                                                    ; 1AE6: A9 28                                  .(           :0DE6[4]
    STA zp_possible_remaining_cherry_count                            ; 1AE8: 85 08                                  ..           :0DE8[4]
    LDX #&1C                                                          ; 1AEA: A2 1C                                  ..           :0DEA[4]
; &1AEC referenced 1 time by &0DF3
.loop_C0DEC
    LDA more_character_data,X                                         ; 1AEC: BD E3 05                               ...          :0DEC[4]
    JSR oswrch                                                        ; 1AEF: 20 EE FF                                ..          :0DEF[4]   ; Write character
    DEX                                                               ; 1AF2: CA                                     .            :0DF2[4]
    BNE loop_C0DEC                                                    ; 1AF3: D0 F7                                  ..           :0DF3[4]
    STX L0091                                                         ; 1AF5: 86 91                                  ..           :0DF5[4]
    LDA L0023                                                         ; 1AF7: A5 23                                  .#           :0DF7[4]
    ASL A                                                             ; 1AF9: 0A                                     .            :0DF9[4]
    ASL A                                                             ; 1AFA: 0A                                     .            :0DFA[4]
    ASL A                                                             ; 1AFB: 0A                                     .            :0DFB[4]
    ASL A                                                             ; 1AFC: 0A                                     .            :0DFC[4]
    ADC L0023                                                         ; 1AFD: 65 23                                  e#           :0DFD[4]
    ASL A                                                             ; 1AFF: 0A                                     .            :0DFF[4]
    ROL L0091                                                         ; 1B00: 26 91                                  &.           :0E00[4]
    ADC #&32 ; '2'                                                    ; 1B02: 69 32                                  i2           :0E02[4]
    STA L0090                                                         ; 1B04: 85 90                                  ..           :0E04[4]
    LDA L0091                                                         ; 1B06: A5 91                                  ..           :0E06[4]
    ADC #&0C                                                          ; 1B08: 69 0C                                  i.           :0E08[4]
    STA L0091                                                         ; 1B0A: 85 91                                  ..           :0E0A[4]
    LDA #&F7                                                          ; 1B0C: A9 F7                                  ..           :0E0C[4]
; &1B0E referenced 1 time by &0E14
.loop_set_next_colour_to_possibly_white
    STA video_ula_palette                                             ; 1B0E: 8D 21 FE                               .!.          :0E0E[4]
    SEC                                                               ; 1B11: 38                                     8            :0E11[4]
    SBC #&10                                                          ; 1B12: E9 10                                  ..           :0E12[4]
    BCS loop_set_next_colour_to_possibly_white                        ; 1B14: B0 F8                                  ..           :0E14[4]
    LDA #&10                                                          ; 1B16: A9 10                                  ..           :0E16[4]   ; VDU 16 (CLG - clear graphics area)
    JSR oswrch                                                        ; 1B18: 20 EE FF                                ..          :0E18[4]   ; Write character 16
    LDY #&20 ; ' '                                                    ; 1B1B: A0 20                                  .            :0E1B[4]
    LDA (L0090),Y                                                     ; 1B1D: B1 90                                  ..           :0E1D[4]
    LSR A                                                             ; 1B1F: 4A                                     J            :0E1F[4]
    LSR A                                                             ; 1B20: 4A                                     J            :0E20[4]
    LSR A                                                             ; 1B21: 4A                                     J            :0E21[4]
    LSR A                                                             ; 1B22: 4A                                     J            :0E22[4]
    ORA #&C0                                                          ; 1B23: 09 C0                                  ..           :0E23[4]
    STA L060C                                                         ; 1B25: 8D 0C 06                               ...          :0E25[4]
    LDA (L0090),Y                                                     ; 1B28: B1 90                                  ..           :0E28[4]
    AND #&0F                                                          ; 1B2A: 29 0F                                  ).           :0E2A[4]
    ORA #&80                                                          ; 1B2C: 09 80                                  ..           :0E2C[4]
    STA L0608                                                         ; 1B2E: 8D 08 06                               ...          :0E2E[4]
    INY                                                               ; 1B31: C8                                     .            :0E31[4]
    LDA #&1E                                                          ; 1B32: A9 1E                                  ..           :0E32[4]
    STA zero_page_80_dest_screenaddr                                  ; 1B34: 85 80                                  ..           :0E34[4]
    LDA #3                                                            ; 1B36: A9 03                                  ..           :0E36[4]
    STA L0D86                                                         ; 1B38: 8D 86 0D                               ...          :0E38[4]
    LDA #&B0                                                          ; 1B3B: A9 B0                                  ..           :0E3B[4]
    STA L0D87                                                         ; 1B3D: 8D 87 0D                               ...          :0E3D[4]
; &1B40 referenced 1 time by &0E65
.perform_vdu_19_plot
    LDX #5                                                            ; 1B40: A2 05                                  ..           :0E40[4]
; &1B42 referenced 1 time by &0E49
.loop_plot
    LDA L0D86,X                                                       ; 1B42: BD 86 0D                               ...          :0E42[4]
    JSR oswrch                                                        ; 1B45: 20 EE FF                                ..          :0E45[4]   ; Write character
    DEX                                                               ; 1B48: CA                                     .            :0E48[4]
    BPL loop_plot                                                     ; 1B49: 10 F7                                  ..           :0E49[4]
    LDX #&10                                                          ; 1B4B: A2 10                                  ..           :0E4B[4]
    LDA (L0090),Y                                                     ; 1B4D: B1 90                                  ..           :0E4D[4]
; &1B4F referenced 1 time by &0E53
.loop_C0E4F
    JSR oswrch                                                        ; 1B4F: 20 EE FF                                ..          :0E4F[4]   ; Write character
    DEX                                                               ; 1B52: CA                                     .            :0E52[4]
    BNE loop_C0E4F                                                    ; 1B53: D0 FA                                  ..           :0E53[4]
    LDA L0D87                                                         ; 1B55: AD 87 0D                               ...          :0E55[4]
    SEC                                                               ; 1B58: 38                                     8            :0E58[4]
    SBC #&20 ; ' '                                                    ; 1B59: E9 20                                  .            :0E59[4]
    STA L0D87                                                         ; 1B5B: 8D 87 0D                               ...          :0E5B[4]
    BCS C0E63                                                         ; 1B5E: B0 03                                  ..           :0E5E[4]
    DEC L0D86                                                         ; 1B60: CE 86 0D                               ...          :0E60[4]
; &1B63 referenced 1 time by &0E5E
.C0E63
    DEC zero_page_80_dest_screenaddr                                  ; 1B63: C6 80                                  ..           :0E63[4]
    BNE perform_vdu_19_plot                                           ; 1B65: D0 D9                                  ..           :0E65[4]
    LDA #&48 ; 'H'                                                    ; 1B67: A9 48                                  .H           :0E67[4]
    STA zero_page_80_dest_screenaddr                                  ; 1B69: 85 80                                  ..           :0E69[4]
    LDA #&35 ; '5'                                                    ; 1B6B: A9 35                                  .5           :0E6B[4]
    STA zero_page_81_dest_screenaddr                                  ; 1B6D: 85 81                                  ..           :0E6D[4]
    LDA #3                                                            ; 1B6F: A9 03                                  ..           :0E6F[4]
    STA zero_page_82                                                  ; 1B71: 85 82                                  ..           :0E71[4]
    LDA #0                                                            ; 1B73: A9 00                                  ..           :0E73[4]
    STA zero_page_83                                                  ; 1B75: 85 83                                  ..           :0E75[4]
    STA L0092                                                         ; 1B77: 85 92                                  ..           :0E77[4]
    LDA #&80                                                          ; 1B79: A9 80                                  ..           :0E79[4]
    STA zero_page_84_source_spriteaddr                                ; 1B7B: 85 84                                  ..           :0E7B[4]
; &1B7D referenced 1 time by &0FE7
.C0E7D
    LDX L0092                                                         ; 1B7D: A6 92                                  ..           :0E7D[4]
    LDA #0                                                            ; 1B7F: A9 00                                  ..           :0E7F[4]
    STA L0730,X                                                       ; 1B81: 9D 30 07                               .0.          :0E81[4]
    LDY zero_page_83                                                  ; 1B84: A4 83                                  ..           :0E84[4]
    LDA (L0090),Y                                                     ; 1B86: B1 90                                  ..           :0E86[4]
    AND zero_page_84_source_spriteaddr                                ; 1B88: 25 84                                  %.           :0E88[4]
    BNE C0E8F                                                         ; 1B8A: D0 03                                  ..           :0E8A[4]
    JMP C0FA0                                                         ; 1B8C: 4C A0 0F                               L..          :0E8C[4]

; &1B8F referenced 1 time by &0E8A
.C0E8F
    LDA #&FF                                                          ; 1B8F: A9 FF                                  ..           :0E8F[4]
    CPX #&65 ; 'e'                                                    ; 1B91: E0 65                                  .e           :0E91[4]
    BNE C0E97                                                         ; 1B93: D0 02                                  ..           :0E93[4]
    LDA #0                                                            ; 1B95: A9 00                                  ..           :0E95[4]
; &1B97 referenced 1 time by &0E93
.C0E97
    LDX #&77 ; 'w'                                                    ; 1B97: A2 77                                  .w           :0E97[4]
; &1B99 referenced 1 time by &0E9D
.loop_C0E99
    STA L0630,X                                                       ; 1B99: 9D 30 06                               .0.          :0E99[4]
    DEX                                                               ; 1B9C: CA                                     .            :0E9C[4]
    BPL loop_C0E99                                                    ; 1B9D: 10 FA                                  ..           :0E9D[4]
    TAX                                                               ; 1B9F: AA                                     .            :0E9F[4]
    BEQ C0EC6                                                         ; 1BA0: F0 24                                  .$           :0EA0[4]
    LDX #&0D                                                          ; 1BA2: A2 0D                                  ..           :0EA2[4]
; &1BA4 referenced 1 time by &0EA9
.loop_C0EA4
    JSR sub_C0B84                                                     ; 1BA4: 20 84 0B                                ..          :0EA4[4]
    CPX #&6D ; 'm'                                                    ; 1BA7: E0 6D                                  .m           :0EA7[4]
    BNE loop_C0EA4                                                    ; 1BA9: D0 F9                                  ..           :0EA9[4]
    DEC L063D                                                         ; 1BAB: CE 3D 06                               .=.          :0EAB[4]
    DEC L0640                                                         ; 1BAE: CE 40 06                               .@.          :0EAE[4]
    DEC L0697                                                         ; 1BB1: CE 97 06                               ...          :0EB1[4]
    DEC L069A                                                         ; 1BB4: CE 9A 06                               ...          :0EB4[4]
    LDA #&AA                                                          ; 1BB7: A9 AA                                  ..           :0EB7[4]
    STA L0643                                                         ; 1BB9: 8D 43 06                               .C.          :0EB9[4]
    STA L0691                                                         ; 1BBC: 8D 91 06                               ...          :0EBC[4]
    LSR A                                                             ; 1BBF: 4A                                     J            :0EBF[4]
    STA L0646                                                         ; 1BC0: 8D 46 06                               .F.          :0EC0[4]
    STA L0694                                                         ; 1BC3: 8D 94 06                               ...          :0EC3[4]
; &1BC6 referenced 1 time by &0EA0
.C0EC6
    LDA #0                                                            ; 1BC6: A9 00                                  ..           :0EC6[4]
    STA zero_page_85_source_spriteaddr                                ; 1BC8: 85 85                                  ..           :0EC8[4]
    LDY zero_page_83                                                  ; 1BCA: A4 83                                  ..           :0ECA[4]
    DEY                                                               ; 1BCC: 88                                     .            :0ECC[4]
    DEY                                                               ; 1BCD: 88                                     .            :0ECD[4]
    BMI C0EE3                                                         ; 1BCE: 30 13                                  0.           :0ECE[4]
    LDA (L0090),Y                                                     ; 1BD0: B1 90                                  ..           :0ED0[4]
    AND zero_page_84_source_spriteaddr                                ; 1BD2: 25 84                                  %.           :0ED2[4]
    BEQ C0EE3                                                         ; 1BD4: F0 0D                                  ..           :0ED4[4]
    INC zero_page_85_source_spriteaddr                                ; 1BD6: E6 85                                  ..           :0ED6[4]
    INC zero_page_85_source_spriteaddr                                ; 1BD8: E6 85                                  ..           :0ED8[4]
    LDX #1                                                            ; 1BDA: A2 01                                  ..           :0EDA[4]
; &1BDC referenced 1 time by &0EE1
.loop_C0EDC
    JSR sub_C0B84                                                     ; 1BDC: 20 84 0B                                ..          :0EDC[4]
    CPX #&19                                                          ; 1BDF: E0 19                                  ..           :0EDF[4]
    BNE loop_C0EDC                                                    ; 1BE1: D0 F9                                  ..           :0EE1[4]
; &1BE3 referenced 2 times by &0ECE, &0ED4
.C0EE3
    LDY zero_page_83                                                  ; 1BE3: A4 83                                  ..           :0EE3[4]
    INY                                                               ; 1BE5: C8                                     .            :0EE5[4]
    INY                                                               ; 1BE6: C8                                     .            :0EE6[4]
    CPY #&1A                                                          ; 1BE7: C0 1A                                  ..           :0EE7[4]
    BCS C0EFC                                                         ; 1BE9: B0 11                                  ..           :0EE9[4]
    LDA (L0090),Y                                                     ; 1BEB: B1 90                                  ..           :0EEB[4]
    AND zero_page_84_source_spriteaddr                                ; 1BED: 25 84                                  %.           :0EED[4]
    BEQ C0EFC                                                         ; 1BEF: F0 0B                                  ..           :0EEF[4]
    INC zero_page_85_source_spriteaddr                                ; 1BF1: E6 85                                  ..           :0EF1[4]
    LDX #&61 ; 'a'                                                    ; 1BF3: A2 61                                  .a           :0EF3[4]
; &1BF5 referenced 1 time by &0EFA
.loop_C0EF5
    JSR sub_C0B84                                                     ; 1BF5: 20 84 0B                                ..          :0EF5[4]
    CPX #&79 ; 'y'                                                    ; 1BF8: E0 79                                  .y           :0EF8[4]
    BNE loop_C0EF5                                                    ; 1BFA: D0 F9                                  ..           :0EFA[4]
; &1BFC referenced 2 times by &0EE9, &0EEF
.C0EFC
    LDY zero_page_83                                                  ; 1BFC: A4 83                                  ..           :0EFC[4]
    LDA zero_page_84_source_spriteaddr                                ; 1BFE: A5 84                                  ..           :0EFE[4]
    LSR A                                                             ; 1C00: 4A                                     J            :0F00[4]
    BCC C0F05                                                         ; 1C01: 90 02                                  ..           :0F01[4]
    ROR A                                                             ; 1C03: 6A                                     j            :0F03[4]
    INY                                                               ; 1C04: C8                                     .            :0F04[4]
; &1C05 referenced 1 time by &0F01
.C0F05
    AND (L0090),Y                                                     ; 1C05: 31 90                                  1.           :0F05[4]
    BEQ C0F26                                                         ; 1C07: F0 1D                                  ..           :0F07[4]
    LDX #&0E                                                          ; 1C09: A2 0E                                  ..           :0F09[4]
; &1C0B referenced 1 time by &0F10
.loop_C0F0B
    JSR sub_C0B84                                                     ; 1C0B: 20 84 0B                                ..          :0F0B[4]
    CPX #&6E ; 'n'                                                    ; 1C0E: E0 6E                                  .n           :0F0E[4]
    BNE loop_C0F0B                                                    ; 1C10: D0 F9                                  ..           :0F10[4]
    LDX #&55 ; 'U'                                                    ; 1C12: A2 55                                  .U           :0F12[4]
    LDA zero_page_85_source_spriteaddr                                ; 1C14: A5 85                                  ..           :0F14[4]
    ORA #8                                                            ; 1C16: 09 08                                  ..           :0F16[4]
    STA zero_page_85_source_spriteaddr                                ; 1C18: 85 85                                  ..           :0F18[4]
    LSR A                                                             ; 1C1A: 4A                                     J            :0F1A[4]
    BCC C0F20                                                         ; 1C1B: 90 03                                  ..           :0F1B[4]
    STX L06A1                                                         ; 1C1D: 8E A1 06                               ...          :0F1D[4]
; &1C20 referenced 1 time by &0F1B
.C0F20
    LSR A                                                             ; 1C20: 4A                                     J            :0F20[4]
    BCC C0F26                                                         ; 1C21: 90 03                                  ..           :0F21[4]
    STX L063B                                                         ; 1C23: 8E 3B 06                               .;.          :0F23[4]
; &1C26 referenced 2 times by &0F07, &0F21
.C0F26
    LDY zero_page_83                                                  ; 1C26: A4 83                                  ..           :0F26[4]
    LDA zero_page_84_source_spriteaddr                                ; 1C28: A5 84                                  ..           :0F28[4]
    ASL A                                                             ; 1C2A: 0A                                     .            :0F2A[4]
    BCC C0F31                                                         ; 1C2B: 90 04                                  ..           :0F2B[4]
    ROL A                                                             ; 1C2D: 2A                                     *            :0F2D[4]
    DEY                                                               ; 1C2E: 88                                     .            :0F2E[4]
    BMI C0F52                                                         ; 1C2F: 30 21                                  0!           :0F2F[4]
; &1C31 referenced 1 time by &0F2B
.C0F31
    AND (L0090),Y                                                     ; 1C31: 31 90                                  1.           :0F31[4]
    BEQ C0F52                                                         ; 1C33: F0 1D                                  ..           :0F33[4]
    LDX #&0C                                                          ; 1C35: A2 0C                                  ..           :0F35[4]
; &1C37 referenced 1 time by &0F3C
.loop_C0F37
    JSR sub_C0B84                                                     ; 1C37: 20 84 0B                                ..          :0F37[4]
    CPX #&6C ; 'l'                                                    ; 1C3A: E0 6C                                  .l           :0F3A[4]
    BNE loop_C0F37                                                    ; 1C3C: D0 F9                                  ..           :0F3C[4]
    LDX #&AA                                                          ; 1C3E: A2 AA                                  ..           :0F3E[4]
    LDA zero_page_85_source_spriteaddr                                ; 1C40: A5 85                                  ..           :0F40[4]
    ORA #4                                                            ; 1C42: 09 04                                  ..           :0F42[4]
    STA zero_page_85_source_spriteaddr                                ; 1C44: 85 85                                  ..           :0F44[4]
    LSR A                                                             ; 1C46: 4A                                     J            :0F46[4]
    BCC C0F4C                                                         ; 1C47: 90 03                                  ..           :0F47[4]
    STX L069C                                                         ; 1C49: 8E 9C 06                               ...          :0F49[4]
; &1C4C referenced 1 time by &0F47
.C0F4C
    LSR A                                                             ; 1C4C: 4A                                     J            :0F4C[4]
    BCC C0F52                                                         ; 1C4D: 90 03                                  ..           :0F4D[4]
    STX L0636                                                         ; 1C4F: 8E 36 06                               .6.          :0F4F[4]
; &1C52 referenced 3 times by &0F2F, &0F33, &0F4D
.C0F52
    LDX L0092                                                         ; 1C52: A6 92                                  ..           :0F52[4]
    ASL zero_page_85_source_spriteaddr                                ; 1C54: 06 85                                  ..           :0F54[4]
    ASL zero_page_85_source_spriteaddr                                ; 1C56: 06 85                                  ..           :0F56[4]
    INC zero_page_85_source_spriteaddr                                ; 1C58: E6 85                                  ..           :0F58[4]
    LDA zero_page_85_source_spriteaddr                                ; 1C5A: A5 85                                  ..           :0F5A[4]
    STA L0730,X                                                       ; 1C5C: 9D 30 07                               .0.          :0F5C[4]
    LDA zero_page_80_dest_screenaddr                                  ; 1C5F: A5 80                                  ..           :0F5F[4]
    STA L0088                                                         ; 1C61: 85 88                                  ..           :0F61[4]
    LDA zero_page_81_dest_screenaddr                                  ; 1C63: A5 81                                  ..           :0F63[4]
    STA L0089                                                         ; 1C65: 85 89                                  ..           :0F65[4]
    LDX #0                                                            ; 1C67: A2 00                                  ..           :0F67[4]
    LDY zero_page_82                                                  ; 1C69: A4 82                                  ..           :0F69[4]
    LDA #&14                                                          ; 1C6B: A9 14                                  ..           :0F6B[4]
    STA zero_page_85_source_spriteaddr                                ; 1C6D: 85 85                                  ..           :0F6D[4]
; &1C6F referenced 1 time by &0F9E
.C0F6F
    LDA #6                                                            ; 1C6F: A9 06                                  ..           :0F6F[4]
    STA L0086                                                         ; 1C71: 85 86                                  ..           :0F71[4]
; &1C73 referenced 1 time by &0F82
.loop_C0F73
    LDA L0630,X                                                       ; 1C73: BD 30 06                               .0.          :0F73[4]
    AND (L0088),Y                                                     ; 1C76: 31 88                                  1.           :0F76[4]
    STA (L0088),Y                                                     ; 1C78: 91 88                                  ..           :0F78[4]
    INX                                                               ; 1C7A: E8                                     .            :0F7A[4]
    TYA                                                               ; 1C7B: 98                                     .            :0F7B[4]
    CLC                                                               ; 1C7C: 18                                     .            :0F7C[4]
    ADC #8                                                            ; 1C7D: 69 08                                  i.           :0F7D[4]
    TAY                                                               ; 1C7F: A8                                     .            :0F7F[4]
    DEC L0086                                                         ; 1C80: C6 86                                  ..           :0F80[4]
    BNE loop_C0F73                                                    ; 1C82: D0 EF                                  ..           :0F82[4]
    TYA                                                               ; 1C84: 98                                     .            :0F84[4]
    SEC                                                               ; 1C85: 38                                     8            :0F85[4]
    SBC #&2F ; '/'                                                    ; 1C86: E9 2F                                  ./           :0F86[4]
    TAY                                                               ; 1C88: A8                                     .            :0F88[4]
    CPY #8                                                            ; 1C89: C0 08                                  ..           :0F89[4]
    BNE C0F9C                                                         ; 1C8B: D0 0F                                  ..           :0F8B[4]
    LDY #0                                                            ; 1C8D: A0 00                                  ..           :0F8D[4]
    LDA L0088                                                         ; 1C8F: A5 88                                  ..           :0F8F[4]
    CLC                                                               ; 1C91: 18                                     .            :0F91[4]
    ADC #&80                                                          ; 1C92: 69 80                                  i.           :0F92[4]
    STA L0088                                                         ; 1C94: 85 88                                  ..           :0F94[4]
    LDA L0089                                                         ; 1C96: A5 89                                  ..           :0F96[4]
    ADC #2                                                            ; 1C98: 69 02                                  i.           :0F98[4]
    STA L0089                                                         ; 1C9A: 85 89                                  ..           :0F9A[4]
; &1C9C referenced 1 time by &0F8B
.C0F9C
    DEC zero_page_85_source_spriteaddr                                ; 1C9C: C6 85                                  ..           :0F9C[4]
    BNE C0F6F                                                         ; 1C9E: D0 CF                                  ..           :0F9E[4]
; &1CA0 referenced 1 time by &0E8C
.C0FA0
    INC L0092                                                         ; 1CA0: E6 92                                  ..           :0FA0[4]
    LDA zero_page_80_dest_screenaddr                                  ; 1CA2: A5 80                                  ..           :0FA2[4]
    CLC                                                               ; 1CA4: 18                                     .            :0FA4[4]
    ADC #&28 ; '('                                                    ; 1CA5: 69 28                                  i(           :0FA5[4]
    STA zero_page_80_dest_screenaddr                                  ; 1CA7: 85 80                                  ..           :0FA7[4]
    BCC C0FAD                                                         ; 1CA9: 90 02                                  ..           :0FA9[4]
    INC zero_page_81_dest_screenaddr                                  ; 1CAB: E6 81                                  ..           :0FAB[4]
; &1CAD referenced 1 time by &0FA9
.C0FAD
    LSR zero_page_84_source_spriteaddr                                ; 1CAD: 46 84                                  F.           :0FAD[4]
    BCC C0FB5                                                         ; 1CAF: 90 04                                  ..           :0FAF[4]
    ROR zero_page_84_source_spriteaddr                                ; 1CB1: 66 84                                  f.           :0FB1[4]
    INC zero_page_83                                                  ; 1CB3: E6 83                                  ..           :0FB3[4]
; &1CB5 referenced 1 time by &0FAF
.C0FB5
    LDA L0092                                                         ; 1CB5: A5 92                                  ..           :0FB5[4]
    AND #&0F                                                          ; 1CB7: 29 0F                                  ).           :0FB7[4]
    CMP #&0C                                                          ; 1CB9: C9 0C                                  ..           :0FB9[4]
    BNE C0FE7                                                         ; 1CBB: D0 2A                                  .*           :0FBB[4]
    LDA L0092                                                         ; 1CBD: A5 92                                  ..           :0FBD[4]
    CLC                                                               ; 1CBF: 18                                     .            :0FBF[4]
    ADC #4                                                            ; 1CC0: 69 04                                  i.           :0FC0[4]
    STA L0092                                                         ; 1CC2: 85 92                                  ..           :0FC2[4]
    INC zero_page_83                                                  ; 1CC4: E6 83                                  ..           :0FC4[4]
    LDA #&80                                                          ; 1CC6: A9 80                                  ..           :0FC6[4]
    STA zero_page_84_source_spriteaddr                                ; 1CC8: 85 84                                  ..           :0FC8[4]
    LDA zero_page_80_dest_screenaddr                                  ; 1CCA: A5 80                                  ..           :0FCA[4]
    CLC                                                               ; 1CCC: 18                                     .            :0FCC[4]
    ADC #&20 ; ' '                                                    ; 1CCD: 69 20                                  i            :0FCD[4]
    STA zero_page_80_dest_screenaddr                                  ; 1CCF: 85 80                                  ..           :0FCF[4]
    LDA zero_page_81_dest_screenaddr                                  ; 1CD1: A5 81                                  ..           :0FD1[4]
    ADC #3                                                            ; 1CD3: 69 03                                  i.           :0FD3[4]
    STA zero_page_81_dest_screenaddr                                  ; 1CD5: 85 81                                  ..           :0FD5[4]
    LDY zero_page_82                                                  ; 1CD7: A4 82                                  ..           :0FD7[4]
    JSR sub_C1A3C                                                     ; 1CD9: 20 3C 1A                                <.          :0FD9[4]
    JSR sub_C1A3C                                                     ; 1CDC: 20 3C 1A                                <.          :0FDC[4]
    STY zero_page_82                                                  ; 1CDF: 84 82                                  ..           :0FDF[4]
    LDY zero_page_83                                                  ; 1CE1: A4 83                                  ..           :0FE1[4]
    CPY #&1A                                                          ; 1CE3: C0 1A                                  ..           :0FE3[4]
    BEQ C0FEA                                                         ; 1CE5: F0 03                                  ..           :0FE5[4]
; &1CE7 referenced 1 time by &0FBB
.C0FE7
    JMP C0E7D                                                         ; 1CE7: 4C 7D 0E                               L}.          :0FE7[4]

; &1CEA referenced 1 time by &0FE5
.C0FEA
    LDA (L0090),Y                                                     ; 1CEA: B1 90                                  ..           :0FEA[4]
    STA L0092                                                         ; 1CEC: 85 92                                  ..           :0FEC[4]
; &1CEE referenced 1 time by &1023
.C0FEE
    INY                                                               ; 1CEE: C8                                     .            :0FEE[4]
    TYA                                                               ; 1CEF: 98                                     .            :0FEF[4]
    PHA                                                               ; 1CF0: 48                                     H            :0FF0[4]
    LDA (L0090),Y                                                     ; 1CF1: B1 90                                  ..           :0FF1[4]
    PHA                                                               ; 1CF3: 48                                     H            :0FF3[4]
    AND #&F0                                                          ; 1CF4: 29 F0                                  ).           :0FF4[4]
    LSR A                                                             ; 1CF6: 4A                                     J            :0FF6[4]
    LSR A                                                             ; 1CF7: 4A                                     J            :0FF7[4]
    STA L0093                                                         ; 1CF8: 85 93                                  ..           :0FF8[4]
    LSR A                                                             ; 1CFA: 4A                                     J            :0FFA[4]
    LSR A                                                             ; 1CFB: 4A                                     J            :0FFB[4]
    STA L0094                                                         ; 1CFC: 85 94                                  ..           :0FFC[4]
    ADC L0093                                                         ; 1CFE: 65 93                                  e.           :0FFE[4]
    ADC #&0A                                                          ; 1D00: 69 0A                                  i.           :1000[4]
    TAX                                                               ; 1D02: AA                                     .            :1002[4]
    PLA                                                               ; 1D03: 68                                     h            :1003[4]
    AND #&0F                                                          ; 1D04: 29 0F                                  ).           :1004[4]
    ASL A                                                             ; 1D06: 0A                                     .            :1006[4]
    STA L0093                                                         ; 1D07: 85 93                                  ..           :1007[4]
    ASL A                                                             ; 1D09: 0A                                     .            :1009[4]
    ASL A                                                             ; 1D0A: 0A                                     .            :100A[4]
    ASL A                                                             ; 1D0B: 0A                                     .            :100B[4]
    ORA L0094                                                         ; 1D0C: 05 94                                  ..           :100C[4]
    STA L0094                                                         ; 1D0E: 85 94                                  ..           :100E[4]
    LDA L0093                                                         ; 1D10: A5 93                                  ..           :1010[4]
    ASL A                                                             ; 1D12: 0A                                     .            :1012[4]
    ASL A                                                             ; 1D13: 0A                                     .            :1013[4]
    ASL A                                                             ; 1D14: 0A                                     .            :1014[4]
    ADC L0093                                                         ; 1D15: 65 93                                  e.           :1015[4]
    ADC #&15                                                          ; 1D17: 69 15                                  i.           :1017[4]
    CPY L0092                                                         ; 1D19: C4 92                                  ..           :1019[4]
    TAY                                                               ; 1D1B: A8                                     .            :101B[4]
    JSR sub_C271B                                                     ; 1D1C: 20 1B 27                                .'          :101C[4]
    PLA                                                               ; 1D1F: 68                                     h            :101F[4]
    TAY                                                               ; 1D20: A8                                     .            :1020[4]
    CPY #&1F                                                          ; 1D21: C0 1F                                  ..           :1021[4]
    BNE C0FEE                                                         ; 1D23: D0 C9                                  ..           :1023[4]
    JSR sub_C1A6C                                                     ; 1D25: 20 6C 1A                                l.          :1025[4]
    JSR sub_C26E8                                                     ; 1D28: 20 E8 26                                .&          :1028[4]
    LDA #6                                                            ; 1D2B: A9 06                                  ..           :102B[4]
    STA L0009                                                         ; 1D2D: 85 09                                  ..           :102D[4]
    STA L0090                                                         ; 1D2F: 85 90                                  ..           :102F[4]
; &1D31 referenced 3 times by &106A, &106F, &108A
.C1031
    JSR sub_C25E5                                                     ; 1D31: 20 E5 25                                .%          :1031[4]
; &1D34 referenced 1 time by &1037
.loop_C1034
    SEC                                                               ; 1D34: 38                                     8            :1034[4]
    SBC #&0A                                                          ; 1D35: E9 0A                                  ..           :1035[4]
    BCS loop_C1034                                                    ; 1D37: B0 FB                                  ..           :1037[4]
    ADC #&0B                                                          ; 1D39: 69 0B                                  i.           :1039[4]
    PHA                                                               ; 1D3B: 48                                     H            :103B[4]
    STA L0091                                                         ; 1D3C: 85 91                                  ..           :103C[4]
    ASL A                                                             ; 1D3E: 0A                                     .            :103E[4]
    ASL A                                                             ; 1D3F: 0A                                     .            :103F[4]
    ADC L0091                                                         ; 1D40: 65 91                                  e.           :1040[4]
    ADC #&0A                                                          ; 1D42: 69 0A                                  i.           :1042[4]
    ASL A                                                             ; 1D44: 0A                                     .            :1044[4]
    LDY L0090                                                         ; 1D45: A4 90                                  ..           :1045[4]
    STA L08AF,Y                                                       ; 1D47: 99 AF 08                               ...          :1047[4]
    TAX                                                               ; 1D4A: AA                                     .            :104A[4]
    LDA #0                                                            ; 1D4B: A9 00                                  ..           :104B[4]
    STA L061F,Y                                                       ; 1D4D: 99 1F 06                               ...          :104D[4]
    JSR sub_C25E5                                                     ; 1D50: 20 E5 25                                .%          :1050[4]
; &1D53 referenced 1 time by &1056
.loop_C1053
    SEC                                                               ; 1D53: 38                                     8            :1053[4]
    SBC #&0B                                                          ; 1D54: E9 0B                                  ..           :1054[4]
    BCS loop_C1053                                                    ; 1D56: B0 FB                                  ..           :1056[4]
    ADC #&0B                                                          ; 1D58: 69 0B                                  i.           :1058[4]
    ASL A                                                             ; 1D5A: 0A                                     .            :105A[4]
    STA L0091                                                         ; 1D5B: 85 91                                  ..           :105B[4]
    ASL A                                                             ; 1D5D: 0A                                     .            :105D[4]
    ASL A                                                             ; 1D5E: 0A                                     .            :105E[4]
    ASL A                                                             ; 1D5F: 0A                                     .            :105F[4]
    STA L0092                                                         ; 1D60: 85 92                                  ..           :1060[4]
    PLA                                                               ; 1D62: 68                                     h            :1062[4]
    ORA L0092                                                         ; 1D63: 05 92                                  ..           :1063[4]
    TAY                                                               ; 1D65: A8                                     .            :1065[4]
    LDA L0740,Y                                                       ; 1D66: B9 40 07                               .@.          :1066[4]
    LSR A                                                             ; 1D69: 4A                                     J            :1069[4]
    BCS C1031                                                         ; 1D6A: B0 C5                                  ..           :106A[4]
    LDA L0730,Y                                                       ; 1D6C: B9 30 07                               .0.          :106C[4]
    BNE C1031                                                         ; 1D6F: D0 C0                                  ..           :106F[4]
    ORA #&80                                                          ; 1D71: 09 80                                  ..           :1071[4]
    STA L0730,Y                                                       ; 1D73: 99 30 07                               .0.          :1073[4]
    LDA L0091                                                         ; 1D76: A5 91                                  ..           :1076[4]
    ASL A                                                             ; 1D78: 0A                                     .            :1078[4]
    ASL A                                                             ; 1D79: 0A                                     .            :1079[4]
    ASL A                                                             ; 1D7A: 0A                                     .            :107A[4]
    ADC L0091                                                         ; 1D7B: 65 91                                  e.           :107B[4]
    ADC #&15                                                          ; 1D7D: 69 15                                  i.           :107D[4]
    LDY L0090                                                         ; 1D7F: A4 90                                  ..           :107F[4]
    STA L060F,Y                                                       ; 1D81: 99 0F 06                               ...          :1081[4]
    TAY                                                               ; 1D84: A8                                     .            :1084[4]
    JSR sub_C1E08                                                     ; 1D85: 20 08 1E                                ..          :1085[4]
    DEC L0090                                                         ; 1D88: C6 90                                  ..           :1088[4]
    BNE C1031                                                         ; 1D8A: D0 A5                                  ..           :108A[4]
; &1D8C referenced 1 time by &1248
.C108C
    LDA #7                                                            ; 1D8C: A9 07                                  ..           :108C[4]
    JSR sub_C0A52                                                     ; 1D8E: 20 52 0A                                R.          :108E[4]
    LDX #3                                                            ; 1D91: A2 03                                  ..           :1091[4]
    LDA #0                                                            ; 1D93: A9 00                                  ..           :1093[4]
; &1D95 referenced 1 time by &1098
.loop_C1095
    STA L003C,X                                                       ; 1D95: 95 3C                                  .<           :1095[4]
    DEX                                                               ; 1D97: CA                                     .            :1097[4]
    BPL loop_C1095                                                    ; 1D98: 10 FB                                  ..           :1098[4]
    TXS                                                               ; 1D9A: 9A                                     .            :109A[4]
    STA L001C                                                         ; 1D9B: 85 1C                                  ..           :109B[4]
    STA L001B                                                         ; 1D9D: 85 1B                                  ..           :109D[4]
    STA L0012                                                         ; 1D9F: 85 12                                  ..           :109F[4]
    STA L0013                                                         ; 1DA1: 85 13                                  ..           :10A1[4]
    STA L0022                                                         ; 1DA3: 85 22                                  ."           :10A3[4]
    STA L0027                                                         ; 1DA5: 85 27                                  .'           :10A5[4]
    LDX #&10                                                          ; 1DA7: A2 10                                  ..           :10A7[4]
; &1DA9 referenced 1 time by &10B4
.loop_C10A9
    LDA L05FF,X                                                       ; 1DA9: BD FF 05                               ...          :10A9[4]
    STA video_ula_palette                                             ; 1DAC: 8D 21 FE                               .!.          :10AC[4]
    STX L000C                                                         ; 1DAF: 86 0C                                  ..           :10AF[4]
    STX L000B                                                         ; 1DB1: 86 0B                                  ..           :10B1[4]
    DEX                                                               ; 1DB3: CA                                     .            :10B3[4]
    BNE loop_C10A9                                                    ; 1DB4: D0 F3                                  ..           :10B4[4]
    LDA #&40 ; '@'                                                    ; 1DB6: A9 40                                  .@           :10B6[4]
    STA user_via_acr                                                  ; 1DB8: 8D 6B FE                               .k.          :10B8[4]
    LDA #&90                                                          ; 1DBB: A9 90                                  ..           :10BB[4]
    STA user_via_t1l_l                                                ; 1DBD: 8D 66 FE                               .f.          :10BD[4]
    STA user_via_t1l_h                                                ; 1DC0: 8D 67 FE                               .g.          :10C0[4]
    STA user_via_t1c_h                                                ; 1DC3: 8D 65 FE                               .e.          :10C3[4]
    LDA #&19                                                          ; 1DC6: A9 19                                  ..           :10C6[4]
    JSR C0A40                                                         ; 1DC8: 20 40 0A                                @.          :10C8[4]
    LDX #&46 ; 'F'                                                    ; 1DCB: A2 46                                  .F           :10CB[4]
    STX L0020                                                         ; 1DCD: 86 20                                  .            :10CD[4]
    LDY #&ED                                                          ; 1DCF: A0 ED                                  ..           :10CF[4]
    STY L0021                                                         ; 1DD1: 84 21                                  .!           :10D1[4]
    JSR sub_C0A5C                                                     ; 1DD3: 20 5C 0A                                \.          :10D3[4]
; &1DD6 referenced 1 time by &112D
.C10D6
    JSR sub_C124B                                                     ; 1DD6: 20 4B 12                                K.          :10D6[4]
    JSR sub_C1BA1                                                     ; 1DD9: 20 A1 1B                                ..          :10D9[4]
    LDA L000F                                                         ; 1DDC: A5 0F                                  ..           :10DC[4]
    LSR A                                                             ; 1DDE: 4A                                     J            :10DE[4]
    BCC C10E4                                                         ; 1DDF: 90 03                                  ..           :10DF[4]
    JSR sub_C1BA1                                                     ; 1DE1: 20 A1 1B                                ..          :10E1[4]
; &1DE4 referenced 1 time by &10DF
.C10E4
    JSR relocated_data_900                                            ; 1DE4: 20 00 09                                ..          :10E4[4]
    LDA L0014                                                         ; 1DE7: A5 14                                  ..           :10E7[4]
    CMP #&FD                                                          ; 1DE9: C9 FD                                  ..           :10E9[4]
    BNE C10F3                                                         ; 1DEB: D0 06                                  ..           :10EB[4]
    LDA L000F                                                         ; 1DED: A5 0F                                  ..           :10ED[4]
    AND #3                                                            ; 1DEF: 29 03                                  ).           :10EF[4]
    BEQ C10FF                                                         ; 1DF1: F0 0C                                  ..           :10F1[4]
; &1DF3 referenced 1 time by &10EB
.C10F3
    LDA zp15_scene_number                                             ; 1DF3: A5 15                                  ..           :10F3[4]
    CMP #8                                                            ; 1DF5: C9 08                                  ..           :10F5[4]
    BCC C1102                                                         ; 1DF7: 90 09                                  ..           :10F7[4]
    LDA L000F                                                         ; 1DF9: A5 0F                                  ..           :10F9[4]
    AND #7                                                            ; 1DFB: 29 07                                  ).           :10FB[4]
    BNE C1102                                                         ; 1DFD: D0 03                                  ..           :10FD[4]
; &1DFF referenced 1 time by &10F1
.C10FF
    JSR sub_C1FDC                                                     ; 1DFF: 20 DC 1F                                ..          :10FF[4]
; &1E02 referenced 2 times by &10F7, &10FD
.C1102
    LDY L0001                                                         ; 1E02: A4 01                                  ..           :1102[4]
    LDA L0720,Y                                                       ; 1E04: B9 20 07                               . .          :1104[4]
    LSR A                                                             ; 1E07: 4A                                     J            :1107[4]
    BCS C1115                                                         ; 1E08: B0 0B                                  ..           :1108[4]
    LDA L000F                                                         ; 1E0A: A5 0F                                  ..           :110A[4]
    AND #7                                                            ; 1E0C: 29 07                                  ).           :110C[4]
    CMP #4                                                            ; 1E0E: C9 04                                  ..           :110E[4]
    BNE C1115                                                         ; 1E10: D0 03                                  ..           :1110[4]
    JSR sub_C1FDC                                                     ; 1E12: 20 DC 1F                                ..          :1112[4]
; &1E15 referenced 2 times by &1108, &1110
.C1115
    LDA L0027                                                         ; 1E15: A5 27                                  .'           :1115[4]
    BEQ C1121                                                         ; 1E17: F0 08                                  ..           :1117[4]
    LDA #0                                                            ; 1E19: A9 00                                  ..           :1119[4]
    JSR sub_C25B2                                                     ; 1E1B: 20 B2 25                                .%          :111B[4]
    JMP C1134                                                         ; 1E1E: 4C 34 11                               L4.          :111E[4]

; &1E21 referenced 1 time by &1117
.C1121
    LDA zp_possible_remaining_cherry_count                            ; 1E21: A5 08                                  ..           :1121[4]
    BEQ C112F                                                         ; 1E23: F0 0A                                  ..           :1123[4]
    LDA L001D                                                         ; 1E25: A5 1D                                  ..           :1125[4]
    BMI C112F                                                         ; 1E27: 30 06                                  0.           :1127[4]
    LDA zp1F_extra_bitmap                                             ; 1E29: A5 1F                                  ..           :1129[4]
    CMP #&1F                                                          ; 1E2B: C9 1F                                  ..           :112B[4]
    BNE C10D6                                                         ; 1E2D: D0 A7                                  ..           :112D[4]
; &1E2F referenced 2 times by &1123, &1127
.C112F
    LDA #&65 ; 'e'                                                    ; 1E2F: A9 65                                  .e           :112F[4]
    JSR sub_C25B2                                                     ; 1E31: 20 B2 25                                .%          :1131[4]
; &1E34 referenced 3 times by &111E, &1147, &114B
.C1134
    LDA #0                                                            ; 1E34: A9 00                                  ..           :1134[4]
    STA L0026                                                         ; 1E36: 85 26                                  .&           :1136[4]
    JSR sub_C1BA1                                                     ; 1E38: 20 A1 1B                                ..          :1138[4]
    JSR sub_C1653                                                     ; 1E3B: 20 53 16                                S.          :113B[4]
    JSR relocated_data_900                                            ; 1E3E: 20 00 09                                ..          :113E[4]
    LDX L001B                                                         ; 1E41: A6 1B                                  ..           :1141[4]
    BPL C1149                                                         ; 1E43: 10 04                                  ..           :1143[4]
    CPX #&E3                                                          ; 1E45: E0 E3                                  ..           :1145[4]
    BNE C1134                                                         ; 1E47: D0 EB                                  ..           :1147[4]
; &1E49 referenced 1 time by &1143
.C1149
    LDA L0026                                                         ; 1E49: A5 26                                  .&           :1149[4]
    BNE C1134                                                         ; 1E4B: D0 E7                                  ..           :114B[4]
    LDA #&1E                                                          ; 1E4D: A9 1E                                  ..           :114D[4]
    JSR C0A40                                                         ; 1E4F: 20 40 0A                                @.          :114F[4]
    LDA zp1F_extra_bitmap                                             ; 1E52: A5 1F                                  ..           :1152[4]
    CMP #&1F                                                          ; 1E54: C9 1F                                  ..           :1154[4]
    BEQ extra_completed                                               ; 1E56: F0 0A                                  ..           :1156[4]
    LDA zp_possible_remaining_cherry_count                            ; 1E58: A5 08                                  ..           :1158[4]
    BEQ level_completed                                               ; 1E5A: F0 09                                  ..           :115A[4]
    LDA L001D                                                         ; 1E5C: A5 1D                                  ..           :115C[4]
    BMI level_completed                                               ; 1E5E: 30 05                                  0.           :115E[4]
    BPL C1168                                                         ; 1E60: 10 06                                  ..           :1160[4]
; &1E62 referenced 1 time by &1156
.extra_completed
    JSR extra_player_routine                                          ; 1E62: 20 32 15                                2.          :1162[4]
; &1E65 referenced 2 times by &115A, &115E
.level_completed
    JMP begin_next_level                                              ; 1E65: 4C B3 0D                               L..          :1165[4]

; &1E68 referenced 1 time by &1160
.C1168
    LDA L0027                                                         ; 1E68: A5 27                                  .'           :1168[4]
    CMP #&7F                                                          ; 1E6A: C9 7F                                  ..           :116A[4]
    BNE C1174                                                         ; 1E6C: D0 06                                  ..           :116C[4]
    JSR sub_C25CB                                                     ; 1E6E: 20 CB 25                                .%          :116E[4]
    JMP death_routine                                                 ; 1E71: 4C 77 11                               Lw.          :1171[4]

; &1E74 referenced 1 time by &116C
.C1174
    JSR sub_C0A5C                                                     ; 1E74: 20 5C 0A                                \.          :1174[4]
; &1E77 referenced 1 time by &1171
.death_routine
    LDA #&0B                                                          ; 1E77: A9 0B                                  ..           :1177[4]
    STA L0090                                                         ; 1E79: 85 90                                  ..           :1179[4]
; &1E7B referenced 1 time by &11CD
.loop_death_routine
    LDA #2                                                            ; 1E7B: A9 02                                  ..           :117B[4]
    STA zp78_sound_channel                                            ; 1E7D: 85 78                                  .x           :117D[4]
    STA zp7E_sound_duration                                           ; 1E7F: 85 7E                                  .~           :117F[4]
    ASL A                                                             ; 1E81: 0A                                     .            :1181[4]
    STA zp7A_sound_amplitude                                          ; 1E82: 85 7A                                  .z           :1182[4]
    LDX L0090                                                         ; 1E84: A6 90                                  ..           :1184[4]
    LDA L0052,X                                                       ; 1E86: B5 52                                  .R           :1186[4]
    PHA                                                               ; 1E88: 48                                     H            :1188[4]
    LDA L0056,X                                                       ; 1E89: B5 56                                  .V           :1189[4]
    PHA                                                               ; 1E8B: 48                                     H            :118B[4]
    LDA L004E,X                                                       ; 1E8C: B5 4E                                  .N           :118C[4]
    PHA                                                               ; 1E8E: 48                                     H            :118E[4]
    LDA L004A,X                                                       ; 1E8F: B5 4A                                  .J           :118F[4]
    PHA                                                               ; 1E91: 48                                     H            :1191[4]
    LDA L0046,X                                                       ; 1E92: B5 46                                  .F           :1192[4]
    STA zp7C_sound_pitch                                              ; 1E94: 85 7C                                  .|           :1194[4]
    JSR compile_sound_data_at_zp78                                    ; 1E96: 20 98 0B                                ..          :1196[4]
    DEC zp78_sound_channel                                            ; 1E99: C6 78                                  .x           :1199[4]
    PLA                                                               ; 1E9B: 68                                     h            :119B[4]
    STA zp7C_sound_pitch                                              ; 1E9C: 85 7C                                  .|           :119C[4]
    JSR compile_sound_data_at_zp78                                    ; 1E9E: 20 98 0B                                ..          :119E[4]
    PLA                                                               ; 1EA1: 68                                     h            :11A1[4]
    STA zp7C_sound_pitch                                              ; 1EA2: 85 7C                                  .|           :11A2[4]
    PLA                                                               ; 1EA4: 68                                     h            :11A4[4]
    STA zp7E_sound_duration                                           ; 1EA5: 85 7E                                  .~           :11A5[4]
    JSR compile_sound_data_at_zp78                                    ; 1EA7: 20 98 0B                                ..          :11A7[4]
    INC zp78_sound_channel                                            ; 1EAA: E6 78                                  .x           :11AA[4]
    PLA                                                               ; 1EAC: 68                                     h            :11AC[4]
    STA zp7C_sound_pitch                                              ; 1EAD: 85 7C                                  .|           :11AD[4]
    JSR compile_sound_data_at_zp78                                    ; 1EAF: 20 98 0B                                ..          :11AF[4]
    LDA L0020                                                         ; 1EB2: A5 20                                  .            :11B2[4]
    LSR A                                                             ; 1EB4: 4A                                     J            :11B4[4]
    TAX                                                               ; 1EB5: AA                                     .            :11B5[4]
    LDY L0021                                                         ; 1EB6: A4 21                                  .!           :11B6[4]
    LDA L0090                                                         ; 1EB8: A5 90                                  ..           :11B8[4]
    JSR write_sprite_to_screen_routine                                ; 1EBA: 20 73 0A                                s.          :11BA[4]
    LDA #&0C                                                          ; 1EBD: A9 0C                                  ..           :11BD[4]
    JSR C0A40                                                         ; 1EBF: 20 40 0A                                @.          :11BF[4]
    LDA L0090                                                         ; 1EC2: A5 90                                  ..           :11C2[4]
    CMP #8                                                            ; 1EC4: C9 08                                  ..           :11C4[4]
    BEQ lose_a_life                                                   ; 1EC6: F0 07                                  ..           :11C6[4]
    JSR write_sprite_to_screen_routine                                ; 1EC8: 20 73 0A                                s.          :11C8[4]
    DEC L0090                                                         ; 1ECB: C6 90                                  ..           :11CB[4]
    BPL loop_death_routine                                            ; 1ECD: 10 AC                                  ..           :11CD[4]
; &1ECF referenced 1 time by &11C6
.lose_a_life
    DEC lives_remaining_0024_possible                                 ; 1ECF: C6 24                                  .$           :11CF[4]
    BPL still_have_lives                                              ; 1ED1: 10 03                                  ..           :11D1[4]
    JMP game_over_routine                                             ; 1ED3: 4C 10 16                               L..          :11D3[4]

; &1ED6 referenced 1 time by &11D1
.still_have_lives
    LDA #&32 ; '2'                                                    ; 1ED6: A9 32                                  .2           :11D6[4]
    JSR C0A40                                                         ; 1ED8: 20 40 0A                                @.          :11D8[4]
    JSR sub_C0A58                                                     ; 1EDB: 20 58 0A                                X.          :11DB[4]
    BIT L001B                                                         ; 1EDE: 24 1B                                  $.           :11DE[4]
    BMI C11E7                                                         ; 1EE0: 30 05                                  0.           :11E0[4]
    BVC C11E7                                                         ; 1EE2: 50 03                                  P.           :11E2[4]
    JSR C26D7                                                         ; 1EE4: 20 D7 26                                .&          :11E4[4]
; &1EE7 referenced 2 times by &11E0, &11E2
.C11E7
    LDX L0013                                                         ; 1EE7: A6 13                                  ..           :11E7[4]
    BEQ C11F8                                                         ; 1EE9: F0 0D                                  ..           :11E9[4]
; &1EEB referenced 1 time by &11F6
.loop_C11EB
    TXA                                                               ; 1EEB: 8A                                     .            :11EB[4]
    PHA                                                               ; 1EEC: 48                                     H            :11EC[4]
    JSR sub_C2565                                                     ; 1EED: 20 65 25                                e%          :11ED[4]
    JSR sub_C2441                                                     ; 1EF0: 20 41 24                                A$          :11F0[4]
    PLA                                                               ; 1EF3: 68                                     h            :11F3[4]
    TAX                                                               ; 1EF4: AA                                     .            :11F4[4]
    DEX                                                               ; 1EF5: CA                                     .            :11F5[4]
    BNE loop_C11EB                                                    ; 1EF6: D0 F3                                  ..           :11F6[4]
; &1EF8 referenced 1 time by &11E9
.C11F8
    LDA L0016                                                         ; 1EF8: A5 16                                  ..           :11F8[4]
    BPL C120E                                                         ; 1EFA: 10 12                                  ..           :11FA[4]
    JSR sub_C26E8                                                     ; 1EFC: 20 E8 26                                .&          :11FC[4]
    LDA #&0F                                                          ; 1EFF: A9 0F                                  ..           :11FF[4]
    BIT L0016                                                         ; 1F01: 24 16                                  $.           :1201[4]
    BVC C1207                                                         ; 1F03: 50 02                                  P.           :1203[4]
    LDA #&0C                                                          ; 1F05: A9 0C                                  ..           :1205[4]
; &1F07 referenced 1 time by &1203
.C1207
    STA L0097                                                         ; 1F07: 85 97                                  ..           :1207[4]
    LDA L0016                                                         ; 1F09: A5 16                                  ..           :1209[4]
    JSR C0B4F                                                         ; 1F0B: 20 4F 0B                                O.          :120B[4]
; &1F0E referenced 1 time by &11FA
.C120E
    LDX L0014                                                         ; 1F0E: A6 14                                  ..           :120E[4]
    BMI C1220                                                         ; 1F10: 30 0E                                  0.           :1210[4]
    LDY #7                                                            ; 1F12: A0 07                                  ..           :1212[4]
    DEC L0012                                                         ; 1F14: C6 12                                  ..           :1214[4]
    LDA L0012                                                         ; 1F16: A5 12                                  ..           :1216[4]
    AND #8                                                            ; 1F18: 29 08                                  ).           :1218[4]
    BNE C1225                                                         ; 1F1A: D0 09                                  ..           :121A[4]
    LDY #&18                                                          ; 1F1C: A0 18                                  ..           :121C[4]
    BNE C1225                                                         ; 1F1E: D0 05                                  ..           :121E[4]
; &1F20 referenced 1 time by &1210
.C1220
    LDY #2                                                            ; 1F20: A0 02                                  ..           :1220[4]
    INX                                                               ; 1F22: E8                                     .            :1222[4]
    BNE C1229                                                         ; 1F23: D0 04                                  ..           :1223[4]
; &1F25 referenced 2 times by &121A, &121E
.C1225
    TYA                                                               ; 1F25: 98                                     .            :1225[4]
    JSR sub_C0A52                                                     ; 1F26: 20 52 0A                                R.          :1226[4]
; &1F29 referenced 1 time by &1223
.C1229
    LDA L001D                                                         ; 1F29: A5 1D                                  ..           :1229[4]
    STA L0014                                                         ; 1F2B: 85 14                                  ..           :122B[4]
    LDA lives_remaining_0024_possible                                 ; 1F2D: A5 24                                  .$           :122D[4]
    ASL A                                                             ; 1F2F: 0A                                     .            :122F[4]
    STA zero_page_80_dest_screenaddr                                  ; 1F30: 85 80                                  ..           :1230[4]
    ASL A                                                             ; 1F32: 0A                                     .            :1232[4]
    ASL A                                                             ; 1F33: 0A                                     .            :1233[4]
    ASL A                                                             ; 1F34: 0A                                     .            :1234[4]
    ADC zero_page_80_dest_screenaddr                                  ; 1F35: 65 80                                  e.           :1235[4]
    STA zero_page_80_dest_screenaddr                                  ; 1F37: 85 80                                  ..           :1237[4]
    LDA #&EE                                                          ; 1F39: A9 EE                                  ..           :1239[4]
    SBC zero_page_80_dest_screenaddr                                  ; 1F3B: E5 80                                  ..           :123B[4]
    TAY                                                               ; 1F3D: A8                                     .            :123D[4]
    LDX #2                                                            ; 1F3E: A2 02                                  ..           :123E[4]
    JSR sub_C0A58                                                     ; 1F40: 20 58 0A                                X.          :1240[4]
    LDA #&1E                                                          ; 1F43: A9 1E                                  ..           :1243[4]
    JSR C0A40                                                         ; 1F45: 20 40 0A                                @.          :1245[4]
    JMP C108C                                                         ; 1F48: 4C 8C 10                               L..          :1248[4]

; &1F4B referenced 1 time by &10D6
.sub_C124B
    INC L000F                                                         ; 1F4B: E6 0F                                  ..           :124B[4]
    JSR sub_C1FDC                                                     ; 1F4D: 20 DC 1F                                ..          :124D[4]
    JSR sub_C1653                                                     ; 1F50: 20 53 16                                S.          :1250[4]
    LDA L000F                                                         ; 1F53: A5 0F                                  ..           :1253[4]
    AND #2                                                            ; 1F55: 29 02                                  ).           :1255[4]
    BEQ C126C                                                         ; 1F57: F0 13                                  ..           :1257[4]
    LDX L0009                                                         ; 1F59: A6 09                                  ..           :1259[4]
    BEQ C126C                                                         ; 1F5B: F0 0F                                  ..           :125B[4]
; &1F5D referenced 1 time by &126A
.loop_C125D
    LDA L061F,X                                                       ; 1F5D: BD 1F 06                               ...          :125D[4]
    CMP #&40 ; '@'                                                    ; 1F60: C9 40                                  .@           :1260[4]
    BCS C1269                                                         ; 1F62: B0 05                                  ..           :1262[4]
    AND #&FE                                                          ; 1F64: 29 FE                                  ).           :1264[4]
    STA L061F,X                                                       ; 1F66: 9D 1F 06                               ...          :1266[4]
; &1F69 referenced 1 time by &1262
.C1269
    DEX                                                               ; 1F69: CA                                     .            :1269[4]
    BNE loop_C125D                                                    ; 1F6A: D0 F1                                  ..           :126A[4]
; &1F6C referenced 2 times by &1257, &125B
.C126C
    LDX L0014                                                         ; 1F6C: A6 14                                  ..           :126C[4]
    INX                                                               ; 1F6E: E8                                     .            :126E[4]
    BNE C12C9                                                         ; 1F6F: D0 58                                  .X           :126F[4]
    LDX L0020                                                         ; 1F71: A6 20                                  .            :1271[4]
    LDY L0021                                                         ; 1F73: A4 21                                  .!           :1273[4]
    CPX #&46 ; 'F'                                                    ; 1F75: E0 46                                  .F           :1275[4]
    BNE C12C9                                                         ; 1F77: D0 50                                  .P           :1277[4]
    CPY #&81                                                          ; 1F79: C0 81                                  ..           :1279[4]
    BNE C12C9                                                         ; 1F7B: D0 4C                                  .L           :127B[4]
    LDA #3                                                            ; 1F7D: A9 03                                  ..           :127D[4]
    STA L001E                                                         ; 1F7F: 85 1E                                  ..           :127F[4]
    LDA #&84                                                          ; 1F81: A9 84                                  ..           :1281[4]
    STA L0014                                                         ; 1F83: 85 14                                  ..           :1283[4]
    LDA #1                                                            ; 1F85: A9 01                                  ..           :1285[4]
    STA L0012                                                         ; 1F87: 85 12                                  ..           :1287[4]
    LDA #2                                                            ; 1F89: A9 02                                  ..           :1289[4]
    JSR sub_C0A52                                                     ; 1F8B: 20 52 0A                                R.          :128B[4]
    LDA L0011                                                         ; 1F8E: A5 11                                  ..           :128E[4]
    JSR C2603                                                         ; 1F90: 20 03 26                                .&          :1290[4]
    LDA #&86                                                          ; 1F93: A9 86                                  ..           :1293[4]
    STA video_ula_palette                                             ; 1F95: 8D 21 FE                               .!.          :1295[4]
    LDA #&C6                                                          ; 1F98: A9 C6                                  ..           :1298[4]
    STA video_ula_palette                                             ; 1F9A: 8D 21 FE                               .!.          :129A[4]
    JSR sub_C247C                                                     ; 1F9D: 20 7C 24                                |$          :129D[4]
    LDA #&55 ; 'U'                                                    ; 1FA0: A9 55                                  .U           :12A0[4]
    JSR sub_C25B2                                                     ; 1FA2: 20 B2 25                                .%          :12A2[4]
    LDA #&F1                                                          ; 1FA5: A9 F1                                  ..           :12A5[4]
    STA zp7A_sound_amplitude                                          ; 1FA7: 85 7A                                  .z           :12A7[4]
    LDX #4                                                            ; 1FA9: A2 04                                  ..           :12A9[4]
; &1FAB referenced 1 time by &12C7
.loop_C12AB
    LDA #2                                                            ; 1FAB: A9 02                                  ..           :12AB[4]
    STA zp78_sound_channel                                            ; 1FAD: 85 78                                  .x           :12AD[4]
    STA zp7E_sound_duration                                           ; 1FAF: 85 7E                                  .~           :12AF[4]
    LDA L2793,X                                                       ; 1FB1: BD 93 27                               ..'          :12B1[4]
    STA zp7C_sound_pitch                                              ; 1FB4: 85 7C                                  .|           :12B4[4]
    TXA                                                               ; 1FB6: 8A                                     .            :12B6[4]
    PHA                                                               ; 1FB7: 48                                     H            :12B7[4]
    JSR compile_sound_data_at_zp78                                    ; 1FB8: 20 98 0B                                ..          :12B8[4]
    DEC zp7C_sound_pitch                                              ; 1FBB: C6 7C                                  .|           :12BB[4]
    DEC zp7C_sound_pitch                                              ; 1FBD: C6 7C                                  .|           :12BD[4]
    INC zp78_sound_channel                                            ; 1FBF: E6 78                                  .x           :12BF[4]
    JSR compile_sound_data_at_zp78                                    ; 1FC1: 20 98 0B                                ..          :12C1[4]
    PLA                                                               ; 1FC4: 68                                     h            :12C4[4]
    TAX                                                               ; 1FC5: AA                                     .            :12C5[4]
    DEX                                                               ; 1FC6: CA                                     .            :12C6[4]
    BPL loop_C12AB                                                    ; 1FC7: 10 E2                                  ..           :12C7[4]
; &1FC9 referenced 3 times by &126F, &1277, &127B
.C12C9
    LDA L0020                                                         ; 1FC9: A5 20                                  .            :12C9[4]
    STA L0090                                                         ; 1FCB: 85 90                                  ..           :12CB[4]
    LDA L0021                                                         ; 1FCD: A5 21                                  .!           :12CD[4]
    STA L0093                                                         ; 1FCF: 85 93                                  ..           :12CF[4]
    JSR sub_C2568                                                     ; 1FD1: 20 68 25                                h%          :12D1[4]
    STY L0001                                                         ; 1FD4: 84 01                                  ..           :12D4[4]
    JSR sub_C1B25                                                     ; 1FD6: 20 25 1B                                %.          :12D6[4]
    JSR sub_C0990                                                     ; 1FD9: 20 90 09                                ..          :12D9[4]
    LDA L0000                                                         ; 1FDC: A5 00                                  ..           :12DC[4]
    BMI check_key_press_S                                             ; 1FDE: 30 40                                  0@           :12DE[4]
    BNE C12E6                                                         ; 1FE0: D0 04                                  ..           :12E0[4]
    STA L0004                                                         ; 1FE2: 85 04                                  ..           :12E2[4]
    BEQ check_key_press_S                                             ; 1FE4: F0 3A                                  .:           :12E4[4]
; &1FE6 referenced 1 time by &12E0
.C12E6
    LDA #3                                                            ; 1FE6: A9 03                                  ..           :12E6[4]
    STA zero_page_80_dest_screenaddr                                  ; 1FE8: 85 80                                  ..           :12E8[4]
; &1FEA referenced 1 time by &12FC
.loop_C12EA
    LDX L0004                                                         ; 1FEA: A6 04                                  ..           :12EA[4]
    LDA relocated_data_0040,X                                         ; 1FEC: B5 40                                  .@           :12EC[4]
    TAX                                                               ; 1FEE: AA                                     .            :12EE[4]
    LDA #1                                                            ; 1FEF: A9 01                                  ..           :12EF[4]
    LDY #2                                                            ; 1FF1: A0 02                                  ..           :12F1[4]
    JSR compile_sound_data_at_zp70                                    ; 1FF3: 20 9C 0B                                ..          :12F3[4]
    LDA #1                                                            ; 1FF6: A9 01                                  ..           :12F6[4]
    STA zp70_sound_amplitude                                          ; 1FF8: 85 70                                  .p           :12F8[4]
    DEC zero_page_80_dest_screenaddr                                  ; 1FFA: C6 80                                  ..           :12FA[4]
    BNE loop_C12EA                                                    ; 1FFC: D0 EC                                  ..           :12FC[4]
    LDA #&11                                                          ; 1FFE: A9 11                                  ..           :12FE[4]
    STA zp70_sound_amplitude                                          ; 2000: 85 70                                  .p           :1300[4]
    INC L0004                                                         ; 2002: E6 04                                  ..           :1302[4]
    LDY L0004                                                         ; 2004: A4 04                                  ..           :1304[4]
    CPY #8                                                            ; 2006: C0 08                                  ..           :1306[4]
    BNE C1319                                                         ; 2008: D0 0F                                  ..           :1308[4]
    LDA #0                                                            ; 200A: A9 00                                  ..           :130A[4]
    STA L0004                                                         ; 200C: 85 04                                  ..           :130C[4]
    LDA L0020                                                         ; 200E: A5 20                                  .            :130E[4]
    LSR A                                                             ; 2010: 4A                                     J            :1310[4]
    TAX                                                               ; 2011: AA                                     .            :1311[4]
    LDY L0021                                                         ; 2012: A4 21                                  .!           :1312[4]
    LDA #5                                                            ; 2014: A9 05                                  ..           :1314[4]
    JSR C2603                                                         ; 2016: 20 03 26                                .&          :1316[4]
; &2019 referenced 1 time by &1308
.C1319
    LDX #0                                                            ; 2019: A2 00                                  ..           :1319[4]
    LDA #&50 ; 'P'                                                    ; 201B: A9 50                                  .P           :131B[4]
    JSR sub_C0BAD                                                     ; 201D: 20 AD 0B                                ..          :131D[4]
; &2020 referenced 2 times by &12DE, &12E4
.check_key_press_S
    LDX #&AE                                                          ; 2020: A2 AE                                  ..           :1320[4]
    JSR execute_inkey                                                 ; 2022: 20 DF 26                                .&          :1322[4]
    BEQ check_key_press_Q                                             ; 2025: F0 04                                  ..           :1325[4]
    LDA #7                                                            ; 2027: A9 07                                  ..           :1327[4]
    BNE store_sound_mask                                              ; 2029: D0 09                                  ..           :1329[4]
; &202B referenced 1 time by &1325
.check_key_press_Q
    LDX #&EF                                                          ; 202B: A2 EF                                  ..           :132B[4]
    JSR execute_inkey                                                 ; 202D: 20 DF 26                                .&          :132D[4]
    BEQ possibly_check_game_keyboard_and_joystick                     ; 2030: F0 04                                  ..           :1330[4]
    LDA #0                                                            ; 2032: A9 00                                  ..           :1332[4]
; &2034 referenced 1 time by &1329
.store_sound_mask
    STA sound_on_off_flag_or_maybe_mask                               ; 2034: 85 0A                                  ..           :1334[4]
; &2036 referenced 1 time by &1330
.possibly_check_game_keyboard_and_joystick
    LDA keyboard_or_joystick_flag                                     ; 2036: A5 2F                                  ./           :1336[4]
    BEQ check_keys_return_Z_X                                         ; 2038: F0 29                                  .)           :1338[4]
.handle_joystick_input
    LDX #0                                                            ; 203A: A2 00                                  ..           :133A[4]
    JSR osbyte                                                        ; 203C: 20 F4 FF                                ..          :133C[4]
    TXA                                                               ; 203F: 8A                                     .            :133F[4]
    AND #1                                                            ; 2040: 29 01                                  ).           :1340[4]
    JSR handle_possible_fire_and_ball_routine_possible                ; 2042: 20 85 1B                                ..          :1342[4]
    LDA #osbyte_read_adc_or_get_buffer_status                         ; 2045: A9 80                                  ..           :1345[4]
    LDX #1                                                            ; 2047: A2 01                                  ..           :1347[4]
    JSR osbyte                                                        ; 2049: 20 F4 FF                                ..          :1349[4]   ; Read the ADC conversion value for channel X=1
    CPY #&10                                                          ; 204C: C0 10                                  ..           :134C[4]   ; X and Y contain the ADC value read (low,high)
    BCC handle_right_input                                            ; 204E: 90 29                                  .)           :134E[4]
    CPY #&F0                                                          ; 2050: C0 F0                                  ..           :1350[4]
    BCS handle_Z_left_key_press                                       ; 2052: B0 45                                  .E           :1352[4]
    LDX #2                                                            ; 2054: A2 02                                  ..           :1354[4]
    JSR osbyte                                                        ; 2056: 20 F4 FF                                ..          :1356[4]
    CPY #&10                                                          ; 2059: C0 10                                  ..           :1359[4]
    BCC handle_down_input                                             ; 205B: 90 30                                  .0           :135B[4]
    CPY #&F0                                                          ; 205D: C0 F0                                  ..           :135D[4]
    BCS handle_up_input                                               ; 205F: B0 22                                  ."           :135F[4]
    BCC C1390                                                         ; 2061: 90 2D                                  .-           :1361[4]
; &2063 referenced 1 time by &1338
.check_keys_return_Z_X
    LDX #&B6                                                          ; 2063: A2 B6                                  ..           :1363[4]
    JSR execute_inkey                                                 ; 2065: 20 DF 26                                .&          :1365[4]
    JSR handle_possible_fire_and_ball_routine_possible                ; 2068: 20 85 1B                                ..          :1368[4]
    LDX #&9E                                                          ; 206B: A2 9E                                  ..           :136B[4]
    JSR execute_inkey                                                 ; 206D: 20 DF 26                                .&          :136D[4]
    BNE handle_Z_left_key_press                                       ; 2070: D0 27                                  .'           :1370[4]
    LDX #&BD                                                          ; 2072: A2 BD                                  ..           :1372[4]
    JSR execute_inkey                                                 ; 2074: 20 DF 26                                .&          :1374[4]
    BEQ check_key_colon                                               ; 2077: F0 03                                  ..           :1377[4]
; &2079 referenced 1 time by &134E
.handle_right_input
    JMP handle_X_right_key_press                                      ; 2079: 4C 21 14                               L!.          :1379[4]

; &207C referenced 1 time by &1377
.check_key_colon
    LDX #&B7                                                          ; 207C: A2 B7                                  ..           :137C[4]
    JSR execute_inkey                                                 ; 207E: 20 DF 26                                .&          :137E[4]
    BEQ check_key_forward_slash                                       ; 2081: F0 03                                  ..           :1381[4]
; &2083 referenced 1 time by &135F
.handle_up_input
    JMP C14A5                                                         ; 2083: 4C A5 14                               L..          :1383[4]

; &2086 referenced 1 time by &1381
.check_key_forward_slash
    LDX #&97                                                          ; 2086: A2 97                                  ..           :1386[4]
    JSR execute_inkey                                                 ; 2088: 20 DF 26                                .&          :1388[4]
    BEQ C1390                                                         ; 208B: F0 03                                  ..           :138B[4]
; &208D referenced 1 time by &135B
.handle_down_input
    JMP C14C9                                                         ; 208D: 4C C9 14                               L..          :138D[4]

; &2090 referenced 6 times by &1361, &138B, &13A5, &13AD, &142F, &14B7
.C1390
    LDA #4                                                            ; 2090: A9 04                                  ..           :1390[4]
    STA L0025                                                         ; 2092: 85 25                                  .%           :1392[4]
    LDA #0                                                            ; 2094: A9 00                                  ..           :1394[4]
    STA L0004                                                         ; 2096: 85 04                                  ..           :1396[4]
    RTS                                                               ; 2098: 60                                     `            :1398[4]

; &2099 referenced 3 times by &1352, &1370, &140C
.handle_Z_left_key_press
    JSR sub_C1490                                                     ; 2099: 20 90 14                                ..          :1399[4]
    LDX L0020                                                         ; 209C: A6 20                                  .            :139C[4]
    LDY L0021                                                         ; 209E: A4 21                                  .!           :139E[4]
    JSR sub_C1EAE                                                     ; 20A0: 20 AE 1E                                ..          :13A0[4]
    CPY #&14                                                          ; 20A3: C0 14                                  ..           :13A3[4]
    BEQ C1390                                                         ; 20A5: F0 E9                                  ..           :13A5[4]
    CPY L0088                                                         ; 20A7: C4 88                                  ..           :13A7[4]
    BEQ C13F3                                                         ; 20A9: F0 48                                  .H           :13A9[4]
    CMP #&0C                                                          ; 20AB: C9 0C                                  ..           :13AB[4]
    BCS C1390                                                         ; 20AD: B0 E1                                  ..           :13AD[4]
    LDA L000F                                                         ; 20AF: A5 0F                                  ..           :13AF[4]
    LSR A                                                             ; 20B1: 4A                                     J            :13B1[4]
    LSR A                                                             ; 20B2: 4A                                     J            :13B2[4]
    BCC C1407                                                         ; 20B3: 90 52                                  .R           :13B3[4]
    LDX L0013                                                         ; 20B5: A6 13                                  ..           :13B5[4]
    BEQ C13F0                                                         ; 20B7: F0 37                                  .7           :13B7[4]
; &20B9 referenced 1 time by &13EE
.C13B9
    LDA L0087                                                         ; 20B9: A5 87                                  ..           :13B9[4]
    CMP L088F,X                                                       ; 20BB: DD 8F 08                               ...          :13BB[4]
    BNE C13ED                                                         ; 20BE: D0 2D                                  .-           :13BE[4]
    LDA L089F,X                                                       ; 20C0: BD 9F 08                               ...          :13C0[4]
    AND #&0A                                                          ; 20C3: 29 0A                                  ).           :13C3[4]
    BNE C13ED                                                         ; 20C5: D0 26                                  .&           :13C5[4]
    LDA L087F,X                                                       ; 20C7: BD 7F 08                               ...          :13C7[4]
    SBC L0086                                                         ; 20CA: E5 86                                  ..           :13CA[4]
    CMP #&F0                                                          ; 20CC: C9 F0                                  ..           :13CC[4]
    BCC C13ED                                                         ; 20CE: 90 1D                                  ..           :13CE[4]
    TXA                                                               ; 20D0: 8A                                     .            :13D0[4]
    PHA                                                               ; 20D1: 48                                     H            :13D1[4]
    JSR sub_C2565                                                     ; 20D2: 20 65 25                                e%          :13D2[4]
    LDA L0092                                                         ; 20D5: A5 92                                  ..           :13D5[4]
    BNE C13E0                                                         ; 20D7: D0 07                                  ..           :13D7[4]
    LDA L0720,Y                                                       ; 20D9: B9 20 07                               . .          :13D9[4]
    AND #&10                                                          ; 20DC: 29 10                                  ).           :13DC[4]
    BEQ C13EB                                                         ; 20DE: F0 0B                                  ..           :13DE[4]
; &20E0 referenced 1 time by &13D7
.C13E0
    DEC L087F,X                                                       ; 20E0: DE 7F 08                               ...          :13E0[4]
    JSR sub_C2441                                                     ; 20E3: 20 41 24                                A$          :13E3[4]
    DEC L0090                                                         ; 20E6: C6 90                                  ..           :13E6[4]
    JSR sub_C2441                                                     ; 20E8: 20 41 24                                A$          :13E8[4]
; &20EB referenced 1 time by &13DE
.C13EB
    PLA                                                               ; 20EB: 68                                     h            :13EB[4]
    TAX                                                               ; 20EC: AA                                     .            :13EC[4]
; &20ED referenced 3 times by &13BE, &13C5, &13CE
.C13ED
    DEX                                                               ; 20ED: CA                                     .            :13ED[4]
    BNE C13B9                                                         ; 20EE: D0 C9                                  ..           :13EE[4]
; &20F0 referenced 1 time by &13B7
.C13F0
    JSR C1F08                                                         ; 20F0: 20 08 1F                                ..          :13F0[4]
; &20F3 referenced 1 time by &13A9
.C13F3
    JSR sub_C0A5C                                                     ; 20F3: 20 5C 0A                                \.          :13F3[4]
    LDA L0020                                                         ; 20F6: A5 20                                  .            :13F6[4]
    LSR A                                                             ; 20F8: 4A                                     J            :13F8[4]
    BCS C13FE                                                         ; 20F9: B0 03                                  ..           :13F9[4]
    JSR sub_C17DC                                                     ; 20FB: 20 DC 17                                ..          :13FB[4]
; &20FE referenced 1 time by &13F9
.C13FE
    DEC L0020                                                         ; 20FE: C6 20                                  .            :13FE[4]
    LDA #1                                                            ; 2100: A9 01                                  ..           :1400[4]
; &2102 referenced 2 times by &148D, &14C6
.C1402
    STA L0022                                                         ; 2102: 85 22                                  ."           :1402[4]
    JSR sub_C0A5C                                                     ; 2104: 20 5C 0A                                \.          :1404[4]
; &2107 referenced 2 times by &13B3, &143E
.C1407
    LDA L0022                                                         ; 2107: A5 22                                  ."           :1407[4]
    STA L0025                                                         ; 2109: 85 25                                  .%           :1409[4]
    RTS                                                               ; 210B: 60                                     `            :140B[4]

; &210C referenced 2 times by &141B, &141F
.C140C
    JMP handle_Z_left_key_press                                       ; 210C: 4C 99 13                               L..          :140C[4]

; &210F referenced 2 times by &14AB, &14CF
.sub_C140F
    LDX L0092                                                         ; 210F: A6 92                                  ..           :140F[4]
    BNE C1414                                                         ; 2111: D0 01                                  ..           :1411[4]
    RTS                                                               ; 2113: 60                                     `            :1413[4]

; &2114 referenced 1 time by &1411
.C1414
    PLA                                                               ; 2114: 68                                     h            :1414[4]
    PLA                                                               ; 2115: 68                                     h            :1415[4]
    LDY L0025                                                         ; 2116: A4 25                                  .%           :1416[4]
    BEQ handle_X_right_key_press                                      ; 2118: F0 07                                  ..           :1418[4]
    DEY                                                               ; 211A: 88                                     .            :141A[4]
    BEQ C140C                                                         ; 211B: F0 EF                                  ..           :141B[4]
    CPX #5                                                            ; 211D: E0 05                                  ..           :141D[4]
    BCC C140C                                                         ; 211F: 90 EB                                  ..           :141F[4]
; &2121 referenced 2 times by &1379, &1418
.handle_X_right_key_press
    JSR sub_C1490                                                     ; 2121: 20 90 14                                ..          :1421[4]
    LDX L0020                                                         ; 2124: A6 20                                  .            :1424[4]
    LDY L0021                                                         ; 2126: A4 21                                  .!           :1426[4]
    JSR sub_C1F45                                                     ; 2128: 20 45 1F                                E.          :1428[4]
    CPY #&82                                                          ; 212B: C0 82                                  ..           :142B[4]
    BNE C1432                                                         ; 212D: D0 03                                  ..           :142D[4]
; &212F referenced 1 time by &1438
.loop_C142F
    JMP C1390                                                         ; 212F: 4C 90 13                               L..          :142F[4]

; &2132 referenced 1 time by &142D
.C1432
    CPY L0088                                                         ; 2132: C4 88                                  ..           :1432[4]
    BEQ C147E                                                         ; 2134: F0 48                                  .H           :1434[4]
    CMP #&0C                                                          ; 2136: C9 0C                                  ..           :1436[4]
    BCS loop_C142F                                                    ; 2138: B0 F5                                  ..           :1438[4]
    LDA L000F                                                         ; 213A: A5 0F                                  ..           :143A[4]
    LSR A                                                             ; 213C: 4A                                     J            :143C[4]
    LSR A                                                             ; 213D: 4A                                     J            :143D[4]
    BCC C1407                                                         ; 213E: 90 C7                                  ..           :143E[4]
    LDX L0013                                                         ; 2140: A6 13                                  ..           :1440[4]
    BEQ C147B                                                         ; 2142: F0 37                                  .7           :1442[4]
; &2144 referenced 1 time by &1479
.C1444
    LDA L0087                                                         ; 2144: A5 87                                  ..           :1444[4]
    CMP L088F,X                                                       ; 2146: DD 8F 08                               ...          :1446[4]
    BNE C1478                                                         ; 2149: D0 2D                                  .-           :1449[4]
    LDA L089F,X                                                       ; 214B: BD 9F 08                               ...          :144B[4]
    AND #&0A                                                          ; 214E: 29 0A                                  ).           :144E[4]
    BNE C1478                                                         ; 2150: D0 26                                  .&           :1450[4]
    LDA L087F,X                                                       ; 2152: BD 7F 08                               ...          :1452[4]
    SBC L0086                                                         ; 2155: E5 86                                  ..           :1455[4]
    CMP #9                                                            ; 2157: C9 09                                  ..           :1457[4]
    BCS C1478                                                         ; 2159: B0 1D                                  ..           :1459[4]
    TXA                                                               ; 215B: 8A                                     .            :145B[4]
    PHA                                                               ; 215C: 48                                     H            :145C[4]
    JSR sub_C2565                                                     ; 215D: 20 65 25                                e%          :145D[4]
    LDA L0092                                                         ; 2160: A5 92                                  ..           :1460[4]
    BNE C146B                                                         ; 2162: D0 07                                  ..           :1462[4]
    LDA L0720,Y                                                       ; 2164: B9 20 07                               . .          :1464[4]
    AND #&20 ; ' '                                                    ; 2167: 29 20                                  )            :1467[4]
    BEQ C1476                                                         ; 2169: F0 0B                                  ..           :1469[4]
; &216B referenced 1 time by &1462
.C146B
    INC L087F,X                                                       ; 216B: FE 7F 08                               ...          :146B[4]
    JSR sub_C2441                                                     ; 216E: 20 41 24                                A$          :146E[4]
    INC L0090                                                         ; 2171: E6 90                                  ..           :1471[4]
    JSR sub_C2441                                                     ; 2173: 20 41 24                                A$          :1473[4]
; &2176 referenced 1 time by &1469
.C1476
    PLA                                                               ; 2176: 68                                     h            :1476[4]
    TAX                                                               ; 2177: AA                                     .            :1477[4]
; &2178 referenced 3 times by &1449, &1450, &1459
.C1478
    DEX                                                               ; 2178: CA                                     .            :1478[4]
    BNE C1444                                                         ; 2179: D0 C9                                  ..           :1479[4]
; &217B referenced 1 time by &1442
.C147B
    JSR C1F9F                                                         ; 217B: 20 9F 1F                                ..          :147B[4]
; &217E referenced 1 time by &1434
.C147E
    JSR sub_C0A5C                                                     ; 217E: 20 5C 0A                                \.          :147E[4]
    LDA L0020                                                         ; 2181: A5 20                                  .            :1481[4]
    LSR A                                                             ; 2183: 4A                                     J            :1483[4]
    BCC C1489                                                         ; 2184: 90 03                                  ..           :1484[4]
    JSR sub_C1863                                                     ; 2186: 20 63 18                                c.          :1486[4]
; &2189 referenced 1 time by &1484
.C1489
    INC L0020                                                         ; 2189: E6 20                                  .            :1489[4]
    LDA #0                                                            ; 218B: A9 00                                  ..           :148B[4]
    JMP C1402                                                         ; 218D: 4C 02 14                               L..          :148D[4]

; &2190 referenced 2 times by &1399, &1421
.sub_C1490
    LDX L0095                                                         ; 2190: A6 95                                  ..           :1490[4]
    BNE C1495                                                         ; 2192: D0 01                                  ..           :1492[4]
    RTS                                                               ; 2194: 60                                     `            :1494[4]

; &2195 referenced 1 time by &1492
.C1495
    PLA                                                               ; 2195: 68                                     h            :1495[4]
    PLA                                                               ; 2196: 68                                     h            :1496[4]
    LDA L0025                                                         ; 2197: A5 25                                  .%           :1497[4]
    CMP #2                                                            ; 2199: C9 02                                  ..           :1499[4]
    BEQ C14A5                                                         ; 219B: F0 08                                  ..           :149B[4]
    CMP #3                                                            ; 219D: C9 03                                  ..           :149D[4]
    BEQ C14C9                                                         ; 219F: F0 28                                  .(           :149F[4]
    CPX #5                                                            ; 21A1: E0 05                                  ..           :14A1[4]
    BCS C14C9                                                         ; 21A3: B0 24                                  .$           :14A3[4]
; &21A5 referenced 2 times by &1383, &149B
.C14A5
    LDY L0021                                                         ; 21A5: A4 21                                  .!           :14A5[4]
    CPY #&15                                                          ; 21A7: C0 15                                  ..           :14A7[4]
    BEQ C14B7                                                         ; 21A9: F0 0C                                  ..           :14A9[4]
    JSR sub_C140F                                                     ; 21AB: 20 0F 14                                ..          :14AB[4]
    LDX L0020                                                         ; 21AE: A6 20                                  .            :14AE[4]
    LDY L0021                                                         ; 21B0: A4 21                                  .!           :14B0[4]
    JSR sub_C1E8A                                                     ; 21B2: 20 8A 1E                                ..          :14B2[4]
    BCC C14BA                                                         ; 21B5: 90 03                                  ..           :14B5[4]
; &21B7 referenced 3 times by &14A9, &14CD, &14D9
.C14B7
    JMP C1390                                                         ; 21B7: 4C 90 13                               L..          :14B7[4]

; &21BA referenced 1 time by &14B5
.C14BA
    JSR sub_C0A5C                                                     ; 21BA: 20 5C 0A                                \.          :14BA[4]
    JSR sub_C18F5                                                     ; 21BD: 20 F5 18                                ..          :14BD[4]
    DEC L0021                                                         ; 21C0: C6 21                                  .!           :14C0[4]
    DEC L0021                                                         ; 21C2: C6 21                                  .!           :14C2[4]
    LDA #2                                                            ; 21C4: A9 02                                  ..           :14C4[4]
; &21C6 referenced 1 time by &14E7
.C14C6
    JMP C1402                                                         ; 21C6: 4C 02 14                               L..          :14C6[4]

; &21C9 referenced 3 times by &138D, &149F, &14A3
.C14C9
    LDY L0021                                                         ; 21C9: A4 21                                  .!           :14C9[4]
    CPY #&ED                                                          ; 21CB: C0 ED                                  ..           :14CB[4]
    BEQ C14B7                                                         ; 21CD: F0 E8                                  ..           :14CD[4]
    JSR sub_C140F                                                     ; 21CF: 20 0F 14                                ..          :14CF[4]
    LDX L0020                                                         ; 21D2: A6 20                                  .            :14D2[4]
    LDY L0021                                                         ; 21D4: A4 21                                  .!           :14D4[4]
    JSR sub_C1E66                                                     ; 21D6: 20 66 1E                                f.          :14D6[4]
    BCS C14B7                                                         ; 21D9: B0 DC                                  ..           :14D9[4]
    JSR sub_C0A5C                                                     ; 21DB: 20 5C 0A                                \.          :14DB[4]
    JSR C1999                                                         ; 21DE: 20 99 19                                ..          :14DE[4]
    INC L0021                                                         ; 21E1: E6 21                                  .!           :14E1[4]
    INC L0021                                                         ; 21E3: E6 21                                  .!           :14E3[4]
    LDA #3                                                            ; 21E5: A9 03                                  ..           :14E5[4]
    BNE C14C6                                                         ; 21E7: D0 DD                                  ..           :14E7[4]
; &21E9 referenced 8 times by &1692, &1697, &169E, &16A3, &16AF, &16B4, &16C6, &16CB
.sub_C14E9
    LDA L0090                                                         ; 21E9: A5 90                                  ..           :14E9[4]
    ASL A                                                             ; 21EB: 0A                                     .            :14EB[4]
    BCS C1531                                                         ; 21EC: B0 43                                  .C           :14EC[4]
    ASL A                                                             ; 21EE: 0A                                     .            :14EE[4]
    BCS C1531                                                         ; 21EF: B0 40                                  .@           :14EF[4]
    STA L0091                                                         ; 21F1: 85 91                                  ..           :14F1[4]
    LDA L001A                                                         ; 21F3: A5 1A                                  ..           :14F3[4]
    SEC                                                               ; 21F5: 38                                     8            :14F5[4]
    SBC L0091                                                         ; 21F6: E5 91                                  ..           :14F6[4]
    BCC C14FD                                                         ; 21F8: 90 03                                  ..           :14F8[4]
    JSR sub_C1509                                                     ; 21FA: 20 09 15                                ..          :14FA[4]
; &21FD referenced 1 time by &14F8
.C14FD
    LDA L001A                                                         ; 21FD: A5 1A                                  ..           :14FD[4]
    JSR sub_C1509                                                     ; 21FF: 20 09 15                                ..          :14FF[4]
    LDA L001A                                                         ; 2202: A5 1A                                  ..           :1502[4]
    CLC                                                               ; 2204: 18                                     .            :1504[4]
    ADC L0091                                                         ; 2205: 65 91                                  e.           :1505[4]
    BCS C1531                                                         ; 2207: B0 28                                  .(           :1507[4]
; &2209 referenced 2 times by &14FA, &14FF
.sub_C1509
    PHA                                                               ; 2209: 48                                     H            :1509[4]
    TAY                                                               ; 220A: A8                                     .            :150A[4]
    LDA L0019                                                         ; 220B: A5 19                                  ..           :150B[4]
    SEC                                                               ; 220D: 38                                     8            :150D[4]
    SBC L0090                                                         ; 220E: E5 90                                  ..           :150E[4]
    TAX                                                               ; 2210: AA                                     .            :1510[4]
    BCC C1516                                                         ; 2211: 90 03                                  ..           :1511[4]
    JSR C2698                                                         ; 2213: 20 98 26                                .&          :1513[4]
; &2216 referenced 1 time by &1511
.C1516
    PLA                                                               ; 2216: 68                                     h            :1516[4]
    PHA                                                               ; 2217: 48                                     H            :1517[4]
    TAY                                                               ; 2218: A8                                     .            :1518[4]
    LDX L0019                                                         ; 2219: A6 19                                  ..           :1519[4]
    CPY L001A                                                         ; 221B: C4 1A                                  ..           :151B[4]
    BEQ C1522                                                         ; 221D: F0 03                                  ..           :151D[4]
    JSR C2698                                                         ; 221F: 20 98 26                                .&          :151F[4]
; &2222 referenced 1 time by &151D
.C1522
    PLA                                                               ; 2222: 68                                     h            :1522[4]
    TAY                                                               ; 2223: A8                                     .            :1523[4]
    LDA L0019                                                         ; 2224: A5 19                                  ..           :1524[4]
    CLC                                                               ; 2226: 18                                     .            :1526[4]
    ADC L0090                                                         ; 2227: 65 90                                  e.           :1527[4]
    TAX                                                               ; 2229: AA                                     .            :1529[4]
    CPX #&4F ; 'O'                                                    ; 222A: E0 4F                                  .O           :152A[4]
    BCS C1531                                                         ; 222C: B0 03                                  ..           :152C[4]
    JMP C2698                                                         ; 222E: 4C 98 26                               L.&          :152E[4]

; &2231 referenced 4 times by &14EC, &14EF, &1507, &152C
.C1531
    RTS                                                               ; 2231: 60                                     `            :1531[4]

; &2232 referenced 1 time by &1162
.extra_player_routine
    LDA #&72 ; 'r'                                                    ; 2232: A9 72                                  .r           :1532[4]
    STA L000C                                                         ; 2234: 85 0C                                  ..           :1534[4]
    LDX #&33 ; '3'                                                    ; 2236: A2 33                                  .3           :1536[4]
; &2238 referenced 1 time by &153F
.loop_C1538
    LDA extra_player_string_data,X                                    ; 2238: BD DC 15                               ...          :1538[4]
    JSR oswrch                                                        ; 223B: 20 EE FF                                ..          :153B[4]   ; Write character
    DEX                                                               ; 223E: CA                                     .            :153E[4]
    BNE loop_C1538                                                    ; 223F: D0 F7                                  ..           :153F[4]
    STX L001B                                                         ; 2241: 86 1B                                  ..           :1541[4]
    STX L0022                                                         ; 2243: 86 22                                  ."           :1543[4]
    STX L0020                                                         ; 2245: 86 20                                  .            :1545[4]
    LDY #&81                                                          ; 2247: A0 81                                  ..           :1547[4]
    STY L0021                                                         ; 2249: 84 21                                  .!           :1549[4]
    LDX #&28 ; '('                                                    ; 224B: A2 28                                  .(           :154B[4]
    LDA #&19                                                          ; 224D: A9 19                                  ..           :154D[4]
    JSR write_sprite_to_screen_routine                                ; 224F: 20 73 0A                                s.          :154F[4]
    JSR sub_C1A6C                                                     ; 2252: 20 6C 1A                                l.          :1552[4]
    JSR sub_C0A5C                                                     ; 2255: 20 5C 0A                                \.          :1555[4]
; &2258 referenced 1 time by &1567
.loop_C1558
    JSR sub_C0A5C                                                     ; 2258: 20 5C 0A                                \.          :1558[4]
    INC L0020                                                         ; 225B: E6 20                                  .            :155B[4]
    JSR sub_C0A5C                                                     ; 225D: 20 5C 0A                                \.          :155D[4]
    JSR relocated_data_900                                            ; 2260: 20 00 09                                ..          :1560[4]
    LDA L0020                                                         ; 2263: A5 20                                  .            :1563[4]
    CMP #&3C ; '<'                                                    ; 2265: C9 3C                                  .<           :1565[4]
    BNE loop_C1558                                                    ; 2267: D0 EF                                  ..           :1567[4]
    JSR sub_C266E                                                     ; 2269: 20 6E 26                                n&          :1569[4]
    STX L0019                                                         ; 226C: 86 19                                  ..           :156C[4]
    STY L001A                                                         ; 226E: 84 1A                                  ..           :156E[4]
; &2270 referenced 1 time by &1590
.C1570
    JSR C26D7                                                         ; 2270: 20 D7 26                                .&          :1570[4]
    INC L0019                                                         ; 2273: E6 19                                  ..           :1573[4]
    LDY L001A                                                         ; 2275: A4 1A                                  ..           :1575[4]
    INY                                                               ; 2277: C8                                     .            :1577[4]
    INY                                                               ; 2278: C8                                     .            :1578[4]
    INY                                                               ; 2279: C8                                     .            :1579[4]
    INY                                                               ; 227A: C8                                     .            :157A[4]
    LDA L0019                                                         ; 227B: A5 19                                  ..           :157B[4]
    CMP #&26 ; '&'                                                    ; 227D: C9 26                                  .&           :157D[4]
    BCC C1584                                                         ; 227F: 90 03                                  ..           :157F[4]
    JSR sub_C1A66                                                     ; 2281: 20 66 1A                                f.          :1581[4]
; &2284 referenced 1 time by &157F
.C1584
    STY L001A                                                         ; 2284: 84 1A                                  ..           :1584[4]
    JSR C26D7                                                         ; 2286: 20 D7 26                                .&          :1586[4]
    JSR relocated_data_900                                            ; 2289: 20 00 09                                ..          :1589[4]
    LDA L0019                                                         ; 228C: A5 19                                  ..           :158C[4]
    CMP #&27 ; '''                                                    ; 228E: C9 27                                  .'           :158E[4]
    BNE C1570                                                         ; 2290: D0 DE                                  ..           :1590[4]
    JSR C26D7                                                         ; 2292: 20 D7 26                                .&          :1592[4]
    LDA lives_remaining_0024_possible                                 ; 2295: A5 24                                  .$           :1595[4]
    ASL A                                                             ; 2297: 0A                                     .            :1597[4]
    STA zero_page_80_dest_screenaddr                                  ; 2298: 85 80                                  ..           :1598[4]
    ASL A                                                             ; 229A: 0A                                     .            :159A[4]
    ASL A                                                             ; 229B: 0A                                     .            :159B[4]
    ASL A                                                             ; 229C: 0A                                     .            :159C[4]
    ADC zero_page_80_dest_screenaddr                                  ; 229D: 65 80                                  e.           :159D[4]
    STA zero_page_80_dest_screenaddr                                  ; 229F: 85 80                                  ..           :159F[4]
    LDA #&EE                                                          ; 22A1: A9 EE                                  ..           :15A1[4]
    SBC zero_page_80_dest_screenaddr                                  ; 22A3: E5 80                                  ..           :15A3[4]
    STA L0021                                                         ; 22A5: 85 21                                  .!           :15A5[4]
    LDA #4                                                            ; 22A7: A9 04                                  ..           :15A7[4]
    STA L0020                                                         ; 22A9: 85 20                                  .            :15A9[4]
    LDA #&C0                                                          ; 22AB: A9 C0                                  ..           :15AB[4]
    STA L001B                                                         ; 22AD: 85 1B                                  ..           :15AD[4]
; &22AF referenced 1 time by &15B9
.loop_C15AF
    JSR sub_C1673                                                     ; 22AF: 20 73 16                                s.          :15AF[4]
    JSR relocated_data_900                                            ; 22B2: 20 00 09                                ..          :15B2[4]
    LDA L001B                                                         ; 22B5: A5 1B                                  ..           :15B5[4]
    CMP #&E3                                                          ; 22B7: C9 E3                                  ..           :15B7[4]
    BNE loop_C15AF                                                    ; 22B9: D0 F4                                  ..           :15B9[4]
    JSR sub_C1688                                                     ; 22BB: 20 88 16                                ..          :15BB[4]
; &22BE referenced 1 time by &15C6
.loop_C15BE
    JSR sub_C1673                                                     ; 22BE: 20 73 16                                s.          :15BE[4]
    JSR relocated_data_900                                            ; 22C1: 20 00 09                                ..          :15C1[4]
    LDA L001B                                                         ; 22C4: A5 1B                                  ..           :15C4[4]
    BNE loop_C15BE                                                    ; 22C6: D0 F6                                  ..           :15C6[4]
    LDX #2                                                            ; 22C8: A2 02                                  ..           :15C8[4]
    LDY L0021                                                         ; 22CA: A4 21                                  .!           :15CA[4]
    LDA #0                                                            ; 22CC: A9 00                                  ..           :15CC[4]
    STA zp1F_extra_bitmap                                             ; 22CE: 85 1F                                  ..           :15CE[4]
    JSR sub_C0A58                                                     ; 22D0: 20 58 0A                                X.          :15D0[4]
    JSR sub_C2695                                                     ; 22D3: 20 95 26                                .&          :15D3[4]
    INC lives_remaining_0024_possible                                 ; 22D6: E6 24                                  .$           :15D6[4]
    LDA #&A0                                                          ; 22D8: A9 A0                                  ..           :15D8[4]
.sub_C15DA
extra_player_string_data = sub_C15DA+2
    JMP C0A40                                                         ; 22DA: 4C 40 0A                               L@.          :15DA[4]

; &22DC referenced 1 time by &1538
    EQUS "!eE .rM "                                                   ; 22DD: 21 65 45 20 2E 72 4D 20                !eE .rM      :15DD[4]
    EQUB   3, &11                                                     ; 22E5: 03 11                                  ..           :15E5[4]
    EQUS "ARTXE"                                                      ; 22E7: 41 52 54 58 45                         ARTXE        :15E7[4]
    EQUB   7,   5, &1F                                                ; 22EC: 07 05 1F                               ...          :15EC[4]
    EQUS "NIW UOY"                                                    ; 22EF: 4E 49 57 20 55 4F 59                   NIW UOY      :15EF[4]
    EQUB   6,   2, &1F,   4, &11                                      ; 22F6: 06 02 1F 04 11                         .....        :15F6[4]
    EQUS "SNOITALUTARGNOC"                                            ; 22FB: 53 4E 4F 49 54 41 4C 55 54 41 52 47... SNOITALUTARG :15FB[4]
    EQUB   4,   2, &1F,   1, &11, &0C                                 ; 230A: 04 02 1F 01 11 0C                      ......       :160A[4]

; &2310 referenced 2 times by &0904, &11D3
.game_over_routine
    LDA #0                                                            ; 2310: A9 00                                  ..           :1610[4]
    JSR sub_C25B2                                                     ; 2312: 20 B2 25                                .%          :1612[4]
    LDA #osbyte_acknowledge_escape                                    ; 2315: A9 7E                                  .~           :1615[4]
    JSR osbyte                                                        ; 2317: 20 F4 FF                                ..          :1617[4]   ; Clear escape condition and perform escape effects
    LDX #&14                                                          ; 231A: A2 14                                  ..           :161A[4]
; &231C referenced 1 time by &1625
.loop_print_game_over_1
    LDA game_over_string_data,X                                       ; 231C: BD CF 05                               ...          :161C[4]
    JSR oswrch                                                        ; 231F: 20 EE FF                                ..          :161F[4]   ; Write character
    DEX                                                               ; 2322: CA                                     .            :1622[4]
    CPX #&0E                                                          ; 2323: E0 0E                                  ..           :1623[4]
    BNE loop_print_game_over_1                                        ; 2325: D0 F5                                  ..           :1625[4]
; &2327 referenced 1 time by &1633
.loop_print_game_over_2
    LDA game_over_string_data,X                                       ; 2327: BD CF 05                               ...          :1627[4]
    JSR oswrch                                                        ; 232A: 20 EE FF                                ..          :162A[4]   ; Write character
    LDA #5                                                            ; 232D: A9 05                                  ..           :162D[4]
    JSR C0A40                                                         ; 232F: 20 40 0A                                @.          :162F[4]
    DEX                                                               ; 2332: CA                                     .            :1632[4]
    BNE loop_print_game_over_2                                        ; 2333: D0 F2                                  ..           :1633[4]
; &2335 referenced 1 time by &4381
.wait_for_input_space_or_fire
    STX keyboard_or_joystick_flag                                     ; 2335: 86 2F                                  ./           :1635[4]
; &2337 referenced 1 time by &164C
.loop_no_space_or_fire_pressed
    LDA #osbyte_acknowledge_escape                                    ; 2337: A9 7E                                  .~           :1637[4]
    JSR osbyte                                                        ; 2339: 20 F4 FF                                ..          :1639[4]   ; Clear escape condition and perform escape effects
    LDX #&9D                                                          ; 233C: A2 9D                                  ..           :163C[4]
    JSR execute_inkey                                                 ; 233E: 20 DF 26                                .&          :163E[4]
    BNE space_or_fire_press_detected                                  ; 2341: D0 0D                                  ..           :1641[4]
    LDA #osbyte_read_adc_or_get_buffer_status                         ; 2343: A9 80                                  ..           :1643[4]
    LDX #0                                                            ; 2345: A2 00                                  ..           :1645[4]
    JSR osbyte                                                        ; 2347: 20 F4 FF                                ..          :1647[4]   ; Read the channel number last used for an ADC conversion and joystick fire buttons (X=0)
    TXA                                                               ; 234A: 8A                                     .            :164A[4]   ; X has the joystick fire buttons status in the lower two bits: bit 0=left button, bit 1=right button
    LSR A                                                             ; 234B: 4A                                     J            :164B[4]
    BCC loop_no_space_or_fire_pressed                                 ; 234C: 90 E9                                  ..           :164C[4]
    ROR keyboard_or_joystick_flag                                     ; 234E: 66 2F                                  f/           :164E[4]
; &2350 referenced 1 time by &1641
.space_or_fire_press_detected
    JMP begin_new_game                                                ; 2350: 4C 94 0D                               L..          :1650[4]

; &2353 referenced 2 times by &113B, &1250
.sub_C1653
    LDX #3                                                            ; 2353: A2 03                                  ..           :1653[4]
; &2355 referenced 1 time by &1671
.loop_C1655
    LDA L003C,X                                                       ; 2355: B5 3C                                  .<           :1655[4]
    BEQ C1670                                                         ; 2357: F0 17                                  ..           :1657[4]
    INC L0026                                                         ; 2359: E6 26                                  .&           :1659[4]
    DEC L003C,X                                                       ; 235B: D6 3C                                  .<           :165B[4]
    BNE C1670                                                         ; 235D: D0 11                                  ..           :165D[4]
    TXA                                                               ; 235F: 8A                                     .            :165F[4]
    PHA                                                               ; 2360: 48                                     H            :1660[4]
    LDA L0034,X                                                       ; 2361: B5 34                                  .4           :1661[4]
    TAY                                                               ; 2363: A8                                     .            :1663[4]
    LDA L0038,X                                                       ; 2364: B5 38                                  .8           :1664[4]
    PHA                                                               ; 2366: 48                                     H            :1666[4]
    LDA L0030,X                                                       ; 2367: B5 30                                  .0           :1667[4]
    TAX                                                               ; 2369: AA                                     .            :1669[4]
    PLA                                                               ; 236A: 68                                     h            :166A[4]
    JSR sub_C262A                                                     ; 236B: 20 2A 26                                *&          :166B[4]
    PLA                                                               ; 236E: 68                                     h            :166E[4]
    TAX                                                               ; 236F: AA                                     .            :166F[4]
; &2370 referenced 2 times by &1657, &165D
.C1670
    DEX                                                               ; 2370: CA                                     .            :1670[4]
    BPL loop_C1655                                                    ; 2371: 10 E2                                  ..           :1671[4]
; &2373 referenced 2 times by &15AF, &15BE
.sub_C1673
    LDA L001B                                                         ; 2373: A5 1B                                  ..           :1673[4]
    BPL C16E0                                                         ; 2375: 10 69                                  .i           :1675[4]
    AND #&40 ; '@'                                                    ; 2377: 29 40                                  )@           :1677[4]
    BEQ C16A9                                                         ; 2379: F0 2E                                  ..           :1679[4]
    LDA L001B                                                         ; 237B: A5 1B                                  ..           :167B[4]
    CMP #&E3                                                          ; 237D: C9 E3                                  ..           :167D[4]
    BNE C168E                                                         ; 237F: D0 0D                                  ..           :167F[4]
    JSR sub_C25E5                                                     ; 2381: 20 E5 25                                .%          :1681[4]
    AND #&3F ; '?'                                                    ; 2384: 29 3F                                  )?           :1684[4]
    BNE C16A8                                                         ; 2386: D0 20                                  .            :1686[4]
; &2388 referenced 1 time by &15BB
.sub_C1688
    LDA #&A3                                                          ; 2388: A9 A3                                  ..           :1688[4]
    STA L001B                                                         ; 238A: 85 1B                                  ..           :168A[4]
    BNE C16A9                                                         ; 238C: D0 1B                                  ..           :168C[4]
; &238E referenced 1 time by &167F
.C168E
    ASL A                                                             ; 238E: 0A                                     .            :168E[4]
    ASL A                                                             ; 238F: 0A                                     .            :168F[4]
    STA L0090                                                         ; 2390: 85 90                                  ..           :1690[4]
    JSR sub_C14E9                                                     ; 2392: 20 E9 14                                ..          :1692[4]
    LSR L0090                                                         ; 2395: 46 90                                  F.           :1695[4]
    JSR sub_C14E9                                                     ; 2397: 20 E9 14                                ..          :1697[4]
    INC L0090                                                         ; 239A: E6 90                                  ..           :169A[4]
    INC L0090                                                         ; 239C: E6 90                                  ..           :169C[4]
    JSR sub_C14E9                                                     ; 239E: 20 E9 14                                ..          :169E[4]
    ASL L0090                                                         ; 23A1: 06 90                                  ..           :16A1[4]
    JSR sub_C14E9                                                     ; 23A3: 20 E9 14                                ..          :16A3[4]
    INC L001B                                                         ; 23A6: E6 1B                                  ..           :16A6[4]
; &23A8 referenced 3 times by &1686, &16D0, &16E0
.C16A8
    RTS                                                               ; 23A8: 60                                     `            :16A8[4]

; &23A9 referenced 2 times by &1679, &168C
.C16A9
    LDA L001B                                                         ; 23A9: A5 1B                                  ..           :16A9[4]
    ASL A                                                             ; 23AB: 0A                                     .            :16AB[4]
    ASL A                                                             ; 23AC: 0A                                     .            :16AC[4]
    STA L0090                                                         ; 23AD: 85 90                                  ..           :16AD[4]
    JSR sub_C14E9                                                     ; 23AF: 20 E9 14                                ..          :16AF[4]
    LSR L0090                                                         ; 23B2: 46 90                                  F.           :16B2[4]
    JSR sub_C14E9                                                     ; 23B4: 20 E9 14                                ..          :16B4[4]
    LDA L0020                                                         ; 23B7: A5 20                                  .            :16B7[4]
    LSR A                                                             ; 23B9: 4A                                     J            :16B9[4]
    STA L0019                                                         ; 23BA: 85 19                                  ..           :16BA[4]
    LDA L0021                                                         ; 23BC: A5 21                                  .!           :16BC[4]
    STA L001A                                                         ; 23BE: 85 1A                                  ..           :16BE[4]
    DEC L0090                                                         ; 23C0: C6 90                                  ..           :16C0[4]
    DEC L0090                                                         ; 23C2: C6 90                                  ..           :16C2[4]
    BEQ C16D2                                                         ; 23C4: F0 0C                                  ..           :16C4[4]
    JSR sub_C14E9                                                     ; 23C6: 20 E9 14                                ..          :16C6[4]
    ASL L0090                                                         ; 23C9: 06 90                                  ..           :16C9[4]
    JSR sub_C14E9                                                     ; 23CB: 20 E9 14                                ..          :16CB[4]
    DEC L001B                                                         ; 23CE: C6 1B                                  ..           :16CE[4]
    BNE C16A8                                                         ; 23D0: D0 D6                                  ..           :16D0[4]
; &23D2 referenced 1 time by &16C4
.C16D2
    LDA L0027                                                         ; 23D2: A5 27                                  .'           :16D2[4]
    CMP #&7F                                                          ; 23D4: C9 7F                                  ..           :16D4[4]
    BCS C16DB                                                         ; 23D6: B0 03                                  ..           :16D6[4]
    JSR sub_C2695                                                     ; 23D8: 20 95 26                                .&          :16D8[4]
; &23DB referenced 1 time by &16D6
.C16DB
    LDA #0                                                            ; 23DB: A9 00                                  ..           :16DB[4]
    STA L001B                                                         ; 23DD: 85 1B                                  ..           :16DD[4]
    RTS                                                               ; 23DF: 60                                     `            :16DF[4]

; &23E0 referenced 1 time by &1675
.C16E0
    BEQ C16A8                                                         ; 23E0: F0 C6                                  ..           :16E0[4]
    JSR C26D7                                                         ; 23E2: 20 D7 26                                .&          :16E2[4]
    LDA #4                                                            ; 23E5: A9 04                                  ..           :16E5[4]
    STA L008B                                                         ; 23E7: 85 8B                                  ..           :16E7[4]
; &23E9 referenced 1 time by &17D6
.C16E9
    LDA L008B                                                         ; 23E9: A5 8B                                  ..           :16E9[4]
    EOR L001B                                                         ; 23EB: 45 1B                                  E.           :16EB[4]
    STA L0088                                                         ; 23ED: 85 88                                  ..           :16ED[4]
    LDX L0019                                                         ; 23EF: A6 19                                  ..           :16EF[4]
    LDY L001A                                                         ; 23F1: A4 1A                                  ..           :16F1[4]
    INX                                                               ; 23F3: E8                                     .            :16F3[4]
    LSR A                                                             ; 23F4: 4A                                     J            :16F4[4]
    BCC C16F9                                                         ; 23F5: 90 02                                  ..           :16F5[4]
    DEX                                                               ; 23F7: CA                                     .            :16F7[4]
    DEX                                                               ; 23F8: CA                                     .            :16F8[4]
; &23F9 referenced 1 time by &16F5
.C16F9
    DEY                                                               ; 23F9: 88                                     .            :16F9[4]
    DEY                                                               ; 23FA: 88                                     .            :16FA[4]
    DEY                                                               ; 23FB: 88                                     .            :16FB[4]
    DEY                                                               ; 23FC: 88                                     .            :16FC[4]
    EOR L0088                                                         ; 23FD: 45 88                                  E.           :16FD[4]
    LSR A                                                             ; 23FF: 4A                                     J            :16FF[4]
    BCC C1705                                                         ; 2400: 90 03                                  ..           :1700[4]
    JSR sub_C1A60                                                     ; 2402: 20 60 1A                                `.          :1702[4]
; &2405 referenced 1 time by &1700
.C1705
    STX L0089                                                         ; 2405: 86 89                                  ..           :1705[4]
    STY L008A                                                         ; 2407: 84 8A                                  ..           :1707[4]
    CPY #&15                                                          ; 2409: C0 15                                  ..           :1709[4]
    BCC C172B                                                         ; 240B: 90 1E                                  ..           :170B[4]
    JSR calculate_screen_write_address_from_x_y_coords                ; 240D: 20 D3 0A                                ..          :170D[4]
    LDA zero_page_80_dest_screenaddr                                  ; 2410: A5 80                                  ..           :1710[4]
    AND #7                                                            ; 2412: 29 07                                  ).           :1712[4]
    TAY                                                               ; 2414: A8                                     .            :1714[4]
    LDA zero_page_80_dest_screenaddr                                  ; 2415: A5 80                                  ..           :1715[4]
    AND #&F8                                                          ; 2417: 29 F8                                  ).           :1717[4]
    STA zero_page_80_dest_screenaddr                                  ; 2419: 85 80                                  ..           :1719[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 241B: B1 80                                  ..           :171B[4]
    PHA                                                               ; 241D: 48                                     H            :171D[4]
    JSR sub_C1A3C                                                     ; 241E: 20 3C 1A                                <.          :171E[4]
    JSR sub_C1A3C                                                     ; 2421: 20 3C 1A                                <.          :1721[4]
    PLA                                                               ; 2424: 68                                     h            :1724[4]
    ORA (zero_page_80_dest_screenaddr),Y                              ; 2425: 11 80                                  ..           :1725[4]
    AND #&C0                                                          ; 2427: 29 C0                                  ).           :1727[4]
    BEQ C172E                                                         ; 2429: F0 03                                  ..           :1729[4]
; &242B referenced 1 time by &170B
.C172B
    JMP C17D2                                                         ; 242B: 4C D2 17                               L..          :172B[4]

; &242E referenced 1 time by &1729
.C172E
    LDA (zero_page_80_dest_screenaddr),Y                              ; 242E: B1 80                                  ..           :172E[4]
    BNE C1759                                                         ; 2430: D0 27                                  .'           :1730[4]
    JSR sub_C1A60                                                     ; 2432: 20 60 1A                                `.          :1732[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 2435: B1 80                                  ..           :1735[4]
    BNE C1759                                                         ; 2437: D0 20                                  .            :1737[4]
    LDA L008B                                                         ; 2439: A5 8B                                  ..           :1739[4]
    CMP #4                                                            ; 243B: C9 04                                  ..           :173B[4]
    BEQ C1746                                                         ; 243D: F0 07                                  ..           :173D[4]
    LDX #&8C                                                          ; 243F: A2 8C                                  ..           :173F[4]
    LDY #&0D                                                          ; 2441: A0 0D                                  ..           :1741[4]
    JSR play_sound_if_enabled                                         ; 2443: 20 A6 0B                                ..          :1743[4]
; &2446 referenced 2 times by &173D, &17CF
.C1746
    LDX L0089                                                         ; 2446: A6 89                                  ..           :1746[4]
    STX L0019                                                         ; 2448: 86 19                                  ..           :1748[4]
    LDY L008A                                                         ; 244A: A4 8A                                  ..           :174A[4]
    STY L001A                                                         ; 244C: 84 1A                                  ..           :174C[4]
    LDA L0088                                                         ; 244E: A5 88                                  ..           :174E[4]
    AND #3                                                            ; 2450: 29 03                                  ).           :1750[4]
    ORA #&40 ; '@'                                                    ; 2452: 09 40                                  .@           :1752[4]
    STA L001B                                                         ; 2454: 85 1B                                  ..           :1754[4]
    JMP C2698                                                         ; 2456: 4C 98 26                               L.&          :1756[4]

; &2459 referenced 2 times by &1730, &1737
.C1759
    LDX L0013                                                         ; 2459: A6 13                                  ..           :1759[4]
    BEQ C1794                                                         ; 245B: F0 37                                  .7           :175B[4]
; &245D referenced 1 time by &1792
.C175D
    JSR sub_C2550                                                     ; 245D: 20 50 25                                P%          :175D[4]
    LDA L0096                                                         ; 2460: A5 96                                  ..           :1760[4]
    BMI C1791                                                         ; 2462: 30 2D                                  0-           :1762[4]
    LDA L0090                                                         ; 2464: A5 90                                  ..           :1764[4]
    LSR A                                                             ; 2466: 4A                                     J            :1766[4]
    SEC                                                               ; 2467: 38                                     8            :1767[4]
    SBC L0089                                                         ; 2468: E5 89                                  ..           :1768[4]
    CMP #2                                                            ; 246A: C9 02                                  ..           :176A[4]
    BCC C1772                                                         ; 246C: 90 04                                  ..           :176C[4]
    CMP #&FC                                                          ; 246E: C9 FC                                  ..           :176E[4]
    BCC C1791                                                         ; 2470: 90 1F                                  ..           :1770[4]
; &2472 referenced 1 time by &176C
.C1772
    LDA L0093                                                         ; 2472: A5 93                                  ..           :1772[4]
    SEC                                                               ; 2474: 38                                     8            :1774[4]
    SBC L008A                                                         ; 2475: E5 8A                                  ..           :1775[4]
    CMP #4                                                            ; 2477: C9 04                                  ..           :1777[4]
    BCC C177F                                                         ; 2479: 90 04                                  ..           :1779[4]
    CMP #&F0                                                          ; 247B: C9 F0                                  ..           :177B[4]
    BCC C1791                                                         ; 247D: 90 12                                  ..           :177D[4]
; &247F referenced 1 time by &1779
.C177F
    LDA #&C0                                                          ; 247F: A9 C0                                  ..           :177F[4]
    STA L001B                                                         ; 2481: 85 1B                                  ..           :1781[4]
    JSR sub_C24B0                                                     ; 2483: 20 B0 24                                .$          :1783[4]
    LDA L0090                                                         ; 2486: A5 90                                  ..           :1786[4]
    LSR A                                                             ; 2488: 4A                                     J            :1788[4]
    TAX                                                               ; 2489: AA                                     .            :1789[4]
    LDY L0093                                                         ; 248A: A4 93                                  ..           :178A[4]
    LDA #5                                                            ; 248C: A9 05                                  ..           :178C[4]
    JMP C2603                                                         ; 248E: 4C 03 26                               L.&          :178E[4]

; &2491 referenced 3 times by &1762, &1770, &177D
.C1791
    DEX                                                               ; 2491: CA                                     .            :1791[4]
    BNE C175D                                                         ; 2492: D0 C9                                  ..           :1792[4]
; &2494 referenced 1 time by &175B
.C1794
    LDA L0027                                                         ; 2494: A5 27                                  .'           :1794[4]
    BNE C17BB                                                         ; 2496: D0 23                                  .#           :1796[4]
    LDA L0020                                                         ; 2498: A5 20                                  .            :1798[4]
    LSR A                                                             ; 249A: 4A                                     J            :179A[4]
    SEC                                                               ; 249B: 38                                     8            :179B[4]
    SBC L0089                                                         ; 249C: E5 89                                  ..           :179C[4]
    CMP #2                                                            ; 249E: C9 02                                  ..           :179E[4]
    BCC C17A6                                                         ; 24A0: 90 04                                  ..           :17A0[4]
    CMP #&FC                                                          ; 24A2: C9 FC                                  ..           :17A2[4]
    BCC C17BB                                                         ; 24A4: 90 15                                  ..           :17A4[4]
; &24A6 referenced 1 time by &17A0
.C17A6
    LDA L0021                                                         ; 24A6: A5 21                                  .!           :17A6[4]
    SEC                                                               ; 24A8: 38                                     8            :17A8[4]
    SBC L008A                                                         ; 24A9: E5 8A                                  ..           :17A9[4]
    CMP #4                                                            ; 24AB: C9 04                                  ..           :17AB[4]
    BCC C17B3                                                         ; 24AD: 90 04                                  ..           :17AD[4]
    CMP #&F0                                                          ; 24AF: C9 F0                                  ..           :17AF[4]
    BCC C17BB                                                         ; 24B1: 90 08                                  ..           :17B1[4]
; &24B3 referenced 1 time by &17AD
.C17B3
    JSR sub_C2695                                                     ; 24B3: 20 95 26                                .&          :17B3[4]
    LDA #0                                                            ; 24B6: A9 00                                  ..           :17B6[4]
    STA L001B                                                         ; 24B8: 85 1B                                  ..           :17B8[4]
    RTS                                                               ; 24BA: 60                                     `            :17BA[4]

; &24BB referenced 3 times by &1796, &17A4, &17B1
.C17BB
    LDA L0089                                                         ; 24BB: A5 89                                  ..           :17BB[4]
    CMP #&22 ; '"'                                                    ; 24BD: C9 22                                  ."           :17BD[4]
    BCC C17D2                                                         ; 24BF: 90 11                                  ..           :17BF[4]
    CMP #&28 ; '('                                                    ; 24C1: C9 28                                  .(           :17C1[4]
    BCS C17D2                                                         ; 24C3: B0 0D                                  ..           :17C3[4]
    LDA L008A                                                         ; 24C5: A5 8A                                  ..           :17C5[4]
    CMP #&7E ; '~'                                                    ; 24C7: C9 7E                                  .~           :17C7[4]
    BCC C17D2                                                         ; 24C9: 90 07                                  ..           :17C9[4]
    CMP #&91                                                          ; 24CB: C9 91                                  ..           :17CB[4]
    BCS C17D2                                                         ; 24CD: B0 03                                  ..           :17CD[4]
    JMP C1746                                                         ; 24CF: 4C 46 17                               LF.          :17CF[4]

; &24D2 referenced 5 times by &172B, &17BF, &17C3, &17C9, &17CD
.C17D2
    DEC L008B                                                         ; 24D2: C6 8B                                  ..           :17D2[4]
    BEQ C17D9                                                         ; 24D4: F0 03                                  ..           :17D4[4]
    JMP C16E9                                                         ; 24D6: 4C E9 16                               L..          :17D6[4]

; &24D9 referenced 1 time by &17D4
.C17D9
    JMP C26D7                                                         ; 24D9: 4C D7 26                               L.&          :17D9[4]

; &24DC referenced 2 times by &13FB, &227D
.sub_C17DC
    LDA zero_page_80_dest_screenaddr                                  ; 24DC: A5 80                                  ..           :17DC[4]
    AND #7                                                            ; 24DE: 29 07                                  ).           :17DE[4]
    TAY                                                               ; 24E0: A8                                     .            :17E0[4]
    LDA zero_page_80_dest_screenaddr                                  ; 24E1: A5 80                                  ..           :17E1[4]
    AND #&F8                                                          ; 24E3: 29 F8                                  ).           :17E3[4]
    SEC                                                               ; 24E5: 38                                     8            :17E5[4]
    SBC #8                                                            ; 24E6: E9 08                                  ..           :17E6[4]
    STA zero_page_80_dest_screenaddr                                  ; 24E8: 85 80                                  ..           :17E8[4]
    LDA zero_page_81_dest_screenaddr                                  ; 24EA: A5 81                                  ..           :17EA[4]
    SBC #5                                                            ; 24EC: E9 05                                  ..           :17EC[4]
    STA zero_page_81_dest_screenaddr                                  ; 24EE: 85 81                                  ..           :17EE[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 24F0: B1 80                                  ..           :17F0[4]
    PHA                                                               ; 24F2: 48                                     H            :17F2[4]
    JSR sub_C1A60                                                     ; 24F3: 20 60 1A                                `.          :17F3[4]
    PLA                                                               ; 24F6: 68                                     h            :17F6[4]
    AND #&C0                                                          ; 24F7: 29 C0                                  ).           :17F7[4]
    BNE C17FE                                                         ; 24F9: D0 03                                  ..           :17F9[4]
    JSR C1856                                                         ; 24FB: 20 56 18                                V.          :17FB[4]
; &24FE referenced 1 time by &17F9
.C17FE
    LDA (zero_page_80_dest_screenaddr),Y                              ; 24FE: B1 80                                  ..           :17FE[4]
    AND #&C0                                                          ; 2500: 29 C0                                  ).           :1800[4]
    BNE C180D                                                         ; 2502: D0 09                                  ..           :1802[4]
    JSR sub_C1A66                                                     ; 2504: 20 66 1A                                f.          :1804[4]
    JSR C18E8                                                         ; 2507: 20 E8 18                                ..          :1807[4]
    JSR sub_C1A60                                                     ; 250A: 20 60 1A                                `.          :180A[4]
; &250D referenced 1 time by &1802
.C180D
    JSR sub_C1A3C                                                     ; 250D: 20 3C 1A                                <.          :180D[4]
    JSR sub_C18E5                                                     ; 2510: 20 E5 18                                ..          :1810[4]
    JSR sub_C1A3C                                                     ; 2513: 20 3C 1A                                <.          :1813[4]
    JSR C1856                                                         ; 2516: 20 56 18                                V.          :1816[4]
    JSR sub_C1A66                                                     ; 2519: 20 66 1A                                f.          :1819[4]
    JSR C18E8                                                         ; 251C: 20 E8 18                                ..          :181C[4]
    LDX #&0C                                                          ; 251F: A2 0C                                  ..           :181F[4]
; &2521 referenced 1 time by &1828
.loop_C1821
    JSR sub_C1A3C                                                     ; 2521: 20 3C 1A                                <.          :1821[4]
    JSR sub_C18E5                                                     ; 2524: 20 E5 18                                ..          :1824[4]
    DEX                                                               ; 2527: CA                                     .            :1827[4]
    BNE loop_C1821                                                    ; 2528: D0 F7                                  ..           :1828[4]
    JSR sub_C1A3C                                                     ; 252A: 20 3C 1A                                <.          :182A[4]
    JSR C18E8                                                         ; 252D: 20 E8 18                                ..          :182D[4]
    JSR sub_C1A60                                                     ; 2530: 20 60 1A                                `.          :1830[4]
    JSR C1856                                                         ; 2533: 20 56 18                                V.          :1833[4]
    JSR sub_C1A3C                                                     ; 2536: 20 3C 1A                                <.          :1836[4]
    JSR sub_C18E5                                                     ; 2539: 20 E5 18                                ..          :1839[4]
    JSR sub_C1A3C                                                     ; 253C: 20 3C 1A                                <.          :183C[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 253F: B1 80                                  ..           :183F[4]
    PHA                                                               ; 2541: 48                                     H            :1841[4]
    JSR sub_C1A66                                                     ; 2542: 20 66 1A                                f.          :1842[4]
    PLA                                                               ; 2545: 68                                     h            :1845[4]
    AND #&C0                                                          ; 2546: 29 C0                                  ).           :1846[4]
    BNE C184D                                                         ; 2548: D0 03                                  ..           :1848[4]
    JSR C18E8                                                         ; 254A: 20 E8 18                                ..          :184A[4]
; &254D referenced 1 time by &1848
.C184D
    LDA (zero_page_80_dest_screenaddr),Y                              ; 254D: B1 80                                  ..           :184D[4]
    AND #&C0                                                          ; 254F: 29 C0                                  ).           :184F[4]
    BNE C1862                                                         ; 2551: D0 0F                                  ..           :1851[4]
    JSR sub_C1A60                                                     ; 2553: 20 60 1A                                `.          :1853[4]
; &2556 referenced 16 times by &17FB, &1816, &1833, &188F, &18A6, &18B7, &18D6, &18E5, &1945, &1956, &196B, &198E, &19CE, &19D7, &1A25, &1A39
.C1856
    LDA (zero_page_80_dest_screenaddr),Y                              ; 2556: B1 80                                  ..           :1856[4]
    AND #&80                                                          ; 2558: 29 80                                  ).           :1858[4]
    BEQ C1862                                                         ; 255A: F0 06                                  ..           :185A[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 255C: B1 80                                  ..           :185C[4]
    AND #&5F ; '_'                                                    ; 255E: 29 5F                                  )_           :185E[4]
    STA (zero_page_80_dest_screenaddr),Y                              ; 2560: 91 80                                  ..           :1860[4]
; &2562 referenced 2 times by &1851, &185A
.C1862
    RTS                                                               ; 2562: 60                                     `            :1862[4]

; &2563 referenced 2 times by &1486, &2271
.sub_C1863
    LDA zero_page_80_dest_screenaddr                                  ; 2563: A5 80                                  ..           :1863[4]
    AND #7                                                            ; 2565: 29 07                                  ).           :1865[4]
    CLC                                                               ; 2567: 18                                     .            :1867[4]
    ADC #&20 ; ' '                                                    ; 2568: 69 20                                  i            :1868[4]
    TAY                                                               ; 256A: A8                                     .            :186A[4]
    LDA zero_page_80_dest_screenaddr                                  ; 256B: A5 80                                  ..           :186B[4]
    AND #&F8                                                          ; 256D: 29 F8                                  ).           :186D[4]
    STA zero_page_80_dest_screenaddr                                  ; 256F: 85 80                                  ..           :186F[4]
    LDA zero_page_81_dest_screenaddr                                  ; 2571: A5 81                                  ..           :1871[4]
    SEC                                                               ; 2573: 38                                     8            :1873[4]
    SBC #5                                                            ; 2574: E9 05                                  ..           :1874[4]
    STA zero_page_81_dest_screenaddr                                  ; 2576: 85 81                                  ..           :1876[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 2578: B1 80                                  ..           :1878[4]
    PHA                                                               ; 257A: 48                                     H            :187A[4]
    JSR sub_C1A66                                                     ; 257B: 20 66 1A                                f.          :187B[4]
    PLA                                                               ; 257E: 68                                     h            :187E[4]
    AND #&C0                                                          ; 257F: 29 C0                                  ).           :187F[4]
    BNE C1886                                                         ; 2581: D0 03                                  ..           :1881[4]
    JSR C18E8                                                         ; 2583: 20 E8 18                                ..          :1883[4]
; &2586 referenced 1 time by &1881
.C1886
    LDA (zero_page_80_dest_screenaddr),Y                              ; 2586: B1 80                                  ..           :1886[4]
    AND #&C0                                                          ; 2588: 29 C0                                  ).           :1888[4]
    BNE C1895                                                         ; 258A: D0 09                                  ..           :188A[4]
    JSR sub_C1A60                                                     ; 258C: 20 60 1A                                `.          :188C[4]
    JSR C1856                                                         ; 258F: 20 56 18                                V.          :188F[4]
    JSR sub_C1A66                                                     ; 2592: 20 66 1A                                f.          :1892[4]
; &2595 referenced 1 time by &188A
.C1895
    JSR sub_C1A3C                                                     ; 2595: 20 3C 1A                                <.          :1895[4]
    JSR sub_C18E5                                                     ; 2598: 20 E5 18                                ..          :1898[4]
    JSR sub_C1A3C                                                     ; 259B: 20 3C 1A                                <.          :189B[4]
    JSR C18E8                                                         ; 259E: 20 E8 18                                ..          :189E[4]
    TYA                                                               ; 25A1: 98                                     .            :18A1[4]
    CLC                                                               ; 25A2: 18                                     .            :18A2[4]
    ADC #8                                                            ; 25A3: 69 08                                  i.           :18A3[4]
    TAY                                                               ; 25A5: A8                                     .            :18A5[4]
    JSR C1856                                                         ; 25A6: 20 56 18                                V.          :18A6[4]
    LDX #&0C                                                          ; 25A9: A2 0C                                  ..           :18A9[4]
; &25AB referenced 1 time by &18B2
.loop_C18AB
    JSR sub_C1A3C                                                     ; 25AB: 20 3C 1A                                <.          :18AB[4]
    JSR sub_C18E5                                                     ; 25AE: 20 E5 18                                ..          :18AE[4]
    DEX                                                               ; 25B1: CA                                     .            :18B1[4]
    BNE loop_C18AB                                                    ; 25B2: D0 F7                                  ..           :18B2[4]
    JSR sub_C1A3C                                                     ; 25B4: 20 3C 1A                                <.          :18B4[4]
    JSR C1856                                                         ; 25B7: 20 56 18                                V.          :18B7[4]
    TYA                                                               ; 25BA: 98                                     .            :18BA[4]
    SEC                                                               ; 25BB: 38                                     8            :18BB[4]
    SBC #8                                                            ; 25BC: E9 08                                  ..           :18BC[4]
    TAY                                                               ; 25BE: A8                                     .            :18BE[4]
    JSR C18E8                                                         ; 25BF: 20 E8 18                                ..          :18BF[4]
    JSR sub_C1A3C                                                     ; 25C2: 20 3C 1A                                <.          :18C2[4]
    JSR sub_C18E5                                                     ; 25C5: 20 E5 18                                ..          :18C5[4]
    JSR sub_C1A3C                                                     ; 25C8: 20 3C 1A                                <.          :18C8[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 25CB: B1 80                                  ..           :18CB[4]
    PHA                                                               ; 25CD: 48                                     H            :18CD[4]
    JSR sub_C1A60                                                     ; 25CE: 20 60 1A                                `.          :18CE[4]
    PLA                                                               ; 25D1: 68                                     h            :18D1[4]
    AND #&C0                                                          ; 25D2: 29 C0                                  ).           :18D2[4]
    BNE C18D9                                                         ; 25D4: D0 03                                  ..           :18D4[4]
    JSR C1856                                                         ; 25D6: 20 56 18                                V.          :18D6[4]
; &25D9 referenced 1 time by &18D4
.C18D9
    LDA (zero_page_80_dest_screenaddr),Y                              ; 25D9: B1 80                                  ..           :18D9[4]
    AND #&C0                                                          ; 25DB: 29 C0                                  ).           :18DB[4]
    BNE C18F4                                                         ; 25DD: D0 15                                  ..           :18DD[4]
    JSR sub_C1A66                                                     ; 25DF: 20 66 1A                                f.          :18DF[4]
    JMP C18E8                                                         ; 25E2: 4C E8 18                               L..          :18E2[4]

; &25E5 referenced 15 times by &1810, &1824, &1839, &1898, &18AE, &18C5, &1914, &193C, &195C, &1988, &19B4, &19BA, &19DF, &1A0E, &1A16
.sub_C18E5
    JSR C1856                                                         ; 25E5: 20 56 18                                V.          :18E5[4]
; &25E8 referenced 16 times by &1807, &181C, &182D, &184A, &1883, &189E, &18BF, &18E2, &192B, &1934, &197F, &1996, &19E8, &19F9, &1A05, &1A31
.C18E8
    LDA (zero_page_80_dest_screenaddr),Y                              ; 25E8: B1 80                                  ..           :18E8[4]
    AND #&40 ; '@'                                                    ; 25EA: 29 40                                  )@           :18EA[4]
    BEQ C18F4                                                         ; 25EC: F0 06                                  ..           :18EC[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 25EE: B1 80                                  ..           :18EE[4]
    AND #&AF                                                          ; 25F0: 29 AF                                  ).           :18F0[4]
    STA (zero_page_80_dest_screenaddr),Y                              ; 25F2: 91 80                                  ..           :18F2[4]
; &25F4 referenced 2 times by &18DD, &18EC
.C18F4
    RTS                                                               ; 25F4: 60                                     `            :18F4[4]

; &25F5 referenced 2 times by &14BD, &2286
.sub_C18F5
    LDA zero_page_80_dest_screenaddr                                  ; 25F5: A5 80                                  ..           :18F5[4]
    AND #7                                                            ; 25F7: 29 07                                  ).           :18F7[4]
    CLC                                                               ; 25F9: 18                                     .            :18F9[4]
    ADC #&10                                                          ; 25FA: 69 10                                  i.           :18FA[4]
    TAY                                                               ; 25FC: A8                                     .            :18FC[4]
    LDA zero_page_80_dest_screenaddr                                  ; 25FD: A5 80                                  ..           :18FD[4]
.sub_C18FF
code_to_relocate_1900 = sub_C18FF+1
    AND #&F8                                                          ; 25FF: 29 F8                                  ).           :18FF[4]
    SEC                                                               ; 2601: 38                                     8            :1901[4]
    SBC #&10                                                          ; 2602: E9 10                                  ..           :1902[4]
    STA zero_page_80_dest_screenaddr                                  ; 2604: 85 80                                  ..           :1904[4]
    LDA zero_page_81_dest_screenaddr                                  ; 2606: A5 81                                  ..           :1906[4]
    SBC #5                                                            ; 2608: E9 05                                  ..           :1908[4]
    STA zero_page_81_dest_screenaddr                                  ; 260A: 85 81                                  ..           :190A[4]
    JSR sub_C1A4B                                                     ; 260C: 20 4B 1A                                K.          :190C[4]
    LDX #2                                                            ; 260F: A2 02                                  ..           :190F[4]
; &2611 referenced 1 time by &1918
.loop_C1911
    JSR sub_C1A60                                                     ; 2611: 20 60 1A                                `.          :1911[4]
    JSR sub_C18E5                                                     ; 2614: 20 E5 18                                ..          :1914[4]
    DEX                                                               ; 2617: CA                                     .            :1917[4]
    BNE loop_C1911                                                    ; 2618: D0 F7                                  ..           :1918[4]
    TYA                                                               ; 261A: 98                                     .            :191A[4]
    SEC                                                               ; 261B: 38                                     8            :191B[4]
    SBC #&18                                                          ; 261C: E9 18                                  ..           :191C[4]
    TAY                                                               ; 261E: A8                                     .            :191E[4]
    JSR sub_C1A3C                                                     ; 261F: 20 3C 1A                                <.          :191F[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 2622: B1 80                                  ..           :1922[4]
    AND #&C0                                                          ; 2624: 29 C0                                  ).           :1924[4]
    BNE C1931                                                         ; 2626: D0 09                                  ..           :1926[4]
    JSR sub_C1A3C                                                     ; 2628: 20 3C 1A                                <.          :1928[4]
    JSR C18E8                                                         ; 262B: 20 E8 18                                ..          :192B[4]
    JSR sub_C1A4B                                                     ; 262E: 20 4B 1A                                K.          :192E[4]
; &2631 referenced 1 time by &1926
.C1931
    JSR sub_C1A60                                                     ; 2631: 20 60 1A                                `.          :1931[4]
    JSR C18E8                                                         ; 2634: 20 E8 18                                ..          :1934[4]
    LDX #2                                                            ; 2637: A2 02                                  ..           :1937[4]
; &2639 referenced 1 time by &1940
.loop_C1939
    JSR sub_C1A60                                                     ; 2639: 20 60 1A                                `.          :1939[4]
    JSR sub_C18E5                                                     ; 263C: 20 E5 18                                ..          :193C[4]
    DEX                                                               ; 263F: CA                                     .            :193F[4]
    BNE loop_C1939                                                    ; 2640: D0 F7                                  ..           :1940[4]
    JSR sub_C1A60                                                     ; 2642: 20 60 1A                                `.          :1942[4]
    JSR C1856                                                         ; 2645: 20 56 18                                V.          :1945[4]
    JSR sub_C1A60                                                     ; 2648: 20 60 1A                                `.          :1948[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 264B: B1 80                                  ..           :194B[4]
    PHA                                                               ; 264D: 48                                     H            :194D[4]
    JSR sub_C1A3C                                                     ; 264E: 20 3C 1A                                <.          :194E[4]
    PLA                                                               ; 2651: 68                                     h            :1951[4]
    AND #&C0                                                          ; 2652: 29 C0                                  ).           :1952[4]
    BNE C1959                                                         ; 2654: D0 03                                  ..           :1954[4]
    JSR C1856                                                         ; 2656: 20 56 18                                V.          :1956[4]
; &2659 referenced 1 time by &1954
.C1959
    JSR sub_C1A66                                                     ; 2659: 20 66 1A                                f.          :1959[4]
    JSR sub_C18E5                                                     ; 265C: 20 E5 18                                ..          :195C[4]
    JSR sub_C1A60                                                     ; 265F: 20 60 1A                                `.          :195F[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 2662: B1 80                                  ..           :1962[4]
    AND #&C0                                                          ; 2664: 29 C0                                  ).           :1964[4]
    BNE C1971                                                         ; 2666: D0 09                                  ..           :1966[4]
    JSR sub_C1A4B                                                     ; 2668: 20 4B 1A                                K.          :1968[4]
    JSR C1856                                                         ; 266B: 20 56 18                                V.          :196B[4]
    JSR sub_C1A3C                                                     ; 266E: 20 3C 1A                                <.          :196E[4]
; &2671 referenced 1 time by &1966
.C1971
    TYA                                                               ; 2671: 98                                     .            :1971[4]
    SEC                                                               ; 2672: 38                                     8            :1972[4]
    SBC #&28 ; '('                                                    ; 2673: E9 28                                  .(           :1973[4]
    TAY                                                               ; 2675: A8                                     .            :1975[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 2676: B1 80                                  ..           :1976[4]
    AND #&C0                                                          ; 2678: 29 C0                                  ).           :1978[4]
    BNE C1985                                                         ; 267A: D0 09                                  ..           :197A[4]
    JSR sub_C1A4B                                                     ; 267C: 20 4B 1A                                K.          :197C[4]
    JSR C18E8                                                         ; 267F: 20 E8 18                                ..          :197F[4]
    JSR sub_C1A3C                                                     ; 2682: 20 3C 1A                                <.          :1982[4]
; &2685 referenced 1 time by &197A
.C1985
    JSR sub_C1A60                                                     ; 2685: 20 60 1A                                `.          :1985[4]
    JSR sub_C18E5                                                     ; 2688: 20 E5 18                                ..          :1988[4]
    JSR sub_C1A3C                                                     ; 268B: 20 3C 1A                                <.          :198B[4]
    JSR C1856                                                         ; 268E: 20 56 18                                V.          :198E[4]
    TYA                                                               ; 2691: 98                                     .            :1991[4]
    CLC                                                               ; 2692: 18                                     .            :1992[4]
    ADC #&18                                                          ; 2693: 69 18                                  i.           :1993[4]
    TAY                                                               ; 2695: A8                                     .            :1995[4]
    JMP C18E8                                                         ; 2696: 4C E8 18                               L..          :1996[4]

; &2699 referenced 3 times by &14DE, &1E63, &228C
.C1999
    LDA zero_page_80_dest_screenaddr                                  ; 2699: A5 80                                  ..           :1999[4]
    AND #7                                                            ; 269B: 29 07                                  ).           :199B[4]
    CLC                                                               ; 269D: 18                                     .            :199D[4]
    ADC #&18                                                          ; 269E: 69 18                                  i.           :199E[4]
    TAY                                                               ; 26A0: A8                                     .            :19A0[4]
    LDA zero_page_80_dest_screenaddr                                  ; 26A1: A5 80                                  ..           :19A1[4]
    AND #&F8                                                          ; 26A3: 29 F8                                  ).           :19A3[4]
    SEC                                                               ; 26A5: 38                                     8            :19A5[4]
    SBC #&10                                                          ; 26A6: E9 10                                  ..           :19A6[4]
    STA zero_page_80_dest_screenaddr                                  ; 26A8: 85 80                                  ..           :19A8[4]
    BCS C19AE                                                         ; 26AA: B0 02                                  ..           :19AA[4]
    DEC zero_page_81_dest_screenaddr                                  ; 26AC: C6 81                                  ..           :19AC[4]
; &26AE referenced 1 time by &19AA
.C19AE
    JSR sub_C1A3C                                                     ; 26AE: 20 3C 1A                                <.          :19AE[4]
    JSR sub_C1A3C                                                     ; 26B1: 20 3C 1A                                <.          :19B1[4]
    JSR sub_C18E5                                                     ; 26B4: 20 E5 18                                ..          :19B4[4]
    JSR sub_C1A60                                                     ; 26B7: 20 60 1A                                `.          :19B7[4]
    JSR sub_C18E5                                                     ; 26BA: 20 E5 18                                ..          :19BA[4]
    JSR sub_C1A4B                                                     ; 26BD: 20 4B 1A                                K.          :19BD[4]
    TYA                                                               ; 26C0: 98                                     .            :19C0[4]
    CLC                                                               ; 26C1: 18                                     .            :19C1[4]
    ADC #&10                                                          ; 26C2: 69 10                                  i.           :19C2[4]
    TAY                                                               ; 26C4: A8                                     .            :19C4[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 26C5: B1 80                                  ..           :19C5[4]
    AND #&C0                                                          ; 26C7: 29 C0                                  ).           :19C7[4]
    BNE C19D4                                                         ; 26C9: D0 09                                  ..           :19C9[4]
    JSR sub_C1A4B                                                     ; 26CB: 20 4B 1A                                K.          :19CB[4]
    JSR C1856                                                         ; 26CE: 20 56 18                                V.          :19CE[4]
    JSR sub_C1A3C                                                     ; 26D1: 20 3C 1A                                <.          :19D1[4]
; &26D4 referenced 1 time by &19C9
.C19D4
    JSR sub_C1A66                                                     ; 26D4: 20 66 1A                                f.          :19D4[4]
    JSR C1856                                                         ; 26D7: 20 56 18                                V.          :19D7[4]
    LDX #2                                                            ; 26DA: A2 02                                  ..           :19DA[4]
; &26DC referenced 1 time by &19E3
.loop_C19DC
    JSR sub_C1A66                                                     ; 26DC: 20 66 1A                                f.          :19DC[4]
    JSR sub_C18E5                                                     ; 26DF: 20 E5 18                                ..          :19DF[4]
    DEX                                                               ; 26E2: CA                                     .            :19E2[4]
    BNE loop_C19DC                                                    ; 26E3: D0 F7                                  ..           :19E3[4]
    JSR sub_C1A66                                                     ; 26E5: 20 66 1A                                f.          :19E5[4]
    JSR C18E8                                                         ; 26E8: 20 E8 18                                ..          :19E8[4]
    JSR sub_C1A66                                                     ; 26EB: 20 66 1A                                f.          :19EB[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 26EE: B1 80                                  ..           :19EE[4]
    PHA                                                               ; 26F0: 48                                     H            :19F0[4]
    JSR sub_C1A4B                                                     ; 26F1: 20 4B 1A                                K.          :19F1[4]
    PLA                                                               ; 26F4: 68                                     h            :19F4[4]
    AND #&C0                                                          ; 26F5: 29 C0                                  ).           :19F5[4]
    BNE C19FC                                                         ; 26F7: D0 03                                  ..           :19F7[4]
    JSR C18E8                                                         ; 26F9: 20 E8 18                                ..          :19F9[4]
; &26FC referenced 1 time by &19F7
.C19FC
    LDA (zero_page_80_dest_screenaddr),Y                              ; 26FC: B1 80                                  ..           :19FC[4]
    AND #&C0                                                          ; 26FE: 29 C0                                  ).           :19FE[4]
    BNE C1A0B                                                         ; 2700: D0 09                                  ..           :1A00[4]
    JSR sub_C1A3C                                                     ; 2702: 20 3C 1A                                <.          :1A02[4]
    JSR C18E8                                                         ; 2705: 20 E8 18                                ..          :1A05[4]
    JSR sub_C1A4B                                                     ; 2708: 20 4B 1A                                K.          :1A08[4]
; &270B referenced 1 time by &1A00
.C1A0B
    JSR sub_C1A60                                                     ; 270B: 20 60 1A                                `.          :1A0B[4]
    JSR sub_C18E5                                                     ; 270E: 20 E5 18                                ..          :1A0E[4]
    TYA                                                               ; 2711: 98                                     .            :1A11[4]
    CLC                                                               ; 2712: 18                                     .            :1A12[4]
    ADC #&18                                                          ; 2713: 69 18                                  i.           :1A13[4]
    TAY                                                               ; 2715: A8                                     .            :1A15[4]
    JSR sub_C18E5                                                     ; 2716: 20 E5 18                                ..          :1A16[4]
    JSR sub_C1A60                                                     ; 2719: 20 60 1A                                `.          :1A19[4]
    LDA (zero_page_80_dest_screenaddr),Y                              ; 271C: B1 80                                  ..           :1A1C[4]
    AND #&C0                                                          ; 271E: 29 C0                                  ).           :1A1E[4]
    BNE C1A2B                                                         ; 2720: D0 09                                  ..           :1A20[4]
    JSR sub_C1A3C                                                     ; 2722: 20 3C 1A                                <.          :1A22[4]
    JSR C1856                                                         ; 2725: 20 56 18                                V.          :1A25[4]
    JSR sub_C1A4B                                                     ; 2728: 20 4B 1A                                K.          :1A28[4]
; &272B referenced 1 time by &1A20
.C1A2B
    JSR sub_C1A4B                                                     ; 272B: 20 4B 1A                                K.          :1A2B[4]
    JSR sub_C1A66                                                     ; 272E: 20 66 1A                                f.          :1A2E[4]
    JSR C18E8                                                         ; 2731: 20 E8 18                                ..          :1A31[4]
    TYA                                                               ; 2734: 98                                     .            :1A34[4]
    SEC                                                               ; 2735: 38                                     8            :1A35[4]
    SBC #&18                                                          ; 2736: E9 18                                  ..           :1A36[4]
    TAY                                                               ; 2738: A8                                     .            :1A38[4]
    JMP C1856                                                         ; 2739: 4C 56 18                               LV.          :1A39[4]

; &273C referenced 30 times by &0FD9, &0FDC, &171E, &1721, &180D, &1813, &1821, &182A, &1836, &183C, &1895, &189B, &18AB, &18B4, &18C2, &18C8, &191F, &1928, &194E, &196E, &1982, &198B, &19AE, &19B1, &19D1, &1A02, &1A22, &26A9, &26B8, &26C7
.sub_C1A3C
    INY                                                               ; 273C: C8                                     .            :1A3C[4]
    TYA                                                               ; 273D: 98                                     .            :1A3D[4]
    AND #7                                                            ; 273E: 29 07                                  ).           :1A3E[4]
    BNE C1A4A                                                         ; 2740: D0 08                                  ..           :1A40[4]
    JSR sub_C2785                                                     ; 2742: 20 85 27                                .'          :1A42[4]
    TYA                                                               ; 2745: 98                                     .            :1A45[4]
    SEC                                                               ; 2746: 38                                     8            :1A46[4]
    SBC #8                                                            ; 2747: E9 08                                  ..           :1A47[4]
    TAY                                                               ; 2749: A8                                     .            :1A49[4]
; &274A referenced 1 time by &1A40
.C1A4A
    RTS                                                               ; 274A: 60                                     `            :1A4A[4]

; &274B referenced 10 times by &190C, &192E, &1968, &197C, &19BD, &19CB, &19F1, &1A08, &1A28, &1A2B
.sub_C1A4B
    DEY                                                               ; 274B: 88                                     .            :1A4B[4]
    TYA                                                               ; 274C: 98                                     .            :1A4C[4]
    AND #7                                                            ; 274D: 29 07                                  ).           :1A4D[4]
    CMP #7                                                            ; 274F: C9 07                                  ..           :1A4F[4]
    BNE C1A65                                                         ; 2751: D0 12                                  ..           :1A51[4]
    LDA zero_page_80_dest_screenaddr                                  ; 2753: A5 80                                  ..           :1A53[4]
    SEC                                                               ; 2755: 38                                     8            :1A55[4]
    SBC #&80                                                          ; 2756: E9 80                                  ..           :1A56[4]
    STA zero_page_80_dest_screenaddr                                  ; 2758: 85 80                                  ..           :1A58[4]
    LDA zero_page_81_dest_screenaddr                                  ; 275A: A5 81                                  ..           :1A5A[4]
    SBC #2                                                            ; 275C: E9 02                                  ..           :1A5C[4]
    STA zero_page_81_dest_screenaddr                                  ; 275E: 85 81                                  ..           :1A5E[4]
; &2760 referenced 20 times by &1702, &1732, &17F3, &180A, &1830, &1853, &188C, &18CE, &1911, &1931, &1939, &1942, &1948, &195F, &1985, &19B7, &1A0B, &1A19, &26AF, &26BE
.sub_C1A60
    TYA                                                               ; 2760: 98                                     .            :1A60[4]
    CLC                                                               ; 2761: 18                                     .            :1A61[4]
    ADC #8                                                            ; 2762: 69 08                                  i.           :1A62[4]
    TAY                                                               ; 2764: A8                                     .            :1A64[4]
; &2765 referenced 1 time by &1A51
.C1A65
    RTS                                                               ; 2765: 60                                     `            :1A65[4]

; &2766 referenced 15 times by &1581, &1804, &1819, &1842, &187B, &1892, &18DF, &1959, &19D4, &19DC, &19E5, &19EB, &1A2E, &26B5, &26C4
.sub_C1A66
    TYA                                                               ; 2766: 98                                     .            :1A66[4]
    SEC                                                               ; 2767: 38                                     8            :1A67[4]
    SBC #8                                                            ; 2768: E9 08                                  ..           :1A68[4]
    TAY                                                               ; 276A: A8                                     .            :1A6A[4]
    RTS                                                               ; 276B: 60                                     `            :1A6B[4]

; &276C referenced 2 times by &1025, &1552
.sub_C1A6C
    LDX #&11                                                          ; 276C: A2 11                                  ..           :1A6C[4]
; &276E referenced 1 time by &1A75
.loop_C1A6E
    LDA scene_and_score_zero_string_data,X                            ; 276E: BD 20 0C                               . .          :1A6E[4]
    JSR oswrch                                                        ; 2771: 20 EE FF                                ..          :1A71[4]   ; Write character
    DEX                                                               ; 2774: CA                                     .            :1A74[4]
    BPL loop_C1A6E                                                    ; 2775: 10 F7                                  ..           :1A75[4]
    LDA zp15_scene_number                                             ; 2777: A5 15                                  ..           :1A77[4]
    LSR A                                                             ; 2779: 4A                                     J            :1A79[4]
    LSR A                                                             ; 277A: 4A                                     J            :1A7A[4]
    LSR A                                                             ; 277B: 4A                                     J            :1A7B[4]
    LSR A                                                             ; 277C: 4A                                     J            :1A7C[4]
    BEQ print_unknown_number_char_on_screen                           ; 277D: F0 03                                  ..           :1A7D[4]
    ORA #&30 ; '0'                                                    ; 277F: 09 30                                  .0           :1A7F[4]
; overlapping: BIT L09A9                                              ; 2781: 2C A9 09                               ,..          :1A81[4]
    EQUB &2C                                                          ; 2781: 2C                                     ,            :1A81[4]

; &2782 referenced 1 time by &1A7D
.print_unknown_number_char_on_screen
    LDA #9                                                            ; 2782: A9 09                                  ..           :1A82[4]
    JSR oswrch                                                        ; 2784: 20 EE FF                                ..          :1A84[4]   ; Write character 9
    LDA zp15_scene_number                                             ; 2787: A5 15                                  ..           :1A87[4]
    AND #&0F                                                          ; 2789: 29 0F                                  ).           :1A89[4]
    ORA #&30 ; '0'                                                    ; 278B: 09 30                                  .0           :1A8B[4]
    JSR oswrch                                                        ; 278D: 20 EE FF                                ..          :1A8D[4]   ; Write character
    JSR sub_C0BCB                                                     ; 2790: 20 CB 0B                                ..          :1A90[4]
    LDY #&ED                                                          ; 2793: A0 ED                                  ..           :1A93[4]
    LDX lives_remaining_0024_possible                                 ; 2795: A6 24                                  .$           :1A95[4]
    BEQ C1AAA                                                         ; 2797: F0 11                                  ..           :1A97[4]
; &2799 referenced 1 time by &1AA8
.loop_C1A99
    TXA                                                               ; 2799: 8A                                     .            :1A99[4]
    PHA                                                               ; 279A: 48                                     H            :1A9A[4]
    LDX #2                                                            ; 279B: A2 02                                  ..           :1A9B[4]
    JSR sub_C0A58                                                     ; 279D: 20 58 0A                                X.          :1A9D[4]
    TYA                                                               ; 27A0: 98                                     .            :1AA0[4]
    SEC                                                               ; 27A1: 38                                     8            :1AA1[4]
    SBC #&12                                                          ; 27A2: E9 12                                  ..           :1AA2[4]
    TAY                                                               ; 27A4: A8                                     .            :1AA4[4]
    PLA                                                               ; 27A5: 68                                     h            :1AA5[4]
    TAX                                                               ; 27A6: AA                                     .            :1AA6[4]
    DEX                                                               ; 27A7: CA                                     .            :1AA7[4]
    BNE loop_C1A99                                                    ; 27A8: D0 EF                                  ..           :1AA8[4]
; &27AA referenced 1 time by &1A97
.C1AAA
    LDA zp1F_extra_bitmap                                             ; 27AA: A5 1F                                  ..           :1AAA[4]
    STA L0094                                                         ; 27AC: 85 94                                  ..           :1AAC[4]
    LDY #5                                                            ; 27AE: A0 05                                  ..           :1AAE[4]
    LDX #&2F ; '/'                                                    ; 27B0: A2 2F                                  ./           :1AB0[4]
    LDA #4                                                            ; 27B2: A9 04                                  ..           :1AB2[4]
    STA L0093                                                         ; 27B4: 85 93                                  ..           :1AB4[4]
; &27B6 referenced 1 time by &1ACC
.loop_C1AB6
    LDA #&0F                                                          ; 27B6: A9 0F                                  ..           :1AB6[4]
    LSR L0094                                                         ; 27B8: 46 94                                  F.           :1AB8[4]
    BCC C1ABE                                                         ; 27BA: 90 02                                  ..           :1ABA[4]
    LDA #&0C                                                          ; 27BC: A9 0C                                  ..           :1ABC[4]
; &27BE referenced 1 time by &1ABA
.C1ABE
    STA L0097                                                         ; 27BE: 85 97                                  ..           :1ABE[4]
    LDA L0093                                                         ; 27C0: A5 93                                  ..           :1AC0[4]
    JSR C0B4F                                                         ; 27C2: 20 4F 0B                                O.          :1AC2[4]
    TXA                                                               ; 27C5: 8A                                     .            :1AC5[4]
    SEC                                                               ; 27C6: 38                                     8            :1AC6[4]
    SBC #4                                                            ; 27C7: E9 04                                  ..           :1AC7[4]
    TAX                                                               ; 27C9: AA                                     .            :1AC9[4]
    DEC L0093                                                         ; 27CA: C6 93                                  ..           :1ACA[4]
    BPL loop_C1AB6                                                    ; 27CC: 10 E8                                  ..           :1ACC[4]
    LDX #&14                                                          ; 27CE: A2 14                                  ..           :1ACE[4]
    LDY #0                                                            ; 27D0: A0 00                                  ..           :1AD0[4]
; &27D2 referenced 1 time by &1AEE
.loop_C1AD2
    LDA #&0F                                                          ; 27D2: A9 0F                                  ..           :1AD2[4]
    STA L30F1,Y                                                       ; 27D4: 99 F1 30                               ..0          :1AD4[4]
    STA L35F2,Y                                                       ; 27D7: 99 F2 35                               ..5          :1AD7[4]
    LDA #0                                                            ; 27DA: A9 00                                  ..           :1ADA[4]
    STA L35F3,Y                                                       ; 27DC: 99 F3 35                               ..5          :1ADC[4]
    STA L35F4,Y                                                       ; 27DF: 99 F4 35                               ..5          :1ADF[4]
    STA L35F5,Y                                                       ; 27E2: 99 F5 35                               ..5          :1AE2[4]
    STA L35F6,Y                                                       ; 27E5: 99 F6 35                               ..5          :1AE5[4]
    TYA                                                               ; 27E8: 98                                     .            :1AE8[4]
    CLC                                                               ; 27E9: 18                                     .            :1AE9[4]
    ADC #8                                                            ; 27EA: 69 08                                  i.           :1AEA[4]
    TAY                                                               ; 27EC: A8                                     .            :1AEC[4]
    DEX                                                               ; 27ED: CA                                     .            :1AED[4]
    BNE loop_C1AD2                                                    ; 27EE: D0 E2                                  ..           :1AEE[4]
    LDA #&E8                                                          ; 27F0: A9 E8                                  ..           :1AF0[4]
    STA zero_page_80_dest_screenaddr                                  ; 27F2: 85 80                                  ..           :1AF2[4]
    LDA #&30 ; '0'                                                    ; 27F4: A9 30                                  .0           :1AF4[4]
    STA zero_page_81_dest_screenaddr                                  ; 27F6: 85 81                                  ..           :1AF6[4]
    LDA #&90                                                          ; 27F8: A9 90                                  ..           :1AF8[4]
    STA zero_page_82                                                  ; 27FA: 85 82                                  ..           :1AFA[4]
    LDA #&31 ; '1'                                                    ; 27FC: A9 31                                  .1           :1AFC[4]
    STA zero_page_83                                                  ; 27FE: 85 83                                  ..           :1AFE[4]
    LDY #1                                                            ; 2800: A0 01                                  ..           :1B00[4]
    LDX #&12                                                          ; 2802: A2 12                                  ..           :1B02[4]
; &2804 referenced 1 time by &1B22
.loop_C1B04
    LDA #&0F                                                          ; 2804: A9 0F                                  ..           :1B04[4]
    STA (zero_page_80_dest_screenaddr),Y                              ; 2806: 91 80                                  ..           :1B06[4]
    STA (zero_page_82),Y                                              ; 2808: 91 82                                  ..           :1B08[4]
    INY                                                               ; 280A: C8                                     .            :1B0A[4]
    CPY #8                                                            ; 280B: C0 08                                  ..           :1B0B[4]
    BNE C1B21                                                         ; 280D: D0 12                                  ..           :1B0D[4]
    LDY #0                                                            ; 280F: A0 00                                  ..           :1B0F[4]
    JSR sub_C2785                                                     ; 2811: 20 85 27                                .'          :1B11[4]
    LDA zero_page_82                                                  ; 2814: A5 82                                  ..           :1B14[4]
    CLC                                                               ; 2816: 18                                     .            :1B16[4]
    ADC #&80                                                          ; 2817: 69 80                                  i.           :1B17[4]
    STA zero_page_82                                                  ; 2819: 85 82                                  ..           :1B19[4]
    LDA zero_page_83                                                  ; 281B: A5 83                                  ..           :1B1B[4]
    ADC #2                                                            ; 281D: 69 02                                  i.           :1B1D[4]
    STA zero_page_83                                                  ; 281F: 85 83                                  ..           :1B1F[4]
; &2821 referenced 1 time by &1B0D
.C1B21
    DEX                                                               ; 2821: CA                                     .            :1B21[4]
    BNE loop_C1B04                                                    ; 2822: D0 E0                                  ..           :1B22[4]
    RTS                                                               ; 2824: 60                                     `            :1B24[4]

; &2825 referenced 3 times by &12D6, &1E59, &2261
.sub_C1B25
    LDA L0092                                                         ; 2825: A5 92                                  ..           :1B25[4]
    ORA L0095                                                         ; 2827: 05 95                                  ..           :1B27[4]
    BNE C1B4D                                                         ; 2829: D0 22                                  ."           :1B29[4]
    LDA L0720,Y                                                       ; 282B: B9 20 07                               . .          :1B2B[4]
    ORA #1                                                            ; 282E: 09 01                                  ..           :1B2E[4]
    STA L0720,Y                                                       ; 2830: 99 20 07                               . .          :1B30[4]
    AND #2                                                            ; 2833: 29 02                                  ).           :1B33[4]
    STA L0000                                                         ; 2835: 85 00                                  ..           :1B35[4]
    BEQ C1B4C                                                         ; 2837: F0 13                                  ..           :1B37[4]
    LDA L0720,Y                                                       ; 2839: B9 20 07                               . .          :1B39[4]
    AND #&FD                                                          ; 283C: 29 FD                                  ).           :1B3C[4]
    STA L0720,Y                                                       ; 283E: 99 20 07                               . .          :1B3E[4]
    LDA L0090                                                         ; 2841: A5 90                                  ..           :1B41[4]
    LSR A                                                             ; 2843: 4A                                     J            :1B43[4]
    TAX                                                               ; 2844: AA                                     .            :1B44[4]
    LDY L0093                                                         ; 2845: A4 93                                  ..           :1B45[4]
    JSR set_self_modified_code_1_NOP_JSR_0B3F                         ; 2847: 20 46 0B                                F.          :1B47[4]
    DEC zp_possible_remaining_cherry_count                            ; 284A: C6 08                                  ..           :1B4A[4]
; &284C referenced 3 times by &1B37, &1B6E, &1B72
.C1B4C
    RTS                                                               ; 284C: 60                                     `            :1B4C[4]

; &284D referenced 1 time by &1B29
.C1B4D
    SEC                                                               ; 284D: 38                                     8            :1B4D[4]
    ROR L0000                                                         ; 284E: 66 00                                  f.           :1B4E[4]
    LDA L0092                                                         ; 2850: A5 92                                  ..           :1B50[4]
    CMP #8                                                            ; 2852: C9 08                                  ..           :1B52[4]
    BCS C1B6A                                                         ; 2854: B0 14                                  ..           :1B54[4]
    CMP #4                                                            ; 2856: C9 04                                  ..           :1B56[4]
    BCC C1B6A                                                         ; 2858: 90 10                                  ..           :1B58[4]
    LDA L0720,Y                                                       ; 285A: B9 20 07                               . .          :1B5A[4]
    ORA #&20 ; ' '                                                    ; 285D: 09 20                                  .            :1B5D[4]
    STA L0720,Y                                                       ; 285F: 99 20 07                               . .          :1B5F[4]
    LDA L0721,Y                                                       ; 2862: B9 21 07                               .!.          :1B62[4]
    ORA #&10                                                          ; 2865: 09 10                                  ..           :1B65[4]
    STA L0721,Y                                                       ; 2867: 99 21 07                               .!.          :1B67[4]
; &286A referenced 2 times by &1B54, &1B58
.C1B6A
    LDA L0095                                                         ; 286A: A5 95                                  ..           :1B6A[4]
    CMP #2                                                            ; 286C: C9 02                                  ..           :1B6C[4]
    BCC C1B4C                                                         ; 286E: 90 DC                                  ..           :1B6E[4]
    CMP #8                                                            ; 2870: C9 08                                  ..           :1B70[4]
    BEQ C1B4C                                                         ; 2872: F0 D8                                  ..           :1B72[4]
    LDA L0720,Y                                                       ; 2874: B9 20 07                               . .          :1B74[4]
    ORA #4                                                            ; 2877: 09 04                                  ..           :1B77[4]
    STA L0720,Y                                                       ; 2879: 99 20 07                               . .          :1B79[4]
    LDA L0730,Y                                                       ; 287C: B9 30 07                               .0.          :1B7C[4]
    ORA #8                                                            ; 287F: 09 08                                  ..           :1B7F[4]
    STA L0730,Y                                                       ; 2881: 99 30 07                               .0.          :1B81[4]
    RTS                                                               ; 2884: 60                                     `            :1B84[4]

; &2885 referenced 2 times by &1342, &1368
.handle_possible_fire_and_ball_routine_possible
    BEQ C1B9E                                                         ; 2885: F0 17                                  ..           :1B85[4]
    LDA L001C                                                         ; 2887: A5 1C                                  ..           :1B87[4]
    BNE C1BA0                                                         ; 2889: D0 15                                  ..           :1B89[4]
    LDA L001B                                                         ; 288B: A5 1B                                  ..           :1B8B[4]
    BNE C1BA0                                                         ; 288D: D0 11                                  ..           :1B8D[4]
    LDA L0022                                                         ; 288F: A5 22                                  ."           :1B8F[4]
    AND #1                                                            ; 2891: 29 01                                  ).           :1B91[4]
    ORA #&40 ; '@'                                                    ; 2893: 09 40                                  .@           :1B93[4]
    STA L001B                                                         ; 2895: 85 1B                                  ..           :1B95[4]
    JSR sub_C266E                                                     ; 2897: 20 6E 26                                n&          :1B97[4]
    STX L0019                                                         ; 289A: 86 19                                  ..           :1B9A[4]
    STY L001A                                                         ; 289C: 84 1A                                  ..           :1B9C[4]
; &289E referenced 1 time by &1B85
.C1B9E
    STA L001C                                                         ; 289E: 85 1C                                  ..           :1B9E[4]
; &28A0 referenced 2 times by &1B89, &1B8D
.C1BA0
    RTS                                                               ; 28A0: 60                                     `            :1BA0[4]

; &28A1 referenced 3 times by &10D9, &10E1, &1138
.sub_C1BA1
    LDX L0013                                                         ; 28A1: A6 13                                  ..           :1BA1[4]
    BEQ C1BE4                                                         ; 28A3: F0 3F                                  .?           :1BA3[4]
    LDA #8                                                            ; 28A5: A9 08                                  ..           :1BA5[4]
    STA L0018                                                         ; 28A7: 85 18                                  ..           :1BA7[4]
; &28A9 referenced 1 time by &1BDF
.C1BA9
    LDA L089F,X                                                       ; 28A9: BD 9F 08                               ...          :1BA9[4]
    BPL C1BDE                                                         ; 28AC: 10 30                                  .0           :1BAC[4]
    TXA                                                               ; 28AE: 8A                                     .            :1BAE[4]
    PHA                                                               ; 28AF: 48                                     H            :1BAF[4]
    LDA L088F,X                                                       ; 28B0: BD 8F 08                               ...          :1BB0[4]
    CLC                                                               ; 28B3: 18                                     .            :1BB3[4]
    ADC #2                                                            ; 28B4: 69 02                                  i.           :1BB4[4]
    STA L088F,X                                                       ; 28B6: 9D 8F 08                               ...          :1BB6[4]
    ADC #6                                                            ; 28B9: 69 06                                  i.           :1BB9[4]
    TAY                                                               ; 28BB: A8                                     .            :1BBB[4]
    LDA L089F,X                                                       ; 28BC: BD 9F 08                               ...          :1BBC[4]
    AND #8                                                            ; 28BF: 29 08                                  ).           :1BBF[4]
    ASL A                                                             ; 28C1: 0A                                     .            :1BC1[4]
    ASL A                                                             ; 28C2: 0A                                     .            :1BC2[4]
    ORA #&50 ; 'P'                                                    ; 28C3: 09 50                                  .P           :1BC3[4]
    PHA                                                               ; 28C5: 48                                     H            :1BC5[4]
    STA zero_page_84_source_spriteaddr                                ; 28C6: 85 84                                  ..           :1BC6[4]
    LDA #4                                                            ; 28C8: A9 04                                  ..           :1BC8[4]
    STA zero_page_85_source_spriteaddr                                ; 28CA: 85 85                                  ..           :1BCA[4]
    LDA L087F,X                                                       ; 28CC: BD 7F 08                               ...          :1BCC[4]
    LSR A                                                             ; 28CF: 4A                                     J            :1BCF[4]
    TAX                                                               ; 28D0: AA                                     .            :1BD0[4]
    JSR C0A84                                                         ; 28D1: 20 84 0A                                ..          :1BD1[4]
    INY                                                               ; 28D4: C8                                     .            :1BD4[4]
    INY                                                               ; 28D5: C8                                     .            :1BD5[4]
    PLA                                                               ; 28D6: 68                                     h            :1BD6[4]
    STA zero_page_84_source_spriteaddr                                ; 28D7: 85 84                                  ..           :1BD7[4]
    JSR C0A84                                                         ; 28D9: 20 84 0A                                ..          :1BD9[4]
    PLA                                                               ; 28DC: 68                                     h            :1BDC[4]
    TAX                                                               ; 28DD: AA                                     .            :1BDD[4]
; &28DE referenced 1 time by &1BAC
.C1BDE
    DEX                                                               ; 28DE: CA                                     .            :1BDE[4]
    BNE C1BA9                                                         ; 28DF: D0 C8                                  ..           :1BDF[4]
    JSR store_x18_to_0017_and_x10_to_0018                             ; 28E1: 20 50 26                                P&          :1BE1[4]
; &28E4 referenced 1 time by &1BA3
.C1BE4
    LDA L0027                                                         ; 28E4: A5 27                                  .'           :1BE4[4]
    BPL C1BF2                                                         ; 28E6: 10 0A                                  ..           :1BE6[4]
    JSR sub_C25CB                                                     ; 28E8: 20 CB 25                                .%          :1BE8[4]
    INC L0021                                                         ; 28EB: E6 21                                  .!           :1BEB[4]
    INC L0021                                                         ; 28ED: E6 21                                  .!           :1BED[4]
    JSR sub_C25CB                                                     ; 28EF: 20 CB 25                                .%          :1BEF[4]
; &28F2 referenced 1 time by &1BE6
.C1BF2
    LDX L0009                                                         ; 28F2: A6 09                                  ..           :1BF2[4]
    BNE C1BF7                                                         ; 28F4: D0 01                                  ..           :1BF4[4]
    RTS                                                               ; 28F6: 60                                     `            :1BF6[4]

; &28F7 referenced 2 times by &1BF4, &1E00
.C1BF7
    TXA                                                               ; 28F7: 8A                                     .            :1BF7[4]
    PHA                                                               ; 28F8: 48                                     H            :1BF8[4]
    LDA L08AF,X                                                       ; 28F9: BD AF 08                               ...          :1BF9[4]
    STA L0090                                                         ; 28FC: 85 90                                  ..           :1BFC[4]
    LDA L060F,X                                                       ; 28FE: BD 0F 06                               ...          :1BFE[4]
    STA L0093                                                         ; 2901: 85 93                                  ..           :1C01[4]
    JSR sub_C2568                                                     ; 2903: 20 68 25                                h%          :1C03[4]
    LDA L061F,X                                                       ; 2906: BD 1F 06                               ...          :1C06[4]
    STA L0096                                                         ; 2909: 85 96                                  ..           :1C09[4]
    CMP #&20 ; ' '                                                    ; 290B: C9 20                                  .            :1C0B[4]
    BNE C1C15                                                         ; 290D: D0 06                                  ..           :1C0D[4]
    JSR sub_C1E04                                                     ; 290F: 20 04 1E                                ..          :1C0F[4]
    JMP C1CE0                                                         ; 2912: 4C E0 1C                               L..          :1C12[4]

; &2915 referenced 1 time by &1C0D
.C1C15
    BIT L0096                                                         ; 2915: 24 96                                  $.           :1C15[4]
    BMI C1C1C                                                         ; 2917: 30 03                                  0.           :1C17[4]
    JMP C1D93                                                         ; 2919: 4C 93 1D                               L..          :1C19[4]

; &291C referenced 1 time by &1C17
.C1C1C
    INC L0026                                                         ; 291C: E6 26                                  .&           :1C1C[4]
    BIT L0096                                                         ; 291E: 24 96                                  $.           :1C1E[4]
    BVC C1C50                                                         ; 2920: 50 2E                                  P.           :1C20[4]
    DEC L0096                                                         ; 2922: C6 96                                  ..           :1C22[4]
    LDA L0096                                                         ; 2924: A5 96                                  ..           :1C24[4]
    AND #&1F                                                          ; 2926: 29 1F                                  ).           :1C26[4]
    BEQ C1C37                                                         ; 2928: F0 0D                                  ..           :1C28[4]
    CMP #&10                                                          ; 292A: C9 10                                  ..           :1C2A[4]
    BNE C1C34                                                         ; 292C: D0 06                                  ..           :1C2C[4]
    JSR sub_C1E38                                                     ; 292E: 20 38 1E                                8.          :1C2E[4]
    JSR sub_C1E10                                                     ; 2931: 20 10 1E                                ..          :1C31[4]
; &2934 referenced 1 time by &1C2C
.C1C34
    JMP C1DEC                                                         ; 2934: 4C EC 1D                               L..          :1C34[4]

; &2937 referenced 1 time by &1C28
.C1C37
    JSR sub_C1E10                                                     ; 2937: 20 10 1E                                ..          :1C37[4]
; &293A referenced 1 time by &1D79
.C1C3A
    LDY L0009                                                         ; 293A: A4 09                                  ..           :1C3A[4]
    LDA L08AF,Y                                                       ; 293C: B9 AF 08                               ...          :1C3C[4]
    STA L0090                                                         ; 293F: 85 90                                  ..           :1C3F[4]
    LDA L060F,Y                                                       ; 2941: B9 0F 06                               ...          :1C41[4]
    STA L0093                                                         ; 2944: 85 93                                  ..           :1C44[4]
    LDA L061F,Y                                                       ; 2946: B9 1F 06                               ...          :1C46[4]
    STA L0096                                                         ; 2949: 85 96                                  ..           :1C49[4]
    DEC L0009                                                         ; 294B: C6 09                                  ..           :1C4B[4]
    JMP C1DEC                                                         ; 294D: 4C EC 1D                               L..          :1C4D[4]

; &2950 referenced 1 time by &1C20
.C1C50
    LDA L0092                                                         ; 2950: A5 92                                  ..           :1C50[4]
    BEQ C1C68                                                         ; 2952: F0 14                                  ..           :1C52[4]
    JSR sub_C1E04                                                     ; 2954: 20 04 1E                                ..          :1C54[4]
    LDA L0092                                                         ; 2957: A5 92                                  ..           :1C57[4]
    CMP #5                                                            ; 2959: C9 05                                  ..           :1C59[4]
    BCS C1C60                                                         ; 295B: B0 03                                  ..           :1C5B[4]
    DEC L0090                                                         ; 295D: C6 90                                  ..           :1C5D[4]
; overlapping: BIT L90E6                                              ; 295F: 2C E6 90                               ,..          :1C5F[4]
    EQUB &2C                                                          ; 295F: 2C                                     ,            :1C5F[4]

; &2960 referenced 1 time by &1C5B
.C1C60
    INC L0090                                                         ; 2960: E6 90                                  ..           :1C60[4]
    JSR sub_C1E04                                                     ; 2962: 20 04 1E                                ..          :1C62[4]
; &2965 referenced 1 time by &1CC2
.C1C65
    JMP C1DEC                                                         ; 2965: 4C EC 1D                               L..          :1C65[4]

; &2968 referenced 1 time by &1C52
.C1C68
    LDA L0095                                                         ; 2968: A5 95                                  ..           :1C68[4]
    BNE C1C8D                                                         ; 296A: D0 21                                  .!           :1C6A[4]
    LDA L0096                                                         ; 296C: A5 96                                  ..           :1C6C[4]
    CMP #&81                                                          ; 296E: C9 81                                  ..           :1C6E[4]
    BNE C1C7F                                                         ; 2970: D0 0D                                  ..           :1C70[4]
    TYA                                                               ; 2972: 98                                     .            :1C72[4]
    PHA                                                               ; 2973: 48                                     H            :1C73[4]
    LDA #2                                                            ; 2974: A9 02                                  ..           :1C74[4]
    LDX #&BE                                                          ; 2976: A2 BE                                  ..           :1C76[4]
    LDY #&24 ; '$'                                                    ; 2978: A0 24                                  .$           :1C78[4]
    JSR compile_sound_data_at_zp70                                    ; 297A: 20 9C 0B                                ..          :1C7A[4]
    PLA                                                               ; 297D: 68                                     h            :1C7D[4]
    TAY                                                               ; 297E: A8                                     .            :1C7E[4]
; &297F referenced 1 time by &1C70
.C1C7F
    LDA L0094                                                         ; 297F: A5 94                                  ..           :1C7F[4]
    CMP #&0D                                                          ; 2981: C9 0D                                  ..           :1C81[4]
    BEQ C1CE0                                                         ; 2983: F0 5B                                  .[           :1C83[4]
    LDA L0730,Y                                                       ; 2985: B9 30 07                               .0.          :1C85[4]
    LSR A                                                             ; 2988: 4A                                     J            :1C88[4]
    BCC C1CE0                                                         ; 2989: 90 55                                  .U           :1C89[4]
    INC L0096                                                         ; 298B: E6 96                                  ..           :1C8B[4]
; &298D referenced 1 time by &1C6A
.C1C8D
    JSR sub_C1E52                                                     ; 298D: 20 52 1E                                R.          :1C8D[4]
    INC L0093                                                         ; 2990: E6 93                                  ..           :1C90[4]
    INC L0093                                                         ; 2992: E6 93                                  ..           :1C92[4]
    JSR sub_C1E04                                                     ; 2994: 20 04 1E                                ..          :1C94[4]
    LDA L0027                                                         ; 2997: A5 27                                  .'           :1C97[4]
    BNE C1CBB                                                         ; 2999: D0 20                                  .            :1C99[4]
    LDA L0021                                                         ; 299B: A5 21                                  .!           :1C9B[4]
    SEC                                                               ; 299D: 38                                     8            :1C9D[4]
    SBC L0093                                                         ; 299E: E5 93                                  ..           :1C9E[4]
    CMP #9                                                            ; 29A0: C9 09                                  ..           :1CA0[4]
    BCS C1CBB                                                         ; 29A2: B0 17                                  ..           :1CA2[4]
    LDA L0020                                                         ; 29A4: A5 20                                  .            :1CA4[4]
    SEC                                                               ; 29A6: 38                                     8            :1CA6[4]
    SBC L0090                                                         ; 29A7: E5 90                                  ..           :1CA7[4]
    CMP #&FC                                                          ; 29A9: C9 FC                                  ..           :1CA9[4]
    BCS C1CB1                                                         ; 29AB: B0 04                                  ..           :1CAB[4]
    CMP #6                                                            ; 29AD: C9 06                                  ..           :1CAD[4]
    BCS C1CBB                                                         ; 29AF: B0 0A                                  ..           :1CAF[4]
; &29B1 referenced 1 time by &1CAB
.C1CB1
    JSR sub_C0A5C                                                     ; 29B1: 20 5C 0A                                \.          :1CB1[4]
    JSR sub_C25CB                                                     ; 29B4: 20 CB 25                                .%          :1CB4[4]
    LDA #&80                                                          ; 29B7: A9 80                                  ..           :1CB7[4]
    STA L0027                                                         ; 29B9: 85 27                                  .'           :1CB9[4]
; &29BB referenced 3 times by &1C99, &1CA2, &1CAF
.C1CBB
    LDX L0090                                                         ; 29BB: A6 90                                  ..           :1CBB[4]
    LDY L0093                                                         ; 29BD: A4 93                                  ..           :1CBD[4]
    JSR sub_C1E66                                                     ; 29BF: 20 66 1E                                f.          :1CBF[4]
    BCC C1C65                                                         ; 29C2: 90 A1                                  ..           :1CC2[4]
    LDA L061F,X                                                       ; 29C4: BD 1F 06                               ...          :1CC4[4]
    BMI C1CDC                                                         ; 29C7: 30 13                                  0.           :1CC7[4]
    LDA #&DF                                                          ; 29C9: A9 DF                                  ..           :1CC9[4]
    STA L061F,X                                                       ; 29CB: 9D 1F 06                               ...          :1CCB[4]
    LDA L060F,X                                                       ; 29CE: BD 0F 06                               ...          :1CCE[4]
    TAY                                                               ; 29D1: A8                                     .            :1CD1[4]
    LDA L08AF,X                                                       ; 29D2: BD AF 08                               ...          :1CD2[4]
    TAX                                                               ; 29D5: AA                                     .            :1CD5[4]
    JSR sub_C1E08                                                     ; 29D6: 20 08 1E                                ..          :1CD6[4]
    JSR sub_C1E3F                                                     ; 29D9: 20 3F 1E                                ?.          :1CD9[4]
; &29DC referenced 1 time by &1CC7
.C1CDC
    LDA #&82                                                          ; 29DC: A9 82                                  ..           :1CDC[4]
    STA L0096                                                         ; 29DE: 85 96                                  ..           :1CDE[4]
; &29E0 referenced 3 times by &1C12, &1C83, &1C89
.C1CE0
    LDA #3                                                            ; 29E0: A9 03                                  ..           :1CE0[4]
    LDX #&84                                                          ; 29E2: A2 84                                  ..           :1CE2[4]
    LDY #4                                                            ; 29E4: A0 04                                  ..           :1CE4[4]
    JSR compile_sound_data_at_zp70                                    ; 29E6: 20 9C 0B                                ..          :1CE6[4]
    LDA #0                                                            ; 29E9: A9 00                                  ..           :1CE9[4]
    STA L0098                                                         ; 29EB: 85 98                                  ..           :1CEB[4]
    LDX L0013                                                         ; 29ED: A6 13                                  ..           :1CED[4]
    BEQ C1D3D                                                         ; 29EF: F0 4C                                  .L           :1CEF[4]
; &29F1 referenced 1 time by &1D3B
.C1CF1
    LDA L089F,X                                                       ; 29F1: BD 9F 08                               ...          :1CF1[4]
    BPL C1D3A                                                         ; 29F4: 10 44                                  .D           :1CF4[4]
    STA L0099                                                         ; 29F6: 85 99                                  ..           :1CF6[4]
    LDA L088F,X                                                       ; 29F8: BD 8F 08                               ...          :1CF8[4]
    SEC                                                               ; 29FB: 38                                     8            :1CFB[4]
    SBC L0093                                                         ; 29FC: E5 93                                  ..           :1CFC[4]
    CMP #&17                                                          ; 29FE: C9 17                                  ..           :1CFE[4]
    BCS C1D3A                                                         ; 2A00: B0 38                                  .8           :1D00[4]
    LDA L087F,X                                                       ; 2A02: BD 7F 08                               ...          :1D02[4]
    SBC L0090                                                         ; 2A05: E5 90                                  ..           :1D05[4]
    CMP #&FA                                                          ; 2A07: C9 FA                                  ..           :1D07[4]
    BCS C1D0F                                                         ; 2A09: B0 04                                  ..           :1D09[4]
    CMP #8                                                            ; 2A0B: C9 08                                  ..           :1D0B[4]
    BCS C1D3A                                                         ; 2A0D: B0 2B                                  .+           :1D0D[4]
; &2A0F referenced 1 time by &1D09
.C1D0F
    INC L0098                                                         ; 2A0F: E6 98                                  ..           :1D0F[4]
    TXA                                                               ; 2A11: 8A                                     .            :1D11[4]
    PHA                                                               ; 2A12: 48                                     H            :1D12[4]
    LDA L088F,X                                                       ; 2A13: BD 8F 08                               ...          :1D13[4]
    CLC                                                               ; 2A16: 18                                     .            :1D16[4]
    ADC #8                                                            ; 2A17: 69 08                                  i.           :1D17[4]
    TAY                                                               ; 2A19: A8                                     .            :1D19[4]
    LDA L0099                                                         ; 2A1A: A5 99                                  ..           :1D1A[4]
    AND #8                                                            ; 2A1C: 29 08                                  ).           :1D1C[4]
    ASL A                                                             ; 2A1E: 0A                                     .            :1D1E[4]
    ASL A                                                             ; 2A1F: 0A                                     .            :1D1F[4]
    ORA #&50 ; 'P'                                                    ; 2A20: 09 50                                  .P           :1D20[4]
    STA zero_page_84_source_spriteaddr                                ; 2A22: 85 84                                  ..           :1D22[4]
    LDA #4                                                            ; 2A24: A9 04                                  ..           :1D24[4]
    STA zero_page_85_source_spriteaddr                                ; 2A26: 85 85                                  ..           :1D26[4]
    LDA L087F,X                                                       ; 2A28: BD 7F 08                               ...          :1D28[4]
    LSR A                                                             ; 2A2B: 4A                                     J            :1D2B[4]
    TAX                                                               ; 2A2C: AA                                     .            :1D2C[4]
    LSR L0018                                                         ; 2A2D: 46 18                                  F.           :1D2D[4]
    JSR C0A84                                                         ; 2A2F: 20 84 0A                                ..          :1D2F[4]
    JSR store_x18_to_0017_and_x10_to_0018                             ; 2A32: 20 50 26                                P&          :1D32[4]
    PLA                                                               ; 2A35: 68                                     h            :1D35[4]
    TAX                                                               ; 2A36: AA                                     .            :1D36[4]
    JSR sub_C2533                                                     ; 2A37: 20 33 25                                3%          :1D37[4]
; &2A3A referenced 3 times by &1CF4, &1D00, &1D0D
.C1D3A
    DEX                                                               ; 2A3A: CA                                     .            :1D3A[4]
    BNE C1CF1                                                         ; 2A3B: D0 B4                                  ..           :1D3B[4]
; &2A3D referenced 1 time by &1CEF
.C1D3D
    LDA L0027                                                         ; 2A3D: A5 27                                  .'           :1D3D[4]
    BPL C1D59                                                         ; 2A3F: 10 18                                  ..           :1D3F[4]
    LDA L0021                                                         ; 2A41: A5 21                                  .!           :1D41[4]
    SEC                                                               ; 2A43: 38                                     8            :1D43[4]
    SBC L0093                                                         ; 2A44: E5 93                                  ..           :1D44[4]
    CMP #&0D                                                          ; 2A46: C9 0D                                  ..           :1D46[4]
    BCS C1D59                                                         ; 2A48: B0 0F                                  ..           :1D48[4]
    LDA L0020                                                         ; 2A4A: A5 20                                  .            :1D4A[4]
    SEC                                                               ; 2A4C: 38                                     8            :1D4C[4]
    SBC L0090                                                         ; 2A4D: E5 90                                  ..           :1D4D[4]
    CMP #&FA                                                          ; 2A4F: C9 FA                                  ..           :1D4F[4]
    BCS C1D57                                                         ; 2A51: B0 04                                  ..           :1D51[4]
    CMP #8                                                            ; 2A53: C9 08                                  ..           :1D53[4]
    BCS C1D59                                                         ; 2A55: B0 02                                  ..           :1D55[4]
; &2A57 referenced 1 time by &1D51
.C1D57
    DEC L0027                                                         ; 2A57: C6 27                                  .'           :1D57[4]
; &2A59 referenced 3 times by &1D3F, &1D48, &1D55
.C1D59
    LDA L0096                                                         ; 2A59: A5 96                                  ..           :1D59[4]
    CMP #&20 ; ' '                                                    ; 2A5B: C9 20                                  .            :1D5B[4]
    BEQ C1D79                                                         ; 2A5D: F0 1A                                  ..           :1D5D[4]
    LDA L0098                                                         ; 2A5F: A5 98                                  ..           :1D5F[4]
    BEQ C1D7C                                                         ; 2A61: F0 19                                  ..           :1D61[4]
    JSR sub_C1E04                                                     ; 2A63: 20 04 1E                                ..          :1D63[4]
    LDY L0098                                                         ; 2A66: A4 98                                  ..           :1D66[4]
    CPY #7                                                            ; 2A68: C0 07                                  ..           :1D68[4]
    BCC C1D6E                                                         ; 2A6A: 90 02                                  ..           :1D6A[4]
    LDY #6                                                            ; 2A6C: A0 06                                  ..           :1D6C[4]
; &2A6E referenced 1 time by &1D6A
.C1D6E
    LDA L0047,Y                                                       ; 2A6E: B9 47 00                               .G.          :1D6E[4]
    LDY L0093                                                         ; 2A71: A4 93                                  ..           :1D71[4]
    JSR C2603                                                         ; 2A73: 20 03 26                                .&          :1D73[4]
    JSR sub_C2596                                                     ; 2A76: 20 96 25                                .%          :1D76[4]
; &2A79 referenced 1 time by &1D5D
.C1D79
    JMP C1C3A                                                         ; 2A79: 4C 3A 1C                               L:.          :1D79[4]

; &2A7C referenced 1 time by &1D61
.C1D7C
    LDX #0                                                            ; 2A7C: A2 00                                  ..           :1D7C[4]
    LDA L0096                                                         ; 2A7E: A5 96                                  ..           :1D7E[4]
    AND #&0F                                                          ; 2A80: 29 0F                                  ).           :1D80[4]
    CMP #1                                                            ; 2A82: C9 01                                  ..           :1D82[4]
    BEQ C1D8E                                                         ; 2A84: F0 08                                  ..           :1D84[4]
; &2A86 referenced 1 time by &1DBD
.C1D86
    JSR sub_C1E04                                                     ; 2A86: 20 04 1E                                ..          :1D86[4]
    JSR sub_C1E38                                                     ; 2A89: 20 38 1E                                8.          :1D89[4]
    LDX #&DF                                                          ; 2A8C: A2 DF                                  ..           :1D8C[4]
; &2A8E referenced 1 time by &1D84
.C1D8E
    STX L0096                                                         ; 2A8E: 86 96                                  ..           :1D8E[4]
    JMP C1DEC                                                         ; 2A90: 4C EC 1D                               L..          :1D90[4]

; &2A93 referenced 1 time by &1C19
.C1D93
    AND #&40 ; '@'                                                    ; 2A93: 29 40                                  )@           :1D93[4]
    BEQ C1DB9                                                         ; 2A95: F0 22                                  ."           :1D95[4]
    INC L0096                                                         ; 2A97: E6 96                                  ..           :1D97[4]
    INC L0026                                                         ; 2A99: E6 26                                  .&           :1D99[4]
    LDA L0096                                                         ; 2A9B: A5 96                                  ..           :1D9B[4]
    AND #7                                                            ; 2A9D: 29 07                                  ).           :1D9D[4]
    CMP #4                                                            ; 2A9F: C9 04                                  ..           :1D9F[4]
    BNE C1DAB                                                         ; 2AA1: D0 08                                  ..           :1DA1[4]
    JSR sub_C1E52                                                     ; 2AA3: 20 52 1E                                R.          :1DA3[4]
    INC L0093                                                         ; 2AA6: E6 93                                  ..           :1DA6[4]
    JSR sub_C1E04                                                     ; 2AA8: 20 04 1E                                ..          :1DA8[4]
; &2AAB referenced 1 time by &1DA1
.C1DAB
    LDA L0096                                                         ; 2AAB: A5 96                                  ..           :1DAB[4]
    AND #&0F                                                          ; 2AAD: 29 0F                                  ).           :1DAD[4]
    CMP #&0F                                                          ; 2AAF: C9 0F                                  ..           :1DAF[4]
    BNE C1DEC                                                         ; 2AB1: D0 39                                  .9           :1DB1[4]
    LDA #&81                                                          ; 2AB3: A9 81                                  ..           :1DB3[4]
    STA L0096                                                         ; 2AB5: 85 96                                  ..           :1DB5[4]
    BNE C1DEC                                                         ; 2AB7: D0 33                                  .3           :1DB7[4]
; &2AB9 referenced 1 time by &1D95
.C1DB9
    LDA L0094                                                         ; 2AB9: A5 94                                  ..           :1DB9[4]
    CMP #&0D                                                          ; 2ABB: C9 0D                                  ..           :1DBB[4]
    BEQ C1D86                                                         ; 2ABD: F0 C7                                  ..           :1DBD[4]
    LDA L0092                                                         ; 2ABF: A5 92                                  ..           :1DBF[4]
    CMP #5                                                            ; 2AC1: C9 05                                  ..           :1DC1[4]
    BCC C1DC6                                                         ; 2AC3: 90 01                                  ..           :1DC3[4]
    INY                                                               ; 2AC5: C8                                     .            :1DC5[4]
; &2AC6 referenced 1 time by &1DC3
.C1DC6
    LDA L0730,Y                                                       ; 2AC6: B9 30 07                               .0.          :1DC6[4]
    LSR A                                                             ; 2AC9: 4A                                     J            :1DC9[4]
    BCC C1DEC                                                         ; 2ACA: 90 20                                  .            :1DCA[4]
    LDA L0021                                                         ; 2ACC: A5 21                                  .!           :1DCC[4]
    SEC                                                               ; 2ACE: 38                                     8            :1DCE[4]
    SBC L0093                                                         ; 2ACF: E5 93                                  ..           :1DCF[4]
    CMP #&13                                                          ; 2AD1: C9 13                                  ..           :1DD1[4]
    BCS C1DE2                                                         ; 2AD3: B0 0D                                  ..           :1DD3[4]
    LDA L0020                                                         ; 2AD5: A5 20                                  .            :1DD5[4]
    SEC                                                               ; 2AD7: 38                                     8            :1DD7[4]
    SBC L0090                                                         ; 2AD8: E5 90                                  ..           :1DD8[4]
    CMP #8                                                            ; 2ADA: C9 08                                  ..           :1DDA[4]
    BCC C1DEC                                                         ; 2ADC: 90 0E                                  ..           :1DDC[4]
    CMP #&FE                                                          ; 2ADE: C9 FE                                  ..           :1DDE[4]
    BCS C1DEC                                                         ; 2AE0: B0 0A                                  ..           :1DE0[4]
; &2AE2 referenced 1 time by &1DD3
.C1DE2
    LDA L0096                                                         ; 2AE2: A5 96                                  ..           :1DE2[4]
    LSR A                                                             ; 2AE4: 4A                                     J            :1DE4[4]
    LDA #&40 ; '@'                                                    ; 2AE5: A9 40                                  .@           :1DE5[4]
    BCC C1DEA                                                         ; 2AE7: 90 01                                  ..           :1DE7[4]
    ASL A                                                             ; 2AE9: 0A                                     .            :1DE9[4]
; &2AEA referenced 1 time by &1DE7
.C1DEA
    STA L0096                                                         ; 2AEA: 85 96                                  ..           :1DEA[4]
; &2AEC referenced 9 times by &1C34, &1C4D, &1C65, &1D90, &1DB1, &1DB7, &1DCA, &1DDC, &1DE0
.C1DEC
    PLA                                                               ; 2AEC: 68                                     h            :1DEC[4]
    TAX                                                               ; 2AED: AA                                     .            :1DED[4]
    LDA L0090                                                         ; 2AEE: A5 90                                  ..           :1DEE[4]
    STA L08AF,X                                                       ; 2AF0: 9D AF 08                               ...          :1DF0[4]
    LDA L0093                                                         ; 2AF3: A5 93                                  ..           :1DF3[4]
    STA L060F,X                                                       ; 2AF5: 9D 0F 06                               ...          :1DF5[4]
    LDA L0096                                                         ; 2AF8: A5 96                                  ..           :1DF8[4]
    STA L061F,X                                                       ; 2AFA: 9D 1F 06                               ...          :1DFA[4]
    DEX                                                               ; 2AFD: CA                                     .            :1DFD[4]
    BEQ C1E03                                                         ; 2AFE: F0 03                                  ..           :1DFE[4]
    JMP C1BF7                                                         ; 2B00: 4C F7 1B                               L..          :1E00[4]

; &2B03 referenced 1 time by &1DFE
.C1E03
    RTS                                                               ; 2B03: 60                                     `            :1E03[4]

; &2B04 referenced 8 times by &1C0F, &1C54, &1C62, &1C94, &1D63, &1D86, &1DA8, &1E5C
.sub_C1E04
    LDX L0090                                                         ; 2B04: A6 90                                  ..           :1E04[4]
    LDY L0093                                                         ; 2B06: A4 93                                  ..           :1E06[4]
; &2B08 referenced 2 times by &1085, &1CD6
.sub_C1E08
    TXA                                                               ; 2B08: 8A                                     .            :1E08[4]
    LSR A                                                             ; 2B09: 4A                                     J            :1E09[4]
    TAX                                                               ; 2B0A: AA                                     .            :1E0A[4]
; &2B0B referenced 5 times by &1F37, &1F3B, &1FCE, &1FD2, &251A
.sub_C1E0B
    LDA #1                                                            ; 2B0B: A9 01                                  ..           :1E0B[4]   ; Select sprite 1 to write (apple?)
    JMP write_sprite_to_screen_routine                                ; 2B0D: 4C 73 0A                               Ls.          :1E0D[4]

; &2B10 referenced 2 times by &1C31, &1C37
.sub_C1E10
    LDA L0090                                                         ; 2B10: A5 90                                  ..           :1E10[4]
    LSR A                                                             ; 2B12: 4A                                     J            :1E12[4]
    TAX                                                               ; 2B13: AA                                     .            :1E13[4]
    DEX                                                               ; 2B14: CA                                     .            :1E14[4]
    DEX                                                               ; 2B15: CA                                     .            :1E15[4]
    LDA L0093                                                         ; 2B16: A5 93                                  ..           :1E16[4]
    CLC                                                               ; 2B18: 18                                     .            :1E18[4]
    ADC #8                                                            ; 2B19: 69 08                                  i.           :1E19[4]
    TAY                                                               ; 2B1B: A8                                     .            :1E1B[4]
    LDA #8                                                            ; 2B1C: A9 08                                  ..           :1E1C[4]
    STA L0018                                                         ; 2B1E: 85 18                                  ..           :1E1E[4]
    JSR sub_C1E2D                                                     ; 2B20: 20 2D 1E                                -.          :1E20[4]
    INX                                                               ; 2B23: E8                                     .            :1E23[4]
    INX                                                               ; 2B24: E8                                     .            :1E24[4]
    INX                                                               ; 2B25: E8                                     .            :1E25[4]
    INX                                                               ; 2B26: E8                                     .            :1E26[4]
    JSR sub_C1E2D                                                     ; 2B27: 20 2D 1E                                -.          :1E27[4]
    JMP store_x18_to_0017_and_x10_to_0018                             ; 2B2A: 4C 50 26                               LP&          :1E2A[4]

; &2B2D referenced 2 times by &1E20, &1E27
.sub_C1E2D
    LDA #4                                                            ; 2B2D: A9 04                                  ..           :1E2D[4]
    STA zero_page_85_source_spriteaddr                                ; 2B2F: 85 85                                  ..           :1E2F[4]
    LDA #&90                                                          ; 2B31: A9 90                                  ..           :1E31[4]
    STA zero_page_84_source_spriteaddr                                ; 2B33: 85 84                                  ..           :1E33[4]
    JMP C0A84                                                         ; 2B35: 4C 84 0A                               L..          :1E35[4]

; &2B38 referenced 2 times by &1C2E, &1D89
.sub_C1E38
    LDX L0090                                                         ; 2B38: A6 90                                  ..           :1E38[4]
    LDY L0093                                                         ; 2B3A: A4 93                                  ..           :1E3A[4]
    TXA                                                               ; 2B3C: 8A                                     .            :1E3C[4]
    LSR A                                                             ; 2B3D: 4A                                     J            :1E3D[4]
    TAX                                                               ; 2B3E: AA                                     .            :1E3E[4]
; &2B3F referenced 1 time by &1CD9
.sub_C1E3F
    DEX                                                               ; 2B3F: CA                                     .            :1E3F[4]
    LDA #&28 ; '('                                                    ; 2B40: A9 28                                  .(           :1E40[4]
    STA L0017                                                         ; 2B42: 85 17                                  ..           :1E42[4]
    LDA #4                                                            ; 2B44: A9 04                                  ..           :1E44[4]
    STA zero_page_85_source_spriteaddr                                ; 2B46: 85 85                                  ..           :1E46[4]
    LDA #&B0                                                          ; 2B48: A9 B0                                  ..           :1E48[4]
    STA zero_page_84_source_spriteaddr                                ; 2B4A: 85 84                                  ..           :1E4A[4]
    JSR C0A84                                                         ; 2B4C: 20 84 0A                                ..          :1E4C[4]
    JMP store_x18_to_0017_and_x10_to_0018                             ; 2B4F: 4C 50 26                               LP&          :1E4F[4]

; &2B52 referenced 2 times by &1C8D, &1DA3
.sub_C1E52
    LDA L0720,Y                                                       ; 2B52: B9 20 07                               . .          :1E52[4]
    LSR A                                                             ; 2B55: 4A                                     J            :1E55[4]
    PHP                                                               ; 2B56: 08                                     .            :1E56[4]
    BCC C1E5C                                                         ; 2B57: 90 03                                  ..           :1E57[4]
    JSR sub_C1B25                                                     ; 2B59: 20 25 1B                                %.          :1E59[4]
; &2B5C referenced 1 time by &1E57
.C1E5C
    JSR sub_C1E04                                                     ; 2B5C: 20 04 1E                                ..          :1E5C[4]
    PLP                                                               ; 2B5F: 28                                     (            :1E5F[4]
    BCS C1E63                                                         ; 2B60: B0 01                                  ..           :1E60[4]
    RTS                                                               ; 2B62: 60                                     `            :1E62[4]

; &2B63 referenced 1 time by &1E60
.C1E63
    JMP C1999                                                         ; 2B63: 4C 99 19                               L..          :1E63[4]

; &2B66 referenced 3 times by &14D6, &1CBF, &2317
.sub_C1E66
    STX zero_page_80_dest_screenaddr                                  ; 2B66: 86 80                                  ..           :1E66[4]
    LDX L0009                                                         ; 2B68: A6 09                                  ..           :1E68[4]
    BEQ C1E88                                                         ; 2B6A: F0 1C                                  ..           :1E6A[4]
; &2B6C referenced 1 time by &1E86
.loop_C1E6C
    TYA                                                               ; 2B6C: 98                                     .            :1E6C[4]
    SEC                                                               ; 2B6D: 38                                     8            :1E6D[4]
    SBC L060F,X                                                       ; 2B6E: FD 0F 06                               ...          :1E6E[4]
    CMP #&F0                                                          ; 2B71: C9 F0                                  ..           :1E71[4]
    BCC C1E85                                                         ; 2B73: 90 10                                  ..           :1E73[4]
    LDA zero_page_80_dest_screenaddr                                  ; 2B75: A5 80                                  ..           :1E75[4]
    SEC                                                               ; 2B77: 38                                     8            :1E77[4]
    SBC L08AF,X                                                       ; 2B78: FD AF 08                               ...          :1E78[4]
    CMP #8                                                            ; 2B7B: C9 08                                  ..           :1E7B[4]
    BCC C1E83                                                         ; 2B7D: 90 04                                  ..           :1E7D[4]
    CMP #&F9                                                          ; 2B7F: C9 F9                                  ..           :1E7F[4]
    BCC C1E85                                                         ; 2B81: 90 02                                  ..           :1E81[4]
; &2B83 referenced 1 time by &1E7D
.C1E83
    SEC                                                               ; 2B83: 38                                     8            :1E83[4]
    RTS                                                               ; 2B84: 60                                     `            :1E84[4]

; &2B85 referenced 2 times by &1E73, &1E81
.C1E85
    DEX                                                               ; 2B85: CA                                     .            :1E85[4]
    BNE loop_C1E6C                                                    ; 2B86: D0 E4                                  ..           :1E86[4]
; &2B88 referenced 1 time by &1E6A
.C1E88
    CLC                                                               ; 2B88: 18                                     .            :1E88[4]
    RTS                                                               ; 2B89: 60                                     `            :1E89[4]

; &2B8A referenced 2 times by &14B2, &2309
.sub_C1E8A
    STX zero_page_80_dest_screenaddr                                  ; 2B8A: 86 80                                  ..           :1E8A[4]
    LDX L0009                                                         ; 2B8C: A6 09                                  ..           :1E8C[4]
    BEQ C1EAC                                                         ; 2B8E: F0 1C                                  ..           :1E8E[4]
; &2B90 referenced 1 time by &1EAA
.loop_C1E90
    TYA                                                               ; 2B90: 98                                     .            :1E90[4]
    SEC                                                               ; 2B91: 38                                     8            :1E91[4]
    SBC L060F,X                                                       ; 2B92: FD 0F 06                               ...          :1E92[4]
    CMP #&11                                                          ; 2B95: C9 11                                  ..           :1E95[4]
    BCS C1EA9                                                         ; 2B97: B0 10                                  ..           :1E97[4]
    LDA zero_page_80_dest_screenaddr                                  ; 2B99: A5 80                                  ..           :1E99[4]
    SEC                                                               ; 2B9B: 38                                     8            :1E9B[4]
    SBC L08AF,X                                                       ; 2B9C: FD AF 08                               ...          :1E9C[4]
    CMP #8                                                            ; 2B9F: C9 08                                  ..           :1E9F[4]
    BCC C1EA7                                                         ; 2BA1: 90 04                                  ..           :1EA1[4]
    CMP #&F9                                                          ; 2BA3: C9 F9                                  ..           :1EA3[4]
    BCC C1EA9                                                         ; 2BA5: 90 02                                  ..           :1EA5[4]
; &2BA7 referenced 1 time by &1EA1
.C1EA7
    SEC                                                               ; 2BA7: 38                                     8            :1EA7[4]
    RTS                                                               ; 2BA8: 60                                     `            :1EA8[4]

; &2BA9 referenced 2 times by &1E97, &1EA5
.C1EA9
    DEX                                                               ; 2BA9: CA                                     .            :1EA9[4]
    BNE loop_C1E90                                                    ; 2BAA: D0 E4                                  ..           :1EAA[4]
; &2BAC referenced 1 time by &1E8E
.C1EAC
    CLC                                                               ; 2BAC: 18                                     .            :1EAC[4]
    RTS                                                               ; 2BAD: 60                                     `            :1EAD[4]

; &2BAE referenced 2 times by &13A0, &22D7
.sub_C1EAE
    STX L0086                                                         ; 2BAE: 86 86                                  ..           :1EAE[4]
    STY L0087                                                         ; 2BB0: 84 87                                  ..           :1EB0[4]
    STX L0088                                                         ; 2BB2: 86 88                                  ..           :1EB2[4]
; &2BB4 referenced 1 time by &1ED7
.C1EB4
    LDX L0009                                                         ; 2BB4: A6 09                                  ..           :1EB4[4]
    BEQ C1EDC                                                         ; 2BB6: F0 24                                  .$           :1EB6[4]
; &2BB8 referenced 1 time by &1EDA
.C1EB8
    LDA L061F,X                                                       ; 2BB8: BD 1F 06                               ...          :1EB8[4]
    AND #&C0                                                          ; 2BBB: 29 C0                                  ).           :1EBB[4]
    BNE C1ED9                                                         ; 2BBD: D0 1A                                  ..           :1EBD[4]
    LDA L0087                                                         ; 2BBF: A5 87                                  ..           :1EBF[4]
    CMP L060F,X                                                       ; 2BC1: DD 0F 06                               ...          :1EC1[4]
    BNE C1ED9                                                         ; 2BC4: D0 13                                  ..           :1EC4[4]
    LDA L0086                                                         ; 2BC6: A5 86                                  ..           :1EC6[4]
    SEC                                                               ; 2BC8: 38                                     8            :1EC8[4]
    SBC L08AF,X                                                       ; 2BC9: FD AF 08                               ...          :1EC9[4]
    BEQ C1ED9                                                         ; 2BCC: F0 0B                                  ..           :1ECC[4]
    CMP #9                                                            ; 2BCE: C9 09                                  ..           :1ECE[4]
    BCS C1ED9                                                         ; 2BD0: B0 07                                  ..           :1ED0[4]
    LDA L08AF,X                                                       ; 2BD2: BD AF 08                               ...          :1ED2[4]
    STA L0086                                                         ; 2BD5: 85 86                                  ..           :1ED5[4]
    BNE C1EB4                                                         ; 2BD7: D0 DB                                  ..           :1ED7[4]
; &2BD9 referenced 4 times by &1EBD, &1EC4, &1ECC, &1ED0
.C1ED9
    DEX                                                               ; 2BD9: CA                                     .            :1ED9[4]
    BNE C1EB8                                                         ; 2BDA: D0 DC                                  ..           :1EDA[4]
; &2BDC referenced 1 time by &1EB6
.C1EDC
    LDA #0                                                            ; 2BDC: A9 00                                  ..           :1EDC[4]
    STA L008C                                                         ; 2BDE: 85 8C                                  ..           :1EDE[4]
    LDX L0013                                                         ; 2BE0: A6 13                                  ..           :1EE0[4]
    BEQ C1F03                                                         ; 2BE2: F0 1F                                  ..           :1EE2[4]
; &2BE4 referenced 1 time by &1F01
.loop_C1EE4
    LDA L0087                                                         ; 2BE4: A5 87                                  ..           :1EE4[4]
    CMP L088F,X                                                       ; 2BE6: DD 8F 08                               ...          :1EE6[4]
    BNE C1F00                                                         ; 2BE9: D0 15                                  ..           :1EE9[4]
    LDA L087F,X                                                       ; 2BEB: BD 7F 08                               ...          :1EEB[4]
    SEC                                                               ; 2BEE: 38                                     8            :1EEE[4]
    SBC L0086                                                         ; 2BEF: E5 86                                  ..           :1EEF[4]
    CMP #&F0                                                          ; 2BF1: C9 F0                                  ..           :1EF1[4]
    BCC C1F00                                                         ; 2BF3: 90 0B                                  ..           :1EF3[4]
    LDA L089F,X                                                       ; 2BF5: BD 9F 08                               ...          :1EF5[4]
    AND #&0C                                                          ; 2BF8: 29 0C                                  ).           :1EF8[4]
    EOR #8                                                            ; 2BFA: 49 08                                  I.           :1EFA[4]
    ORA L008C                                                         ; 2BFC: 05 8C                                  ..           :1EFC[4]
    STA L008C                                                         ; 2BFE: 85 8C                                  ..           :1EFE[4]
; &2C00 referenced 2 times by &1EE9, &1EF3
.C1F00
    DEX                                                               ; 2C00: CA                                     .            :1F00[4]
    BNE loop_C1EE4                                                    ; 2C01: D0 E1                                  ..           :1F01[4]
; &2C03 referenced 1 time by &1EE2
.C1F03
    LDA L008C                                                         ; 2C03: A5 8C                                  ..           :1F03[4]
    LDY L0086                                                         ; 2C05: A4 86                                  ..           :1F05[4]
    RTS                                                               ; 2C07: 60                                     `            :1F07[4]

; &2C08 referenced 4 times by &13F0, &1F32, &1F3E, &22FB
.C1F08
    LDX L0009                                                         ; 2C08: A6 09                                  ..           :1F08[4]
    BEQ C1F44                                                         ; 2C0A: F0 38                                  .8           :1F0A[4]
; &2C0C referenced 1 time by &1F42
.C1F0C
    LDA L061F,X                                                       ; 2C0C: BD 1F 06                               ...          :1F0C[4]
    BNE C1F41                                                         ; 2C0F: D0 30                                  .0           :1F0F[4]
    LDA L0087                                                         ; 2C11: A5 87                                  ..           :1F11[4]
    CMP L060F,X                                                       ; 2C13: DD 0F 06                               ...          :1F13[4]
    BNE C1F41                                                         ; 2C16: D0 29                                  .)           :1F16[4]
    LDA L0088                                                         ; 2C18: A5 88                                  ..           :1F18[4]
    SEC                                                               ; 2C1A: 38                                     8            :1F1A[4]
    SBC L08AF,X                                                       ; 2C1B: FD AF 08                               ...          :1F1B[4]
    CMP #2                                                            ; 2C1E: C9 02                                  ..           :1F1E[4]
    BEQ C1F41                                                         ; 2C20: F0 1F                                  ..           :1F20[4]
    CMP #9                                                            ; 2C22: C9 09                                  ..           :1F22[4]
    BCS C1F41                                                         ; 2C24: B0 1B                                  ..           :1F24[4]
    INC L061F,X                                                       ; 2C26: FE 1F 06                               ...          :1F26[4]
    LDA L08AF,X                                                       ; 2C29: BD AF 08                               ...          :1F29[4]
    STA L0088                                                         ; 2C2C: 85 88                                  ..           :1F2C[4]
    DEC L08AF,X                                                       ; 2C2E: DE AF 08                               ...          :1F2E[4]
    LSR A                                                             ; 2C31: 4A                                     J            :1F31[4]
    BCS C1F08                                                         ; 2C32: B0 D4                                  ..           :1F32[4]
    TAX                                                               ; 2C34: AA                                     .            :1F34[4]
    LDY L0087                                                         ; 2C35: A4 87                                  ..           :1F35[4]
    JSR sub_C1E0B                                                     ; 2C37: 20 0B 1E                                ..          :1F37[4]
    DEX                                                               ; 2C3A: CA                                     .            :1F3A[4]
    JSR sub_C1E0B                                                     ; 2C3B: 20 0B 1E                                ..          :1F3B[4]
    JMP C1F08                                                         ; 2C3E: 4C 08 1F                               L..          :1F3E[4]

; &2C41 referenced 4 times by &1F0F, &1F16, &1F20, &1F24
.C1F41
    DEX                                                               ; 2C41: CA                                     .            :1F41[4]
    BNE C1F0C                                                         ; 2C42: D0 C8                                  ..           :1F42[4]
; &2C44 referenced 1 time by &1F0A
.C1F44
    RTS                                                               ; 2C44: 60                                     `            :1F44[4]

; &2C45 referenced 2 times by &1428, &22A5
.sub_C1F45
    STX L0086                                                         ; 2C45: 86 86                                  ..           :1F45[4]
    STY L0087                                                         ; 2C47: 84 87                                  ..           :1F47[4]
    STX L0088                                                         ; 2C49: 86 88                                  ..           :1F49[4]
; &2C4B referenced 1 time by &1F6E
.C1F4B
    LDX L0009                                                         ; 2C4B: A6 09                                  ..           :1F4B[4]
    BEQ C1F73                                                         ; 2C4D: F0 24                                  .$           :1F4D[4]
; &2C4F referenced 1 time by &1F71
.C1F4F
    LDA L061F,X                                                       ; 2C4F: BD 1F 06                               ...          :1F4F[4]
    AND #&C0                                                          ; 2C52: 29 C0                                  ).           :1F52[4]
    BNE C1F70                                                         ; 2C54: D0 1A                                  ..           :1F54[4]
    LDA L0087                                                         ; 2C56: A5 87                                  ..           :1F56[4]
    CMP L060F,X                                                       ; 2C58: DD 0F 06                               ...          :1F58[4]
    BNE C1F70                                                         ; 2C5B: D0 13                                  ..           :1F5B[4]
    LDA L0086                                                         ; 2C5D: A5 86                                  ..           :1F5D[4]
    SEC                                                               ; 2C5F: 38                                     8            :1F5F[4]
    SBC L08AF,X                                                       ; 2C60: FD AF 08                               ...          :1F60[4]
    BEQ C1F70                                                         ; 2C63: F0 0B                                  ..           :1F63[4]
    CMP #&F8                                                          ; 2C65: C9 F8                                  ..           :1F65[4]
    BCC C1F70                                                         ; 2C67: 90 07                                  ..           :1F67[4]
    LDA L08AF,X                                                       ; 2C69: BD AF 08                               ...          :1F69[4]
    STA L0086                                                         ; 2C6C: 85 86                                  ..           :1F6C[4]
    BNE C1F4B                                                         ; 2C6E: D0 DB                                  ..           :1F6E[4]
; &2C70 referenced 4 times by &1F54, &1F5B, &1F63, &1F67
.C1F70
    DEX                                                               ; 2C70: CA                                     .            :1F70[4]
    BNE C1F4F                                                         ; 2C71: D0 DC                                  ..           :1F71[4]
; &2C73 referenced 1 time by &1F4D
.C1F73
    LDA #0                                                            ; 2C73: A9 00                                  ..           :1F73[4]
    STA L008C                                                         ; 2C75: 85 8C                                  ..           :1F75[4]
    LDX L0013                                                         ; 2C77: A6 13                                  ..           :1F77[4]
    BEQ C1F9A                                                         ; 2C79: F0 1F                                  ..           :1F79[4]
; &2C7B referenced 1 time by &1F98
.loop_C1F7B
    LDA L0087                                                         ; 2C7B: A5 87                                  ..           :1F7B[4]
    CMP L088F,X                                                       ; 2C7D: DD 8F 08                               ...          :1F7D[4]
    BNE C1F97                                                         ; 2C80: D0 15                                  ..           :1F80[4]
    LDA L087F,X                                                       ; 2C82: BD 7F 08                               ...          :1F82[4]
    SEC                                                               ; 2C85: 38                                     8            :1F85[4]
    SBC L0086                                                         ; 2C86: E5 86                                  ..           :1F86[4]
    CMP #9                                                            ; 2C88: C9 09                                  ..           :1F88[4]
    BCS C1F97                                                         ; 2C8A: B0 0B                                  ..           :1F8A[4]
    LDA L089F,X                                                       ; 2C8C: BD 9F 08                               ...          :1F8C[4]
    AND #&0C                                                          ; 2C8F: 29 0C                                  ).           :1F8F[4]
    EOR #8                                                            ; 2C91: 49 08                                  I.           :1F91[4]
    ORA L008C                                                         ; 2C93: 05 8C                                  ..           :1F93[4]
    STA L008C                                                         ; 2C95: 85 8C                                  ..           :1F95[4]
; &2C97 referenced 2 times by &1F80, &1F8A
.C1F97
    DEX                                                               ; 2C97: CA                                     .            :1F97[4]
    BNE loop_C1F7B                                                    ; 2C98: D0 E1                                  ..           :1F98[4]
; &2C9A referenced 1 time by &1F79
.C1F9A
    LDA L008C                                                         ; 2C9A: A5 8C                                  ..           :1F9A[4]
    LDY L0086                                                         ; 2C9C: A4 86                                  ..           :1F9C[4]
    RTS                                                               ; 2C9E: 60                                     `            :1F9E[4]

; &2C9F referenced 4 times by &147B, &1FC9, &1FD5, &22C9
.C1F9F
    LDX L0009                                                         ; 2C9F: A6 09                                  ..           :1F9F[4]
    BEQ C1FDB                                                         ; 2CA1: F0 38                                  .8           :1FA1[4]
; &2CA3 referenced 1 time by &1FD9
.C1FA3
    LDA L061F,X                                                       ; 2CA3: BD 1F 06                               ...          :1FA3[4]
    BNE C1FD8                                                         ; 2CA6: D0 30                                  .0           :1FA6[4]
    LDA L0087                                                         ; 2CA8: A5 87                                  ..           :1FA8[4]
    CMP L060F,X                                                       ; 2CAA: DD 0F 06                               ...          :1FAA[4]
    BNE C1FD8                                                         ; 2CAD: D0 29                                  .)           :1FAD[4]
    LDA L0088                                                         ; 2CAF: A5 88                                  ..           :1FAF[4]
    SEC                                                               ; 2CB1: 38                                     8            :1FB1[4]
    SBC L08AF,X                                                       ; 2CB2: FD AF 08                               ...          :1FB2[4]
    CMP #&FE                                                          ; 2CB5: C9 FE                                  ..           :1FB5[4]
    BEQ C1FD8                                                         ; 2CB7: F0 1F                                  ..           :1FB7[4]
    CMP #&F8                                                          ; 2CB9: C9 F8                                  ..           :1FB9[4]
    BCC C1FD8                                                         ; 2CBB: 90 1B                                  ..           :1FBB[4]
    INC L061F,X                                                       ; 2CBD: FE 1F 06                               ...          :1FBD[4]
    LDA L08AF,X                                                       ; 2CC0: BD AF 08                               ...          :1FC0[4]
    STA L0088                                                         ; 2CC3: 85 88                                  ..           :1FC3[4]
    INC L08AF,X                                                       ; 2CC5: FE AF 08                               ...          :1FC5[4]
    LSR A                                                             ; 2CC8: 4A                                     J            :1FC8[4]
    BCC C1F9F                                                         ; 2CC9: 90 D4                                  ..           :1FC9[4]
    TAX                                                               ; 2CCB: AA                                     .            :1FCB[4]
    LDY L0087                                                         ; 2CCC: A4 87                                  ..           :1FCC[4]
    JSR sub_C1E0B                                                     ; 2CCE: 20 0B 1E                                ..          :1FCE[4]
    INX                                                               ; 2CD1: E8                                     .            :1FD1[4]
    JSR sub_C1E0B                                                     ; 2CD2: 20 0B 1E                                ..          :1FD2[4]
    JMP C1F9F                                                         ; 2CD5: 4C 9F 1F                               L..          :1FD5[4]

; &2CD8 referenced 4 times by &1FA6, &1FAD, &1FB7, &1FBB
.C1FD8
    DEX                                                               ; 2CD8: CA                                     .            :1FD8[4]
    BNE C1FA3                                                         ; 2CD9: D0 C8                                  ..           :1FD9[4]
; &2CDB referenced 1 time by &1FA1
.C1FDB
    RTS                                                               ; 2CDB: 60                                     `            :1FDB[4]

; &2CDC referenced 3 times by &10FF, &1112, &124D
.sub_C1FDC
    LDA L0014                                                         ; 2CDC: A5 14                                  ..           :1FDC[4]
    BMI C2020                                                         ; 2CDE: 30 40                                  0@           :1FDE[4]
    LDA L0012                                                         ; 2CE0: A5 12                                  ..           :1FE0[4]
    BNE C1FEF                                                         ; 2CE2: D0 0B                                  ..           :1FE2[4]
    JSR sub_C25E5                                                     ; 2CE4: 20 E5 25                                .%          :1FE4[4]
    AND #&1F                                                          ; 2CE7: 29 1F                                  ).           :1FE7[4]
    BNE C2020                                                         ; 2CE9: D0 35                                  .5           :1FE9[4]
    LDA #&30 ; '0'                                                    ; 2CEB: A9 30                                  .0           :1FEB[4]
    STA L0012                                                         ; 2CED: 85 12                                  ..           :1FED[4]
; &2CEF referenced 1 time by &1FE2
.C1FEF
    DEC L0012                                                         ; 2CEF: C6 12                                  ..           :1FEF[4]
    LDA L0012                                                         ; 2CF1: A5 12                                  ..           :1FF1[4]
    AND #7                                                            ; 2CF3: 29 07                                  ).           :1FF3[4]
    BNE C2020                                                         ; 2CF5: D0 29                                  .)           :1FF5[4]
    LDX #&23 ; '#'                                                    ; 2CF7: A2 23                                  .#           :1FF7[4]
    LDY #&81                                                          ; 2CF9: A0 81                                  ..           :1FF9[4]
    LDA #7                                                            ; 2CFB: A9 07                                  ..           :1FFB[4]   ; Select sprite 7 to write (center_base)
    JSR write_sprite_to_screen_routine                                ; 2CFD: 20 73 0A                                s.          :1FFD[4]
    LDA L0012                                                         ; 2D00: A5 12                                  ..           :2000[4]
    BNE C201B                                                         ; 2D02: D0 17                                  ..           :2002[4]
    DEC L0014                                                         ; 2D04: C6 14                                  ..           :2004[4]
    BPL C2012                                                         ; 2D06: 10 0A                                  ..           :2006[4]
    LDA #7                                                            ; 2D08: A9 07                                  ..           :2008[4]   ; Select sprite 7 to write (center_base)
    JSR write_sprite_to_screen_routine                                ; 2D0A: 20 73 0A                                s.          :200A[4]
    LDA #2                                                            ; 2D0D: A9 02                                  ..           :200D[4]   ; Select sprite 2 to write (bonus_base_graphic)
    JSR write_sprite_to_screen_routine                                ; 2D0F: 20 73 0A                                s.          :200F[4]
; &2D12 referenced 1 time by &2006
.C2012
    LDX #&46 ; 'F'                                                    ; 2D12: A2 46                                  .F           :2012[4]
    LDY #&81                                                          ; 2D14: A0 81                                  ..           :2014[4]
    LDA #3                                                            ; 2D16: A9 03                                  ..           :2016[4]
    JSR sub_C2424                                                     ; 2D18: 20 24 24                                $$          :2018[4]
; &2D1B referenced 1 time by &2002
.C201B
    LDA #&18                                                          ; 2D1B: A9 18                                  ..           :201B[4]
    JSR write_sprite_to_screen_routine                                ; 2D1D: 20 73 0A                                s.          :201D[4]
; &2D20 referenced 3 times by &1FDE, &1FE9, &1FF5
.C2020
    LDA L0029                                                         ; 2D20: A5 29                                  .)           :2020[4]
    CMP #&50 ; 'P'                                                    ; 2D22: C9 50                                  .P           :2022[4]
    BCC C202D                                                         ; 2D24: 90 07                                  ..           :2024[4]
    SBC #&50 ; 'P'                                                    ; 2D26: E9 50                                  .P           :2026[4]
    STA L0029                                                         ; 2D28: 85 29                                  .)           :2028[4]
    JSR sub_C247C                                                     ; 2D2A: 20 7C 24                                |$          :202A[4]
; &2D2D referenced 1 time by &2024
.C202D
    LDA L0016                                                         ; 2D2D: A5 16                                  ..           :202D[4]
    BMI C204D                                                         ; 2D2F: 30 1C                                  0.           :202F[4]
    JSR sub_C25E5                                                     ; 2D31: 20 E5 25                                .%          :2031[4]
    LSR A                                                             ; 2D34: 4A                                     J            :2034[4]
    BNE C204D                                                         ; 2D35: D0 16                                  ..           :2035[4]
    LDA L0016                                                         ; 2D37: A5 16                                  ..           :2037[4]
    JSR C2700                                                         ; 2D39: 20 00 27                                .'          :2039[4]
    LDA L0016                                                         ; 2D3C: A5 16                                  ..           :203C[4]
    AND #7                                                            ; 2D3E: 29 07                                  ).           :203E[4]
    TAX                                                               ; 2D40: AA                                     .            :2040[4]
    INX                                                               ; 2D41: E8                                     .            :2041[4]
    CPX #5                                                            ; 2D42: E0 05                                  ..           :2042[4]
    BNE C2048                                                         ; 2D44: D0 02                                  ..           :2044[4]
    LDX #0                                                            ; 2D46: A2 00                                  ..           :2046[4]
; &2D48 referenced 1 time by &2044
.C2048
    STX L0016                                                         ; 2D48: 86 16                                  ..           :2048[4]
    JSR sub_C26E8                                                     ; 2D4A: 20 E8 26                                .&          :204A[4]
; &2D4D referenced 2 times by &202F, &2035
.C204D
    LDA #&FF                                                          ; 2D4D: A9 FF                                  ..           :204D[4]
    STA L0010                                                         ; 2D4F: 85 10                                  ..           :204F[4]
    LDX L0013                                                         ; 2D51: A6 13                                  ..           :2051[4]
    BNE C2056                                                         ; 2D53: D0 01                                  ..           :2053[4]
    RTS                                                               ; 2D55: 60                                     `            :2055[4]

; &2D56 referenced 3 times by &2053, &209B, &2420
.C2056
    TXA                                                               ; 2D56: 8A                                     .            :2056[4]
    PHA                                                               ; 2D57: 48                                     H            :2057[4]
    JSR sub_C2565                                                     ; 2D58: 20 65 25                                e%          :2058[4]
    LDA L0096                                                         ; 2D5B: A5 96                                  ..           :205B[4]
    BPL C2062                                                         ; 2D5D: 10 03                                  ..           :205D[4]
    JMP C2407                                                         ; 2D5F: 4C 07 24                               L.$          :205F[4]

; &2D62 referenced 1 time by &205D
.C2062
    AND #&0C                                                          ; 2D62: 29 0C                                  ).           :2062[4]
    STA L0098                                                         ; 2D64: 85 98                                  ..           :2064[4]
    BIT L0014                                                         ; 2D66: 24 14                                  $.           :2066[4]
    BVS C209E                                                         ; 2D68: 70 34                                  p4           :2068[4]
    BPL C209E                                                         ; 2D6A: 10 32                                  .2           :206A[4]
    CMP #8                                                            ; 2D6C: C9 08                                  ..           :206C[4]
    BCS C2073                                                         ; 2D6E: B0 03                                  ..           :206E[4]
; &2D70 referenced 2 times by &207D, &20D7
.C2070
    JMP C2347                                                         ; 2D70: 4C 47 23                               LG#          :2070[4]

; &2D73 referenced 1 time by &206E
.C2073
    BNE C209E                                                         ; 2D73: D0 29                                  .)           :2073[4]
    LDA L0014                                                         ; 2D75: A5 14                                  ..           :2075[4]
    AND #&3F ; '?'                                                    ; 2D77: 29 3F                                  )?           :2077[4]
    BEQ C209E                                                         ; 2D79: F0 23                                  .#           :2079[4]
    DEC L0012                                                         ; 2D7B: C6 12                                  ..           :207B[4]
    BNE C2070                                                         ; 2D7D: D0 F1                                  ..           :207D[4]
    DEC L0014                                                         ; 2D7F: C6 14                                  ..           :207F[4]
    LDA L0014                                                         ; 2D81: A5 14                                  ..           :2081[4]
    AND #&3F ; '?'                                                    ; 2D83: 29 3F                                  )?           :2083[4]
    BEQ C209E                                                         ; 2D85: F0 17                                  ..           :2085[4]
    LDA #&10                                                          ; 2D87: A9 10                                  ..           :2087[4]
    STA L0012                                                         ; 2D89: 85 12                                  ..           :2089[4]
    LDX L0090                                                         ; 2D8B: A6 90                                  ..           :208B[4]
    LDY L0093                                                         ; 2D8D: A4 93                                  ..           :208D[4]
    LDA L0096                                                         ; 2D8F: A5 96                                  ..           :208F[4]
    AND #3                                                            ; 2D91: 29 03                                  ).           :2091[4]
    ORA #&0C                                                          ; 2D93: 09 0C                                  ..           :2093[4]
    JSR sub_C2424                                                     ; 2D95: 20 24 24                                $$          :2095[4]
    PLA                                                               ; 2D98: 68                                     h            :2098[4]
    TAX                                                               ; 2D99: AA                                     .            :2099[4]
    DEX                                                               ; 2D9A: CA                                     .            :209A[4]
    BNE C2056                                                         ; 2D9B: D0 B9                                  ..           :209B[4]
    RTS                                                               ; 2D9D: 60                                     `            :209D[4]

; &2D9E referenced 5 times by &2068, &206A, &2073, &2079, &2085
.C209E
    LDA L0014                                                         ; 2D9E: A5 14                                  ..           :209E[4]
    CMP #&FD                                                          ; 2DA0: C9 FD                                  ..           :20A0[4]
    BNE C20B2                                                         ; 2DA2: D0 0E                                  ..           :20A2[4]
    LDA L0098                                                         ; 2DA4: A5 98                                  ..           :20A4[4]
    CMP #&0C                                                          ; 2DA6: C9 0C                                  ..           :20A6[4]
    BNE C20B2                                                         ; 2DA8: D0 08                                  ..           :20A8[4]
    JSR sub_C24B0                                                     ; 2DAA: 20 B0 24                                .$          :20AA[4]
    PLA                                                               ; 2DAD: 68                                     h            :20AD[4]
    TAX                                                               ; 2DAE: AA                                     .            :20AE[4]
    JMP C241D                                                         ; 2DAF: 4C 1D 24                               L.$          :20AF[4]

; &2DB2 referenced 2 times by &20A2, &20A8
.C20B2
    LDA L0099                                                         ; 2DB2: A5 99                                  ..           :20B2[4]
    BEQ C20D9                                                         ; 2DB4: F0 23                                  .#           :20B4[4]
    LDA L0096                                                         ; 2DB6: A5 96                                  ..           :20B6[4]
    AND #8                                                            ; 2DB8: 29 08                                  ).           :20B8[4]
    BEQ C20D5                                                         ; 2DBA: F0 19                                  ..           :20BA[4]
    LDA L0099                                                         ; 2DBC: A5 99                                  ..           :20BC[4]
    CMP #1                                                            ; 2DBE: C9 01                                  ..           :20BE[4]
    BEQ C20C6                                                         ; 2DC0: F0 04                                  ..           :20C0[4]
    AND #7                                                            ; 2DC2: 29 07                                  ).           :20C2[4]
    BNE C20D1                                                         ; 2DC4: D0 0B                                  ..           :20C4[4]
; &2DC6 referenced 1 time by &20C0
.C20C6
    JSR sub_C2441                                                     ; 2DC6: 20 41 24                                A$          :20C6[4]
    DEC L0099                                                         ; 2DC9: C6 99                                  ..           :20C9[4]
    JSR sub_C2441                                                     ; 2DCB: 20 41 24                                A$          :20CB[4]
; &2DCE referenced 1 time by &20D3
.loop_C20CE
    JMP C23EB                                                         ; 2DCE: 4C EB 23                               L.#          :20CE[4]

; &2DD1 referenced 1 time by &20C4
.C20D1
    DEC L0099                                                         ; 2DD1: C6 99                                  ..           :20D1[4]
    BPL loop_C20CE                                                    ; 2DD3: 10 F9                                  ..           :20D3[4]
; &2DD5 referenced 1 time by &20BA
.C20D5
    DEC L0099                                                         ; 2DD5: C6 99                                  ..           :20D5[4]
    BPL C2070                                                         ; 2DD7: 10 97                                  ..           :20D7[4]
; &2DD9 referenced 1 time by &20B4
.C20D9
    LDA L0620,Y                                                       ; 2DD9: B9 20 06                               . .          :20D9[4]
    CMP L0010                                                         ; 2DDC: C5 10                                  ..           :20DC[4]
    BCS C20E2                                                         ; 2DDE: B0 02                                  ..           :20DE[4]
    STA L0010                                                         ; 2DE0: 85 10                                  ..           :20E0[4]
; &2DE2 referenced 1 time by &20DE
.C20E2
    LDX #0                                                            ; 2DE2: A2 00                                  ..           :20E2[4]
    LDA L0092                                                         ; 2DE4: A5 92                                  ..           :20E4[4]
    BEQ C20EC                                                         ; 2DE6: F0 04                                  ..           :20E6[4]
    LDA #2                                                            ; 2DE8: A9 02                                  ..           :20E8[4]
    BNE C20F2                                                         ; 2DEA: D0 06                                  ..           :20EA[4]
; &2DEC referenced 1 time by &20E6
.C20EC
    LDX L0095                                                         ; 2DEC: A6 95                                  ..           :20EC[4]
    BEQ C20FC                                                         ; 2DEE: F0 0C                                  ..           :20EE[4]
    LDX #2                                                            ; 2DF0: A2 02                                  ..           :20F0[4]
; &2DF2 referenced 1 time by &20EA
.C20F2
    STA L00A0                                                         ; 2DF2: 85 A0                                  ..           :20F2[4]
    STA L00A1                                                         ; 2DF4: 85 A1                                  ..           :20F4[4]
    STX L00A2                                                         ; 2DF6: 86 A2                                  ..           :20F6[4]
    STX L00A3                                                         ; 2DF8: 86 A3                                  ..           :20F8[4]
    BNE C2110                                                         ; 2DFA: D0 14                                  ..           :20FA[4]
; &2DFC referenced 1 time by &20EE
.C20FC
    LDX #3                                                            ; 2DFC: A2 03                                  ..           :20FC[4]
    LDA L0720,Y                                                       ; 2DFE: B9 20 07                               . .          :20FE[4]
    LSR A                                                             ; 2E01: 4A                                     J            :2101[4]
    LSR A                                                             ; 2E02: 4A                                     J            :2102[4]
    STA zero_page_80_dest_screenaddr                                  ; 2E03: 85 80                                  ..           :2103[4]
; &2E05 referenced 1 time by &210E
.loop_C2105
    LSR zero_page_80_dest_screenaddr                                  ; 2E05: 46 80                                  F.           :2105[4]
    LDA #0                                                            ; 2E07: A9 00                                  ..           :2107[4]
    ROL A                                                             ; 2E09: 2A                                     *            :2109[4]
    ROL A                                                             ; 2E0A: 2A                                     *            :210A[4]
    STA L00A0,X                                                       ; 2E0B: 95 A0                                  ..           :210B[4]
    DEX                                                               ; 2E0D: CA                                     .            :210D[4]
    BPL loop_C2105                                                    ; 2E0E: 10 F5                                  ..           :210E[4]
; &2E10 referenced 1 time by &20FA
.C2110
    LDA L0620,Y                                                       ; 2E10: B9 20 06                               . .          :2110[4]
    LDX L0092                                                         ; 2E13: A6 92                                  ..           :2113[4]
    BEQ C2124                                                         ; 2E15: F0 0D                                  ..           :2115[4]
    CMP L0621,Y                                                       ; 2E17: D9 21 06                               .!.          :2117[4]
    BCC C211F                                                         ; 2E1A: 90 03                                  ..           :211A[4]
    INC L00A0                                                         ; 2E1C: E6 A0                                  ..           :211C[4]
; overlapping: BIT LA1E6                                              ; 2E1E: 2C E6 A1                               ,..          :211E[4]
    EQUB &2C                                                          ; 2E1E: 2C                                     ,            :211E[4]

; &2E1F referenced 1 time by &211A
.C211F
    INC L00A1                                                         ; 2E1F: E6 A1                                  ..           :211F[4]
    JMP C2151                                                         ; 2E21: 4C 51 21                               LQ!          :2121[4]

; &2E24 referenced 1 time by &2115
.C2124
    LDX L0095                                                         ; 2E24: A6 95                                  ..           :2124[4]
    BEQ C2135                                                         ; 2E26: F0 0D                                  ..           :2126[4]
    CMP L0630,Y                                                       ; 2E28: D9 30 06                               .0.          :2128[4]
    BCC C2130                                                         ; 2E2B: 90 03                                  ..           :212B[4]
    INC L00A3                                                         ; 2E2D: E6 A3                                  ..           :212D[4]
; overlapping: BIT LA2E6                                              ; 2E2F: 2C E6 A2                               ,..          :212F[4]
    EQUB &2C                                                          ; 2E2F: 2C                                     ,            :212F[4]

; &2E30 referenced 1 time by &212B
.C2130
    INC L00A2                                                         ; 2E30: E6 A2                                  ..           :2130[4]
    JMP C2151                                                         ; 2E32: 4C 51 21                               LQ!          :2132[4]

; &2E35 referenced 1 time by &2126
.C2135
    CMP L0621,Y                                                       ; 2E35: D9 21 06                               .!.          :2135[4]
    BCC C213C                                                         ; 2E38: 90 02                                  ..           :2138[4]
    INC L00A0                                                         ; 2E3A: E6 A0                                  ..           :213A[4]
; &2E3C referenced 1 time by &2138
.C213C
    CMP L061F,Y                                                       ; 2E3C: D9 1F 06                               ...          :213C[4]
    BCC C2143                                                         ; 2E3F: 90 02                                  ..           :213F[4]
    INC L00A1                                                         ; 2E41: E6 A1                                  ..           :2141[4]
; &2E43 referenced 1 time by &213F
.C2143
    CMP L0610,Y                                                       ; 2E43: D9 10 06                               ...          :2143[4]
    BCC C214A                                                         ; 2E46: 90 02                                  ..           :2146[4]
    INC L00A2                                                         ; 2E48: E6 A2                                  ..           :2148[4]
; &2E4A referenced 1 time by &2146
.C214A
    CMP L0630,Y                                                       ; 2E4A: D9 30 06                               .0.          :214A[4]
    BCC C2151                                                         ; 2E4D: 90 02                                  ..           :214D[4]
    INC L00A3                                                         ; 2E4F: E6 A3                                  ..           :214F[4]
; &2E51 referenced 3 times by &2121, &2132, &214D
.C2151
    TYA                                                               ; 2E51: 98                                     .            :2151[4]
    PHA                                                               ; 2E52: 48                                     H            :2152[4]
    JSR sub_C2441                                                     ; 2E53: 20 41 24                                A$          :2153[4]
    STY L00A5                                                         ; 2E56: 84 A5                                  ..           :2156[4]
    PLA                                                               ; 2E58: 68                                     h            :2158[4]
    TAY                                                               ; 2E59: A8                                     .            :2159[4]
    LDA L0092                                                         ; 2E5A: A5 92                                  ..           :215A[4]
    ORA L0095                                                         ; 2E5C: 05 95                                  ..           :215C[4]
    BEQ C2169                                                         ; 2E5E: F0 09                                  ..           :215E[4]
    LDA L0096                                                         ; 2E60: A5 96                                  ..           :2160[4]
    AND #&10                                                          ; 2E62: 29 10                                  ).           :2162[4]
    BNE C21D6                                                         ; 2E64: D0 70                                  .p           :2164[4]
; &2E66 referenced 1 time by &21D8
.C2166
    JMP C225B                                                         ; 2E66: 4C 5B 22                               L["          :2166[4]

; &2E69 referenced 1 time by &215E
.C2169
    LDA L0096                                                         ; 2E69: A5 96                                  ..           :2169[4]
    AND #&2C ; ','                                                    ; 2E6B: 29 2C                                  ),           :216B[4]
    CMP #&20 ; ' '                                                    ; 2E6D: C9 20                                  .            :216D[4]
    BNE C217F                                                         ; 2E6F: D0 0E                                  ..           :216F[4]
    LDA L0096                                                         ; 2E71: A5 96                                  ..           :2171[4]
    EOR #&24 ; '$'                                                    ; 2E73: 49 24                                  I$           :2173[4]
    STA L0096                                                         ; 2E75: 85 96                                  ..           :2175[4]
    AND #&0C                                                          ; 2E77: 29 0C                                  ).           :2177[4]
    STA L0098                                                         ; 2E79: 85 98                                  ..           :2179[4]
    LDA #&0A                                                          ; 2E7B: A9 0A                                  ..           :217B[4]
    STA L0099                                                         ; 2E7D: 85 99                                  ..           :217D[4]
; &2E7F referenced 1 time by &216F
.C217F
    LDA L0098                                                         ; 2E7F: A5 98                                  ..           :217F[4]
    CMP #4                                                            ; 2E81: C9 04                                  ..           :2181[4]
    BNE C21D6                                                         ; 2E83: D0 51                                  .Q           :2183[4]
    LDA L0096                                                         ; 2E85: A5 96                                  ..           :2185[4]
    AND #3                                                            ; 2E87: 29 03                                  ).           :2187[4]
; &2E89 referenced 2 times by &21AE, &21B6
.C2189
    LDX L0020                                                         ; 2E89: A6 20                                  .            :2189[4]
    CPX L0090                                                         ; 2E8B: E4 90                                  ..           :218B[4]
    BCS C2197                                                         ; 2E8D: B0 08                                  ..           :218D[4]
    CMP #0                                                            ; 2E8F: C9 00                                  ..           :218F[4]
    BEQ C21A6                                                         ; 2E91: F0 13                                  ..           :2191[4]
    LDX #1                                                            ; 2E93: A2 01                                  ..           :2193[4]
    BNE C21BF                                                         ; 2E95: D0 28                                  .(           :2195[4]
; &2E97 referenced 1 time by &218D
.C2197
    LDX L0091                                                         ; 2E97: A6 91                                  ..           :2197[4]
    CPX #&0B                                                          ; 2E99: E0 0B                                  ..           :2199[4]
    BEQ C21A5                                                         ; 2E9B: F0 08                                  ..           :219B[4]
    CMP #1                                                            ; 2E9D: C9 01                                  ..           :219D[4]
    BEQ C21A6                                                         ; 2E9F: F0 05                                  ..           :219F[4]
    LDX #0                                                            ; 2EA1: A2 00                                  ..           :21A1[4]
    BEQ C21BF                                                         ; 2EA3: F0 1A                                  ..           :21A3[4]
; &2EA5 referenced 1 time by &219B
.C21A5
    TXA                                                               ; 2EA5: 8A                                     .            :21A5[4]
; &2EA6 referenced 2 times by &2191, &219F
.C21A6
    LDX L0093                                                         ; 2EA6: A6 93                                  ..           :21A6[4]
    CPX L0021                                                         ; 2EA8: E4 21                                  .!           :21A8[4]
    BCS C21B4                                                         ; 2EAA: B0 08                                  ..           :21AA[4]
; &2EAC referenced 1 time by &21BB
.loop_C21AC
    CMP #2                                                            ; 2EAC: C9 02                                  ..           :21AC[4]
    BEQ C2189                                                         ; 2EAE: F0 D9                                  ..           :21AE[4]
    LDX #3                                                            ; 2EB0: A2 03                                  ..           :21B0[4]
    BNE C21BF                                                         ; 2EB2: D0 0B                                  ..           :21B2[4]
; &2EB4 referenced 1 time by &21AA
.C21B4
    CMP #3                                                            ; 2EB4: C9 03                                  ..           :21B4[4]
    BEQ C2189                                                         ; 2EB6: F0 D1                                  ..           :21B6[4]
    LDX L0094                                                         ; 2EB8: A6 94                                  ..           :21B8[4]
    DEX                                                               ; 2EBA: CA                                     .            :21BA[4]
    BEQ loop_C21AC                                                    ; 2EBB: F0 EF                                  ..           :21BB[4]
    LDX #2                                                            ; 2EBD: A2 02                                  ..           :21BD[4]
; &2EBF referenced 3 times by &2195, &21A3, &21B2
.C21BF
    LDA L00A0,X                                                       ; 2EBF: B5 A0                                  ..           :21BF[4]
    AND #2                                                            ; 2EC1: 29 02                                  ).           :21C1[4]
    BNE C21C8                                                         ; 2EC3: D0 03                                  ..           :21C3[4]
    JMP C2238                                                         ; 2EC5: 4C 38 22                               L8"          :21C5[4]

; &2EC8 referenced 1 time by &21C3
.C21C8
    LDA L0096                                                         ; 2EC8: A5 96                                  ..           :21C8[4]
    EOR #4                                                            ; 2ECA: 49 04                                  I.           :21CA[4]
    STA L0096                                                         ; 2ECC: 85 96                                  ..           :21CC[4]
    LDA #0                                                            ; 2ECE: A9 00                                  ..           :21CE[4]
    STA L0098                                                         ; 2ED0: 85 98                                  ..           :21D0[4]
    LDA #&0A                                                          ; 2ED2: A9 0A                                  ..           :21D2[4]
    STA L0099                                                         ; 2ED4: 85 99                                  ..           :21D4[4]
; &2ED6 referenced 2 times by &2164, &2183
.C21D6
    LDA L0094                                                         ; 2ED6: A5 94                                  ..           :21D6[4]
    BEQ C2166                                                         ; 2ED8: F0 8C                                  ..           :21D8[4]
    LDA L0098                                                         ; 2EDA: A5 98                                  ..           :21DA[4]
    BNE C21E2                                                         ; 2EDC: D0 04                                  ..           :21DC[4]
    BIT L0096                                                         ; 2EDE: 24 96                                  $.           :21DE[4]
    BVS C220F                                                         ; 2EE0: 70 2D                                  p-           :21E0[4]
; &2EE2 referenced 1 time by &21DC
.C21E2
    CMP #8                                                            ; 2EE2: C9 08                                  ..           :21E2[4]
    BNE C21F4                                                         ; 2EE4: D0 0E                                  ..           :21E4[4]
    LDA L001B                                                         ; 2EE6: A5 1B                                  ..           :21E6[4]
    BNE C21F4                                                         ; 2EE8: D0 0A                                  ..           :21E8[4]
    LDA L0620,Y                                                       ; 2EEA: B9 20 06                               . .          :21EA[4]
    CMP L0010                                                         ; 2EED: C5 10                                  ..           :21ED[4]
    BNE C21F4                                                         ; 2EEF: D0 03                                  ..           :21EF[4]
    LDA #2                                                            ; 2EF1: A9 02                                  ..           :21F1[4]
; overlapping: BIT L03A9                                              ; 2EF3: 2C A9 03                               ,..          :21F3[4]
    EQUB &2C                                                          ; 2EF3: 2C                                     ,            :21F3[4]

; &2EF4 referenced 3 times by &21E4, &21E8, &21EF
.C21F4
    LDA #3                                                            ; 2EF4: A9 03                                  ..           :21F4[4]
    LDX #3                                                            ; 2EF6: A2 03                                  ..           :21F6[4]
; &2EF8 referenced 1 time by &21FD
.loop_C21F8
    CMP L00A0,X                                                       ; 2EF8: D5 A0                                  ..           :21F8[4]
    BEQ C2201                                                         ; 2EFA: F0 05                                  ..           :21FA[4]
    DEX                                                               ; 2EFC: CA                                     .            :21FC[4]
    BPL loop_C21F8                                                    ; 2EFD: 10 F9                                  ..           :21FD[4]
    EOR #1                                                            ; 2EFF: 49 01                                  I.           :21FF[4]
; &2F01 referenced 2 times by &21FA, &220B
.C2201
    PHA                                                               ; 2F01: 48                                     H            :2201[4]
    JSR sub_C25E5                                                     ; 2F02: 20 E5 25                                .%          :2202[4]
    AND #3                                                            ; 2F05: 29 03                                  ).           :2205[4]
    TAX                                                               ; 2F07: AA                                     .            :2207[4]
    PLA                                                               ; 2F08: 68                                     h            :2208[4]
    CMP L00A0,X                                                       ; 2F09: D5 A0                                  ..           :2209[4]
    BNE C2201                                                         ; 2F0B: D0 F4                                  ..           :220B[4]
    BEQ C2238                                                         ; 2F0D: F0 29                                  .)           :220D[4]
; &2F0F referenced 1 time by &21E0
.C220F
    LDA L0096                                                         ; 2F0F: A5 96                                  ..           :220F[4]
    AND #3                                                            ; 2F11: 29 03                                  ).           :2211[4]
    EOR #1                                                            ; 2F13: 49 01                                  I.           :2213[4]
    STA L00A4                                                         ; 2F15: 85 A4                                  ..           :2215[4]
    LDX #3                                                            ; 2F17: A2 03                                  ..           :2217[4]
; &2F19 referenced 1 time by &2224
.loop_C2219
    CPX L00A4                                                         ; 2F19: E4 A4                                  ..           :2219[4]
    BEQ C2223                                                         ; 2F1B: F0 06                                  ..           :221B[4]
    LDA L00A0,X                                                       ; 2F1D: B5 A0                                  ..           :221D[4]
    AND #2                                                            ; 2F1F: 29 02                                  ).           :221F[4]
    BNE C2228                                                         ; 2F21: D0 05                                  ..           :2221[4]
; &2F23 referenced 1 time by &221B
.C2223
    DEX                                                               ; 2F23: CA                                     .            :2223[4]
    BPL loop_C2219                                                    ; 2F24: 10 F3                                  ..           :2224[4]
    BMI C223A                                                         ; 2F26: 30 12                                  0.           :2226[4]
; &2F28 referenced 3 times by &2221, &222F, &2236
.C2228
    JSR sub_C25E5                                                     ; 2F28: 20 E5 25                                .%          :2228[4]
    AND #3                                                            ; 2F2B: 29 03                                  ).           :222B[4]
    CMP L00A4                                                         ; 2F2D: C5 A4                                  ..           :222D[4]
    BEQ C2228                                                         ; 2F2F: F0 F7                                  ..           :222F[4]
    TAX                                                               ; 2F31: AA                                     .            :2231[4]
    LDA L00A0,X                                                       ; 2F32: B5 A0                                  ..           :2232[4]
    AND #2                                                            ; 2F34: 29 02                                  ).           :2234[4]
    BEQ C2228                                                         ; 2F36: F0 F0                                  ..           :2236[4]
; &2F38 referenced 2 times by &21C5, &220D
.C2238
    STX L00A4                                                         ; 2F38: 86 A4                                  ..           :2238[4]
; &2F3A referenced 1 time by &2226
.C223A
    LDA L0098                                                         ; 2F3A: A5 98                                  ..           :223A[4]
    BNE C2253                                                         ; 2F3C: D0 15                                  ..           :223C[4]
    JSR sub_C25E5                                                     ; 2F3E: 20 E5 25                                .%          :223E[4]
    CMP L0002                                                         ; 2F41: C5 02                                  ..           :2241[4]
    BCS C2253                                                         ; 2F43: B0 0E                                  ..           :2243[4]
    LDA L0096                                                         ; 2F45: A5 96                                  ..           :2245[4]
    AND #&10                                                          ; 2F47: 29 10                                  ).           :2247[4]
    LSR A                                                             ; 2F49: 4A                                     J            :2249[4]
    LSR A                                                             ; 2F4A: 4A                                     J            :224A[4]
    LSR A                                                             ; 2F4B: 4A                                     J            :224B[4]
    LSR A                                                             ; 2F4C: 4A                                     J            :224C[4]
    EOR L0096                                                         ; 2F4D: 45 96                                  E.           :224D[4]
    ORA #&20 ; ' '                                                    ; 2F4F: 09 20                                  .            :224F[4]
    STA L0096                                                         ; 2F51: 85 96                                  ..           :2251[4]
; &2F53 referenced 2 times by &223C, &2243
.C2253
    LDA L0096                                                         ; 2F53: A5 96                                  ..           :2253[4]
    AND #&FC                                                          ; 2F55: 29 FC                                  ).           :2255[4]
    ORA L00A4                                                         ; 2F57: 05 A4                                  ..           :2257[4]
    STA L0096                                                         ; 2F59: 85 96                                  ..           :2259[4]
; &2F5B referenced 1 time by &2166
.C225B
    LDA L0098                                                         ; 2F5B: A5 98                                  ..           :225B[4]
    CMP #4                                                            ; 2F5D: C9 04                                  ..           :225D[4]
    BNE C228F                                                         ; 2F5F: D0 2E                                  ..           :225F[4]
    JSR sub_C1B25                                                     ; 2F61: 20 25 1B                                %.          :2261[4]
    LDY L00A5                                                         ; 2F64: A4 A5                                  ..           :2264[4]
    LDA L0090                                                         ; 2F66: A5 90                                  ..           :2266[4]
    LSR A                                                             ; 2F68: 4A                                     J            :2268[4]
    LDA L0096                                                         ; 2F69: A5 96                                  ..           :2269[4]
    AND #3                                                            ; 2F6B: 29 03                                  ).           :226B[4]
    BNE C2277                                                         ; 2F6D: D0 08                                  ..           :226D[4]
    BCC C2274                                                         ; 2F6F: 90 03                                  ..           :226F[4]
    JSR sub_C1863                                                     ; 2F71: 20 63 18                                c.          :2271[4]
; &2F74 referenced 1 time by &226F
.C2274
    JMP C228F                                                         ; 2F74: 4C 8F 22                               L."          :2274[4]

; &2F77 referenced 1 time by &226D
.C2277
    TAX                                                               ; 2F77: AA                                     .            :2277[4]
    DEX                                                               ; 2F78: CA                                     .            :2278[4]
    BNE C2283                                                         ; 2F79: D0 08                                  ..           :2279[4]
    BCS C2280                                                         ; 2F7B: B0 03                                  ..           :227B[4]
    JSR sub_C17DC                                                     ; 2F7D: 20 DC 17                                ..          :227D[4]
; &2F80 referenced 1 time by &227B
.C2280
    JMP C228F                                                         ; 2F80: 4C 8F 22                               L."          :2280[4]

; &2F83 referenced 1 time by &2279
.C2283
    DEX                                                               ; 2F83: CA                                     .            :2283[4]
    BNE C228C                                                         ; 2F84: D0 06                                  ..           :2284[4]
    JSR sub_C18F5                                                     ; 2F86: 20 F5 18                                ..          :2286[4]
    JMP C228F                                                         ; 2F89: 4C 8F 22                               L."          :2289[4]

; &2F8C referenced 1 time by &2284
.C228C
    JSR C1999                                                         ; 2F8C: 20 99 19                                ..          :228C[4]
; &2F8F referenced 4 times by &225F, &2274, &2280, &2289
.C228F
    LDX L0090                                                         ; 2F8F: A6 90                                  ..           :228F[4]
    LDY L0093                                                         ; 2F91: A4 93                                  ..           :2291[4]
    LDA L0098                                                         ; 2F93: A5 98                                  ..           :2293[4]
    AND #8                                                            ; 2F95: 29 08                                  ).           :2295[4]
    PHA                                                               ; 2F97: 48                                     H            :2297[4]
    LDA L0096                                                         ; 2F98: A5 96                                  ..           :2298[4]
    AND #&EF                                                          ; 2F9A: 29 EF                                  ).           :229A[4]
    STA L0096                                                         ; 2F9C: 85 96                                  ..           :229C[4]
    AND #3                                                            ; 2F9E: 29 03                                  ).           :229E[4]
    BNE C22D0                                                         ; 2FA0: D0 2E                                  ..           :22A0[4]
    PLA                                                               ; 2FA2: 68                                     h            :22A2[4]
    BNE C22CC                                                         ; 2FA3: D0 27                                  .'           :22A3[4]
    JSR sub_C1F45                                                     ; 2FA5: 20 45 1F                                E.          :22A5[4]
    CPY #&82                                                          ; 2FA8: C0 82                                  ..           :22A8[4]
    BEQ C2326                                                         ; 2FAA: F0 7A                                  .z           :22AA[4]
    CPY L0088                                                         ; 2FAC: C4 88                                  ..           :22AC[4]
    BEQ C22CC                                                         ; 2FAE: F0 1C                                  ..           :22AE[4]
    CMP #8                                                            ; 2FB0: C9 08                                  ..           :22B0[4]
    BCS C2326                                                         ; 2FB2: B0 72                                  .r           :22B2[4]
    LDA L0087                                                         ; 2FB4: A5 87                                  ..           :22B4[4]
    CMP L0021                                                         ; 2FB6: C5 21                                  .!           :22B6[4]
    BNE C22C3                                                         ; 2FB8: D0 09                                  ..           :22B8[4]
    LDA L0020                                                         ; 2FBA: A5 20                                  .            :22BA[4]
    SEC                                                               ; 2FBC: 38                                     8            :22BC[4]
    SBC L0086                                                         ; 2FBD: E5 86                                  ..           :22BD[4]
    CMP #9                                                            ; 2FBF: C9 09                                  ..           :22BF[4]
    BCC C2326                                                         ; 2FC1: 90 63                                  .c           :22C1[4]
; &2FC3 referenced 1 time by &22B8
.C22C3
    LDA L000F                                                         ; 2FC3: A5 0F                                  ..           :22C3[4]
    LSR A                                                             ; 2FC5: 4A                                     J            :22C5[4]
    LSR A                                                             ; 2FC6: 4A                                     J            :22C6[4]
    BCC C2326                                                         ; 2FC7: 90 5D                                  .]           :22C7[4]
    JSR C1F9F                                                         ; 2FC9: 20 9F 1F                                ..          :22C9[4]
; &2FCC referenced 2 times by &22A3, &22AE
.C22CC
    INC L0090                                                         ; 2FCC: E6 90                                  ..           :22CC[4]
    BNE C232C                                                         ; 2FCE: D0 5C                                  .\           :22CE[4]
; &2FD0 referenced 1 time by &22A0
.C22D0
    CMP #1                                                            ; 2FD0: C9 01                                  ..           :22D0[4]
    BNE C2302                                                         ; 2FD2: D0 2E                                  ..           :22D2[4]
    PLA                                                               ; 2FD4: 68                                     h            :22D4[4]
    BNE C22FE                                                         ; 2FD5: D0 27                                  .'           :22D5[4]
    JSR sub_C1EAE                                                     ; 2FD7: 20 AE 1E                                ..          :22D7[4]
    CPY #&14                                                          ; 2FDA: C0 14                                  ..           :22DA[4]
    BEQ C2326                                                         ; 2FDC: F0 48                                  .H           :22DC[4]
    CPY L0088                                                         ; 2FDE: C4 88                                  ..           :22DE[4]
    BEQ C22FE                                                         ; 2FE0: F0 1C                                  ..           :22E0[4]
    CMP #8                                                            ; 2FE2: C9 08                                  ..           :22E2[4]
    BCS C2326                                                         ; 2FE4: B0 40                                  .@           :22E4[4]
    LDA L0087                                                         ; 2FE6: A5 87                                  ..           :22E6[4]
    CMP L0021                                                         ; 2FE8: C5 21                                  .!           :22E8[4]
    BNE C22F5                                                         ; 2FEA: D0 09                                  ..           :22EA[4]
    LDA L0020                                                         ; 2FEC: A5 20                                  .            :22EC[4]
    SEC                                                               ; 2FEE: 38                                     8            :22EE[4]
    SBC L0086                                                         ; 2FEF: E5 86                                  ..           :22EF[4]
    CMP #&F8                                                          ; 2FF1: C9 F8                                  ..           :22F1[4]
    BCS C2326                                                         ; 2FF3: B0 31                                  .1           :22F3[4]
; &2FF5 referenced 1 time by &22EA
.C22F5
    LDA L000F                                                         ; 2FF5: A5 0F                                  ..           :22F5[4]
    LSR A                                                             ; 2FF7: 4A                                     J            :22F7[4]
    LSR A                                                             ; 2FF8: 4A                                     J            :22F8[4]
    BCC C2326                                                         ; 2FF9: 90 2B                                  .+           :22F9[4]
    JSR C1F08                                                         ; 2FFB: 20 08 1F                                ..          :22FB[4]
; &2FFE referenced 2 times by &22D5, &22E0
.C22FE
    DEC L0090                                                         ; 2FFE: C6 90                                  ..           :22FE[4]
    BNE C232C                                                         ; 3000: D0 2A                                  .*           :2300[4]
; &3002 referenced 1 time by &22D2
.C2302
    CMP #2                                                            ; 3002: C9 02                                  ..           :2302[4]
    BNE C2314                                                         ; 3004: D0 0E                                  ..           :2304[4]
    PLA                                                               ; 3006: 68                                     h            :2306[4]
    BNE C230E                                                         ; 3007: D0 05                                  ..           :2307[4]
    JSR sub_C1E8A                                                     ; 3009: 20 8A 1E                                ..          :2309[4]
    BCS C2326                                                         ; 300C: B0 18                                  ..           :230C[4]
; &300E referenced 1 time by &2307
.C230E
    DEC L0093                                                         ; 300E: C6 93                                  ..           :230E[4]
    DEC L0093                                                         ; 3010: C6 93                                  ..           :2310[4]
    BNE C232C                                                         ; 3012: D0 18                                  ..           :2312[4]
; &3014 referenced 1 time by &2304
.C2314
    PLA                                                               ; 3014: 68                                     h            :2314[4]
    BNE C231C                                                         ; 3015: D0 05                                  ..           :2315[4]
    JSR sub_C1E66                                                     ; 3017: 20 66 1E                                f.          :2317[4]
    BCS C2326                                                         ; 301A: B0 0A                                  ..           :231A[4]
; &301C referenced 1 time by &2315
.C231C
    INC L0093                                                         ; 301C: E6 93                                  ..           :231C[4]
    INC L0093                                                         ; 301E: E6 93                                  ..           :231E[4]
    LDA L0093                                                         ; 3020: A5 93                                  ..           :2320[4]
    CMP #&15                                                          ; 3022: C9 15                                  ..           :2322[4]
    BNE C232C                                                         ; 3024: D0 06                                  ..           :2324[4]
; &3026 referenced 10 times by &22AA, &22B2, &22C1, &22C7, &22DC, &22E4, &22F3, &22F9, &230C, &231A
.C2326
    LDA L0096                                                         ; 3026: A5 96                                  ..           :2326[4]
    ORA #&10                                                          ; 3028: 09 10                                  ..           :2328[4]
    STA L0096                                                         ; 302A: 85 96                                  ..           :232A[4]
; &302C referenced 4 times by &22CE, &2300, &2312, &2324
.C232C
    LDA L0098                                                         ; 302C: A5 98                                  ..           :232C[4]
    BNE C2344                                                         ; 302E: D0 14                                  ..           :232E[4]
    JSR sub_C25E5                                                     ; 3030: 20 E5 25                                .%          :2330[4]
    LSR A                                                             ; 3033: 4A                                     J            :2333[4]
    BNE C2344                                                         ; 3034: D0 0E                                  ..           :2334[4]
    LDX #&40 ; '@'                                                    ; 3036: A2 40                                  .@           :2336[4]
    LDA L0096                                                         ; 3038: A5 96                                  ..           :2338[4]
    AND #&10                                                          ; 303A: 29 10                                  ).           :233A[4]
    BEQ C233F                                                         ; 303C: F0 01                                  ..           :233C[4]
    INX                                                               ; 303E: E8                                     .            :233E[4]
; &303F referenced 1 time by &233C
.C233F
    TXA                                                               ; 303F: 8A                                     .            :233F[4]
    EOR L0096                                                         ; 3040: 45 96                                  E.           :2340[4]
    STA L0096                                                         ; 3042: 85 96                                  ..           :2342[4]
; &3044 referenced 2 times by &232E, &2334
.C2344
    JSR sub_C2441                                                     ; 3044: 20 41 24                                A$          :2344[4]
; &3047 referenced 1 time by &2070
.C2347
    LDX L0009                                                         ; 3047: A6 09                                  ..           :2347[4]
    BNE C234E                                                         ; 3049: D0 03                                  ..           :2349[4]
    JMP C23EB                                                         ; 304B: 4C EB 23                               L.#          :234B[4]

; &304E referenced 2 times by &2349, &23E8
.C234E
    TXA                                                               ; 304E: 8A                                     .            :234E[4]
    PHA                                                               ; 304F: 48                                     H            :234F[4]
    LDA L0096                                                         ; 3050: A5 96                                  ..           :2350[4]
    AND #8                                                            ; 3052: 29 08                                  ).           :2352[4]
    BEQ C238D                                                         ; 3054: F0 37                                  .7           :2354[4]
    LDA L061F,X                                                       ; 3056: BD 1F 06                               ...          :2356[4]
    AND #&C0                                                          ; 3059: 29 C0                                  ).           :2359[4]
    CMP #&C0                                                          ; 305B: C9 C0                                  ..           :235B[4]
    BEQ C238D                                                         ; 305D: F0 2E                                  ..           :235D[4]
    LDA L08AF,X                                                       ; 305F: BD AF 08                               ...          :235F[4]
    SEC                                                               ; 3062: 38                                     8            :2362[4]
    SBC L0090                                                         ; 3063: E5 90                                  ..           :2363[4]
    CMP #4                                                            ; 3065: C9 04                                  ..           :2365[4]
    BCC C236D                                                         ; 3067: 90 04                                  ..           :2367[4]
    CMP #&FD                                                          ; 3069: C9 FD                                  ..           :2369[4]
    BCC C238D                                                         ; 306B: 90 20                                  .            :236B[4]
; &306D referenced 1 time by &2367
.C236D
    LDA L060F,X                                                       ; 306D: BD 0F 06                               ...          :236D[4]
    SEC                                                               ; 3070: 38                                     8            :2370[4]
    SBC L0093                                                         ; 3071: E5 93                                  ..           :2371[4]
    CMP #4                                                            ; 3073: C9 04                                  ..           :2373[4]
    BCC C237B                                                         ; 3075: 90 04                                  ..           :2375[4]
    CMP #&FD                                                          ; 3077: C9 FD                                  ..           :2377[4]
    BCC C238D                                                         ; 3079: 90 12                                  ..           :2379[4]
; &307B referenced 1 time by &2375
.C237B
    LDA #&20 ; ' '                                                    ; 307B: A9 20                                  .            :237B[4]
    STA L061F,X                                                       ; 307D: 9D 1F 06                               ...          :237D[4]
    JSR sub_C2441                                                     ; 3080: 20 41 24                                A$          :2380[4]
    LDA #&2F ; '/'                                                    ; 3083: A9 2F                                  ./           :2383[4]
    STA L0099                                                         ; 3085: 85 99                                  ..           :2385[4]
    JSR sub_C2441                                                     ; 3087: 20 41 24                                A$          :2387[4]
    JMP C23E3                                                         ; 308A: 4C E3 23                               L.#          :238A[4]

; &308D referenced 4 times by &2354, &235D, &236B, &2379
.C238D
    LDA L0096                                                         ; 308D: A5 96                                  ..           :238D[4]
    AND #&0B                                                          ; 308F: 29 0B                                  ).           :238F[4]
    CMP #&0A                                                          ; 3091: C9 0A                                  ..           :2391[4]
    BEQ C23E3                                                         ; 3093: F0 4E                                  .N           :2393[4]
    LDA L061F,X                                                       ; 3095: BD 1F 06                               ...          :2395[4]
    AND #&C0                                                          ; 3098: 29 C0                                  ).           :2398[4]
    CMP #&80                                                          ; 309A: C9 80                                  ..           :239A[4]
    BNE C23E3                                                         ; 309C: D0 45                                  .E           :239C[4]
    LDA L0093                                                         ; 309E: A5 93                                  ..           :239E[4]
    SEC                                                               ; 30A0: 38                                     8            :23A0[4]
    SBC L060F,X                                                       ; 30A1: FD 0F 06                               ...          :23A1[4]
    CMP #7                                                            ; 30A4: C9 07                                  ..           :23A4[4]
    BCS C23E3                                                         ; 30A6: B0 3B                                  .;           :23A6[4]
    LDA L0090                                                         ; 30A8: A5 90                                  ..           :23A8[4]
    SBC L08AF,X                                                       ; 30AA: FD AF 08                               ...          :23AA[4]
    CMP #&FA                                                          ; 30AD: C9 FA                                  ..           :23AD[4]
    BCS C23B5                                                         ; 30AF: B0 04                                  ..           :23AF[4]
    CMP #8                                                            ; 30B1: C9 08                                  ..           :23B1[4]
    BCS C23E3                                                         ; 30B3: B0 2E                                  ..           :23B3[4]
; &30B5 referenced 1 time by &23AF
.C23B5
    JSR sub_C2441                                                     ; 30B5: 20 41 24                                A$          :23B5[4]
    JSR C24BF                                                         ; 30B8: 20 BF 24                                .$          :23B8[4]
    LDA L0096                                                         ; 30BB: A5 96                                  ..           :23BB[4]
    ORA #&80                                                          ; 30BD: 09 80                                  ..           :23BD[4]
    STA L0096                                                         ; 30BF: 85 96                                  ..           :23BF[4]
    AND #8                                                            ; 30C1: 29 08                                  ).           :23C1[4]
    ASL A                                                             ; 30C3: 0A                                     .            :23C3[4]
    ASL A                                                             ; 30C4: 0A                                     .            :23C4[4]
    ORA #&50 ; 'P'                                                    ; 30C5: 09 50                                  .P           :23C5[4]
    STA zero_page_84_source_spriteaddr                                ; 30C7: 85 84                                  ..           :23C7[4]
    LDA #4                                                            ; 30C9: A9 04                                  ..           :23C9[4]
    STA zero_page_85_source_spriteaddr                                ; 30CB: 85 85                                  ..           :23CB[4]
    ASL A                                                             ; 30CD: 0A                                     .            :23CD[4]
    STA L0018                                                         ; 30CE: 85 18                                  ..           :23CE[4]
    LDA L0090                                                         ; 30D0: A5 90                                  ..           :23D0[4]
    LSR A                                                             ; 30D2: 4A                                     J            :23D2[4]
    TAX                                                               ; 30D3: AA                                     .            :23D3[4]
    LDA L0093                                                         ; 30D4: A5 93                                  ..           :23D4[4]
    CLC                                                               ; 30D6: 18                                     .            :23D6[4]
    ADC #8                                                            ; 30D7: 69 08                                  i.           :23D7[4]
    TAY                                                               ; 30D9: A8                                     .            :23D9[4]
    JSR C0A84                                                         ; 30DA: 20 84 0A                                ..          :23DA[4]
    JSR store_x18_to_0017_and_x10_to_0018                             ; 30DD: 20 50 26                                P&          :23DD[4]
    PLA                                                               ; 30E0: 68                                     h            :23E0[4]
    BNE C23EB                                                         ; 30E1: D0 08                                  ..           :23E1[4]
; &30E3 referenced 5 times by &238A, &2393, &239C, &23A6, &23B3
.C23E3
    PLA                                                               ; 30E3: 68                                     h            :23E3[4]
    TAX                                                               ; 30E4: AA                                     .            :23E4[4]
    DEX                                                               ; 30E5: CA                                     .            :23E5[4]
    BEQ C23EB                                                         ; 30E6: F0 03                                  ..           :23E6[4]
    JMP C234E                                                         ; 30E8: 4C 4E 23                               LN#          :23E8[4]

; &30EB referenced 4 times by &20CE, &234B, &23E1, &23E6
.C23EB
    LDA L0020                                                         ; 30EB: A5 20                                  .            :23EB[4]
    SEC                                                               ; 30ED: 38                                     8            :23ED[4]
    SBC L0090                                                         ; 30EE: E5 90                                  ..           :23EE[4]
    CMP #4                                                            ; 30F0: C9 04                                  ..           :23F0[4]
; &30F1 referenced 1 time by &1AD4
    BCC C23F8                                                         ; 30F2: 90 04                                  ..           :23F2[4]
    CMP #&FD                                                          ; 30F4: C9 FD                                  ..           :23F4[4]
    BCC C2407                                                         ; 30F6: 90 0F                                  ..           :23F6[4]
; &30F8 referenced 1 time by &23F2
.C23F8
    LDA L0021                                                         ; 30F8: A5 21                                  .!           :23F8[4]
    SEC                                                               ; 30FA: 38                                     8            :23FA[4]
    SBC L0093                                                         ; 30FB: E5 93                                  ..           :23FB[4]
    CMP #&0C                                                          ; 30FD: C9 0C                                  ..           :23FD[4]
    BCC C2405                                                         ; 30FF: 90 04                                  ..           :23FF[4]
    CMP #&F5                                                          ; 3101: C9 F5                                  ..           :2401[4]
    BCC C2407                                                         ; 3103: 90 02                                  ..           :2403[4]
; &3105 referenced 1 time by &23FF
.C2405
    INC L0027                                                         ; 3105: E6 27                                  .'           :2405[4]
; &3107 referenced 3 times by &205F, &23F6, &2403
.C2407
    PLA                                                               ; 3107: 68                                     h            :2407[4]
    TAX                                                               ; 3108: AA                                     .            :2408[4]
    LDA L0090                                                         ; 3109: A5 90                                  ..           :2409[4]
    STA L087F,X                                                       ; 310B: 9D 7F 08                               ...          :240B[4]
    LDA L0093                                                         ; 310E: A5 93                                  ..           :240E[4]
    STA L088F,X                                                       ; 3110: 9D 8F 08                               ...          :2410[4]
    LDA L0096                                                         ; 3113: A5 96                                  ..           :2413[4]
    STA L089F,X                                                       ; 3115: 9D 9F 08                               ...          :2415[4]
    LDA L0099                                                         ; 3118: A5 99                                  ..           :2418[4]
    STA L0100,X                                                       ; 311A: 9D 00 01                               ...          :241A[4]
; &311D referenced 1 time by &20AF
.C241D
    DEX                                                               ; 311D: CA                                     .            :241D[4]
    BEQ C2423                                                         ; 311E: F0 03                                  ..           :241E[4]
    JMP C2056                                                         ; 3120: 4C 56 20                               LV           :2420[4]

; &3123 referenced 1 time by &241E
.C2423
    RTS                                                               ; 3123: 60                                     `            :2423[4]

; &3124 referenced 3 times by &2018, &2095, &2490
.sub_C2424
    STX L0090                                                         ; 3124: 86 90                                  ..           :2424[4]
    STY L0093                                                         ; 3126: 84 93                                  ..           :2426[4]
    STA L0096                                                         ; 3128: 85 96                                  ..           :2428[4]
    LDX L0013                                                         ; 312A: A6 13                                  ..           :242A[4]
    INC L0013                                                         ; 312C: E6 13                                  ..           :242C[4]
    STA L08A0,X                                                       ; 312E: 9D A0 08                               ...          :242E[4]
    TYA                                                               ; 3131: 98                                     .            :2431[4]
    STA L0890,X                                                       ; 3132: 9D 90 08                               ...          :2432[4]
    LDA L0090                                                         ; 3135: A5 90                                  ..           :2435[4]
    STA L0880,X                                                       ; 3137: 9D 80 08                               ...          :2437[4]
    LDA #0                                                            ; 313A: A9 00                                  ..           :243A[4]
    STA L0101,X                                                       ; 313C: 9D 01 01                               ...          :243C[4]
    STA L0099                                                         ; 313F: 85 99                                  ..           :243F[4]
; &3141 referenced 13 times by &11F0, &13E3, &13E8, &146E, &1473, &20C6, &20CB, &2153, &2344, &2380, &2387, &23B5, &24B3
.sub_C2441
    LDA L0090                                                         ; 3141: A5 90                                  ..           :2441[4]
    LSR A                                                             ; 3143: 4A                                     J            :2443[4]
    TAX                                                               ; 3144: AA                                     .            :2444[4]
    LDA L0096                                                         ; 3145: A5 96                                  ..           :2445[4]
    AND #8                                                            ; 3147: 29 08                                  ).           :2447[4]
    BEQ C2458                                                         ; 3149: F0 0D                                  ..           :2449[4]
    LDA L0099                                                         ; 314B: A5 99                                  ..           :244B[4]
    BEQ C2458                                                         ; 314D: F0 09                                  ..           :244D[4]
    AND #8                                                            ; 314F: 29 08                                  ).           :244F[4]
    LSR A                                                             ; 3151: 4A                                     J            :2451[4]
    LSR A                                                             ; 3152: 4A                                     J            :2452[4]
    LSR A                                                             ; 3153: 4A                                     J            :2453[4]
    ORA #4                                                            ; 3154: 09 04                                  ..           :2454[4]
    BNE C2477                                                         ; 3156: D0 1F                                  ..           :2456[4]
; &3158 referenced 2 times by &2449, &244D
.C2458
    LDA L0096                                                         ; 3158: A5 96                                  ..           :2458[4]
    AND #3                                                            ; 315A: 29 03                                  ).           :245A[4]
    STA zero_page_80_dest_screenaddr                                  ; 315C: 85 80                                  ..           :245C[4]
    LDA L0096                                                         ; 315E: A5 96                                  ..           :245E[4]
    AND #&0C                                                          ; 3160: 29 0C                                  ).           :2460[4]
    CMP #8                                                            ; 3162: C9 08                                  ..           :2462[4]
    BEQ C2496                                                         ; 3164: F0 30                                  .0           :2464[4]
    TAY                                                               ; 3166: A8                                     .            :2466[4]
    LDA #&10                                                          ; 3167: A9 10                                  ..           :2467[4]
    CPY #&0C                                                          ; 3169: C0 0C                                  ..           :2469[4]
    BEQ C2475                                                         ; 316B: F0 08                                  ..           :246B[4]
    LDA #&18                                                          ; 316D: A9 18                                  ..           :246D[4]
    CPY #4                                                            ; 316F: C0 04                                  ..           :246F[4]
    BNE C2475                                                         ; 3171: D0 02                                  ..           :2471[4]
    LDA #&14                                                          ; 3173: A9 14                                  ..           :2473[4]
; &3175 referenced 2 times by &246B, &2471
.C2475
    ORA zero_page_80_dest_screenaddr                                  ; 3175: 05 80                                  ..           :2475[4]
; &3177 referenced 2 times by &2456, &24AE
.C2477
    LDY L0093                                                         ; 3177: A4 93                                  ..           :2477[4]
    JMP write_sprite_to_screen_routine                                ; 3179: 4C 73 0A                               Ls.          :2479[4]

; &317C referenced 2 times by &129D, &202A
.sub_C247C
    LDA L0016                                                         ; 317C: A5 16                                  ..           :247C[4]
    BMI C24EC                                                         ; 317E: 30 6C                                  0l           :247E[4]
    ORA #&80                                                          ; 3180: 09 80                                  ..           :2480[4]
    STA L0016                                                         ; 3182: 85 16                                  ..           :2482[4]
    AND #7                                                            ; 3184: 29 07                                  ).           :2484[4]
    ASL A                                                             ; 3186: 0A                                     .            :2486[4]
    ASL A                                                             ; 3187: 0A                                     .            :2487[4]
    ASL A                                                             ; 3188: 0A                                     .            :2488[4]
    ADC #&3C ; '<'                                                    ; 3189: 69 3C                                  i<           :2489[4]
    TAX                                                               ; 318B: AA                                     .            :248B[4]
    LDY #3                                                            ; 318C: A0 03                                  ..           :248C[4]
    LDA #&0B                                                          ; 318E: A9 0B                                  ..           :248E[4]
    JSR sub_C2424                                                     ; 3190: 20 24 24                                $$          :2490[4]
    DEY                                                               ; 3193: 88                                     .            :2493[4]
    STY L0093                                                         ; 3194: 84 93                                  ..           :2494[4]
; &3196 referenced 1 time by &2464
.C2496
    LDA #&3C ; '<'                                                    ; 3196: A9 3C                                  .<           :2496[4]
    BIT L0016                                                         ; 3198: 24 16                                  $.           :2498[4]
    BVS C249E                                                         ; 319A: 70 02                                  p.           :249A[4]
    LDA #&3F ; '?'                                                    ; 319C: A9 3F                                  .?           :249C[4]
; &319E referenced 1 time by &249A
.C249E
    STA L0097                                                         ; 319E: 85 97                                  ..           :249E[4]
    INX                                                               ; 31A0: E8                                     .            :24A0[4]
    LDY L0093                                                         ; 31A1: A4 93                                  ..           :24A1[4]
    INY                                                               ; 31A3: C8                                     .            :24A3[4]
    INY                                                               ; 31A4: C8                                     .            :24A4[4]
    INY                                                               ; 31A5: C8                                     .            :24A5[4]
    LDA L0016                                                         ; 31A6: A5 16                                  ..           :24A6[4]
    JSR C0B4F                                                         ; 31A8: 20 4F 0B                                O.          :24A8[4]
    DEX                                                               ; 31AB: CA                                     .            :24AB[4]
    LDA #3                                                            ; 31AC: A9 03                                  ..           :24AC[4]
    BNE C2477                                                         ; 31AE: D0 C7                                  ..           :24AE[4]
; &31B0 referenced 2 times by &1783, &20AA
.sub_C24B0
    JSR sub_C2533                                                     ; 31B0: 20 33 25                                3%          :24B0[4]
    JSR sub_C2441                                                     ; 31B3: 20 41 24                                A$          :24B3[4]
    LDA L0096                                                         ; 31B6: A5 96                                  ..           :24B6[4]
    AND #8                                                            ; 31B8: 29 08                                  ).           :24B8[4]
    BEQ C24BF                                                         ; 31BA: F0 03                                  ..           :24BA[4]
    JSR sub_C251A                                                     ; 31BC: 20 1A 25                                .%          :24BC[4]
; &31BF referenced 2 times by &23B8, &24BA
.C24BF
    LDA L0096                                                         ; 31BF: A5 96                                  ..           :24BF[4]
    AND #&0C                                                          ; 31C1: 29 0C                                  ).           :24C1[4]
    CMP #8                                                            ; 31C3: C9 08                                  ..           :24C3[4]
    BEQ C24ED                                                         ; 31C5: F0 26                                  .&           :24C5[4]
    BCC C24E2                                                         ; 31C7: 90 19                                  ..           :24C7[4]
    DEC L001E                                                         ; 31C9: C6 1E                                  ..           :24C9[4]
    BNE C24EC                                                         ; 31CB: D0 1F                                  ..           :24CB[4]
; &31CD referenced 1 time by &2517
.C24CD
    LDA L0608                                                         ; 31CD: AD 08 06                               ...          :24CD[4]
    STA video_ula_palette                                             ; 31D0: 8D 21 FE                               .!.          :24D0[4]
    LDA L060C                                                         ; 31D3: AD 0C 06                               ...          :24D3[4]
    STA video_ula_palette                                             ; 31D6: 8D 21 FE                               .!.          :24D6[4]
    LDA #&FD                                                          ; 31D9: A9 FD                                  ..           :24D9[4]
    STA L0014                                                         ; 31DB: 85 14                                  ..           :24DB[4]
    INC L0002                                                         ; 31DD: E6 02                                  ..           :24DD[4]
    JMP C259E                                                         ; 31DF: 4C 9E 25                               L.%          :24DF[4]

; &31E2 referenced 1 time by &24C7
.C24E2
    DEC L001D                                                         ; 31E2: C6 1D                                  ..           :24E2[4]
    LDA L001D                                                         ; 31E4: A5 1D                                  ..           :24E4[4]
    CMP #2                                                            ; 31E6: C9 02                                  ..           :24E6[4]
    BCS C24EC                                                         ; 31E8: B0 02                                  ..           :24E8[4]
    INC L0002                                                         ; 31EA: E6 02                                  ..           :24EA[4]
; &31EC referenced 3 times by &247E, &24CB, &24E8
.C24EC
    RTS                                                               ; 31EC: 60                                     `            :24EC[4]

; &31ED referenced 1 time by &24C5
.C24ED
    LDA L0016                                                         ; 31ED: A5 16                                  ..           :24ED[4]
    AND #7                                                            ; 31EF: 29 07                                  ).           :24EF[4]
    STA L0016                                                         ; 31F1: 85 16                                  ..           :24F1[4]
    TAX                                                               ; 31F3: AA                                     .            :24F3[4]
    LDA #&20 ; ' '                                                    ; 31F4: A9 20                                  .            :24F4[4]
; &31F6 referenced 1 time by &24F8
.loop_C24F6
    LSR A                                                             ; 31F6: 4A                                     J            :24F6[4]
    DEX                                                               ; 31F7: CA                                     .            :24F7[4]
    BPL loop_C24F6                                                    ; 31F8: 10 FC                                  ..           :24F8[4]
    ORA zp1F_extra_bitmap                                             ; 31FA: 05 1F                                  ..           :24FA[4]
    STA zp1F_extra_bitmap                                             ; 31FC: 85 1F                                  ..           :24FC[4]
    LDA L0016                                                         ; 31FE: A5 16                                  ..           :24FE[4]
    ASL A                                                             ; 3200: 0A                                     .            :2500[4]
    ASL A                                                             ; 3201: 0A                                     .            :2501[4]
    ADC #&1F                                                          ; 3202: 69 1F                                  i.           :2502[4]
    TAX                                                               ; 3204: AA                                     .            :2504[4]
    LDY #5                                                            ; 3205: A0 05                                  ..           :2505[4]
    LDA #&0C                                                          ; 3207: A9 0C                                  ..           :2507[4]
    STA L0097                                                         ; 3209: 85 97                                  ..           :2509[4]
    LDA L0016                                                         ; 320B: A5 16                                  ..           :250B[4]
    JSR C0B4F                                                         ; 320D: 20 4F 0B                                O.          :250D[4]
    JSR sub_C26E8                                                     ; 3210: 20 E8 26                                .&          :2510[4]
    BIT L0014                                                         ; 3213: 24 14                                  $.           :2513[4]
    BVS C2519                                                         ; 3215: 70 02                                  p.           :2515[4]
    BMI C24CD                                                         ; 3217: 30 B4                                  0.           :2517[4]
; &3219 referenced 1 time by &2515
.C2519
    RTS                                                               ; 3219: 60                                     `            :2519[4]

; &321A referenced 1 time by &24BC
.sub_C251A
    JSR sub_C1E0B                                                     ; 321A: 20 0B 1E                                ..          :251A[4]
    STX zero_page_80_dest_screenaddr                                  ; 321D: 86 80                                  ..           :251D[4]
    LDX L0009                                                         ; 321F: A6 09                                  ..           :251F[4]
    LDA zero_page_80_dest_screenaddr                                  ; 3221: A5 80                                  ..           :2521[4]
    ASL A                                                             ; 3223: 0A                                     .            :2523[4]
    STA L08B0,X                                                       ; 3224: 9D B0 08                               ...          :2524[4]
    TYA                                                               ; 3227: 98                                     .            :2527[4]
    STA L0610,X                                                       ; 3228: 9D 10 06                               ...          :2528[4]
    LDA #0                                                            ; 322B: A9 00                                  ..           :252B[4]
    STA L0620,X                                                       ; 322D: 9D 20 06                               . .          :252D[4]
    INC L0009                                                         ; 3230: E6 09                                  ..           :2530[4]
    RTS                                                               ; 3232: 60                                     `            :2532[4]

; &3233 referenced 2 times by &1D37, &24B0
.sub_C2533
    LDY L0013                                                         ; 3233: A4 13                                  ..           :2533[4]
    LDA L087F,Y                                                       ; 3235: B9 7F 08                               ...          :2535[4]
    STA L087F,X                                                       ; 3238: 9D 7F 08                               ...          :2538[4]
    LDA L088F,Y                                                       ; 323B: B9 8F 08                               ...          :253B[4]
    STA L088F,X                                                       ; 323E: 9D 8F 08                               ...          :253E[4]
    LDA L089F,Y                                                       ; 3241: B9 9F 08                               ...          :2541[4]
    STA L089F,X                                                       ; 3244: 9D 9F 08                               ...          :2544[4]
    LDA L0100,Y                                                       ; 3247: B9 00 01                               ...          :2547[4]
    STA L0100,X                                                       ; 324A: 9D 00 01                               ...          :254A[4]
    DEC L0013                                                         ; 324D: C6 13                                  ..           :254D[4]
    RTS                                                               ; 324F: 60                                     `            :254F[4]

; &3250 referenced 2 times by &175D, &2565
.sub_C2550
    LDA L087F,X                                                       ; 3250: BD 7F 08                               ...          :2550[4]
    STA L0090                                                         ; 3253: 85 90                                  ..           :2553[4]
    LDA L088F,X                                                       ; 3255: BD 8F 08                               ...          :2555[4]
    STA L0093                                                         ; 3258: 85 93                                  ..           :2558[4]
    LDA L089F,X                                                       ; 325A: BD 9F 08                               ...          :255A[4]
    STA L0096                                                         ; 325D: 85 96                                  ..           :255D[4]
    LDA L0100,X                                                       ; 325F: BD 00 01                               ...          :255F[4]
    STA L0099                                                         ; 3262: 85 99                                  ..           :2562[4]
    RTS                                                               ; 3264: 60                                     `            :2564[4]

; &3265 referenced 4 times by &11ED, &13D2, &145D, &2058
.sub_C2565
    JSR sub_C2550                                                     ; 3265: 20 50 25                                P%          :2565[4]
; &3268 referenced 2 times by &12D1, &1C03
.sub_C2568
    LDA #&FF                                                          ; 3268: A9 FF                                  ..           :2568[4]
    STA L0091                                                         ; 326A: 85 91                                  ..           :256A[4]
    STA L0094                                                         ; 326C: 85 94                                  ..           :256C[4]
    LDA L0090                                                         ; 326E: A5 90                                  ..           :256E[4]
    SEC                                                               ; 3270: 38                                     8            :2570[4]
    SBC #&14                                                          ; 3271: E9 14                                  ..           :2571[4]
; &3273 referenced 1 time by &2577
.loop_C2573
    INC L0091                                                         ; 3273: E6 91                                  ..           :2573[4]
    SBC #&0A                                                          ; 3275: E9 0A                                  ..           :2575[4]
    BCS loop_C2573                                                    ; 3277: B0 FA                                  ..           :2577[4]
    ADC #&0A                                                          ; 3279: 69 0A                                  i.           :2579[4]
    STA L0092                                                         ; 327B: 85 92                                  ..           :257B[4]
    LDA L0093                                                         ; 327D: A5 93                                  ..           :257D[4]
    SEC                                                               ; 327F: 38                                     8            :257F[4]
    SBC #3                                                            ; 3280: E9 03                                  ..           :2580[4]
; &3282 referenced 1 time by &2586
.loop_C2582
    INC L0094                                                         ; 3282: E6 94                                  ..           :2582[4]
    SBC #&12                                                          ; 3284: E9 12                                  ..           :2584[4]
    BCS loop_C2582                                                    ; 3286: B0 FA                                  ..           :2586[4]
    ADC #&12                                                          ; 3288: 69 12                                  i.           :2588[4]
    STA L0095                                                         ; 328A: 85 95                                  ..           :258A[4]
    LDA L0094                                                         ; 328C: A5 94                                  ..           :258C[4]
    ASL A                                                             ; 328E: 0A                                     .            :258E[4]
    ASL A                                                             ; 328F: 0A                                     .            :258F[4]
    ASL A                                                             ; 3290: 0A                                     .            :2590[4]
    ASL A                                                             ; 3291: 0A                                     .            :2591[4]
    ORA L0091                                                         ; 3292: 05 91                                  ..           :2592[4]
    TAY                                                               ; 3294: A8                                     .            :2594[4]
    RTS                                                               ; 3295: 60                                     `            :2595[4]

; &3296 referenced 1 time by &1D76
.sub_C2596
    LDA L000C                                                         ; 3296: A5 0C                                  ..           :2596[4]
    BEQ C25CA                                                         ; 3298: F0 30                                  .0           :2598[4]
    CMP #&55 ; 'U'                                                    ; 329A: C9 55                                  .U           :259A[4]
    BCS C25CA                                                         ; 329C: B0 2C                                  .,           :259C[4]
; &329E referenced 1 time by &24DF
.C259E
    LDA #1                                                            ; 329E: A9 01                                  ..           :259E[4]
    STA L000B                                                         ; 32A0: 85 0B                                  ..           :25A0[4]
    LDA L001D                                                         ; 32A2: A5 1D                                  ..           :25A2[4]
    CMP #2                                                            ; 32A4: C9 02                                  ..           :25A4[4]
    BCC C25AE                                                         ; 32A6: 90 06                                  ..           :25A6[4]
    LDA L0013                                                         ; 32A8: A5 13                                  ..           :25A8[4]
    CMP #4                                                            ; 32AA: C9 04                                  ..           :25AA[4]
    BCC C25B0                                                         ; 32AC: 90 02                                  ..           :25AC[4]
; &32AE referenced 1 time by &25A6
.C25AE
    DEC L000B                                                         ; 32AE: C6 0B                                  ..           :25AE[4]
; &32B0 referenced 1 time by &25AC
.C25B0
    LDA #&39 ; '9'                                                    ; 32B0: A9 39                                  .9           :25B0[4]
; &32B2 referenced 4 times by &111B, &1131, &12A2, &1612
.sub_C25B2
    STA L000C                                                         ; 32B2: 85 0C                                  ..           :25B2[4]
    TXA                                                               ; 32B4: 8A                                     .            :25B4[4]
    PHA                                                               ; 32B5: 48                                     H            :25B5[4]
; &32B6 referenced 1 time by &25C2
.loop_C25B6
    INC zp70_sound_amplitude                                          ; 32B6: E6 70                                  .p           :25B6[4]
    LDA #0                                                            ; 32B8: A9 00                                  ..           :25B8[4]
    TAY                                                               ; 32BA: A8                                     .            :25BA[4]
    JSR compile_sound_data_at_zp70                                    ; 32BB: 20 9C 0B                                ..          :25BB[4]
    LDA zp70_sound_amplitude                                          ; 32BE: A5 70                                  .p           :25BE[4]
    CMP #&13                                                          ; 32C0: C9 13                                  ..           :25C0[4]
    BNE loop_C25B6                                                    ; 32C2: D0 F2                                  ..           :25C2[4]
    LDA #&11                                                          ; 32C4: A9 11                                  ..           :25C4[4]
    STA zp70_sound_amplitude                                          ; 32C6: 85 70                                  .p           :25C6[4]
    PLA                                                               ; 32C8: 68                                     h            :25C8[4]
    TAX                                                               ; 32C9: AA                                     .            :25C9[4]
; &32CA referenced 2 times by &2598, &259C
.C25CA
    RTS                                                               ; 32CA: 60                                     `            :25CA[4]

; &32CB referenced 4 times by &116E, &1BE8, &1BEF, &1CB4
.sub_C25CB
    LSR L0018                                                         ; 32CB: 46 18                                  F.           :25CB[4]
    LDA #5                                                            ; 32CD: A9 05                                  ..           :25CD[4]
    STA zero_page_85_source_spriteaddr                                ; 32CF: 85 85                                  ..           :25CF[4]
    LDA #&B0                                                          ; 32D1: A9 B0                                  ..           :25D1[4]
    STA zero_page_84_source_spriteaddr                                ; 32D3: 85 84                                  ..           :25D3[4]
    LDA L0021                                                         ; 32D5: A5 21                                  .!           :25D5[4]
    CLC                                                               ; 32D7: 18                                     .            :25D7[4]
    ADC #6                                                            ; 32D8: 69 06                                  i.           :25D8[4]
    TAY                                                               ; 32DA: A8                                     .            :25DA[4]
    LDA L0020                                                         ; 32DB: A5 20                                  .            :25DB[4]
    LSR A                                                             ; 32DD: 4A                                     J            :25DD[4]
    TAX                                                               ; 32DE: AA                                     .            :25DE[4]
    JSR C0A84                                                         ; 32DF: 20 84 0A                                ..          :25DF[4]
    JMP store_x18_to_0017_and_x10_to_0018                             ; 32E2: 4C 50 26                               LP&          :25E2[4]

; &32E5 referenced 9 times by &1031, &1050, &1681, &1FE4, &2031, &2202, &2228, &223E, &2330
.sub_C25E5
    TYA                                                               ; 32E5: 98                                     .            :25E5[4]
    PHA                                                               ; 32E6: 48                                     H            :25E6[4]
    LDY #8                                                            ; 32E7: A0 08                                  ..           :25E7[4]
; &32E9 referenced 1 time by &25FC
.loop_C25E9
    LDA L002C                                                         ; 32E9: A5 2C                                  .,           :25E9[4]
    LSR A                                                             ; 32EB: 4A                                     J            :25EB[4]
    LSR A                                                             ; 32EC: 4A                                     J            :25EC[4]
    LSR A                                                             ; 32ED: 4A                                     J            :25ED[4]
    EOR L002E                                                         ; 32EE: 45 2E                                  E.           :25EE[4]
    ROR A                                                             ; 32F0: 6A                                     j            :25F0[4]
    ROL L002A                                                         ; 32F1: 26 2A                                  &*           :25F1[4]
    ROL L002B                                                         ; 32F3: 26 2B                                  &+           :25F3[4]
    ROL L002C                                                         ; 32F5: 26 2C                                  &,           :25F5[4]
    ROL L002D                                                         ; 32F7: 26 2D                                  &-           :25F7[4]
    ROL L002E                                                         ; 32F9: 26 2E                                  &.           :25F9[4]
    DEY                                                               ; 32FB: 88                                     .            :25FB[4]
    BNE loop_C25E9                                                    ; 32FC: D0 EB                                  ..           :25FC[4]
    PLA                                                               ; 32FE: 68                                     h            :25FE[4]
    TAY                                                               ; 32FF: A8                                     .            :25FF[4]
    LDA L002A                                                         ; 3300: A5 2A                                  .*           :2600[4]
    RTS                                                               ; 3302: 60                                     `            :2602[4]

; &3303 referenced 4 times by &1290, &1316, &178E, &1D73
.C2603
    STA zero_page_80_dest_screenaddr                                  ; 3303: 85 80                                  ..           :2603[4]
    STX zero_page_81_dest_screenaddr                                  ; 3305: 86 81                                  ..           :2605[4]
    TAX                                                               ; 3307: AA                                     .            :2607[4]
    LDA #0                                                            ; 3308: A9 00                                  ..           :2608[4]
    JSR sub_C0BAD                                                     ; 330A: 20 AD 0B                                ..          :260A[4]
    LDX #3                                                            ; 330D: A2 03                                  ..           :260D[4]
; &330F referenced 1 time by &2614
.loop_C260F
    LDA L003C,X                                                       ; 330F: B5 3C                                  .<           :260F[4]
    BEQ C2617                                                         ; 3311: F0 04                                  ..           :2611[4]
    DEX                                                               ; 3313: CA                                     .            :2613[4]
    BPL loop_C260F                                                    ; 3314: 10 F9                                  ..           :2614[4]
    RTS                                                               ; 3316: 60                                     `            :2616[4]

; &3317 referenced 1 time by &2611
.C2617
    LDA zero_page_80_dest_screenaddr                                  ; 3317: A5 80                                  ..           :2617[4]
    STA L0038,X                                                       ; 3319: 95 38                                  .8           :2619[4]
    TYA                                                               ; 331B: 98                                     .            :261B[4]
    STA L0034,X                                                       ; 331C: 95 34                                  .4           :261C[4]
    LDA zero_page_81_dest_screenaddr                                  ; 331E: A5 81                                  ..           :261E[4]
    STA L0030,X                                                       ; 3320: 95 30                                  .0           :2620[4]
    LDA #&2D ; '-'                                                    ; 3322: A9 2D                                  .-           :2622[4]
    STA L003C,X                                                       ; 3324: 95 3C                                  .<           :2624[4]
    LDX zero_page_81_dest_screenaddr                                  ; 3326: A6 81                                  ..           :2626[4]
    LDA zero_page_80_dest_screenaddr                                  ; 3328: A5 80                                  ..           :2628[4]
; &332A referenced 1 time by &166B
.sub_C262A
    PHA                                                               ; 332A: 48                                     H            :262A[4]
    INY                                                               ; 332B: C8                                     .            :262B[4]
    INY                                                               ; 332C: C8                                     .            :262C[4]
    INY                                                               ; 332D: C8                                     .            :262D[4]
    INY                                                               ; 332E: C8                                     .            :262E[4]
    LDA #8                                                            ; 332F: A9 08                                  ..           :262F[4]
    STA L0017                                                         ; 3331: 85 17                                  ..           :2631[4]
    STA L0018                                                         ; 3333: 85 18                                  ..           :2633[4]
    DEX                                                               ; 3335: CA                                     .            :2635[4]
    PLA                                                               ; 3336: 68                                     h            :2636[4]
    PHA                                                               ; 3337: 48                                     H            :2637[4]
    LSR A                                                             ; 3338: 4A                                     J            :2638[4]
    LSR A                                                             ; 3339: 4A                                     J            :2639[4]
    LSR A                                                             ; 333A: 4A                                     J            :263A[4]
    LSR A                                                             ; 333B: 4A                                     J            :263B[4]
    BEQ C2642                                                         ; 333C: F0 04                                  ..           :263C[4]
    DEX                                                               ; 333E: CA                                     .            :263E[4]
    JSR sub_C265B                                                     ; 333F: 20 5B 26                                [&          :263F[4]
; &3342 referenced 1 time by &263C
.C2642
    PLA                                                               ; 3342: 68                                     h            :2642[4]
    AND #&0F                                                          ; 3343: 29 0F                                  ).           :2643[4]
    JSR sub_C265B                                                     ; 3345: 20 5B 26                                [&          :2645[4]
    JSR sub_C2659                                                     ; 3348: 20 59 26                                Y&          :2648[4]
    LDA #0                                                            ; 334B: A9 00                                  ..           :264B[4]
    JSR sub_C2659                                                     ; 334D: 20 59 26                                Y&          :264D[4]
; &3350 referenced 8 times by &0B77, &0D94, &1BE1, &1D32, &1E2A, &1E4F, &23DD, &25E2
.store_x18_to_0017_and_x10_to_0018
    LDA #&18                                                          ; 3350: A9 18                                  ..           :2650[4]
    STA L0017                                                         ; 3352: 85 17                                  ..           :2652[4]
    LDA #&10                                                          ; 3354: A9 10                                  ..           :2654[4]
    STA L0018                                                         ; 3356: 85 18                                  ..           :2656[4]
    RTS                                                               ; 3358: 60                                     `            :2658[4]

; &3359 referenced 2 times by &2648, &264D
.sub_C2659
    LDA #0                                                            ; 3359: A9 00                                  ..           :2659[4]
; &335B referenced 2 times by &263F, &2645
.sub_C265B
    ASL A                                                             ; 335B: 0A                                     .            :265B[4]
    ASL A                                                             ; 335C: 0A                                     .            :265C[4]
    ASL A                                                             ; 335D: 0A                                     .            :265D[4]
    ASL A                                                             ; 335E: 0A                                     .            :265E[4]
    CLC                                                               ; 335F: 18                                     .            :265F[4]
    ADC #&10                                                          ; 3360: 69 10                                  i.           :2660[4]
    STA zero_page_84_source_spriteaddr                                ; 3362: 85 84                                  ..           :2662[4]
    LDA #5                                                            ; 3364: A9 05                                  ..           :2664[4]
    STA zero_page_85_source_spriteaddr                                ; 3366: 85 85                                  ..           :2666[4]
    JSR C0A84                                                         ; 3368: 20 84 0A                                ..          :2668[4]
    INX                                                               ; 336B: E8                                     .            :266B[4]
    INX                                                               ; 336C: E8                                     .            :266C[4]
    RTS                                                               ; 336D: 60                                     `            :266D[4]

; &336E referenced 3 times by &1569, &1B97, &2695
.sub_C266E
    LDA L0020                                                         ; 336E: A5 20                                  .            :266E[4]
    LSR A                                                             ; 3370: 4A                                     J            :2670[4]
    TAX                                                               ; 3371: AA                                     .            :2671[4]
    INX                                                               ; 3372: E8                                     .            :2672[4]
    INX                                                               ; 3373: E8                                     .            :2673[4]
    LDA L0021                                                         ; 3374: A5 21                                  .!           :2674[4]
    CLC                                                               ; 3376: 18                                     .            :2676[4]
    ADC #8                                                            ; 3377: 69 08                                  i.           :2677[4]
    LDY L0022                                                         ; 3379: A4 22                                  ."           :2679[4]
    BNE C2680                                                         ; 337B: D0 03                                  ..           :267B[4]
    INX                                                               ; 337D: E8                                     .            :267D[4]
    BNE C2693                                                         ; 337E: D0 13                                  ..           :267E[4]
; &3380 referenced 1 time by &267B
.C2680
    DEY                                                               ; 3380: 88                                     .            :2680[4]
    BNE C2688                                                         ; 3381: D0 05                                  ..           :2681[4]
    DEX                                                               ; 3383: CA                                     .            :2683[4]
    DEX                                                               ; 3384: CA                                     .            :2684[4]
    DEX                                                               ; 3385: CA                                     .            :2685[4]
    BNE C2693                                                         ; 3386: D0 0B                                  ..           :2686[4]
; &3388 referenced 1 time by &2681
.C2688
    DEY                                                               ; 3388: 88                                     .            :2688[4]
    BNE C2690                                                         ; 3389: D0 05                                  ..           :2689[4]
    SEC                                                               ; 338B: 38                                     8            :268B[4]
    SBC #9                                                            ; 338C: E9 09                                  ..           :268C[4]
    BNE C2693                                                         ; 338E: D0 03                                  ..           :268E[4]
; &3390 referenced 1 time by &2689
.C2690
    CLC                                                               ; 3390: 18                                     .            :2690[4]
    ADC #6                                                            ; 3391: 69 06                                  i.           :2691[4]
; &3393 referenced 3 times by &267E, &2686, &268E
.C2693
    TAY                                                               ; 3393: A8                                     .            :2693[4]
    RTS                                                               ; 3394: 60                                     `            :2694[4]

; &3395 referenced 4 times by &0A60, &15D3, &16D8, &17B3
.sub_C2695
    JSR sub_C266E                                                     ; 3395: 20 6E 26                                n&          :2695[4]
; &3398 referenced 5 times by &1513, &151F, &152E, &1756, &26DB
.C2698
    JSR calculate_screen_write_address_from_x_y_coords                ; 3398: 20 D3 0A                                ..          :2698[4]
    LDA zero_page_80_dest_screenaddr                                  ; 339B: A5 80                                  ..           :269B[4]
    AND #7                                                            ; 339D: 29 07                                  ).           :269D[4]
    TAY                                                               ; 339F: A8                                     .            :269F[4]
    LDA zero_page_80_dest_screenaddr                                  ; 33A0: A5 80                                  ..           :26A0[4]
    AND #&F8                                                          ; 33A2: 29 F8                                  ).           :26A2[4]
    STA zero_page_80_dest_screenaddr                                  ; 33A4: 85 80                                  ..           :26A4[4]
    JSR sub_C26CA                                                     ; 33A6: 20 CA 26                                .&          :26A6[4]
    JSR sub_C1A3C                                                     ; 33A9: 20 3C 1A                                <.          :26A9[4]
    JSR sub_C26D0                                                     ; 33AC: 20 D0 26                                .&          :26AC[4]
    JSR sub_C1A60                                                     ; 33AF: 20 60 1A                                `.          :26AF[4]
    JSR L26CD                                                         ; 33B2: 20 CD 26                                .&          :26B2[4]
    JSR sub_C1A66                                                     ; 33B5: 20 66 1A                                f.          :26B5[4]
    JSR sub_C1A3C                                                     ; 33B8: 20 3C 1A                                <.          :26B8[4]
    JSR sub_C26D0                                                     ; 33BB: 20 D0 26                                .&          :26BB[4]
    JSR sub_C1A60                                                     ; 33BE: 20 60 1A                                `.          :26BE[4]
    JSR L26CD                                                         ; 33C1: 20 CD 26                                .&          :26C1[4]
    JSR sub_C1A66                                                     ; 33C4: 20 66 1A                                f.          :26C4[4]
    JSR sub_C1A3C                                                     ; 33C7: 20 3C 1A                                <.          :26C7[4]
; &33CA referenced 1 time by &26A6
.sub_C26CA
    LDA #4                                                            ; 33CA: A9 04                                  ..           :26CA[4]
.sub_C26CC
L26CD = sub_C26CC+1
    BIT L08A9                                                         ; 33CC: 2C A9 08                               ,..          :26CC[4]
; overlapping: LDA #8                                                 ; 33CD: A9 08                                  ..           :26CD[4]
; &33CD referenced 2 times by &26B2, &26C1
; overlapping: BIT L0CA9                                              ; 33CF: 2C A9 0C                               ,..          :26CF[4]
    EQUB &2C                                                          ; 33CF: 2C                                     ,            :26CF[4]

; &33D0 referenced 2 times by &26AC, &26BB
.sub_C26D0
    LDA #&0C                                                          ; 33D0: A9 0C                                  ..           :26D0[4]
    EOR (zero_page_80_dest_screenaddr),Y                              ; 33D2: 51 80                                  Q.           :26D2[4]
    STA (zero_page_80_dest_screenaddr),Y                              ; 33D4: 91 80                                  ..           :26D4[4]
    RTS                                                               ; 33D6: 60                                     `            :26D6[4]

; &33D7 referenced 6 times by &11E4, &1570, &1586, &1592, &16E2, &17D9
.C26D7
    LDY L001A                                                         ; 33D7: A4 1A                                  ..           :26D7[4]
    LDX L0019                                                         ; 33D9: A6 19                                  ..           :26D9[4]
    BNE C2698                                                         ; 33DB: D0 BB                                  ..           :26DB[4]
; &33DD referenced 4 times by &0907, &090C, &0911, &0916
.sub_C26DD
    LDX #inkey_key_p                                                  ; 33DD: A2 C8                                  ..           :26DD[4]   ; X=inkey key value
; &33DF referenced 8 times by &1322, &132D, &1365, &136D, &1374, &137E, &1388, &163E
.execute_inkey
    LDY #&FF                                                          ; 33DF: A0 FF                                  ..           :26DF[4]
    LDA #osbyte_inkey                                                 ; 33E1: A9 81                                  ..           :26E1[4]
    JSR osbyte                                                        ; 33E3: 20 F4 FF                                ..          :26E3[4]   ; Is the 'P' key pressed?
    TXA                                                               ; 33E6: 8A                                     .            :26E6[4]   ; X and Y contain &FF if the key is pressed
    RTS                                                               ; 33E7: 60                                     `            :26E7[4]

; &33E8 referenced 4 times by &1028, &11FC, &204A, &2510
.sub_C26E8
    LDA L0016                                                         ; 33E8: A5 16                                  ..           :26E8[4]
    AND #7                                                            ; 33EA: 29 07                                  ).           :26EA[4]
    STA L0016                                                         ; 33EC: 85 16                                  ..           :26EC[4]
    TAX                                                               ; 33EE: AA                                     .            :26EE[4]
    LDA zp1F_extra_bitmap                                             ; 33EF: A5 1F                                  ..           :26EF[4]
    ASL A                                                             ; 33F1: 0A                                     .            :26F1[4]
    ASL A                                                             ; 33F2: 0A                                     .            :26F2[4]
    ASL A                                                             ; 33F3: 0A                                     .            :26F3[4]
; &33F4 referenced 1 time by &26F6
.loop_C26F4
    ASL A                                                             ; 33F4: 0A                                     .            :26F4[4]
    DEX                                                               ; 33F5: CA                                     .            :26F5[4]
    BPL loop_C26F4                                                    ; 33F6: 10 FC                                  ..           :26F6[4]
    LDA L0016                                                         ; 33F8: A5 16                                  ..           :26F8[4]
    BCC C2700                                                         ; 33FA: 90 04                                  ..           :26FA[4]
    ORA #&40 ; '@'                                                    ; 33FC: 09 40                                  .@           :26FC[4]
    STA L0016                                                         ; 33FE: 85 16                                  ..           :26FE[4]
; &3400 referenced 2 times by &2039, &26FA
.C2700
    AND #7                                                            ; 3400: 29 07                                  ).           :2700[4]
    ASL A                                                             ; 3402: 0A                                     .            :2702[4]
    ASL A                                                             ; 3403: 0A                                     .            :2703[4]
    CLC                                                               ; 3404: 18                                     .            :2704[4]
    ADC #&1E                                                          ; 3405: 69 1E                                  i.           :2705[4]
    TAX                                                               ; 3407: AA                                     .            :2707[4]
    LDY #2                                                            ; 3408: A0 02                                  ..           :2708[4]
    LDA #3                                                            ; 340A: A9 03                                  ..           :270A[4]   ; Select sprite 3 to write (extra_character_graphic)
    JSR write_sprite_to_screen_routine                                ; 340C: 20 73 0A                                s.          :270C[4]
    LDY #5                                                            ; 340F: A0 05                                  ..           :270F[4]
    INX                                                               ; 3411: E8                                     .            :2711[4]
    LDA #&30 ; '0'                                                    ; 3412: A9 30                                  .0           :2712[4]
    STA L0097                                                         ; 3414: 85 97                                  ..           :2714[4]
    LDA L0016                                                         ; 3416: A5 16                                  ..           :2716[4]
    JMP C0B4F                                                         ; 3418: 4C 4F 0B                               LO.          :2718[4]

; &341B referenced 1 time by &101C
.sub_C271B
    BCC C2753                                                         ; 341B: 90 36                                  .6           :271B[4]
    LDA #4                                                            ; 341D: A9 04                                  ..           :271D[4]
    STA L0088                                                         ; 341F: 85 88                                  ..           :271F[4]
; &3421 referenced 1 time by &2750
.C2721
    JSR set_self_modified_code_1_NOP_JSR_0B31                         ; 3421: 20 05 0B                                ..          :2721[4]
    TXA                                                               ; 3424: 8A                                     .            :2724[4]
    PHA                                                               ; 3425: 48                                     H            :2725[4]
    LDX L0094                                                         ; 3426: A6 94                                  ..           :2726[4]
    LDA L0730,X                                                       ; 3428: BD 30 07                               .0.          :2728[4]
    ORA #2                                                            ; 342B: 09 02                                  ..           :272B[4]
    STA L0730,X                                                       ; 342D: 9D 30 07                               .0.          :272D[4]
    LDA L0731,X                                                       ; 3430: BD 31 07                               .1.          :2730[4]
    ORA #2                                                            ; 3433: 09 02                                  ..           :2733[4]
    STA L0731,X                                                       ; 3435: 9D 31 07                               .1.          :2735[4]
    TXA                                                               ; 3438: 8A                                     .            :2738[4]
    CLC                                                               ; 3439: 18                                     .            :2739[4]
    ADC #&10                                                          ; 343A: 69 10                                  i.           :273A[4]
    STA L0094                                                         ; 343C: 85 94                                  ..           :273C[4]
    PLA                                                               ; 343E: 68                                     h            :273E[4]
    PHA                                                               ; 343F: 48                                     H            :273F[4]
    CLC                                                               ; 3440: 18                                     .            :2740[4]
    ADC #5                                                            ; 3441: 69 05                                  i.           :2741[4]
    TAX                                                               ; 3443: AA                                     .            :2743[4]
    JSR set_self_modified_code_1_NOP_JSR_0B31                         ; 3444: 20 05 0B                                ..          :2744[4]
    PLA                                                               ; 3447: 68                                     h            :2747[4]
    TAX                                                               ; 3448: AA                                     .            :2748[4]
    TYA                                                               ; 3449: 98                                     .            :2749[4]
    CLC                                                               ; 344A: 18                                     .            :274A[4]
    ADC #&12                                                          ; 344B: 69 12                                  i.           :274B[4]
    TAY                                                               ; 344D: A8                                     .            :274D[4]
    DEC L0088                                                         ; 344E: C6 88                                  ..           :274E[4]
    BNE C2721                                                         ; 3450: D0 CF                                  ..           :2750[4]
    RTS                                                               ; 3452: 60                                     `            :2752[4]

; &3453 referenced 1 time by &271B
.C2753
    LDA #4                                                            ; 3453: A9 04                                  ..           :2753[4]
    STA L0088                                                         ; 3455: 85 88                                  ..           :2755[4]
; &3457 referenced 1 time by &2782
.C2757
    JSR set_self_modified_code_1_NOP_JSR_0B31                         ; 3457: 20 05 0B                                ..          :2757[4]
    TYA                                                               ; 345A: 98                                     .            :275A[4]
    PHA                                                               ; 345B: 48                                     H            :275B[4]
    LDY L0094                                                         ; 345C: A4 94                                  ..           :275C[4]
    LDA L0730,Y                                                       ; 345E: B9 30 07                               .0.          :275E[4]
    ORA #2                                                            ; 3461: 09 02                                  ..           :2761[4]
    STA L0730,Y                                                       ; 3463: 99 30 07                               .0.          :2763[4]
    LDA L0740,Y                                                       ; 3466: B9 40 07                               .@.          :2766[4]
    ORA #2                                                            ; 3469: 09 02                                  ..           :2769[4]
    STA L0740,Y                                                       ; 346B: 99 40 07                               .@.          :276B[4]
    INC L0094                                                         ; 346E: E6 94                                  ..           :276E[4]
    PLA                                                               ; 3470: 68                                     h            :2770[4]
    PHA                                                               ; 3471: 48                                     H            :2771[4]
    CLC                                                               ; 3472: 18                                     .            :2772[4]
    ADC #&12                                                          ; 3473: 69 12                                  i.           :2773[4]
    TAY                                                               ; 3475: A8                                     .            :2775[4]
    JSR set_self_modified_code_1_NOP_JSR_0B31                         ; 3476: 20 05 0B                                ..          :2776[4]
    PLA                                                               ; 3479: 68                                     h            :2779[4]
    TAY                                                               ; 347A: A8                                     .            :277A[4]
    TXA                                                               ; 347B: 8A                                     .            :277B[4]
    CLC                                                               ; 347C: 18                                     .            :277C[4]
    ADC #5                                                            ; 347D: 69 05                                  i.           :277D[4]
    TAX                                                               ; 347F: AA                                     .            :277F[4]
    DEC L0088                                                         ; 3480: C6 88                                  ..           :2780[4]
    BNE C2757                                                         ; 3482: D0 D3                                  ..           :2782[4]
    RTS                                                               ; 3484: 60                                     `            :2784[4]

; &3485 referenced 2 times by &1A42, &1B11
.sub_C2785
    LDA zero_page_80_dest_screenaddr                                  ; 3485: A5 80                                  ..           :2785[4]
    CLC                                                               ; 3487: 18                                     .            :2787[4]
    ADC #&80                                                          ; 3488: 69 80                                  i.           :2788[4]
    STA zero_page_80_dest_screenaddr                                  ; 348A: 85 80                                  ..           :278A[4]
    LDA zero_page_81_dest_screenaddr                                  ; 348C: A5 81                                  ..           :278C[4]
    ADC #2                                                            ; 348E: 69 02                                  i.           :278E[4]
    STA zero_page_81_dest_screenaddr                                  ; 3490: 85 81                                  ..           :2790[4]
    RTS                                                               ; 3492: 60                                     `            :2792[4]

; &3493 referenced 1 time by &12B1
.L2793
    EQUB &A8, &94, &C4, &A8                                           ; 3493: A8 94 C4 A8                            ....         :2793[4]
; &3497 referenced 1 time by &0929
.L2797
    EQUB &B8                                                          ; 3497: B8                                     .            :2797[4]
    EQUS "tPdDdDdDxXlHlHlH"                                           ; 3498: 74 50 64 44 64 44 64 44 78 58 6C 48... tPdDdDdDxXlH :2798[4]
    EQUB &80                                                          ; 34A8: 80                                     .            :27A8[4]
    EQUS "txltdl`dDl<Hl<Hl<xHtDl<d4"                                  ; 34A9: 74 78 6C 74 64 6C 60 64 44 6C 3C 48... txltdl`dDl<H :27A9[4]
    EQUB &94, &58, &90, &50, &88, &48, &80                            ; 34C2: 94 58 90 50 88 48 80                   .X.P.H.      :27C2[4]
    EQUS "Dx<t4l0d4D4Dl<xHtDl<"                                       ; 34C9: 44 78 3C 74 34 6C 30 64 34 44 34 44... Dx<t4l0d4D4D :27C9[4]
    EQUB &80, &44, &50, &80, &44, &50, &80, &50, &88                  ; 34DD: 80 44 50 80 44 50 80 50 88             .DP.DP.P.    :27DD[4]
    EQUS "XtDxH"                                                      ; 34E6: 58 74 44 78 48                         XtDxH        :27E6[4]
    EQUB &1B, &50, &10                                                ; 34EB: 1B 50 10                               .P.          :27EB[4]
    EQUS "\ \"                                                        ; 34EE: 5C 20 5C                               \ \          :27EE[4]
    EQUB &10                                                          ; 34F1: 10                                     .            :27F1[4]
    EQUS "P H,<\,\<UdXxd"                                             ; 34F2: 50 20 48 2C 3C 5C 2C 5C 3C 55 64 58... P H,<\,\<UdX :27F2[4]
    EQUB &88, &78, &94, &88, &88, &78, &94, &88,   0                  ; 3500: 88 78 94 88 88 78 94 88 00             .x...x...    :2800[4]
    EQUS "t4PtDPt4xPD|P"                                              ; 3509: 74 34 50 74 44 50 74 34 78 50 44 7C... t4PtDPt4xPD| :2809[4]
    EQUB &80                                                          ; 3516: 80                                     .            :2816[4]
    EQUS "4PDP4"                                                      ; 3517: 34 50 44 50 34                         4PDP4        :2817[4]
    EQUB &80                                                          ; 351C: 80                                     .            :281C[4]
    EQUS "P|D"                                                        ; 351D: 50 7C 44                               P|D          :281D[4]
    EQUB &80, &50, &88, &48, &64, &88, &58, &64, &88, &48, &90, &64   ; 3520: 80 50 88 48 64 88 58 64 88 48 90 64    .P.Hd.Xd.H.d :2820[4]
    EQUB &58, &94, &64, &A4                                           ; 352C: 58 94 64 A4                            X.d.         :282C[4]
    EQUS "4PDP4"                                                      ; 3530: 34 50 44 50 34                         4PDP4        :2830[4]
    EQUB &80, &50, &A8, &44, &A4, &50, &9C, &48, &88, &A4, &9C, &94   ; 3535: 80 50 A8 44 A4 50 9C 48 88 A4 9C 94    .P.D.P.H.... :2835[4]
    EQUB &44, &80, &7C, &80, &88, &48, &64, &88, &58, &64, &90, &50   ; 3541: 44 80 7C 80 88 48 64 88 58 64 90 50    D.|..Hd.Xd.P :2841[4]
    EQUB &88, &6C, &60, &80, &6C, &94                                 ; 354D: 88 6C 60 80 6C 94                      .l`.l.       :284D[4]
    EQUS "dPDP4"                                                      ; 3553: 64 50 44 50 34                         dPDP4        :2853[4]
; &3558 referenced 1 time by &092E
.L2858
    EQUB   0,   3, &83,   3, &83,   3, &83,   3, &83,   3, &83,   3   ; 3558: 00 03 83 03 83 03 83 03 83 03 83 03    ............ :2858[4]
    EQUB &83,   3, &83,   3, &83,   3, &83,   3, &83,   3, &83,   3   ; 3564: 83 03 83 03 83 03 83 03 83 03 83 03    ............ :2864[4]
    EQUB &83,   5, &85,   3, &81, &81,   3, &81, &81,   1, &81,   1   ; 3570: 83 05 85 03 81 81 03 81 81 01 81 01    ............ :2870[4]
    EQUB &81,   1, &81,   1, &81,   1, &81,   1, &81,   1, &81,   1   ; 357C: 81 01 81 01 81 01 81 01 81 01 81 01    ............ :287C[4]
    EQUB &81,   1, &81,   1, &81,   1, &81,   1, &81,   7, &81, &81   ; 3588: 81 01 81 01 81 01 81 01 81 07 81 81    ............ :2888[4]
    EQUB &81, &81,   1, &81,   1, &81,   1, &81,   1, &81,   3, &81   ; 3594: 81 81 01 81 01 81 01 81 01 81 03 81    ............ :2894[4]
    EQUB &81,   3, &81, &81,   1, &81,   1, &81,   1, &81,   1, &81   ; 35A0: 81 03 81 81 01 81 01 81 01 81 01 81    ............ :28A0[4]
    EQUB   0,   2, &82,   2, &82,   2, &82,   2, &82,   5, &82, &82   ; 35AC: 00 02 82 02 82 02 82 02 82 05 82 82    ............ :28AC[4]
    EQUB   2, &82,   2, &82,   0,   3, &83,   3, &83,   3, &83,   6   ; 35B8: 02 82 02 82 00 03 83 03 83 03 83 06    ............ :28B8[4]
    EQUB &86,   3, &83,   9, &89,   0,   6, &83, &83,   6, &83, &83   ; 35C4: 86 03 83 09 89 00 06 83 83 06 83 83    ............ :28C4[4]
    EQUB   3, &83,   6, &83, &83,   3, &83, &0F, &83, &83, &83, &83   ; 35D0: 03 83 06 83 83 03 83 0F 83 83 83 83    ............ :28D0[4]
    EQUB &83,   3, &83,   3, &83,   3, &83,   6, &83, &83,   6, &83   ; 35DC: 83 03 83 03 83 03 83 06 83 83 06 83    ............ :28DC[4]
    EQUB &83,   3, &83,   6, &83, &83,   3, &83, &0F, &83, &83, &83   ; 35E8: 83 03 83 06 83 83 03 83 0F 83 83 83    ............ :28E8[4]
    EQUB &83, &83,   3, &83,   3, &83,   3, &83, &0C, &98,   6,   3   ; 35F4: 83 83 03 83 03 83 03 83 0C 98 06 03    ............ :28F4[4]
    EQUB   3, &0C, &98,   6,   3,   3,   6, &83, &83,   6, &83, &83   ; 3600: 03 0C 98 06 03 03 06 83 83 06 83 83    ............ :2900[4]
    EQUB   3, &83,   6, &83, &83,   3, &83, &0F, &83, &83, &83, &83   ; 360C: 03 83 06 83 83 03 83 0F 83 83 83 83    ............ :290C[4]
    EQUB &83,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 3618: 83 00 00 00 00 00 00 00 00 00 00 00    ............ :2918[4]
    EQUB   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 3624: 00 00 00 00 00 00 00 00 00 00 00 00    ............ :2924[4]
    EQUB   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 3630: 00 00 00 00 00 00 00 00 00 00 00 00    ............ :2930[4]
    EQUB   0,   0,   0,   0                                           ; 363C: 00 00 00 00                            ....         :293C[4]
; &35F2 referenced 1 time by &1AD7
; &35F3 referenced 1 time by &1ADC
; &35F4 referenced 1 time by &1ADF
; &35F5 referenced 1 time by &1AE2
; &35F6 referenced 1 time by &1AE5
    EQUW     0, &0101, &0303, &0303, &0505, &0D07, &0306, &0303       ; 3640: 00 00 01 01 03 03 03 03 05 05 07 0D... ............ :2940[4]
    EQUW &000A, &0603, &0309, &0606,     0, &0202, &0903, &0909       ; 3650: 0A 00 03 06 09 03 06 06 00 00 02 02... ............ :2950[4]
    EQUW &0303, &0B03, &050B,     5, &0303, &0303, &0B0B, &0F0F       ; 3660: 03 03 03 0B 0B 05 05 00 03 03 03 03... ............ :2960[4]
    EQUW &0306, &0606, &0B03, &0F0F, &0303, &0709, &0A07, &000A       ; 3670: 06 03 06 06 03 0B 0F 0F 03 03 09 07... ............ :2970[4]
    EQUW     0, &0100, &0501, &0505,     0, &0303, &0303, &0F0F       ; 3680: 00 00 00 01 01 05 05 05 00 00 03 03... ............ :2980[4]
    EQUW     0, &0303, &0303, &0F0F,     0, &0200, &0A02, &0F0A       ; 3690: 00 00 03 03 03 03 0F 0F 00 00 00 02... ............ :2990[4]
    EQUW &0F0F, &0F0F,     5,     0, &0F0F, &0B0F, &0303,     1       ; 36A0: 0F 0F 0F 0F 05 00 00 00 0F 0F 0F 0B... ............ :29A0[4]
    EQUW &1F1F, &2F2F, &0307,     1, &0F0F, &2A2F, &0302, &0203       ; 36B0: 1F 1F 2F 2F 07 03 01 00 0F 0F 2F 2A... ..//....../* :29B0[4]
    EQUW &0500, &1A0F, &1A1A, &1A1A, &050D, &3030, &3030, &3030       ; 36C0: 00 05 0F 1A 1A 1A 1A 1A 0D 05 30 30... ..........00 :29C0[4]
    EQUW &0A0E, &3030, &3030, &3030, &0A00, &250F, &2525, &2525       ; 36D0: 0E 0A 30 30 30 30 30 30 00 0A 0F 25... ..000000...% :29D0[4]
    EQUW &1A1A, &1A1A, &050F, &0C00, &3030, &3030, &0F30, &080F       ; 36E0: 1A 1A 1A 1A 0F 05 00 0C 30 30 30 30... ........0000 :29E0[4]
    EQUW &3030, &3030, &0F30, &040F, &2525, &2525, &0A0F, &0C00       ; 36F0: 30 30 30 30 30 0F 0F 04 25 25 25 25... 00000...%%%% :29F0[4]
    EQUW     5, &0C05, &0C0C, &0C0C, &0A0A, &0C0A, &180C, &0020       ; 3700: 05 00 05 0C 0C 0C 0C 0C 0A 0A 0A 0C... ............ :2A00[4]
    EQUW     5, &0C05, &240C, &1010, &0A0A, &0C0A, &0C0C, &0C0C       ; 3710: 05 00 05 0C 0C 24 10 10 0A 0A 0A 0C... .....$...... :2A10[4]
    EQUW &0404, &0C04, &0C0C, &040C,     0, &2000, &0C18, &080C       ; 3720: 04 04 04 0C 0C 0C 0C 04 00 00 00 20... ...........  :2A20[4]
    EQUW &1010, &1010, &0C24, &040C, &0808, &0C08, &0C0C, &080C       ; 3730: 10 10 10 10 24 0C 0C 04 08 08 08 0C... ....$....... :2A30[4]
    EQUW &0505, &0C05, &040C, &0C04, &000A, &0C0A, &0C0C, &0C0C       ; 3740: 05 05 05 0C 0C 04 04 0C 0A 00 0A 0C... ............ :2A40[4]
    EQUW &0505, &0C05, &0C0C, &0C0C, &000A, &0C0A, &080C, &0C08       ; 3750: 05 05 05 0C 0C 0C 0C 0C 0A 00 0A 0C... ............ :2A50[4]
    EQUW &1818, &0C0C, &0404, &0C0C, &2418, &0C0C, &0C0C, &040C       ; 3760: 18 18 0C 0C 04 04 0C 0C 18 24 0C 0C... .........$.. :2A60[4]
    EQUW &1824, &0C0C, &0C0C, &080C, &2424, &0C0C, &0808, &0C0C       ; 3770: 24 18 0C 0C 0C 0C 0C 08 24 24 0C 0C... $.......$$.. :2A70[4]
    EQUW &C0C0, &C0C0, &C0C0, &C0C0, &C0C0, &C0C0, &8080, &1500       ; 3780: C0 C0 C0 C0 C0 C0 C0 C0 C0 C0 C0 C0... ............ :2A80[4]
    EQUW &C0C0, &1500, &2A15, &002A, &C0C0, &4040, &2A00, &2A2A       ; 3790: C0 C0 00 15 15 2A 2A 00 C0 C0 40 40... .....**...@@ :2A90[4]
    EQUW &8080, &0080, &0101, &8000, &2A15, &032A, &0202,     3       ; 37A0: 80 80 80 00 01 01 00 80 15 2A 2A 03... .........**. :2AA0[4]
    EQUW &1500, &0115, &0303,     1, &002A, &0040, &0202, &4000       ; 37B0: 00 15 15 01 03 03 01 00 2A 00 40 00... ........*.@. :2AB0[4]
    EQUW &0301, &0202, &0202, &0103,     3,     0, &0404, &3024       ; 37C0: 01 03 02 02 02 02 03 01 03 00 00 00... ............ :2AC0[4]
    EQUW &0103, &0800, &0404, &1804, &0200, &0302, &0101, &0301       ; 37D0: 03 01 00 08 04 04 04 18 00 02 02 03... ............ :2AD0[4]
    EQUW &0101, &0301, &0302, &0401, &3030,     0,     0, &0C03       ; 37E0: 01 01 01 03 02 03 01 04 30 30 00 00... ........00.. :2AE0[4]
    EQUW &3030,     0, &0101, &0403, &0202, &0202,     2, &0C00       ; 37F0: 30 30 00 00 01 01 03 04 02 02 02 02... 00.......... :2AF0[4]
    EQUW     0, &0100, &2A01, &0900, &0301, &1709, &3F2E, &172E       ; 3800: 00 00 00 01 01 2A 00 09 01 03 09 17... .....*...... :2B00[4]
    EQUW &0902, &0C03, &0808, &090C,     0,     0, &0808,     0       ; 3810: 02 09 03 0C 08 08 0C 09 00 00 00 00... ............ :2B10[4]
    EQUW     9, &2B00, &2A2B, &002A, &0109, &0304,     9,     0       ; 3820: 09 00 00 2B 2B 2A 2A 00 09 01 04 03... ...++**..... :2B20[4]
    EQUW &0303, &0306, &0309, &1706,     0, &0606,     0, &3F02       ; 3830: 03 03 06 03 09 03 06 17 00 00 06 06... ............ :2B30[4]
    EQUW     0,     0, &0404,     0, &0601, &0C03, &0404, &060C       ; 3840: 00 00 00 00 04 04 00 00 01 06 03 0C... ............ :2B40[4]
    EQUW &0302, &2B06, &3F1D, &2B1D,     0, &0200, &1502, &0600       ; 3850: 02 03 06 2B 1D 3F 1D 2B 00 00 00 02... ...+.?.+.... :2B50[4]
    EQUW     0, &0909,     0, &3F01, &0303, &0309, &0306, &2B09       ; 3860: 00 00 09 09 00 00 01 3F 03 03 09 03... .......?.... :2B60[4]
    EQUW &0206, &0308,     6,     0,     6, &1700, &1517, &0015       ; 3870: 06 02 08 03 06 00 00 00 06 00 00 17... ............ :2B70[4]
    EQUW     0,     0, &0606, &1706,     0, &0808, &0404, &1D0C       ; 3880: 00 00 00 00 06 06 06 17 00 00 08 08... ............ :2B80[4]
    EQUW &0104, &0101, &0601, &0303, &1515, &0115, &0306, &0803       ; 3890: 04 01 01 01 01 06 03 03 15 15 15 01... ............ :2B90[4]
    EQUW &031D, &0403,     1,     0, &3F3F,     0, &1702, &0015       ; 38A0: 1D 03 03 04 01 00 00 00 3F 3F 00 00... ........??.. :2BA0[4]
    EQUW &0309, &0802, &0202,     8, &0202, &0802, &0202, &003F       ; 38B0: 09 03 02 08 02 02 08 00 02 02 02 08... ............ :2BB0[4]
    EQUW     0, &0100, &0304, &1D03, &1500, &0217,     0, &3F3F       ; 38C0: 00 00 00 01 04 03 03 1D 00 15 17 02... ............ :2BC0[4]
    EQUW &0800, &0202, &0208, &0903, &3F00, &0202, &0208, &0202       ; 38D0: 00 08 02 02 08 02 03 09 00 3F 02 02... .........?.. :2BD0[4]
    EQUW &0617, &0606,     0,     0, &0C1D, &0404, &0808,     0       ; 38E0: 17 06 06 06 00 00 00 00 1D 0C 04 04... ............ :2BE0[4]
    EQUW &0303, &0106, &0101, &0401, &0308, &0603, &1501, &1515       ; 38F0: 03 03 06 01 01 01 01 04 08 03 03 06... ............ :2BF0[4]
    EQUW     0, &0100, &2A01,     0, &0301, &1709, &3F2E, &152E       ; 3900: 00 00 00 01 01 2A 00 00 01 03 09 17... .....*...... :2C00[4]
    EQUW &0902, &0C03, &0808, &020C,     0,     0, &0808,     0       ; 3910: 02 09 03 0C 08 08 0C 02 00 00 00 00... ............ :2C10[4]
    EQUW     0,     0,     0,     0, &0303, &0309, &0106, &0101       ; 3920: 00 00 00 00 00 00 00 00 03 03 09 03... ............ :2C20[4]
    EQUW &0303, &0309, &0303, &3F09,     0, &0808,     0, &2A00       ; 3930: 03 03 09 03 03 03 09 3F 00 00 08 08... .......?.... :2C30[4]
    EQUW     0,     0, &0404,     0, &0601, &0C03, &0404, &010C       ; 3940: 00 00 00 00 04 04 00 00 01 06 03 0C... ............ :2C40[4]
    EQUW &0302, &2B06, &3F1D, &2A1D,     0, &0200, &1502,     0       ; 3950: 02 03 06 2B 1D 3F 1D 2A 00 00 00 02... ...+.?.*.... :2C50[4]
    EQUW     0, &0404,     0, &1500, &0303, &0306, &0303, &3F06       ; 3960: 00 00 04 04 00 00 00 15 03 03 06 03... ............ :2C60[4]
    EQUW &0303, &0306, &0209, &0202,     0,     0,     0,     0       ; 3970: 03 03 06 03 09 02 02 02 00 00 00 00... ............ :2C70[4]
    EQUW     0,     0, &0606, &1706,     0, &0808, &0404, &1D0C       ; 3980: 00 00 00 00 06 06 06 17 00 00 08 08... ............ :2C80[4]
    EQUW     0, &0404, &0601, &0303,     0, &1515, &0317, &0906       ; 3990: 00 00 04 04 01 06 03 03 00 00 15 15... ............ :2C90[4]
    EQUW &031D, &0403,     1,     0, &3F3F,     0, &1702, &0015       ; 39A0: 1D 03 03 04 01 00 00 00 3F 3F 00 00... ........??.. :2CA0[4]
    EQUW &0309,     0,     0,     0, &0203,     0,     0,     0       ; 39B0: 09 03 00 00 00 00 00 00 03 02 00 00... ............ :2CB0[4]
    EQUW     0, &0100, &0304, &1D03, &1500, &0217,     0, &3F3F       ; 39C0: 00 00 00 01 04 03 03 1D 00 15 17 02... ............ :2CC0[4]
    EQUW     0,     0,     0, &0903,     0,     0,     0, &0302       ; 39D0: 00 00 00 00 00 00 03 09 00 00 00 00... ............ :2CD0[4]
    EQUW &0617, &0606,     0,     0, &0C1D, &0404, &0808,     0       ; 39E0: 17 06 06 06 00 00 00 00 1D 0C 04 04... ............ :2CE0[4]
    EQUW &0303, &0106, &0404,     0, &0609, &1703, &1515,     0       ; 39F0: 03 03 06 01 04 04 00 00 09 06 03 17... ............ :2CF0[4]
    EQUW     0, &2404, &3030, &3030, &1800, &080C, &3018, &3030       ; 3A00: 00 00 04 24 30 30 30 30 00 18 0C 08... ...$0000.... :2D00[4]
    EQUW &3000, &2424, &3030, &3030, &0800, &080C, &3018, &3030       ; 3A10: 00 30 24 24 30 30 30 30 00 08 0C 08... .0$$0000.... :2D10[4]
    EQUW &3030, &3030, &3030, &1010, &0221, &2102, &3030, &1010       ; 3A20: 30 30 30 30 30 30 10 10 21 02 02 21... 000000..!..! :2D20[4]
    EQUW     3, &0300, &3030, &1010,     3, &0300, &3030, &1010       ; 3A30: 03 00 00 03 30 30 10 10 03 00 00 03... ....00...... :2D30[4]
    EQUW &0400, &040C, &3024, &3030, &3000, &1818, &3030, &3030       ; 3A40: 00 04 0C 04 24 30 30 30 00 30 18 18... ....$000.0.. :2D40[4]
    EQUW &2400, &040C, &3024, &3030,     0, &1808, &3030, &3030       ; 3A50: 00 24 0C 04 24 30 30 30 00 00 08 18... .$..$000.... :2D50[4]
    EQUW     3, &0300, &3030, &2020,     3, &0300, &3030, &2020       ; 3A60: 03 00 00 03 30 30 20 20 03 00 00 03... ....00  .... :2D60[4]
    EQUW &0112, &1201, &3030, &2020, &3030, &3030, &3030, &2020       ; 3A70: 12 01 01 12 30 30 20 20 30 30 30 30... ....00  0000 :2D70[4]
    EQUW &0800, &0C08, &100C, &0810, &2121, &2121, &2121, &2121       ; 3A80: 00 08 08 0C 0C 10 10 08 21 21 21 21... ........!!!! :2D80[4]
    EQUW &0101, &0101, &0101, &0101, &3030, &2020, &3030, &2020       ; 3A90: 01 01 01 01 01 01 01 01 30 30 20 20... ........00   :2D90[4]
    EQUW &0C08, &300C, &1010,     0, &2121, &3021, &3030, &0030       ; 3AA0: 08 0C 0C 30 10 10 00 00 21 21 21 30... ...0....!!!0 :2DA0[4]
    EQUW &0101, &1201, &3030, &0030, &3030, &2020, &3030, &0020       ; 3AB0: 01 01 01 12 30 30 30 00 30 30 20 20... ....000.00   :2DB0[4]
    EQUW     0, &1010, &0C30, &080C, &3000, &3030, &2130, &2121       ; 3AC0: 00 00 10 10 30 0C 0C 08 00 30 30 30... ....0....000 :2DC0[4]
    EQUW &3000, &3030, &0112, &0101, &2000, &3030, &2020, &3030       ; 3AD0: 00 30 30 30 12 01 01 01 00 20 30 30... .000..... 00 :2DD0[4]
    EQUW &1008, &0C10, &080C,     8, &2121, &2121, &2121, &2121       ; 3AE0: 08 10 10 0C 0C 08 08 00 21 21 21 21... ........!!!! :2DE0[4]
    EQUW &0101, &0101, &0101, &0101, &2020, &3030, &2020, &3030       ; 3AF0: 01 01 01 01 01 01 01 01 20 20 30 30... ........  00 :2DF0[4]
    EQUW     0, &0404, &0505, &0F05, &180C, &3018, &0C24, &0E2C       ; 3B00: 00 00 04 04 05 05 05 0F 0C 18 18 30... ...........0 :2E00[4]
    EQUW &3020, &1C24, &0C08, &2430,     0, &2C08, &0C2C, &0820       ; 3B10: 20 30 24 1C 08 0C 30 24 00 00 08 2C...  0$...0$..., :2E10[4]
    EQUW     0, &0F05, &0500, &000F, &0E0E, &1A2C, &3838, &0F1E       ; 3B20: 00 00 05 0F 00 05 0F 00 0E 0E 2C 1A... ..........,. :2E20[4]
    EQUW &3018, &300C, &2028, &0C28, &2020, &0C08, &0404, &0800       ; 3B30: 18 30 0C 30 28 20 28 0C 20 20 08 0C... .0.0( (.  .. :2E30[4]
    EQUB   0,   0,   4, &1C, &1C, &0C, &10,   4, &10, &30, &18, &2C   ; 3B40: 00 00 04 1C 1C 0C 10 04 10 30 18 2C    .........0., :2E40[4]
    EQUB   4, &0C, &30, &18, &0C                                      ; 3B4C: 04 0C 30 18 0C                         ..0..        :2E4C[4]
    EQUS "$$0"                                                        ; 3B51: 24 24 30                               $$0          :2E51[4]
    EQUB &18, &0C, &1C, &0D,   0,   0,   8,   8, &0A, &0A, &0A, &0F   ; 3B54: 18 0C 1C 0D 00 00 08 08 0A 0A 0A 0F    ............ :2E54[4]
    EQUB &10, &10,   4, &0C,   8,   8,   0,   4, &24, &30, &0C, &30   ; 3B60: 10 10 04 0C 08 08 00 04 24 30 0C 30    ........$0.0 :2E60[4]
    EQUB &14, &10, &14, &0C, &0D, &0D, &1C                            ; 3B6C: 14 10 14 0C 0D 0D 1C                   .......      :2E6C[4]
    EQUS "%44-"                                                       ; 3B73: 25 34 34 2D                            %44-         :2E73[4]
    EQUB &0F,   0,   0, &0A, &0F,   0, &0A, &0F,   0,   0,   4, &1C   ; 3B77: 0F 00 00 0A 0F 00 0A 0F 00 00 04 1C    ............ :2E77[4]
    EQUB &18, &18, &18, &24, &30,   0,   0,   8,   8                  ; 3B83: 18 18 18 24 30 00 00 08 08             ...$0....    :2E83[4]
    EQUS "<88<"                                                       ; 3B8C: 3C 38 38 3C                            <88<         :2E8C[4]
    EQUB   4, &0C, &0C,   8, &0C, &0C, &0C, &1C,   8,   0,   4,   4   ; 3B90: 04 0C 0C 08 0C 0C 0C 1C 08 00 04 04    ............ :2E90[4]
    EQUS "$,$,0"                                                      ; 3B9C: 24 2C 24 2C 30                         $,$,0        :2E9C[4]
    EQUB &18, &0C,   5,   5,   0,   0,   0, &1C                       ; 3BA1: 18 0C 05 05 00 00 00 1C                ........     :2EA1[4]
    EQUS "$%%"                                                        ; 3BA9: 24 25 25                               $%%          :2EA9[4]
    EQUB &0F, &0A, &0A,   0, &1C, &1C, &2D, &2D, &1E, &1E, &0A,   0   ; 3BAC: 0F 0A 0A 00 1C 1C 2D 2D 1E 1E 0A 00    ......--.... :2EAC[4]
    EQUS ",,%-"                                                       ; 3BB8: 2C 2C 25 2D                            ,,%-         :2EB8[4]
    EQUB &0F, &0A, &0A, &0A,   0,   0,   0,   5,   5, &0C, &18, &30   ; 3BBC: 0F 0A 0A 0A 00 00 00 05 05 0C 18 30    ...........0 :2EBC[4]
    EQUB   0, &0A, &0A, &0F                                           ; 3BC8: 00 0A 0A 0F                            ....         :2EC8[4]
    EQUS "%%$"                                                        ; 3BCC: 25 25 24                               %%$          :2ECC[4]
    EQUB &1C,   0, &0A, &1E, &1E, &2D, &2D, &1C, &1C, &0A, &0A, &0A   ; 3BCF: 1C 00 0A 1E 1E 2D 2D 1C 1C 0A 0A 0A    .....--..... :2ECF[4]
    EQUB &0F                                                          ; 3BDB: 0F                                     .            :2EDB[4]
    EQUS "-%,,0$"                                                     ; 3BDC: 2D 25 2C 2C 30 24                      -%,,0$       :2EDC[4]
    EQUB &18, &18, &18, &1C,   4,   0                                 ; 3BE2: 18 18 18 1C 04 00                      ......       :2EE2[4]
    EQUS "<88<"                                                       ; 3BE8: 3C 38 38 3C                            <88<         :2EE8[4]
    EQUB   8,   8,   0,   0, &1C, &0C, &0C, &0C,   8, &0C, &0C,   4   ; 3BEC: 08 08 00 00 1C 0C 0C 0C 08 0C 0C 04    ............ :2EEC[4]
    EQUS ",$,$"                                                       ; 3BF8: 2C 24 2C 24                            ,$,$         :2EF8[4]
    EQUB   4,   4,   0,   8,   4, &0C,   9,   9,   9,   9,   9,   4   ; 3BFC: 04 04 00 08 04 0C 09 09 09 09 09 04    ............ :2EFC[4]
    EQUB &0C,   3,   6,   6,   6,   6,   3,   3, &0C,   6, &0C,   0   ; 3C08: 0C 03 06 06 06 06 03 03 0C 06 0C 00    ............ :2F08[4]
    EQUB   0,   0,   3,   3,   0,   8,   8, &0C,   6,   6,   6, &0C   ; 3C14: 00 00 03 03 00 08 08 0C 06 06 06 0C    ............ :2F14[4]
    EQUB   1,   1,   1,   3,   3,   3,   1,   4,   9,   3,   3,   3   ; 3C20: 01 01 01 03 03 03 01 04 09 03 03 03    ............ :2F20[4]
    EQUB   3,   3,   3, &0C,   6, &30, &30,   3,   3,   3,   3,   4   ; 3C2C: 03 03 03 0C 06 30 30 03 03 03 03 04    .....00..... :2F2C[4]
    EQUB   8, &30, &30,   2,   2,   0,   0, &0C,   0,   4,   4, &0C   ; 3C38: 08 30 30 02 02 00 00 0C 00 04 04 0C    .00......... :2F38[4]
    EQUB   9,   9,   9, &0C, &0C,   9, &0C,   0,   0,   0,   3,   3   ; 3C44: 09 09 09 0C 0C 09 0C 00 00 00 03 03    ............ :2F44[4]
    EQUB &0C,   3,   9,   9,   9,   9,   3,   3,   8, &0C,   6,   6   ; 3C50: 0C 03 09 09 09 09 03 03 08 0C 06 06    ............ :2F50[4]
    EQUB   6,   6,   6,   8,   4, &30, &30,   1,   1,   0,   0, &0C   ; 3C5C: 06 06 06 08 04 30 30 01 01 00 00 0C    .....00..... :2F5C[4]
    EQUB   9, &30, &30,   3,   3,   3,   3,   8,   6,   3,   3,   3   ; 3C68: 09 30 30 03 03 03 03 08 06 03 03 03    .00......... :2F68[4]
    EQUB   3,   3,   3, &0C,   2,   2,   2,   3,   3,   3,   2,   8   ; 3C74: 03 03 03 0C 02 02 02 03 03 03 02 08    ............ :2F74[4]
    EQUB   0,   4,   4, &0C,   9,   9,   9,   9, &0C,   9,   3,   3   ; 3C80: 00 04 04 0C 09 09 09 09 0C 09 03 03    ............ :2F80[4]
    EQUB   8,   8,   8, &0C, &10, &18, &18, &12, &12, &12, &12, &12   ; 3C8C: 08 08 08 0C 10 18 18 12 12 12 12 12    ............ :2F8C[4]
    EQUB   4,   4,   6,   6,   6,   2,   2,   2,   9,   9,   9,   9   ; 3C98: 04 04 06 06 06 02 02 02 09 09 09 09    ............ :2F98[4]
    EQUB   9,   9,   9,   4,   3,   3,   3,   3,   3,   3,   6, &0C   ; 3CA4: 09 09 09 04 03 03 03 03 03 03 06 0C    ............ :2FA4[4]
    EQUB &12,   3,   3,   3,   9,   9,   9,   0,   2,   6,   6,   6   ; 3CB0: 12 03 03 03 09 09 09 00 02 06 06 06    ............ :2FB0[4]
    EQUB   6,   6,   2,   0,   4,   9,   9,   9,   9,   9,   9,   9   ; 3CBC: 06 06 02 00 04 09 09 09 09 09 09 09    ............ :2FBC[4]
    EQUB &0C,   6,   3,   3,   3,   3,   3,   3,   0,   9,   9,   9   ; 3CC8: 0C 06 03 03 03 03 03 03 00 09 09 09    ............ :2FC8[4]
    EQUB   3,   3,   3, &12,   0,   2,   6,   6,   6,   6,   6,   2   ; 3CD4: 03 03 03 12 00 02 06 06 06 06 06 02    ............ :2FD4[4]
    EQUB   9,   9,   9,   9, &0C,   4,   4,   0, &0C,   8,   8,   8   ; 3CE0: 09 09 09 09 0C 04 04 00 0C 08 08 08    ............ :2FE0[4]
    EQUB   3,   3,   9, &0C, &12, &12, &12, &12, &12, &18, &18, &10   ; 3CEC: 03 03 09 0C 12 12 12 12 12 18 18 10    ............ :2FEC[4]
    EQUB   2,   2,   2,   6, &D7, &1F,   5,   0                       ; 3CF8: 02 02 02 06 D7 1F 05 00                ........     :2FF8[4]
; &3D00 referenced 2 times by &4338, &433B
    ORG code_to_relocate_1900 + (sub_C3000 - relocated_data_C00)
    COPYBLOCK relocated_data_C00, sub_C3000, code_to_relocate_1900
    CLEAR relocated_data_C00, sub_C3000

; &3D00 referenced 2 times by &4338, &433B
.data_to_relocate_3D00
; &3D00 referenced 2 times by &4338, &433B

    ORG &0400
; &3D00 referenced 2 times by &4338, &433B
.relocated_data_400
    EQUB &FF, &AA, &AA, &FF, &AA, &AA, &AA, &FF, &FF,   0,   0, &AA   ; 3D00: FF AA AA FF AA AA AA FF FF 00 00 AA    ............ :0400[2]
    EQUB   0,   0,   0, &FF, &AA, &AA, &AA, &55, &55, &AA, &AA, &AA   ; 3D0C: 00 00 00 FF AA AA AA 55 55 AA AA AA    .......UU... :040C[2]
    EQUS "UUU"                                                        ; 3D18: 55 55 55                               UUU          :0418[2]
    EQUB &AA, &AA                                                     ; 3D1B: AA AA                                  ..           :041B[2]
    EQUS "UUU"                                                        ; 3D1D: 55 55 55                               UUU          :041D[2]
    EQUB &FF                                                          ; 3D20: FF                                     .            :0420[2]
    EQUS "UUUUUUU"                                                    ; 3D21: 55 55 55 55 55 55 55                   UUUUUUU      :0421[2]
    EQUB &AA,   0,   0,   0,   0,   0,   0,   0, &FF, &AA, &AA, &AA   ; 3D28: AA 00 00 00 00 00 00 00 FF AA AA AA    ............ :0428[2]
    EQUB &FF, &AA, &AA, &AA, &AA                                      ; 3D34: FF AA AA AA AA                         .....        :0434[2]
    EQUS "UUU"                                                        ; 3D39: 55 55 55                               UUU          :0439[2]
    EQUB &AA, &AA                                                     ; 3D3C: AA AA                                  ..           :043C[2]
    EQUS "UUU"                                                        ; 3D3E: 55 55 55                               UUU          :043E[2]
    EQUB &AA, &AA, &AA, &FF, &AA, &AA, &AA, &AA                       ; 3D41: AA AA AA FF AA AA AA AA                ........     :0441[2]
    EQUS "UUU"                                                        ; 3D49: 55 55 55                               UUU          :0449[2]
    EQUB &FF                                                          ; 3D4C: FF                                     .            :044C[2]
    EQUS "UUU"                                                        ; 3D4D: 55 55 55                               UUU          :044D[2]
    EQUB   0,   4,   9,   9,   9,   6,   3,   4,   0, &0C,   3,   3   ; 3D50: 00 04 09 09 09 06 03 04 00 0C 03 03    ............ :0450[2]
    EQUB   3,   3,   3, &0C,   0, &0C,   3, &0C,   0, &30, &30,   4   ; 3D5C: 03 03 03 0C 00 0C 03 0C 00 30 30 04    .........00. :045C[2]
    EQUB   0,   8,   6,   6,   6, &30, &30, &0C,   0,   0             ; 3D68: 00 08 06 06 06 30 30 0C 00 00          .....00...   :0468[2]
    EQUS "00000"                                                      ; 3D72: 30 30 30 30 30                         00000        :0472[2]
    EQUB &10,   0,   0, &24, &30,   3,   3, &30, &10,   0,   0, &18   ; 3D77: 10 00 00 24 30 03 03 30 10 00 00 18    ...$0..0.... :0477[2]
    EQUB &30,   3,   3, &30, &10,   0,   0, &0C, &30,   3,   3, &30   ; 3D83: 30 03 03 30 10 00 00 0C 30 03 03 30    0..0....0..0 :0483[2]
    EQUB &10,   0,   6,   6,   6,   3,   1,   1,   0,   0, &0C, &0C   ; 3D8F: 10 00 06 06 06 03 01 01 00 00 0C 0C    ............ :048F[2]
    EQUB &0C, &0C, &0C,   6,   3,   0, &0C, &0C, &0C,   9,   9,   3   ; 3D9B: 0C 0C 0C 06 03 00 0C 0C 0C 09 09 03    ............ :049B[2]
    EQUB   2,   0,   2,   2,   2,   2,   0,   0,   0,   0,   0,   0   ; 3DA7: 02 00 02 02 02 02 00 00 00 00 00 00    ............ :04A7[2]
    EQUB   1,   1,   3,   3,   3,   0,   0,   3,   9,   6,   3,   3   ; 3DB3: 01 01 03 03 03 00 00 03 09 06 03 03    ............ :04B3[2]
    EQUB   3,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   3   ; 3DBF: 03 00 00 00 00 00 00 00 00 00 00 03    ............ :04BF[2]
    EQUB   6,   9,   3,   3,   3,   0,   0,   0,   2,   2,   3,   3   ; 3DCB: 06 09 03 03 03 00 00 00 02 02 03 03    ............ :04CB[2]
    EQUB   3,   0,   0,   0,   0,   0,   0,   0,   0,   3,   3,   3   ; 3DD7: 03 00 00 00 00 00 00 00 00 03 03 03    ............ :04D7[2]
    EQUB &0B, &0B,   5,   5,   0,   3,   3,   3,   3, &0B, &0B, &0B   ; 3DE3: 0B 0B 05 05 00 03 03 03 03 0B 0B 0B    ............ :04E3[2]
    EQUB &0F,   0,   0,   0,   0,   0,   0,   0,   0,   3,   3,   3   ; 3DEF: 0F 00 00 00 00 00 00 00 00 03 03 03    ............ :04EF[2]
    EQUB   3,   7,   7,   7, &0F                                      ; 3DFB: 03 07 07 07 0F                         .....        :04FB[2]
; &3E00 referenced 2 times by &433E, &4341
.relocated_data_500
    EQUB   3,   3,   3,   7,   7, &0A, &0A,   0,   0,   0,   0,   0   ; 3E00: 03 03 03 07 07 0A 0A 00 00 00 00 00    ............ :0500[2]
    EQUB   0,   0,   0,   0,   4,   8,   8,   8,   8,   8,   4,   0   ; 3E0C: 00 00 00 00 04 08 08 08 08 08 04 00    ............ :050C[2]
    EQUB   0,   8,   8,   8,   8,   8,   0,   0,   4, &0C,   4,   4   ; 3E18: 00 08 08 08 08 08 00 00 04 0C 04 04    ............ :0518[2]
    EQUB   4,   4, &0C,   0,   0,   0,   0,   0,   0,   0,   8,   0   ; 3E24: 04 04 0C 00 00 00 00 00 00 00 08 00    ............ :0524[2]
    EQUB   4,   8,   0,   0,   4,   8, &0C,   0,   0,   8,   8,   8   ; 3E30: 04 08 00 00 04 08 0C 00 00 08 08 08    ............ :0530[2]
    EQUB   0,   0,   8,   0,   4,   8,   0,   4,   0,   8,   4,   0   ; 3E3C: 00 00 08 00 04 08 00 04 00 08 04 00    ............ :053C[2]
    EQUB   0,   8,   8,   0,   8,   8,   0,   0,   8,   8,   8,   8   ; 3E48: 00 08 08 00 08 08 00 00 08 08 08 08    ............ :0548[2]
    EQUB &0C,   0,   0,   0,   0,   0,   8,   8,   8,   8,   8,   0   ; 3E54: 0C 00 00 00 00 00 08 08 08 08 08 00    ............ :0554[2]
    EQUB &0C,   8, &0C,   0,   0,   8,   4,   0,   8,   0,   0,   8   ; 3E60: 0C 08 0C 00 00 08 04 00 08 00 00 08    ............ :0560[2]
    EQUB   8,   8,   0,   0,   4,   8,   8, &0C,   8,   8,   4,   0   ; 3E6C: 08 08 00 00 04 08 08 0C 08 08 04 00    ............ :056C[2]
    EQUB   0,   8,   0,   0,   8,   8,   0,   0, &0C,   0,   0,   4   ; 3E78: 00 08 00 00 08 08 00 00 0C 00 00 04    ............ :0578[2]
    EQUB   4,   4,   4,   0,   8,   8,   8,   0,   0,   0,   0,   0   ; 3E84: 04 04 04 00 08 08 08 00 00 00 00 00    ............ :0584[2]
    EQUB   4,   8,   8,   4,   8,   8,   4,   0,   0,   8,   8,   0   ; 3E90: 04 08 08 04 08 08 04 00 00 08 08 00    ............ :0590[2]
    EQUB   8,   8,   0,   0,   4,   8,   8,   4,   0,   8,   4,   0   ; 3E9C: 08 08 00 00 04 08 08 04 00 08 04 00    ............ :059C[2]
    EQUB   0,   8,   8,   8,   8,   8,   0,   0,   0,   0, &2B,   0   ; 3EA8: 00 08 08 08 08 08 00 00 00 00 2B 00    ..........+. :05A8[2]
    EQUB   9,   0, &2B, &2A,   0,   3, &17, &15,   3,   1,   9,   1   ; 3EB4: 09 00 2B 2A 00 03 17 15 03 01 09 01    ..+*........ :05B4[2]
    EQUB   0,   3,   4, &2E,   3,   9, &17, &17,   0,   0,   8,   0   ; 3EC0: 00 03 04 2E 03 09 17 17 00 00 08 00    ............ :05C0[2]
    EQUB   0,   6,   0                                                ; 3ECC: 00 06 00                               ...          :05CC[2]
; &3ECF referenced 2 times by &161C, &1627
.game_over_string_data
    EQUS "?REVO EMAG"                                                 ; 3ECF: 3F 52 45 56 4F 20 45 4D 41 47          ?REVO EMAG   :05CF[2]
    EQUB   3, &11,   1,   1, &1F, &0C, &0F, &0E, &11,   4             ; 3ED9: 03 11 01 01 1F 0C 0F 0E 11 04          ..........   :05D9[2]
; &3EE3 referenced 1 time by &0DEC
.more_character_data
    EQUB  28,   5, 136,   0,  18,  12,   0,  18,   3, 172,   4,  88   ; 3EE3: 1C 05 88 00 12 0C 00 12 03 AC 04 58    ...........X :05E3[2]
    EQUB   0,   0,   0, 144,  24,   0,   0,   0,   0,   0,   0,  32   ; 3EEF: 00 00 00 90 18 00 00 00 00 00 00 20    ...........  :05EF[2]
    EQUB  10,   0,  23,   2                                           ; 3EFB: 0A 00 17 02                            ....         :05FB[2]
; &3EFF referenced 1 time by &10A9
.L05FF
    EQUB &16                                                          ; 3EFF: 16                                     .            :05FF[2]
; &3F00 referenced 2 times by &4344, &4347
.relocated_data_600
    EQUB   7, &16                                                     ; 3F00: 07 16                                  ..           :0600[2]
    EQUS " 4CRau"                                                     ; 3F02: 20 34 43 52 61 75                       4CRau       :0602[2]
; &3F08 referenced 2 times by &0E2E, &24CD
.L0608
    EQUB &81, &96, &A0, &B4                                           ; 3F08: 81 96 A0 B4                            ....         :0608[2]
; &3F0C referenced 2 times by &0E25, &24D3
.L060C
    EQUB &C3, &D6, &E0                                                ; 3F0C: C3 D6 E0                               ...          :060C[2]
; &3F0F referenced 13 times by &1081, &1BFE, &1C41, &1CCE, &1DF5, &1E6E, &1E92, &1EC1, &1F13, &1F58, &1FAA, &236D, &23A1
.L060F
    EQUB &F4                                                          ; 3F0F: F4                                     .            :060F[2]
; &3F10 referenced 4 times by &09EB, &09F2, &2143, &2528
.L0610
    EQUS "jsrDCH:pla:tay:"                                            ; 3F10: 6A 73 72 44 43 48 3A 70 6C 61 3A 74... jsrDCH:pla:t :0610[2]
; &3F1F referenced 20 times by &0A01, &0A08, &104D, &125D, &1266, &1C06, &1C46, &1CC4, &1CCB, &1DFA, &1EB8, &1F0C, &1F26, &1F4F, &1FA3, &1FBD, &213C, &2356, &237D, &2395
.L061F
    EQUB &74                                                          ; 3F1F: 74                                     t            :061F[2]
; &3F20 referenced 5 times by &09BA, &20D9, &2110, &21EA, &252D
.L0620
    EQUB &78                                                          ; 3F20: 78                                     x            :0620[2]
; &3F21 referenced 4 times by &0A16, &0A1D, &2117, &2135
.L0621
    EQUS "a:clc:adc#5:ta"                                             ; 3F21: 61 3A 63 6C 63 3A 61 64 63 23 35 3A... a:clc:adc#5: :0621[2]
; &3F2F referenced 1 time by &0994
.L062F
    EQUB &78                                                          ; 3F2F: 78                                     x            :062F[2]
; &3F30 referenced 7 times by &09D5, &09DC, &0B86, &0E99, &0F73, &2128, &214A
.L0630
    EQUB &3A                                                          ; 3F30: 3A                                     :            :0630[2]
; &3F31 referenced 1 time by &0B89
.L0631
    EQUB &64                                                          ; 3F31: 64                                     d            :0631[2]
; &3F32 referenced 1 time by &0B8C
.L0632
    EQUB &65                                                          ; 3F32: 65                                     e            :0632[2]
; &3F33 referenced 1 time by &0B8F
.L0633
    EQUS "c&8"                                                        ; 3F33: 63 26 38                               c&8          :0633[2]
; &3F36 referenced 1 time by &0F4F
.L0636
    EQUS "8:bne"                                                      ; 3F36: 38 3A 62 6E 65                         8:bne        :0636[2]
; &3F3B referenced 1 time by &0F23
.L063B
    EQUB &43, &48                                                     ; 3F3B: 43 48                                  CH           :063B[2]
; &3F3D referenced 1 time by &0EAB
.L063D
    EQUS "H1:"                                                        ; 3F3D: 48 31 3A                               H1:          :063D[2]
; &3F40 referenced 1 time by &0EAE
.L0640
    EQUS "rts"                                                        ; 3F40: 72 74 73                               rts          :0640[2]
; &3F43 referenced 1 time by &0EB9
.L0643
    EQUB &0D, &27,   6                                                ; 3F43: 0D 27 06                               .'.          :0643[2]
; &3F46 referenced 1 time by &0EC0
.L0646
    EQUS ":.DFD lda&80:clc:adc#128:sta&80:lda&81:adc#2:sta&81:rts"    ; 3F46: 3A 2E 44 46 44 20 6C 64 61 26 38 30... :.DFD lda&80 :0646[2]
    EQUB &0D, &27,   8                                                ; 3F7D: 0D 27 08                               .'.          :067D[2]
    EQUS "1.GFst EQUB168:EQ"                                          ; 3F80: 31 2E 47 46 73 74 20 45 51 55 42 31... 1.GFst EQUB1 :0680[2]
; &3F91 referenced 1 time by &0EBC
.L0691
    EQUS "UB1"                                                        ; 3F91: 55 42 31                               UB1          :0691[2]
; &3F94 referenced 1 time by &0EC3
.L0694
    EQUS "48:"                                                        ; 3F94: 34 38 3A                               48:          :0694[2]
; &3F97 referenced 1 time by &0EB1
.L0697
    EQUS "EQU"                                                        ; 3F97: 45 51 55                               EQU          :0697[2]
; &3F9A referenced 1 time by &0EB4
.L069A
    EQUB &42, &31                                                     ; 3F9A: 42 31                                  B1           :069A[2]
; &3F9C referenced 1 time by &0F49
.L069C
    EQUS "96:EQ"                                                      ; 3F9C: 39 36 3A 45 51                         96:EQ        :069C[2]
; &3FA1 referenced 1 time by &0F1D
.L06A1
    EQUS "UB168:EQUB184"                                              ; 3FA1: 55 42 31 36 38 3A 45 51 55 42 31 38... UB168:EQUB18 :06A1[2]
    EQUB &0D, &27, &0B, &CF                                           ; 3FAE: 0D 27 0B CF                            .'..         :06AE[2]
    EQUS ".CANP EQUB116:EQUB80:EQUB100:EQUB68:EQUB100:EQUB68:EQUB1"   ; 3FB2: 2E 43 41 4E 50 20 45 51 55 42 31 31... .CANP EQUB11 :06B2[2]
    EQUS "00:EQUB68:EQUB120:EQUB"                                     ; 3FEA: 30 30 3A 45 51 55 42 36 38 3A 45 51... 00:EQUB68:EQ :06EA[2]
; &4000 referenced 9 times by &0A46, &10E4, &113E, &1560, &1589, &15B2, &15C1, &4326, &4329
.L0700
    ORG data_to_relocate_3D00 + (L0700 - relocated_data_400)
    COPYBLOCK relocated_data_400, L0700, data_to_relocate_3D00
    CLEAR relocated_data_400, L0700

; &4000 referenced 9 times by &0A46, &10E4, &113E, &1560, &1589, &15B2, &15C1, &4326, &4329
.data_to_relocate_4000
; &4000 referenced 9 times by &0A46, &10E4, &113E, &1560, &1589, &15B2, &15C1, &4326, &4329

    ORG &0900
; &4000 referenced 9 times by &0A46, &10E4, &113E, &1560, &1589, &15B2, &15C1, &4326, &4329
.relocated_data_900
    LDA L00FF                                                         ; 4000: A5 FF                                  ..           :0900[1]
    BPL C0907                                                         ; 4002: 10 03                                  ..           :0902[1]
    JMP game_over_routine                                             ; 4004: 4C 10 16                               L..          :0904[1]

; &4007 referenced 1 time by &0902
.C0907
    JSR sub_C26DD                                                     ; 4007: 20 DD 26                                .&          :0907[1]
    BEQ C091B                                                         ; 400A: F0 0F                                  ..           :090A[1]
; &400C referenced 1 time by &090F
.loop_C090C
    JSR sub_C26DD                                                     ; 400C: 20 DD 26                                .&          :090C[1]
    BNE loop_C090C                                                    ; 400F: D0 FB                                  ..           :090F[1]
; &4011 referenced 1 time by &0914
.loop_C0911
    JSR sub_C26DD                                                     ; 4011: 20 DD 26                                .&          :0911[1]
    BEQ loop_C0911                                                    ; 4014: F0 FB                                  ..           :0914[1]
; &4016 referenced 1 time by &0919
.loop_C0916
    JSR sub_C26DD                                                     ; 4016: 20 DD 26                                .&          :0916[1]
    BNE loop_C0916                                                    ; 4019: D0 FB                                  ..           :0919[1]
; &401B referenced 3 times by &090A, &0937, &0985
.C091B
    LDA sound_on_off_flag_or_maybe_mask                               ; 401B: A5 0A                                  ..           :091B[1]
    BEQ C0987                                                         ; 401D: F0 68                                  .h           :091D[1]
    LDA #&F6                                                          ; 401F: A9 F6                                  ..           :091F[1]
    STA zp7A_sound_amplitude                                          ; 4021: 85 7A                                  .z           :0921[1]
    LDY #2                                                            ; 4023: A0 02                                  ..           :0923[1]
    LDX L000C                                                         ; 4025: A6 0C                                  ..           :0925[1]
    BEQ C0987                                                         ; 4027: F0 5E                                  .^           :0927[1]
    LDA L2797,X                                                       ; 4029: BD 97 27                               ..'          :0929[1]
    STA zp7C_sound_pitch                                              ; 402C: 85 7C                                  .|           :092C[1]
    LDA L2858,X                                                       ; 402E: BD 58 28                               .X(          :092E[1]
    BNE C093A                                                         ; 4031: D0 07                                  ..           :0931[1]
    LDA zp7C_sound_pitch                                              ; 4033: A5 7C                                  .|           :0933[1]
    STA L000C                                                         ; 4035: 85 0C                                  ..           :0935[1]
    JMP C091B                                                         ; 4037: 4C 1B 09                               L..          :0937[1]

; &403A referenced 1 time by &0931
.C093A
    BPL C0941                                                         ; 403A: 10 05                                  ..           :093A[1]
    INY                                                               ; 403C: C8                                     .            :093C[1]
    AND #&7F                                                          ; 403D: 29 7F                                  ).           :093D[1]
    INC zp7A_sound_amplitude                                          ; 403F: E6 7A                                  .z           :093F[1]
; &4041 referenced 1 time by &093A
.C0941
    STY zp78_sound_channel                                            ; 4041: 84 78                                  .x           :0941[1]
    STA zp7E_sound_duration                                           ; 4043: 85 7E                                  .~           :0943[1]
    LDA #0                                                            ; 4045: A9 00                                  ..           :0945[1]
    STA zero_page_80_dest_screenaddr                                  ; 4047: 85 80                                  ..           :0947[1]
    CPX #&65 ; 'e'                                                    ; 4049: E0 65                                  .e           :0949[1]
    BCS C0965                                                         ; 404B: B0 18                                  ..           :094B[1]
    INC zero_page_80_dest_screenaddr                                  ; 404D: E6 80                                  ..           :094D[1]
    CPX #&1B                                                          ; 404F: E0 1B                                  ..           :094F[1]
    BCC C0965                                                         ; 4051: 90 12                                  ..           :0951[1]
    CPX #&55 ; 'U'                                                    ; 4053: E0 55                                  .U           :0953[1]
    BCS C0965                                                         ; 4055: B0 0E                                  ..           :0955[1]
    LDX L000B                                                         ; 4057: A6 0B                                  ..           :0957[1]
    BEQ C0965                                                         ; 4059: F0 0A                                  ..           :0959[1]
    LDA zp7E_sound_duration                                           ; 405B: A5 7E                                  .~           :095B[1]
    LSR A                                                             ; 405D: 4A                                     J            :095D[1]
    CLC                                                               ; 405E: 18                                     .            :095E[1]
    ADC zp7E_sound_duration                                           ; 405F: 65 7E                                  e~           :095F[1]
    STA zp7E_sound_duration                                           ; 4061: 85 7E                                  .~           :0961[1]
    ASL zero_page_80_dest_screenaddr                                  ; 4063: 06 80                                  ..           :0963[1]
; &4065 referenced 4 times by &094B, &0951, &0955, &0959
.C0965
    LDX #&F9                                                          ; 4065: A2 F9                                  ..           :0965[1]
    CPY #2                                                            ; 4067: C0 02                                  ..           :0967[1]
    BEQ C096C                                                         ; 4069: F0 01                                  ..           :0969[1]
    DEX                                                               ; 406B: CA                                     .            :096B[1]
; &406C referenced 1 time by &0969
.C096C
    LDA #osbyte_read_adc_or_get_buffer_status                         ; 406C: A9 80                                  ..           :096C[1]
    JSR osbyte                                                        ; 406E: 20 F4 FF                                ..          :096E[1]   ; Read buffer status or ADC channel
    CPX #8                                                            ; 4071: E0 08                                  ..           :0971[1]
    BCC C0987                                                         ; 4073: 90 12                                  ..           :0973[1]
    JSR compile_sound_data_at_zp78                                    ; 4075: 20 98 0B                                ..          :0975[1]
    LDX #0                                                            ; 4078: A2 00                                  ..           :0978[1]
    STX zp7A_sound_amplitude                                          ; 407A: 86 7A                                  .z           :097A[1]
    LDA zero_page_80_dest_screenaddr                                  ; 407C: A5 80                                  ..           :097C[1]
    STA zp7E_sound_duration                                           ; 407E: 85 7E                                  .~           :097E[1]
    JSR compile_sound_data_at_zp78                                    ; 4080: 20 98 0B                                ..          :0980[1]
    INC L000C                                                         ; 4083: E6 0C                                  ..           :0983[1]
    BNE C091B                                                         ; 4085: D0 94                                  ..           :0985[1]
; &4087 referenced 4 times by &091D, &0927, &0973, &098A
.C0987
    BIT user_via_ifr                                                  ; 4087: 2C 6D FE                               ,m.          :0987[1]
    BVC C0987                                                         ; 408A: 50 FB                                  P.           :098A[1]
    LDA user_via_t1c_l                                                ; 408C: AD 64 FE                               .d.          :098C[1]
    RTS                                                               ; 408F: 60                                     `            :098F[1]

; &4090 referenced 1 time by &12D9
.sub_C0990
    LDA #0                                                            ; 4090: A9 00                                  ..           :0990[1]
    LDY #&D0                                                          ; 4092: A0 D0                                  ..           :0992[1]
; &4094 referenced 1 time by &0998
.loop_C0994
    STA L062F,Y                                                       ; 4094: 99 2F 06                               ./.          :0994[1]
    DEY                                                               ; 4097: 88                                     .            :0997[1]
    BNE loop_C0994                                                    ; 4098: D0 FA                                  ..           :0998[1]
    STY L00A0                                                         ; 409A: 84 A0                                  ..           :099A[1]
    STY L00A2                                                         ; 409C: 84 A2                                  ..           :099C[1]
    LDA #7                                                            ; 409E: A9 07                                  ..           :099E[1]
    STA L00A1                                                         ; 40A0: 85 A1                                  ..           :09A0[1]
    LDY L0001                                                         ; 40A2: A4 01                                  ..           :09A2[1]
    LDA L0720,Y                                                       ; 40A4: B9 20 07                               . .          :09A4[1]
    LSR A                                                             ; 40A7: 4A                                     J            :09A7[1]
.sub_C09A8
L09A9 = sub_C09A8+1
    BCS C09B8                                                         ; 40A8: B0 0E                                  ..           :09A8[1]
    LDX L0022                                                         ; 40AA: A6 22                                  ."           :09AA[1]
    CPX #2                                                            ; 40AC: E0 02                                  ..           :09AC[1]
    BCS C09B3                                                         ; 40AE: B0 03                                  ..           :09AE[1]
    INY                                                               ; 40B0: C8                                     .            :09B0[1]
    BNE C09B8                                                         ; 40B1: D0 05                                  ..           :09B1[1]
; &40B3 referenced 1 time by &09AE
.C09B3
    TYA                                                               ; 40B3: 98                                     .            :09B3[1]
    CLC                                                               ; 40B4: 18                                     .            :09B4[1]
    ADC #&10                                                          ; 40B5: 69 10                                  i.           :09B5[1]
    TAY                                                               ; 40B7: A8                                     .            :09B7[1]
; &40B8 referenced 2 times by &09A8, &09B1
.C09B8
    LDA #1                                                            ; 40B8: A9 01                                  ..           :09B8[1]
    STA L0620,Y                                                       ; 40BA: 99 20 06                               . .          :09BA[1]
    ASL A                                                             ; 40BD: 0A                                     .            :09BD[1]
    STA L00A3                                                         ; 40BE: 85 A3                                  ..           :09BE[1]
    LDX #&0F                                                          ; 40C0: A2 0F                                  ..           :09C0[1]
    BNE C09C9                                                         ; 40C2: D0 05                                  ..           :09C2[1]
; &40C4 referenced 2 times by &0A28, &0A3D
.C09C4
    LDY L00A2                                                         ; 40C4: A4 A2                                  ..           :09C4[1]
    LDA (L00A0),Y                                                     ; 40C6: B1 A0                                  ..           :09C6[1]
    TAY                                                               ; 40C8: A8                                     .            :09C8[1]
; &40C9 referenced 1 time by &09C2
.C09C9
    LDA L0720,Y                                                       ; 40C9: B9 20 07                               . .          :09C9[1]
    LSR A                                                             ; 40CC: 4A                                     J            :09CC[1]
    BCC C0A26                                                         ; 40CD: 90 57                                  .W           :09CD[1]
    LSR A                                                             ; 40CF: 4A                                     J            :09CF[1]
    LSR A                                                             ; 40D0: 4A                                     J            :09D0[1]
    STA zero_page_80_dest_screenaddr                                  ; 40D1: 85 80                                  ..           :09D1[1]
    BCC C09E7                                                         ; 40D3: 90 12                                  ..           :09D3[1]
    LDA L0630,Y                                                       ; 40D5: B9 30 06                               .0.          :09D5[1]
    BNE C09E7                                                         ; 40D8: D0 0D                                  ..           :09D8[1]
    LDA L00A3                                                         ; 40DA: A5 A3                                  ..           :09DA[1]
    STA L0630,Y                                                       ; 40DC: 99 30 06                               .0.          :09DC[1]
    INX                                                               ; 40DF: E8                                     .            :09DF[1]
    TYA                                                               ; 40E0: 98                                     .            :09E0[1]
    CLC                                                               ; 40E1: 18                                     .            :09E1[1]
    ADC #&10                                                          ; 40E2: 69 10                                  i.           :09E2[1]
    STA L0700,X                                                       ; 40E4: 9D 00 07                               ...          :09E4[1]
; &40E7 referenced 2 times by &09D3, &09D8
.C09E7
    LSR zero_page_80_dest_screenaddr                                  ; 40E7: 46 80                                  F.           :09E7[1]
    BCC C09FD                                                         ; 40E9: 90 12                                  ..           :09E9[1]
    LDA L0610,Y                                                       ; 40EB: B9 10 06                               ...          :09EB[1]
    BNE C09FD                                                         ; 40EE: D0 0D                                  ..           :09EE[1]
    LDA L00A3                                                         ; 40F0: A5 A3                                  ..           :09F0[1]
    STA L0610,Y                                                       ; 40F2: 99 10 06                               ...          :09F2[1]
    INX                                                               ; 40F5: E8                                     .            :09F5[1]
    TYA                                                               ; 40F6: 98                                     .            :09F6[1]
    SEC                                                               ; 40F7: 38                                     8            :09F7[1]
    SBC #&10                                                          ; 40F8: E9 10                                  ..           :09F8[1]
    STA L0700,X                                                       ; 40FA: 9D 00 07                               ...          :09FA[1]
; &40FD referenced 2 times by &09E9, &09EE
.C09FD
    LSR zero_page_80_dest_screenaddr                                  ; 40FD: 46 80                                  F.           :09FD[1]
.sub_C09FF
relocated_data_A00 = sub_C09FF+1
    BCC C0A12                                                         ; 40FF: 90 11                                  ..           :09FF[1]
; &4100 referenced 2 times by &432C, &432F
    LDA L061F,Y                                                       ; 4101: B9 1F 06                               ...          :0A01[1]
    BNE C0A12                                                         ; 4104: D0 0C                                  ..           :0A04[1]
    LDA L00A3                                                         ; 4106: A5 A3                                  ..           :0A06[1]
    STA L061F,Y                                                       ; 4108: 99 1F 06                               ...          :0A08[1]
    INX                                                               ; 410B: E8                                     .            :0A0B[1]
    DEY                                                               ; 410C: 88                                     .            :0A0C[1]
    TYA                                                               ; 410D: 98                                     .            :0A0D[1]
    INY                                                               ; 410E: C8                                     .            :0A0E[1]
    STA L0700,X                                                       ; 410F: 9D 00 07                               ...          :0A0F[1]
; &4112 referenced 2 times by &09FF, &0A04
.C0A12
    LSR zero_page_80_dest_screenaddr                                  ; 4112: 46 80                                  F.           :0A12[1]
    BCC C0A26                                                         ; 4114: 90 10                                  ..           :0A14[1]
    LDA L0621,Y                                                       ; 4116: B9 21 06                               .!.          :0A16[1]
    BNE C0A26                                                         ; 4119: D0 0B                                  ..           :0A19[1]
    LDA L00A3                                                         ; 411B: A5 A3                                  ..           :0A1B[1]
    STA L0621,Y                                                       ; 411D: 99 21 06                               .!.          :0A1D[1]
    INX                                                               ; 4120: E8                                     .            :0A20[1]
    INY                                                               ; 4121: C8                                     .            :0A21[1]
    TYA                                                               ; 4122: 98                                     .            :0A22[1]
    STA L0700,X                                                       ; 4123: 9D 00 07                               ...          :0A23[1]
; &4126 referenced 3 times by &09CD, &0A14, &0A19
.C0A26
    DEC L00A2                                                         ; 4126: C6 A2                                  ..           :0A26[1]
    BPL C09C4                                                         ; 4128: 10 9A                                  ..           :0A28[1]
    TXA                                                               ; 412A: 8A                                     .            :0A2A[1]
    AND #&0F                                                          ; 412B: 29 0F                                  ).           :0A2B[1]
    STA L00A2                                                         ; 412D: 85 A2                                  ..           :0A2D[1]
    LDA L00A0                                                         ; 412F: A5 A0                                  ..           :0A2F[1]
    TAX                                                               ; 4131: AA                                     .            :0A31[1]
    DEX                                                               ; 4132: CA                                     .            :0A32[1]
    EOR #&10                                                          ; 4133: 49 10                                  I.           :0A33[1]
    STA L00A0                                                         ; 4135: 85 A0                                  ..           :0A35[1]
    INC L00A3                                                         ; 4137: E6 A3                                  ..           :0A37[1]
    LDA L00A2                                                         ; 4139: A5 A2                                  ..           :0A39[1]
    CMP #&0F                                                          ; 413B: C9 0F                                  ..           :0A3B[1]
    BNE C09C4                                                         ; 413D: D0 85                                  ..           :0A3D[1]
    RTS                                                               ; 413F: 60                                     `            :0A3F[1]

; &4140 referenced 7 times by &10C8, &114F, &11BF, &11D8, &1245, &15DA, &162F
.C0A40
    STA L00A0                                                         ; 4140: 85 A0                                  ..           :0A40[1]
    TXA                                                               ; 4142: 8A                                     .            :0A42[1]
    PHA                                                               ; 4143: 48                                     H            :0A43[1]
    TYA                                                               ; 4144: 98                                     .            :0A44[1]
    PHA                                                               ; 4145: 48                                     H            :0A45[1]
; &4146 referenced 1 time by &0A4B
.loop_C0A46
    JSR relocated_data_900                                            ; 4146: 20 00 09                                ..          :0A46[1]
    DEC L00A0                                                         ; 4149: C6 A0                                  ..           :0A49[1]
    BNE loop_C0A46                                                    ; 414B: D0 F9                                  ..           :0A4B[1]
    PLA                                                               ; 414D: 68                                     h            :0A4D[1]
    TAY                                                               ; 414E: A8                                     .            :0A4E[1]
    PLA                                                               ; 414F: 68                                     h            :0A4F[1]
    TAX                                                               ; 4150: AA                                     .            :0A50[1]
    RTS                                                               ; 4151: 60                                     `            :0A51[1]

; &4152 referenced 3 times by &108E, &1226, &128B
.sub_C0A52
    LDX #&23 ; '#'                                                    ; 4152: A2 23                                  .#           :0A52[1]
    LDY #&81                                                          ; 4154: A0 81                                  ..           :0A54[1]
    BNE write_sprite_to_screen_routine                                ; 4156: D0 1B                                  ..           :0A56[1]
; &4158 referenced 4 times by &11DB, &1240, &15D0, &1A9D
.sub_C0A58
    LDA #8                                                            ; 4158: A9 08                                  ..           :0A58[1]   ; Select sprite 8 to write (???)
    BNE write_sprite_to_screen_routine                                ; 415A: D0 17                                  ..           :0A5A[1]
; &415C referenced 11 times by &10D3, &1174, &13F3, &1404, &147E, &14BA, &14DB, &1555, &1558, &155D, &1CB1
.sub_C0A5C
    LDA L001B                                                         ; 415C: A5 1B                                  ..           :0A5C[1]
    BNE C0A63                                                         ; 415E: D0 03                                  ..           :0A5E[1]
    JSR sub_C2695                                                     ; 4160: 20 95 26                                .&          :0A60[1]
; &4163 referenced 1 time by &0A5E
.C0A63
    LDA L0020                                                         ; 4163: A5 20                                  .            :0A63[1]
    LSR A                                                             ; 4165: 4A                                     J            :0A65[1]
    TAX                                                               ; 4166: AA                                     .            :0A66[1]
    LDY L0021                                                         ; 4167: A4 21                                  .!           :0A67[1]
    TYA                                                               ; 4169: 98                                     .            :0A69[1]
    LSR A                                                             ; 416A: 4A                                     J            :0A6A[1]
    EOR L0020                                                         ; 416B: 45 20                                  E            :0A6B[1]
    AND #4                                                            ; 416D: 29 04                                  ).           :0A6D[1]
    ORA L0022                                                         ; 416F: 05 22                                  ."           :0A6F[1]
    ORA #8                                                            ; 4171: 09 08                                  ..           :0A71[1]
; ***************************************************************************************
; Writes a sprite to the screen
; 
; On Entry:
;     A: sprite number
;     X: X screen coordinate
;     Y: Y screen coordinate
; &4173 referenced 13 times by &0A56, &0A5A, &0B1B, &11BA, &11C8, &154F, &1E0D, &1FFD, &200A, &200F, &201D, &2479, &270C
.write_sprite_to_screen_routine
    LSR A                                                             ; 4173: 4A                                     J            :0A73[1]   ; Calculate address for sprite in memory (&3400*(A*&40))
    STA zero_page_85_source_spriteaddr                                ; 4174: 85 85                                  ..           :0A74[1]
    LDA #0                                                            ; 4176: A9 00                                  ..           :0A76[1]
    ROR A                                                             ; 4178: 6A                                     j            :0A78[1]
    LSR zero_page_85_source_spriteaddr                                ; 4179: 46 85                                  F.           :0A79[1]
    ROR A                                                             ; 417B: 6A                                     j            :0A7B[1]
    STA zero_page_84_source_spriteaddr                                ; 417C: 85 84                                  ..           :0A7C[1]
    LDA zero_page_85_source_spriteaddr                                ; 417E: A5 85                                  ..           :0A7E[1]
    ADC #&29 ; ')'                                                    ; 4180: 69 29                                  i)           :0A80[1]
    STA zero_page_85_source_spriteaddr                                ; 4182: 85 85                                  ..           :0A82[1]
; &4184 referenced 9 times by &0B74, &1BD1, &1BD9, &1D2F, &1E35, &1E4C, &23DA, &25DF, &2668
.C0A84
    JSR calculate_screen_write_address_from_x_y_coords                ; 4184: 20 D3 0A                                ..          :0A84[1]
    STX L0089                                                         ; 4187: 86 89                                  ..           :0A87[1]
    STY L008A                                                         ; 4189: 84 8A                                  ..           :0A89[1]
    LDX L0018                                                         ; 418B: A6 18                                  ..           :0A8B[1]
; &418D referenced 2 times by &0ABD, &0ACC
.loop_write_next_two_pixels
    LDY L0017                                                         ; 418D: A4 17                                  ..           :0A8D[1]
; &418F referenced 1 time by &0A9A
.write_sprite_to_screen_memory
    LDA (zero_page_84_source_spriteaddr),Y                            ; 418F: B1 84                                  ..           :0A8F[1]
; &4191 referenced 3 times by &0B11, &0B20, &0B62
.self_modified_code_1_1
self_modified_code_1_2 = self_modified_code_1_1+1
    EOR (zero_page_80_dest_screenaddr),Y                              ; 4191: 51 80                                  Q.           :0A91[1]
; &4192 referenced 3 times by &0B16, &0B25, &0B67
; &4193 referenced 4 times by &0B07, &0B2D, &0B48, &0B6C
.self_modified_code_1_3
self_modified_code_1_4 = self_modified_code_1_3+1
    STA (zero_page_80_dest_screenaddr),Y                              ; 4193: 91 80                                  ..           :0A93[1]   ; zp 80 writes to screen memory (print sprite)
; &4194 referenced 3 times by &0B0C, &0B28, &0B71
    TYA                                                               ; 4195: 98                                     .            :0A95[1]
    SEC                                                               ; 4196: 38                                     8            :0A96[1]
    SBC #8                                                            ; 4197: E9 08                                  ..           :0A97[1]
    TAY                                                               ; 4199: A8                                     .            :0A99[1]
    BPL write_sprite_to_screen_memory                                 ; 419A: 10 F3                                  ..           :0A9A[1]
    DEX                                                               ; 419C: CA                                     .            :0A9C[1]
    BEQ C0ACE                                                         ; 419D: F0 2F                                  ./           :0A9D[1]
    INC zero_page_84_source_spriteaddr                                ; 419F: E6 84                                  ..           :0A9F[1]
    BNE C0AA5                                                         ; 41A1: D0 02                                  ..           :0AA1[1]
    INC zero_page_85_source_spriteaddr                                ; 41A3: E6 85                                  ..           :0AA3[1]
; &41A5 referenced 1 time by &0AA1
.C0AA5
    LDA zero_page_84_source_spriteaddr                                ; 41A5: A5 84                                  ..           :0AA5[1]
    AND #7                                                            ; 41A7: 29 07                                  ).           :0AA7[1]
    BNE possible_increment_screen_address                             ; 41A9: D0 0B                                  ..           :0AA9[1]
    LDA zero_page_84_source_spriteaddr                                ; 41AB: A5 84                                  ..           :0AAB[1]
    CLC                                                               ; 41AD: 18                                     .            :0AAD[1]
    ADC L0017                                                         ; 41AE: 65 17                                  e.           :0AAE[1]
    STA zero_page_84_source_spriteaddr                                ; 41B0: 85 84                                  ..           :0AB0[1]
    BCC possible_increment_screen_address                             ; 41B2: 90 02                                  ..           :0AB2[1]
    INC zero_page_85_source_spriteaddr                                ; 41B4: E6 85                                  ..           :0AB4[1]
; &41B6 referenced 2 times by &0AA9, &0AB2
.possible_increment_screen_address
    INC zero_page_80_dest_screenaddr                                  ; 41B6: E6 80                                  ..           :0AB6[1]
    LDY zero_page_80_dest_screenaddr                                  ; 41B8: A4 80                                  ..           :0AB8[1]
    TYA                                                               ; 41BA: 98                                     .            :0ABA[1]
    AND #7                                                            ; 41BB: 29 07                                  ).           :0ABB[1]
    BNE loop_write_next_two_pixels                                    ; 41BD: D0 CE                                  ..           :0ABD[1]
    DEY                                                               ; 41BF: 88                                     .            :0ABF[1]
    TYA                                                               ; 41C0: 98                                     .            :0AC0[1]
    CLC                                                               ; 41C1: 18                                     .            :0AC1[1]   ; increment screen address by one whole line (finished printing top line, now print bottom
    ADC #&79 ; 'y'                                                    ; 41C2: 69 79                                  iy           :0AC2[1]
    STA zero_page_80_dest_screenaddr                                  ; 41C4: 85 80                                  ..           :0AC4[1]
    LDA zero_page_81_dest_screenaddr                                  ; 41C6: A5 81                                  ..           :0AC6[1]
    ADC #2                                                            ; 41C8: 69 02                                  i.           :0AC8[1]
    STA zero_page_81_dest_screenaddr                                  ; 41CA: 85 81                                  ..           :0ACA[1]
    BCC loop_write_next_two_pixels                                    ; 41CC: 90 BF                                  ..           :0ACC[1]
; &41CE referenced 1 time by &0A9D
.C0ACE
    LDX L0089                                                         ; 41CE: A6 89                                  ..           :0ACE[1]
    LDY L008A                                                         ; 41D0: A4 8A                                  ..           :0AD0[1]
    RTS                                                               ; 41D2: 60                                     `            :0AD2[1]

; &41D3 referenced 3 times by &0A84, &170D, &2698
.calculate_screen_write_address_from_x_y_coords
    TXA                                                               ; 41D3: 8A                                     .            :0AD3[1]   ; X Screen offset calulation begins (Only values 127-0 are used, each value represents two pixels wide)
    ASL A                                                             ; 41D4: 0A                                     .            :0AD4[1]   ; X coord * 4 (Only values 127-0 are used)
    ASL A                                                             ; 41D5: 0A                                     .            :0AD5[1]
    STA zero_page_82                                                  ; 41D6: 85 82                                  ..           :0AD6[1]
    LDA #0                                                            ; 41D8: A9 00                                  ..           :0AD8[1]
    ROL A                                                             ; 41DA: 2A                                     *            :0ADA[1]   ; Shift overflowed bits into MSB
    ASL zero_page_82                                                  ; 41DB: 06 82                                  ..           :0ADB[1]
    ROL A                                                             ; 41DD: 2A                                     *            :0ADD[1]
    STA zero_page_83                                                  ; 41DE: 85 83                                  ..           :0ADE[1]
    TYA                                                               ; 41E0: 98                                     .            :0AE0[1]   ; Y Screen offset calulatiom begins Y=lllllnnn, where lllll = line number, nnn = offset within that line (0-7)
    AND #7                                                            ; 41E1: 29 07                                  ).           :0AE1[1]
    ASL A                                                             ; 41E3: 0A                                     .            :0AE3[1]
    STA zero_page_80_dest_screenaddr                                  ; 41E4: 85 80                                  ..           :0AE4[1]
    TYA                                                               ; 41E6: 98                                     .            :0AE6[1]
    AND #&F8                                                          ; 41E7: 29 F8                                  ).           :0AE7[1]
    LSR A                                                             ; 41E9: 4A                                     J            :0AE9[1]
    LSR A                                                             ; 41EA: 4A                                     J            :0AEA[1]
    STA L008F                                                         ; 41EB: 85 8F                                  ..           :0AEB[1]
    LSR A                                                             ; 41ED: 4A                                     J            :0AED[1]
    LSR A                                                             ; 41EE: 4A                                     J            :0AEE[1]
    ROR zero_page_80_dest_screenaddr                                  ; 41EF: 66 80                                  f.           :0AEF[1]
    CLC                                                               ; 41F1: 18                                     .            :0AF1[1]
    ADC L008F                                                         ; 41F2: 65 8F                                  e.           :0AF2[1]
    ADC zero_page_83                                                  ; 41F4: 65 83                                  e.           :0AF4[1]
    ADC #&30 ; '0'                                                    ; 41F6: 69 30                                  i0           :0AF6[1]   ; We have memory offset address for printing spite. Add &3000 (start address of mode 2 to make it point to correct screen memory location
    STA zero_page_81_dest_screenaddr                                  ; 41F8: 85 81                                  ..           :0AF8[1]
    LDA zero_page_80_dest_screenaddr                                  ; 41FA: A5 80                                  ..           :0AFA[1]
    ADC zero_page_82                                                  ; 41FC: 65 82                                  e.           :0AFC[1]
    STA zero_page_80_dest_screenaddr                                  ; 41FE: 85 80                                  ..           :0AFE[1]
; &4200 referenced 2 times by &4332, &4335
.relocated_data_B00
    BCC skip_screenaddr_msb_increment                                 ; 4200: 90 02                                  ..           :0B00[1]
    INC zero_page_81_dest_screenaddr                                  ; 4202: E6 81                                  ..           :0B02[1]
; &4204 referenced 1 time by &0B00
.skip_screenaddr_msb_increment
    RTS                                                               ; 4204: 60                                     `            :0B04[1]

; &4205 referenced 4 times by &2721, &2744, &2757, &2776
.set_self_modified_code_1_NOP_JSR_0B31
    LDA #&31 ; '1'                                                    ; 4205: A9 31                                  .1           :0B05[1]
    STA self_modified_code_1_3                                        ; 4207: 8D 93 0A                               ...          :0B07[1]
    LDA #&0B                                                          ; 420A: A9 0B                                  ..           :0B0A[1]
; &420C referenced 1 time by &0B4D
.set_self_modified_code_1_NOP_JSRabs
    STA self_modified_code_1_4                                        ; 420C: 8D 94 0A                               ...          :0B0C[1]
    LDA #&EA                                                          ; 420F: A9 EA                                  ..           :0B0F[1]
    STA self_modified_code_1_1                                        ; 4211: 8D 91 0A                               ...          :0B11[1]
    LDA #&20 ; ' '                                                    ; 4214: A9 20                                  .            :0B14[1]
    STA self_modified_code_1_2                                        ; 4216: 8D 92 0A                               ...          :0B16[1]
    LDA #6                                                            ; 4219: A9 06                                  ..           :0B19[1]   ; Select sprite 6 to write (cherry)
    JSR write_sprite_to_screen_routine                                ; 421B: 20 73 0A                                s.          :0B1B[1]
; &421E referenced 1 time by &0B7A
.set_sprite_code_to_eor_with_background
    LDA #&51 ; 'Q'                                                    ; 421E: A9 51                                  .Q           :0B1E[1]
    STA self_modified_code_1_1                                        ; 4220: 8D 91 0A                               ...          :0B20[1]
    LDA #&80                                                          ; 4223: A9 80                                  ..           :0B23[1]
    STA self_modified_code_1_2                                        ; 4225: 8D 92 0A                               ...          :0B25[1]
    STA self_modified_code_1_4                                        ; 4228: 8D 94 0A                               ...          :0B28[1]
    LDA #&91                                                          ; 422B: A9 91                                  ..           :0B2B[1]
    STA self_modified_code_1_3                                        ; 422D: 8D 93 0A                               ...          :0B2D[1]
    RTS                                                               ; 4230: 60                                     `            :0B30[1]

.unknown_mod_1
    PHA                                                               ; 4231: 48                                     H            :0B31[1]
    AND #&C0                                                          ; 4232: 29 C0                                  ).           :0B32[1]
    STA L0087                                                         ; 4234: 85 87                                  ..           :0B34[1]
    LSR A                                                             ; 4236: 4A                                     J            :0B36[1]
    LSR A                                                             ; 4237: 4A                                     J            :0B37[1]
    ORA L0087                                                         ; 4238: 05 87                                  ..           :0B38[1]
    AND (zero_page_80_dest_screenaddr),Y                              ; 423A: 31 80                                  1.           :0B3A[1]
    STA (zero_page_80_dest_screenaddr),Y                              ; 423C: 91 80                                  ..           :0B3C[1]   ; zp 80 writes to screen memory (print sprite)
    PLA                                                               ; 423E: 68                                     h            :0B3E[1]
.unknown_mod_2
    AND #&3F ; '?'                                                    ; 423F: 29 3F                                  )?           :0B3F[1]
    EOR (zero_page_80_dest_screenaddr),Y                              ; 4241: 51 80                                  Q.           :0B41[1]
    STA (zero_page_80_dest_screenaddr),Y                              ; 4243: 91 80                                  ..           :0B43[1]   ; zp 80 writes to screen memory (print sprite)
    RTS                                                               ; 4245: 60                                     `            :0B45[1]

; &4246 referenced 1 time by &1B47
.set_self_modified_code_1_NOP_JSR_0B3F
    LDA #&3F ; '?'                                                    ; 4246: A9 3F                                  .?           :0B46[1]
    STA self_modified_code_1_3                                        ; 4248: 8D 93 0A                               ...          :0B48[1]
    LDA #&0B                                                          ; 424B: A9 0B                                  ..           :0B4B[1]
    BNE set_self_modified_code_1_NOP_JSRabs                           ; 424D: D0 BD                                  ..           :0B4D[1]
; &424F referenced 5 times by &120B, &1AC2, &24A8, &250D, &2718
.C0B4F
    AND #7                                                            ; 424F: 29 07                                  ).           :0B4F[1]
    ASL A                                                             ; 4251: 0A                                     .            :0B51[1]
    ASL A                                                             ; 4252: 0A                                     .            :0B52[1]
    ASL A                                                             ; 4253: 0A                                     .            :0B53[1]
    ASL A                                                             ; 4254: 0A                                     .            :0B54[1]
    STA zero_page_84_source_spriteaddr                                ; 4255: 85 84                                  ..           :0B55[1]
    LDA #4                                                            ; 4257: A9 04                                  ..           :0B57[1]
    STA zero_page_85_source_spriteaddr                                ; 4259: 85 85                                  ..           :0B59[1]
    ASL A                                                             ; 425B: 0A                                     .            :0B5B[1]
    STA L0017                                                         ; 425C: 85 17                                  ..           :0B5C[1]
    STA L0018                                                         ; 425E: 85 18                                  ..           :0B5E[1]
    LDA #&EA                                                          ; 4260: A9 EA                                  ..           :0B60[1]
    STA self_modified_code_1_1                                        ; 4262: 8D 91 0A                               ...          :0B62[1]
    LDA #&20 ; ' '                                                    ; 4265: A9 20                                  .            :0B65[1]
    STA self_modified_code_1_2                                        ; 4267: 8D 92 0A                               ...          :0B67[1]
    LDA #&7D ; '}'                                                    ; 426A: A9 7D                                  .}           :0B6A[1]
    STA self_modified_code_1_3                                        ; 426C: 8D 93 0A                               ...          :0B6C[1]
    LDA #&0B                                                          ; 426F: A9 0B                                  ..           :0B6F[1]
    STA self_modified_code_1_4                                        ; 4271: 8D 94 0A                               ...          :0B71[1]
    JSR C0A84                                                         ; 4274: 20 84 0A                                ..          :0B74[1]
    JSR store_x18_to_0017_and_x10_to_0018                             ; 4277: 20 50 26                                P&          :0B77[1]
    JMP set_sprite_code_to_eor_with_background                        ; 427A: 4C 1E 0B                               L..          :0B7A[1]

    EQUB &25, &97, &51, &80, &91, &80, &60                            ; 427D: 25 97 51 80 91 80 60                   %.Q...`      :0B7D[1]

; &4284 referenced 5 times by &0EA4, &0EDC, &0EF5, &0F0B, &0F37
.sub_C0B84
    LDA #0                                                            ; 4284: A9 00                                  ..           :0B84[1]
    STA L0630,X                                                       ; 4286: 9D 30 06                               .0.          :0B86[1]
    STA L0631,X                                                       ; 4289: 9D 31 06                               .1.          :0B89[1]
    STA L0632,X                                                       ; 428C: 9D 32 06                               .2.          :0B8C[1]
    STA L0633,X                                                       ; 428F: 9D 33 06                               .3.          :0B8F[1]
    TXA                                                               ; 4292: 8A                                     .            :0B92[1]
    CLC                                                               ; 4293: 18                                     .            :0B93[1]
    ADC #6                                                            ; 4294: 69 06                                  i.           :0B94[1]
    TAX                                                               ; 4296: AA                                     .            :0B96[1]
; &4297 referenced 1 time by &0BA8
.loop_C0B97
    RTS                                                               ; 4297: 60                                     `            :0B97[1]

; &4298 referenced 8 times by &0975, &0980, &1196, &119E, &11A7, &11AF, &12B8, &12C1
.compile_sound_data_at_zp78
    LDX #&78 ; 'x'                                                    ; 4298: A2 78                                  .x           :0B98[1]
    BNE C0BA4                                                         ; 429A: D0 08                                  ..           :0B9A[1]
; &429C referenced 4 times by &12F3, &1C7A, &1CE6, &25BB
.compile_sound_data_at_zp70
    STA zp72_sound_amplitude                                          ; 429C: 85 72                                  .r           :0B9C[1]
    STX zp74_sound_pitch                                              ; 429E: 86 74                                  .t           :0B9E[1]
    STY zp76_sound_duration                                           ; 42A0: 84 76                                  .v           :0BA0[1]
    LDX #&70 ; 'p'                                                    ; 42A2: A2 70                                  .p           :0BA2[1]
; &42A4 referenced 1 time by &0B9A
.C0BA4
    LDY #0                                                            ; 42A4: A0 00                                  ..           :0BA4[1]
; &42A6 referenced 1 time by &1743
.play_sound_if_enabled
    LDA sound_on_off_flag_or_maybe_mask                               ; 42A6: A5 0A                                  ..           :0BA6[1]
    BEQ loop_C0B97                                                    ; 42A8: F0 ED                                  ..           :0BA8[1]
    JMP osword                                                        ; 42AA: 4C F1 FF                               L..          :0BAA[1]

; &42AD referenced 2 times by &131D, &260A
.sub_C0BAD
    SED                                                               ; 42AD: F8                                     .            :0BAD[1]
    PHA                                                               ; 42AE: 48                                     H            :0BAE[1]
    CLC                                                               ; 42AF: 18                                     .            :0BAF[1]
    ADC L0005                                                         ; 42B0: 65 05                                  e.           :0BB0[1]
    STA L0005                                                         ; 42B2: 85 05                                  ..           :0BB2[1]
    TXA                                                               ; 42B4: 8A                                     .            :0BB4[1]
    ADC L0006                                                         ; 42B5: 65 06                                  e.           :0BB5[1]
    STA L0006                                                         ; 42B7: 85 06                                  ..           :0BB7[1]
    LDA L0007                                                         ; 42B9: A5 07                                  ..           :0BB9[1]
    ADC #0                                                            ; 42BB: 69 00                                  i.           :0BBB[1]
    STA L0007                                                         ; 42BD: 85 07                                  ..           :0BBD[1]
    PLA                                                               ; 42BF: 68                                     h            :0BBF[1]
    CLC                                                               ; 42C0: 18                                     .            :0BC0[1]
    ADC L0028                                                         ; 42C1: 65 28                                  e(           :0BC1[1]
    STA L0028                                                         ; 42C3: 85 28                                  .(           :0BC3[1]
    TXA                                                               ; 42C5: 8A                                     .            :0BC5[1]
    ADC L0029                                                         ; 42C6: 65 29                                  e)           :0BC6[1]
    STA L0029                                                         ; 42C8: 85 29                                  .)           :0BC8[1]
    CLD                                                               ; 42CA: D8                                     .            :0BCA[1]
; &42CB referenced 1 time by &1A90
.sub_C0BCB
    LDA #&1E                                                          ; 42CB: A9 1E                                  ..           :0BCB[1]
    JSR oswrch                                                        ; 42CD: 20 EE FF                                ..          :0BCD[1]   ; Write character 30
    JSR osnewl                                                        ; 42D0: 20 E7 FF                                ..          :0BD0[1]   ; Write newline (characters 10 and 13)
    LDA #0                                                            ; 42D3: A9 00                                  ..           :0BD3[1]
    STA zero_page_82                                                  ; 42D5: 85 82                                  ..           :0BD5[1]
    LDA L0007                                                         ; 42D7: A5 07                                  ..           :0BD7[1]
    JSR sub_C0BE3                                                     ; 42D9: 20 E3 0B                                ..          :0BD9[1]
    LDA L0006                                                         ; 42DC: A5 06                                  ..           :0BDC[1]
    JSR sub_C0BE3                                                     ; 42DE: 20 E3 0B                                ..          :0BDE[1]
    LDA L0005                                                         ; 42E1: A5 05                                  ..           :0BE1[1]
; &42E3 referenced 2 times by &0BD9, &0BDE
.sub_C0BE3
    PHA                                                               ; 42E3: 48                                     H            :0BE3[1]
    LSR A                                                             ; 42E4: 4A                                     J            :0BE4[1]
    LSR A                                                             ; 42E5: 4A                                     J            :0BE5[1]
    LSR A                                                             ; 42E6: 4A                                     J            :0BE6[1]
    LSR A                                                             ; 42E7: 4A                                     J            :0BE7[1]
    JSR sub_C0BEE                                                     ; 42E8: 20 EE 0B                                ..          :0BE8[1]
    PLA                                                               ; 42EB: 68                                     h            :0BEB[1]
    AND #&0F                                                          ; 42EC: 29 0F                                  ).           :0BEC[1]
; &42EE referenced 1 time by &0BE8
.sub_C0BEE
    BNE C0BF8                                                         ; 42EE: D0 08                                  ..           :0BEE[1]
    LDX zero_page_82                                                  ; 42F0: A6 82                                  ..           :0BF0[1]
    BNE C0BF8                                                         ; 42F2: D0 04                                  ..           :0BF2[1]
    LDA #9                                                            ; 42F4: A9 09                                  ..           :0BF4[1]
    BNE C0BFC                                                         ; 42F6: D0 04                                  ..           :0BF6[1]
; &42F8 referenced 2 times by &0BEE, &0BF2
.C0BF8
    INC zero_page_82                                                  ; 42F8: E6 82                                  ..           :0BF8[1]
    ORA #&30 ; '0'                                                    ; 42FA: 09 30                                  .0           :0BFA[1]
; &42FC referenced 1 time by &0BF6
.C0BFC
    JMP oswrch                                                        ; 42FC: 4C EE FF                               L..          :0BFC[1]   ; Write character

    EQUB &3A                                                          ; 42FF: 3A                                     :            :0BFF[1]
    ORG data_to_relocate_4000 + (L0C00 - relocated_data_900)
    COPYBLOCK relocated_data_900, L0C00, data_to_relocate_4000
    CLEAR relocated_data_900, L0C00

.entry_point_4300
    LDA #osbyte_read_write_escape_break_effect                        ; 4300: A9 C8                                  ..
    STA L801B                                                         ; 4302: 8D 1B 80                               ...
    LDX #2                                                            ; 4305: A2 02                                  ..
    JSR osbyte                                                        ; 4307: 20 F4 FF                                ..                     ; Read/Write ESCAPE+BREAK effects
    LDA #osbyte_disable_event                                         ; 430A: A9 0D                                  ..
    LDX #event_start_of_vertical_sync                                 ; 430C: A2 04                                  ..
    JSR osbyte                                                        ; 430E: 20 F4 FF                                ..                     ; Disable 'Start of vertical sync' event (X=4)
    LDA #osbyte_tape                                                  ; 4311: A9 8C                                  ..
    JSR osbyte                                                        ; 4313: 20 F4 FF                                ..                     ; Select TAPE filing system
    LDX #&24 ; '$'                                                    ; 4316: A2 24                                  .$
    LDY #0                                                            ; 4318: A0 00                                  ..
    STY zero_page_80_dest_screenaddr                                  ; 431A: 84 80                                  ..
    STY zero_page_82                                                  ; 431C: 84 82                                  ..
    LDA #&0C                                                          ; 431E: A9 0C                                  ..                      ; loads address &0C00 into &80-81
    STA zero_page_81_dest_screenaddr                                  ; 4320: 85 81                                  ..
    LDA #&19                                                          ; 4322: A9 19                                  ..
    STA zero_page_83                                                  ; 4324: 85 83                                  ..                      ; loads address &1900 into &82-83
; &4326 referenced 1 time by &434B
.loop_relocate_data
    LDA data_to_relocate_4000,Y                                       ; 4326: B9 00 40                               ..@
    STA relocated_data_900,Y                                          ; 4329: 99 00 09                               ...
    LDA data_to_relocate_4100,Y                                       ; 432C: B9 00 41                               ..A
    STA relocated_data_A00,Y                                          ; 432F: 99 00 0A                               ...
    LDA data_to_relocate_4200,Y                                       ; 4332: B9 00 42                               ..B
    STA relocated_data_B00,Y                                          ; 4335: 99 00 0B                               ...
    LDA data_to_relocate_3D00,Y                                       ; 4338: B9 00 3D                               ..=
    STA relocated_data_400,Y                                          ; 433B: 99 00 04                               ...
    LDA data_to_relocate_3E00,Y                                       ; 433E: B9 00 3E                               ..>
    STA relocated_data_500,Y                                          ; 4341: 99 00 05                               ...
    LDA data_to_relocate_3F00,Y                                       ; 4344: B9 00 3F                               ..?
    STA relocated_data_600,Y                                          ; 4347: 99 00 06                               ...
    DEY                                                               ; 434A: 88                                     .
    BNE loop_relocate_data                                            ; 434B: D0 D9                                  ..
; &434D referenced 2 times by &4352, &4359
.loop_relocate_more_data
    LDA (zero_page_82),Y                                              ; 434D: B1 82                                  ..
    STA (zero_page_80_dest_screenaddr),Y                              ; 434F: 91 80                                  ..
    DEY                                                               ; 4351: 88                                     .
    BNE loop_relocate_more_data                                       ; 4352: D0 F9                                  ..
    INC zero_page_81_dest_screenaddr                                  ; 4354: E6 81                                  ..
    INC zero_page_83                                                  ; 4356: E6 83                                  ..
    DEX                                                               ; 4358: CA                                     .
    BNE loop_relocate_more_data                                       ; 4359: D0 F2                                  ..
    LDX #7                                                            ; 435B: A2 07                                  ..
    STX sound_on_off_flag_or_maybe_mask                               ; 435D: 86 0A                                  ..
    LDX #&0F                                                          ; 435F: A2 0F                                  ..
; &4361 referenced 1 time by &4366
.loop_initialize_70_7F_to_zero
    LDA #0                                                            ; 4361: A9 00                                  ..
    STA zp70_sound_amplitude,X                                        ; 4363: 95 70                                  .p
    DEX                                                               ; 4365: CA                                     .
    BPL loop_initialize_70_7F_to_zero                                 ; 4366: 10 F9                                  ..
    LDA #&11                                                          ; 4368: A9 11                                  ..
    STA zp70_sound_amplitude                                          ; 436A: 85 70                                  .p
    LDX #&21 ; '!'                                                    ; 436C: A2 21                                  .!
; &436E referenced 1 time by &4374
.loop_relocate_zero_page_data
    LDA data_to_relocate_4384,X                                       ; 436E: BD 84 43                               ..C
    STA relocated_data_0040,X                                         ; 4371: 95 40                                  .@
    DEX                                                               ; 4373: CA                                     .
    BPL loop_relocate_zero_page_data                                  ; 4374: 10 F8                                  ..
    LDX #&17                                                          ; 4376: A2 17                                  ..
; &4378 referenced 1 time by &437F
.loop_print_press_space_or_fire
    LDA press_space_or_fire_string_data,X                             ; 4378: BD A5 43                               ..C
    JSR oswrch                                                        ; 437B: 20 EE FF                                ..                     ; Write character
    DEX                                                               ; 437E: CA                                     .
    BNE loop_print_press_space_or_fire                                ; 437F: D0 F7                                  ..
    JMP wait_for_input_space_or_fire                                  ; 4381: 4C 35 16                               L5.

; &4384 referenced 3 times by &12EC, &436E, &4371
.data_to_relocate_4384
; &4384 referenced 3 times by &12EC, &436E, &4371

    ORG &40
; &4384 referenced 3 times by &12EC, &436E, &4371
.relocated_data_0040
    EQUB &94, &9C, &A4, &A8, &B0, &B8                                 ; 4384: 94 9C A4 A8 B0 B8                      ......       :0040[3]
; &438A referenced 1 time by &1192
.L0046
    EQUB &C0                                                          ; 438A: C0                                     .            :0046[3]
; &438B referenced 1 time by &1D6E
.L0047
    EQUB &C4, &10, &20                                                ; 438B: C4 10 20                               ..           :0047[3]
; &438E referenced 1 time by &118F
.L004A
    EQUB &40, &60, &80, &99                                           ; 438E: 40 60 80 99                            @`..         :004A[3]
; &4392 referenced 1 time by &118C
.L004E
    EQUB &10, &B0, &7C, &D0                                           ; 4392: 10 B0 7C D0                            ..|.         :004E[3]
; &4396 referenced 1 time by &1186
.L0052
    EQUB &10, &90, &5C, &B0                                           ; 4396: 10 90 5C B0                            ..\.         :0052[3]
; &439A referenced 1 time by &1189
.L0056
    EQUB   4, &B4, &80, &D4,   4, &94, &60, &B4, &10,   4,   4        ; 439A: 04 B4 80 D4 04 94 60 B4 10 04 04       ......`....  :0056[3]
; &43A5 referenced 1 time by &4378
    ORG data_to_relocate_4384 + (L0061 - relocated_data_0040)
    COPYBLOCK relocated_data_0040, L0061, data_to_relocate_4384
    CLEAR relocated_data_0040, L0061

; &43A5 referenced 1 time by &4378
.press_space_or_fire_string_data
; &43A5 referenced 1 time by &4378
    EQUB 4                                                            ; 43A5: 04                                     .
    EQUS "ERIF ro ECAPS sserP"                                        ; 43A6: 45 52 49 46 20 72 6F 20 45 43 41 50... ERIF ro ECAP
    EQUB   4,   0, &1F,   0                                           ; 43B9: 04 00 1F 00                            ....
.pydis_end

; Label references by decreasing frequency:
;     zero_page_80_dest_screenaddr:       106
;     L0090:                               68
;     L0096:                               57
;     L0093:                               46
;     L0021:                               32
;     L0020:                               30
;     sub_C273C:                           30
;     zero_page_85_source_spriteaddr:      28
;     zero_page_81_dest_screenaddr:        26
;     zero_page_84_source_spriteaddr:      24
;     L0092:                               23
;     L001B:                               22
;     L0088:                               22
;     L0016:                               21
;     L2760:                               20
;     L3F1F:                               20
;     L08AF:                               19
;     zero_page_82:                        16
;     zero_page_83:                        16
;     L0086:                               16
;     L0087:                               16
;     L0091:                               16
;     L0094:                               16
;     L2556:                               16
;     L25E8:                               16
;     L0013:                               15
;     L0014:                               15
;     L00A0:                               15
;     L0720:                               15
;     sub_C25E5:                           15
;     sub_C2766:                           15
;     L0009:                               14
;     L0098:                               14
;     L0099:                               14
;     L087F:                               13
;     sub_C3141:                           13
;     L3F0F:                               13
;     C4173:                               13
;     oswrch:                              13
;     L0019:                               12
;     L001A:                               12
;     L0730:                               12
;     L088F:                               12
;     L0012:                               11
;     L0027:                               11
;     L089F:                               11
;     sub_C415C:                           11
;     osbyte:                              11
;     L000F:                               10
;     L0089:                               10
;     sub_C274B:                           10
;     C3026:                               10
;     L0018:                                9
;     zp7C_sound_pitch:                     9
;     L00A3:                                9
;     L2AEC:                                9
;     sub_C32E5:                            9
;     data_to_relocate_4000:                9
;     C4184:                                9
;     zp15_scene_number:                    8
;     zp1F_extra_bitmap:                    8
;     L0022:                                8
;     zp7E_sound_duration:                  8
;     L008C:                                8
;     L0095:                                8
;     L00A2:                                8
;     L21E9:                                8
;     L2B04:                                8
;     C3350:                                8
;     sub_C33DF:                            8
;     sub_C4298:                            8
;     L000C:                                7
;     L001D:                                7
;     zp70_sound_amplitude:                 7
;     L008A:                                7
;     L3F30:                                7
;     C4140:                                7
;     L0004:                                6
;     L0017:                                6
;     lives_remaining_0024_possible:        6
;     zp78_sound_channel:                   6
;     L2090:                                6
;     C33D7:                                6
;     video_ula_palette:                    6
;     L0026:                                5
;     L0029:                                5
;     L003C:                                5
;     zp7A_sound_amplitude:                 5
;     L0097:                                5
;     L00A4:                                5
;     L24D2:                                5
;     L2B0B:                                5
;     L2D9E:                                5
;     C30E3:                                5
;     C3398:                                5
;     L3F20:                                5
;     C424F:                                5
;     sub_C4284:                            5
;     L0002:                                4
;     L0005:                                4
;     L0006:                                4
;     L0007:                                4
;     zp_possible_remaining_cherry_count:   4
;     sound_on_off_flag_or_maybe_mask:      4
;     L000B:                                4
;     L0010:                                4
;     L0011:                                4
;     L0025:                                4
;     L008B:                                4
;     L00A1:                                4
;     L0100:                                4
;     L0700:                                4
;     sub_C2231:                            4
;     L2BD9:                                4
;     L2C08:                                4
;     L2C41:                                4
;     L2C70:                                4
;     L2C9F:                                4
;     L2CD8:                                4
;     L2F8F:                                4
;     C302C:                                4
;     C308D:                                4
;     C30EB:                                4
;     sub_C3265:                            4
;     sub_C32B2:                            4
;     sub_C32CB:                            4
;     C3303:                                4
;     sub_C3395:                            4
;     sub_C33DD:                            4
;     sub_C33E8:                            4
;     L3F10:                                4
;     L3F21:                                4
;     C4065:                                4
;     C4087:                                4
;     sub_C4158:                            4
;     C4193:                                4
;     sub_C4205:                            4
;     sub_C429C:                            4
;     L0000:                                3
;     L0001:                                3
;     L0003:                                3
;     L001C:                                3
;     L0023:                                3
;     L0028:                                3
;     keyboard_or_joystick_flag:            3
;     L0740:                                3
;     L1A86:                                3
;     sub_C1A87:                            3
;     sub_C1C52:                            3
;     L1D31:                                3
;     L1E34:                                3
;     sub_C1FC9:                            3
;     sub_C2099:                            3
;     L20ED:                                3
;     L2178:                                3
;     L21B7:                                3
;     L21C9:                                3
;     sub_C23A8:                            3
;     L2491:                                3
;     L24BB:                                3
;     L2699:                                3
;     L2825:                                3
;     L284C:                                3
;     L28A1:                                3
;     L29BB:                                3
;     L29E0:                                3
;     L2A3A:                                3
;     L2A59:                                3
;     L2B66:                                3
;     L2CDC:                                3
;     L2D20:                                3
;     L2D56:                                3
;     L2E51:                                3
;     L2EBF:                                3
;     L2EF4:                                3
;     L2F28:                                3
;     C3107:                                3
;     sub_C3124:                            3
;     C31EC:                                3
;     sub_C336E:                            3
;     C3393:                                3
;     C401B:                                3
;     C4126:                                3
;     sub_C4152:                            3
;     C4191:                                3
;     L4192:                                3
;     L4194:                                3
;     sub_C41D3:                            3
;     data_to_relocate_4384:                3
;     L001E:                                2
;     L002A:                                2
;     L002C:                                2
;     L002E:                                2
;     L0030:                                2
;     L0034:                                2
;     L0038:                                2
;     L008F:                                2
;     L00A5:                                2
;     L0721:                                2
;     L0731:                                2
;     L1BE3:                                2
;     sub_C1BFC:                            2
;     sub_C1C26:                            2
;     L1E02:                                2
;     sub_C1E15:                            2
;     sub_C1E2F:                            2
;     L1E65:                                2
;     L1EE7:                                2
;     L1F25:                                2
;     sub_C1F6C:                            2
;     C2020:                                2
;     sub_C2102:                            2
;     sub_C2107:                            2
;     L210C:                                2
;     L210F:                                2
;     sub_C2121:                            2
;     L2190:                                2
;     C21A5:                                2
;     sub_C2209:                            2
;     sub_C2310:                            2
;     L2353:                                2
;     sub_C2370:                            2
;     sub_C2373:                            2
;     L23A9:                                2
;     L2446:                                2
;     L2459:                                2
;     L24DC:                                2
;     sub_C2562:                            2
;     L2563:                                2
;     L25F4:                                2
;     sub_C25F5:                            2
;     L276C:                                2
;     L286A:                                2
;     L2885:                                2
;     L28A0:                                2
;     L28F7:                                2
;     L2B08:                                2
;     L2B10:                                2
;     L2B2D:                                2
;     L2B38:                                2
;     L2B52:                                2
;     L2B85:                                2
;     L2B8A:                                2
;     L2BA9:                                2
;     L2BAE:                                2
;     L2C00:                                2
;     L2C45:                                2
;     L2C97:                                2
;     L2D4D:                                2
;     L2D70:                                2
;     L2DB2:                                2
;     L2E89:                                2
;     L2EA6:                                2
;     L2ED6:                                2
;     L2F01:                                2
;     L2F38:                                2
;     L2F53:                                2
;     L2FCC:                                2
;     L2FFE:                                2
;     C3044:                                2
;     C304E:                                2
;     C3158:                                2
;     C3175:                                2
;     C3177:                                2
;     sub_C317C:                            2
;     sub_C31B0:                            2
;     C31BF:                                2
;     sub_C3233:                            2
;     sub_C3250:                            2
;     sub_C3268:                            2
;     C32CA:                                2
;     sub_C3359:                            2
;     sub_C335B:                            2
;     L33CD:                                2
;     sub_C33D0:                            2
;     C3400:                                2
;     sub_C3485:                            2
;     data_to_relocate_3D00:                2
;     data_to_relocate_3E00:                2
;     L3ECF:                                2
;     data_to_relocate_3F00:                2
;     L3F08:                                2
;     L3F0C:                                2
;     C40B8:                                2
;     C40C4:                                2
;     C40E7:                                2
;     C40FD:                                2
;     data_to_relocate_4100:                2
;     C4112:                                2
;     C418D:                                2
;     C41B6:                                2
;     data_to_relocate_4200:                2
;     sub_C42AD:                            2
;     sub_C42E3:                            2
;     C42F8:                                2
;     loop_relocate_more_data:              2
;     L002B:                                1
;     L002D:                                1
;     zp72_sound_amplitude:                 1
;     zp74_sound_pitch:                     1
;     zp76_sound_duration:                  1
;     L00FF:                                1
;     L0101:                                1
;     L0880:                                1
;     L0890:                                1
;     L08A0:                                1
;     L08A9:                                1
;     L08B0:                                1
;     L1920:                                1
;     L1A94:                                1
;     L1AB3:                                1
;     L1ACF:                                1
;     L1AD8:                                1
;     sub_C1AE2:                            1
;     sub_C1AEC:                            1
;     L1B0E:                                1
;     L1B40:                                1
;     L1B42:                                1
;     L1B4F:                                1
;     L1B63:                                1
;     L1B7D:                                1
;     sub_C1B8F:                            1
;     sub_C1B97:                            1
;     L1B99:                                1
;     L1BA4:                                1
;     sub_C1BC6:                            1
;     sub_C1BDC:                            1
;     L1BF5:                                1
;     L1C05:                                1
;     sub_C1C0B:                            1
;     sub_C1C20:                            1
;     sub_C1C31:                            1
;     C1C37:                                1
;     L1C4C:                                1
;     L1C6F:                                1
;     sub_C1C73:                            1
;     L1C9C:                                1
;     sub_C1CA0:                            1
;     sub_C1CAD:                            1
;     L1CB5:                                1
;     L1CE7:                                1
;     L1CEA:                                1
;     L1CEE:                                1
;     L1D34:                                1
;     sub_C1D53:                            1
;     sub_C1D8C:                            1
;     sub_C1D95:                            1
;     L1DA9:                                1
;     L1DD6:                                1
;     sub_C1DE4:                            1
;     sub_C1DF3:                            1
;     L1DFF:                                1
;     L1E21:                                1
;     L1E49:                                1
;     sub_C1E62:                            1
;     sub_C1E68:                            1
;     L1E74:                                1
;     sub_C1E77:                            1
;     sub_C1E7B:                            1
;     L1ECF:                                1
;     L1ED6:                                1
;     sub_C1EEB:                            1
;     sub_C1EF8:                            1
;     sub_C1F07:                            1
;     L1F0E:                                1
;     sub_C1F20:                            1
;     sub_C1F29:                            1
;     C1F4B:                                1
;     sub_C1F5D:                            1
;     sub_C1F69:                            1
;     L1FAB:                                1
;     L1FE6:                                1
;     L1FEA:                                1
;     L2019:                                1
;     L202B:                                1
;     sub_C2034:                            1
;     L2036:                                1
;     L2063:                                1
;     sub_C2079:                            1
;     L207C:                                1
;     sub_C2083:                            1
;     L2086:                                1
;     sub_C208D:                            1
;     L20B9:                                1
;     sub_C20E0:                            1
;     L20EB:                                1
;     sub_C20F0:                            1
;     L20F3:                                1
;     sub_C20FE:                            1
;     L2114:                                1
;     L212F:                                1
;     sub_C2132:                            1
;     L2144:                                1
;     sub_C216B:                            1
;     L2176:                                1
;     sub_C217B:                            1
;     L217E:                                1
;     C2189:                                1
;     sub_C2195:                            1
;     sub_C21BA:                            1
;     L21C6:                                1
;     sub_C21FD:                            1
;     L2216:                                1
;     L2222:                                1
;     sub_C2232:                            1
;     C2238:                                1
;     L2258:                                1
;     L2270:                                1
;     sub_C2284:                            1
;     L22AF:                                1
;     L22BE:                                1
;     sub_C22DC:                            1
;     C231C:                                1
;     L2327:                                1
;     L2335:                                1
;     L2337:                                1
;     sub_C2350:                            1
;     L2355:                                1
;     L2388:                                1
;     L238E:                                1
;     sub_C23D2:                            1
;     L23DB:                                1
;     sub_C23E0:                            1
;     L23E9:                                1
;     L23F9:                                1
;     C2405:                                1
;     L242B:                                1
;     sub_C242E:                            1
;     L245D:                                1
;     L2472:                                1
;     L247F:                                1
;     sub_C2494:                            1
;     sub_C24A6:                            1
;     sub_C24B3:                            1
;     sub_C24D9:                            1
;     sub_C24FE:                            1
;     sub_C250D:                            1
;     sub_C2521:                            1
;     sub_C254D:                            1
;     sub_C2586:                            1
;     sub_C2595:                            1
;     L25AB:                                1
;     L25D9:                                1
;     sub_C2611:                            1
;     sub_C2631:                            1
;     sub_C2639:                            1
;     sub_C2659:                            1
;     sub_C2671:                            1
;     sub_C2685:                            1
;     L26AE:                                1
;     sub_C26D4:                            1
;     L26DC:                                1
;     sub_C26FC:                            1
;     L270B:                                1
;     sub_C272B:                            1
;     sub_C274A:                            1
;     L2765:                                1
;     sub_C276E:                            1
;     sub_C2782:                            1
;     L2799:                                1
;     L27AA:                                1
;     L27B6:                                1
;     L27BE:                                1
;     L27D2:                                1
;     L2804:                                1
;     L2821:                                1
;     L284D:                                1
;     L289E:                                1
;     L28A9:                                1
;     L28DE:                                1
;     L28E4:                                1
;     L28F2:                                1
;     L2915:                                1
;     L291C:                                1
;     L2934:                                1
;     L2937:                                1
;     L293A:                                1
;     L2950:                                1
;     L2960:                                1
;     L2965:                                1
;     L2968:                                1
;     L297F:                                1
;     L298D:                                1
;     L29B1:                                1
;     L29DC:                                1
;     L29F1:                                1
;     L2A0F:                                1
;     L2A3D:                                1
;     L2A57:                                1
;     L2A6E:                                1
;     L2A79:                                1
;     L2A7C:                                1
;     L2A86:                                1
;     L2A8E:                                1
;     L2A93:                                1
;     L2AAB:                                1
;     L2AB9:                                1
;     L2AC6:                                1
;     L2AE2:                                1
;     L2AEA:                                1
;     L2B03:                                1
;     L2B3F:                                1
;     L2B5C:                                1
;     L2B63:                                1
;     L2B6C:                                1
;     L2B83:                                1
;     L2B88:                                1
;     L2B90:                                1
;     L2BA7:                                1
;     L2BAC:                                1
;     L2BB4:                                1
;     L2BB8:                                1
;     L2BDC:                                1
;     L2BE4:                                1
;     L2C03:                                1
;     L2C0C:                                1
;     L2C44:                                1
;     L2C4B:                                1
;     L2C4F:                                1
;     L2C73:                                1
;     L2C7B:                                1
;     L2C9A:                                1
;     L2CA3:                                1
;     L2CDB:                                1
;     L2CEF:                                1
;     L2D12:                                1
;     L2D1B:                                1
;     L2D2D:                                1
;     L2D48:                                1
;     L2D62:                                1
;     L2D73:                                1
;     L2DC6:                                1
;     L2DCE:                                1
;     L2DD1:                                1
;     L2DD5:                                1
;     L2DD9:                                1
;     L2DE2:                                1
;     L2DEC:                                1
;     L2DF2:                                1
;     L2DFC:                                1
;     L2E05:                                1
;     L2E10:                                1
;     L2E1F:                                1
;     L2E24:                                1
;     L2E30:                                1
;     L2E35:                                1
;     L2E3C:                                1
;     L2E43:                                1
;     L2E4A:                                1
;     L2E66:                                1
;     L2E69:                                1
;     L2E7F:                                1
;     L2E97:                                1
;     L2EA5:                                1
;     L2EAC:                                1
;     L2EB4:                                1
;     L2EC8:                                1
;     L2EE2:                                1
;     L2EF8:                                1
;     L2F0F:                                1
;     L2F19:                                1
;     L2F23:                                1
;     L2F3A:                                1
;     L2F5B:                                1
;     L2F74:                                1
;     L2F77:                                1
;     L2F80:                                1
;     L2F83:                                1
;     L2F8C:                                1
;     L2FC3:                                1
;     L2FD0:                                1
;     L2FF5:                                1
;     C3002:                                1
;     C300E:                                1
;     C3014:                                1
;     C301C:                                1
;     C303F:                                1
;     C3047:                                1
;     C306D:                                1
;     C307B:                                1
;     C30B5:                                1
;     L30F1:                                1
;     C30F8:                                1
;     C3105:                                1
;     C311D:                                1
;     C3123:                                1
;     C3196:                                1
;     C319E:                                1
;     C31CD:                                1
;     C31E2:                                1
;     C31ED:                                1
;     C31F6:                                1
;     C3219:                                1
;     sub_C321A:                            1
;     C3273:                                1
;     C3282:                                1
;     sub_C3296:                            1
;     C329E:                                1
;     C32AE:                                1
;     C32B0:                                1
;     C32B6:                                1
;     C32E9:                                1
;     C330F:                                1
;     C3317:                                1
;     sub_C332A:                            1
;     C3342:                                1
;     C3380:                                1
;     C3388:                                1
;     C3390:                                1
;     sub_C33CA:                            1
;     C33F4:                                1
;     sub_C341B:                            1
;     C3421:                                1
;     C3453:                                1
;     C3457:                                1
;     L3493:                                1
;     L3497:                                1
;     L3558:                                1
;     L35F2:                                1
;     L35F3:                                1
;     L35F4:                                1
;     L35F5:                                1
;     L35F6:                                1
;     L3EE3:                                1
;     L3EFF:                                1
;     L3F2F:                                1
;     L3F31:                                1
;     L3F32:                                1
;     L3F33:                                1
;     L3F36:                                1
;     L3F3B:                                1
;     L3F3D:                                1
;     L3F40:                                1
;     L3F43:                                1
;     L3F46:                                1
;     L3F91:                                1
;     L3F94:                                1
;     L3F97:                                1
;     L3F9A:                                1
;     L3F9C:                                1
;     L3FA1:                                1
;     C4007:                                1
;     C400C:                                1
;     C4011:                                1
;     C4016:                                1
;     C403A:                                1
;     C4041:                                1
;     C406C:                                1
;     sub_C4090:                            1
;     C4094:                                1
;     C40B3:                                1
;     C40C9:                                1
;     C4146:                                1
;     C4163:                                1
;     C418F:                                1
;     C41A5:                                1
;     C41CE:                                1
;     C4204:                                1
;     C420C:                                1
;     C421E:                                1
;     sub_C4246:                            1
;     C4297:                                1
;     C42A4:                                1
;     sub_C42A6:                            1
;     sub_C42CB:                            1
;     sub_C42EE:                            1
;     C42FC:                                1
;     loop_relocate_data:                   1
;     loop_initialize_70_7F_to_zero:        1
;     loop_relocate_zero_page_data:         1
;     loop_print_press_space_or_fire:       1
;     L438A:                                1
;     L438B:                                1
;     L438E:                                1
;     L4392:                                1
;     L4396:                                1
;     L439A:                                1
;     press_space_or_fire_string_data:      1
;     L801B:                                1
;     user_via_t1c_l:                       1
;     user_via_t1c_h:                       1
;     user_via_t1l_l:                       1
;     user_via_t1l_h:                       1
;     user_via_acr:                         1
;     user_via_ifr:                         1
;     osnewl:                               1
;     osword:                               1

; Automatically generated labels:
;     C0907
;     C091B
;     C093A
;     C0941
;     C0965
;     C096C
;     C0987
;     C09B3
;     C09B8
;     C09C4
;     C09C9
;     C09E7
;     C09FD
;     C0A12
;     C0A26
;     C0A40
;     C0A63
;     C0A84
;     C0AA5
;     C0ACE
;     C0B4F
;     C0BA4
;     C0BF8
;     C0BFC
;     C0DCF
;     C0DD8
;     C0DE2
;     C0E63
;     C0E7D
;     C0E8F
;     C0E97
;     C0EC6
;     C0EE3
;     C0EFC
;     C0F05
;     C0F20
;     C0F26
;     C0F31
;     C0F4C
;     C0F52
;     C0F6F
;     C0F9C
;     C0FA0
;     C0FAD
;     C0FB5
;     C0FE7
;     C0FEA
;     C0FEE
;     C1031
;     C108C
;     C10D6
;     C10E4
;     C10F3
;     C10FF
;     C1102
;     C1115
;     C1121
;     C112F
;     C1134
;     C1149
;     C1168
;     C1174
;     C11E7
;     C11F8
;     C1207
;     C120E
;     C1220
;     C1225
;     C1229
;     C1269
;     C126C
;     C12C9
;     C12E6
;     C1319
;     C1390
;     C13B9
;     C13E0
;     C13EB
;     C13ED
;     C13F0
;     C13F3
;     C13FE
;     C1402
;     C1407
;     C140C
;     C1414
;     C1432
;     C1444
;     C146B
;     C1476
;     C1478
;     C147B
;     C147E
;     C1489
;     C1495
;     C14A5
;     C14B7
;     C14BA
;     C14C6
;     C14C9
;     C14FD
;     C1516
;     C1522
;     C1531
;     C1570
;     C1584
;     C1670
;     C168E
;     C16A8
;     C16A9
;     C16D2
;     C16DB
;     C16E0
;     C16E9
;     C16F9
;     C1705
;     C172B
;     C172E
;     C1746
;     C1759
;     C175D
;     C1772
;     C177F
;     C1791
;     C1794
;     C17A6
;     C17B3
;     C17BB
;     C17D2
;     C17D9
;     C17FE
;     C180D
;     C184D
;     C1856
;     C1862
;     C1886
;     C1895
;     C18D9
;     C18E8
;     C18F4
;     C1931
;     C1959
;     C1971
;     C1985
;     C1999
;     C19AE
;     C19D4
;     C19FC
;     C1A0B
;     C1A2B
;     C1A4A
;     C1A65
;     C1AAA
;     C1ABE
;     C1B21
;     C1B4C
;     C1B4D
;     C1B6A
;     C1B9E
;     C1BA0
;     C1BA9
;     C1BDE
;     C1BE4
;     C1BF2
;     C1BF7
;     C1C15
;     C1C1C
;     C1C34
;     C1C37
;     C1C3A
;     C1C50
;     C1C60
;     C1C65
;     C1C68
;     C1C7F
;     C1C8D
;     C1CB1
;     C1CBB
;     C1CDC
;     C1CE0
;     C1CF1
;     C1D0F
;     C1D3A
;     C1D3D
;     C1D57
;     C1D59
;     C1D6E
;     C1D79
;     C1D7C
;     C1D86
;     C1D8E
;     C1D93
;     C1DAB
;     C1DB9
;     C1DC6
;     C1DE2
;     C1DEA
;     C1DEC
;     C1E03
;     C1E5C
;     C1E63
;     C1E83
;     C1E85
;     C1E88
;     C1EA7
;     C1EA9
;     C1EAC
;     C1EB4
;     C1EB8
;     C1ED9
;     C1EDC
;     C1F00
;     C1F03
;     C1F08
;     C1F0C
;     C1F41
;     C1F44
;     C1F4B
;     C1F4F
;     C1F70
;     C1F73
;     C1F97
;     C1F9A
;     C1F9F
;     C1FA3
;     C1FD8
;     C1FDB
;     C1FEF
;     C2012
;     C201B
;     C2020
;     C202D
;     C2048
;     C204D
;     C2056
;     C2062
;     C2070
;     C2073
;     C209E
;     C20B2
;     C20C6
;     C20D1
;     C20D5
;     C20D9
;     C20E2
;     C20EC
;     C20F2
;     C20FC
;     C2110
;     C211F
;     C2124
;     C2130
;     C2135
;     C213C
;     C2143
;     C214A
;     C2151
;     C2166
;     C2169
;     C217F
;     C2189
;     C2197
;     C21A5
;     C21A6
;     C21B4
;     C21BF
;     C21C8
;     C21D6
;     C21E2
;     C21F4
;     C2201
;     C220F
;     C2223
;     C2228
;     C2238
;     C223A
;     C2253
;     C225B
;     C2274
;     C2277
;     C2280
;     C2283
;     C228C
;     C228F
;     C22C3
;     C22CC
;     C22D0
;     C22F5
;     C22FE
;     C2302
;     C230E
;     C2314
;     C231C
;     C2326
;     C232C
;     C233F
;     C2344
;     C2347
;     C234E
;     C236D
;     C237B
;     C238D
;     C23B5
;     C23E3
;     C23EB
;     C23F8
;     C2405
;     C2407
;     C241D
;     C2423
;     C2458
;     C2475
;     C2477
;     C2496
;     C249E
;     C24BF
;     C24CD
;     C24E2
;     C24EC
;     C24ED
;     C2519
;     C259E
;     C25AE
;     C25B0
;     C25CA
;     C2603
;     C2617
;     C2642
;     C2680
;     C2688
;     C2690
;     C2693
;     C2698
;     C26D7
;     C2700
;     C2721
;     C2753
;     C2757
;     C3002
;     C300E
;     C3014
;     C301C
;     C3026
;     C302C
;     C303F
;     C3044
;     C3047
;     C304E
;     C306D
;     C307B
;     C308D
;     C30B5
;     C30E3
;     C30EB
;     C30F8
;     C3105
;     C3107
;     C311D
;     C3123
;     C3158
;     C3175
;     C3177
;     C3196
;     C319E
;     C31BF
;     C31CD
;     C31E2
;     C31EC
;     C31ED
;     C31F6
;     C3219
;     C3273
;     C3282
;     C329E
;     C32AE
;     C32B0
;     C32B6
;     C32CA
;     C32E9
;     C3303
;     C330F
;     C3317
;     C3342
;     C3350
;     C3380
;     C3388
;     C3390
;     C3393
;     C3398
;     C33D7
;     C33F4
;     C3400
;     C3421
;     C3453
;     C3457
;     C4007
;     C400C
;     C4011
;     C4016
;     C401B
;     C403A
;     C4041
;     C4065
;     C406C
;     C4087
;     C4094
;     C40B3
;     C40B8
;     C40C4
;     C40C9
;     C40E7
;     C40FD
;     C4112
;     C4126
;     C4140
;     C4146
;     C4163
;     C4173
;     C4184
;     C418D
;     C418F
;     C4191
;     C4193
;     C41A5
;     C41B6
;     C41CE
;     C4204
;     C420C
;     C421E
;     C424F
;     C4297
;     C42A4
;     C42F8
;     C42FC
;     L0000
;     L0001
;     L0002
;     L0003
;     L0004
;     L0005
;     L0006
;     L0007
;     L0009
;     L000B
;     L000C
;     L000F
;     L0010
;     L0011
;     L0012
;     L0013
;     L0014
;     L0016
;     L0017
;     L0018
;     L0019
;     L001A
;     L001B
;     L001C
;     L001D
;     L001E
;     L0020
;     L0021
;     L0022
;     L0023
;     L0025
;     L0026
;     L0027
;     L0028
;     L0029
;     L002A
;     L002B
;     L002C
;     L002D
;     L002E
;     L0030
;     L0034
;     L0038
;     L003C
;     L0046
;     L0047
;     L004A
;     L004E
;     L0052
;     L0056
;     L0061
;     L0086
;     L0087
;     L0088
;     L0089
;     L008A
;     L008B
;     L008C
;     L008F
;     L0090
;     L0091
;     L0092
;     L0093
;     L0094
;     L0095
;     L0096
;     L0097
;     L0098
;     L0099
;     L00A0
;     L00A1
;     L00A2
;     L00A3
;     L00A4
;     L00A5
;     L00FF
;     L0100
;     L0101
;     L03A9
;     L05FF
;     L0608
;     L060C
;     L060F
;     L0610
;     L061F
;     L0620
;     L0621
;     L062F
;     L0630
;     L0631
;     L0632
;     L0633
;     L0636
;     L063B
;     L063D
;     L0640
;     L0643
;     L0646
;     L0691
;     L0694
;     L0697
;     L069A
;     L069C
;     L06A1
;     L0700
;     L0720
;     L0721
;     L0730
;     L0731
;     L0740
;     L087F
;     L0880
;     L088F
;     L0890
;     L089F
;     L08A0
;     L08A9
;     L08AF
;     L08B0
;     L09A9
;     L0C00
;     L0CA9
;     L0D86
;     L0D87
;     L1920
;     L1A86
;     L1A94
;     L1AB3
;     L1ACF
;     L1AD8
;     L1B0E
;     L1B40
;     L1B42
;     L1B4F
;     L1B63
;     L1B7D
;     L1B99
;     L1BA4
;     L1BE3
;     L1BF5
;     L1C05
;     L1C4C
;     L1C6F
;     L1C9C
;     L1CB5
;     L1CE7
;     L1CEA
;     L1CEE
;     L1D31
;     L1D34
;     L1DA9
;     L1DD6
;     L1DFF
;     L1E02
;     L1E21
;     L1E34
;     L1E49
;     L1E65
;     L1E74
;     L1ECF
;     L1ED6
;     L1EE7
;     L1F0E
;     L1F25
;     L1FAB
;     L1FE6
;     L1FEA
;     L2019
;     L202B
;     L2036
;     L2063
;     L207C
;     L2086
;     L2090
;     L20B9
;     L20EB
;     L20ED
;     L20F3
;     L210C
;     L210F
;     L2114
;     L212F
;     L2144
;     L2176
;     L2178
;     L217E
;     L2190
;     L21B7
;     L21C6
;     L21C9
;     L21E9
;     L2216
;     L2222
;     L2258
;     L2270
;     L22AF
;     L22BE
;     L2327
;     L2335
;     L2337
;     L2353
;     L2355
;     L2388
;     L238E
;     L23A9
;     L23DB
;     L23E9
;     L23F9
;     L242B
;     L2446
;     L2459
;     L245D
;     L2472
;     L247F
;     L2491
;     L24BB
;     L24D2
;     L24DC
;     L2556
;     L2563
;     L25AB
;     L25D9
;     L25E8
;     L25F4
;     L2699
;     L26AE
;     L26CD
;     L26DC
;     L270B
;     L2760
;     L2765
;     L276C
;     L2793
;     L2797
;     L2799
;     L27AA
;     L27B6
;     L27BE
;     L27D2
;     L2804
;     L2821
;     L2825
;     L284C
;     L284D
;     L2858
;     L286A
;     L2885
;     L289E
;     L28A0
;     L28A1
;     L28A9
;     L28DE
;     L28E4
;     L28F2
;     L28F7
;     L2915
;     L291C
;     L2934
;     L2937
;     L293A
;     L2950
;     L2960
;     L2965
;     L2968
;     L297F
;     L298D
;     L29B1
;     L29BB
;     L29DC
;     L29E0
;     L29F1
;     L2A0F
;     L2A3A
;     L2A3D
;     L2A57
;     L2A59
;     L2A6E
;     L2A79
;     L2A7C
;     L2A86
;     L2A8E
;     L2A93
;     L2AAB
;     L2AB9
;     L2AC6
;     L2AE2
;     L2AEA
;     L2AEC
;     L2B03
;     L2B04
;     L2B08
;     L2B0B
;     L2B10
;     L2B2D
;     L2B38
;     L2B3F
;     L2B52
;     L2B5C
;     L2B63
;     L2B66
;     L2B6C
;     L2B83
;     L2B85
;     L2B88
;     L2B8A
;     L2B90
;     L2BA7
;     L2BA9
;     L2BAC
;     L2BAE
;     L2BB4
;     L2BB8
;     L2BD9
;     L2BDC
;     L2BE4
;     L2C00
;     L2C03
;     L2C08
;     L2C0C
;     L2C41
;     L2C44
;     L2C45
;     L2C4B
;     L2C4F
;     L2C70
;     L2C73
;     L2C7B
;     L2C97
;     L2C9A
;     L2C9F
;     L2CA3
;     L2CD8
;     L2CDB
;     L2CDC
;     L2CEF
;     L2D12
;     L2D1B
;     L2D20
;     L2D2D
;     L2D48
;     L2D4D
;     L2D56
;     L2D62
;     L2D70
;     L2D73
;     L2D9E
;     L2DB2
;     L2DC6
;     L2DCE
;     L2DD1
;     L2DD5
;     L2DD9
;     L2DE2
;     L2DEC
;     L2DF2
;     L2DFC
;     L2E05
;     L2E10
;     L2E1F
;     L2E24
;     L2E30
;     L2E35
;     L2E3C
;     L2E43
;     L2E4A
;     L2E51
;     L2E66
;     L2E69
;     L2E7F
;     L2E89
;     L2E97
;     L2EA5
;     L2EA6
;     L2EAC
;     L2EB4
;     L2EBF
;     L2EC8
;     L2ED6
;     L2EE2
;     L2EF4
;     L2EF8
;     L2F01
;     L2F0F
;     L2F19
;     L2F23
;     L2F28
;     L2F38
;     L2F3A
;     L2F53
;     L2F5B
;     L2F74
;     L2F77
;     L2F80
;     L2F83
;     L2F8C
;     L2F8F
;     L2FC3
;     L2FCC
;     L2FD0
;     L2FF5
;     L2FFE
;     L30F1
;     L33CD
;     L3493
;     L3497
;     L3558
;     L35F2
;     L35F3
;     L35F4
;     L35F5
;     L35F6
;     L3ECF
;     L3EE3
;     L3EFF
;     L3F08
;     L3F0C
;     L3F0F
;     L3F10
;     L3F1F
;     L3F20
;     L3F21
;     L3F2F
;     L3F30
;     L3F31
;     L3F32
;     L3F33
;     L3F36
;     L3F3B
;     L3F3D
;     L3F40
;     L3F43
;     L3F46
;     L3F91
;     L3F94
;     L3F97
;     L3F9A
;     L3F9C
;     L3FA1
;     L4192
;     L4194
;     L438A
;     L438B
;     L438E
;     L4392
;     L4396
;     L439A
;     L801B
;     L90E6
;     LA1E6
;     LA2E6
;     loop_C090C
;     loop_C0911
;     loop_C0916
;     loop_C0994
;     loop_C0A46
;     loop_C0B97
;     loop_C0DEC
;     loop_C0E4F
;     loop_C0E99
;     loop_C0EA4
;     loop_C0EDC
;     loop_C0EF5
;     loop_C0F0B
;     loop_C0F37
;     loop_C0F73
;     loop_C1034
;     loop_C1053
;     loop_C1095
;     loop_C10A9
;     loop_C11EB
;     loop_C125D
;     loop_C12AB
;     loop_C12EA
;     loop_C142F
;     loop_C1538
;     loop_C1558
;     loop_C15AF
;     loop_C15BE
;     loop_C1655
;     loop_C1821
;     loop_C18AB
;     loop_C1911
;     loop_C1939
;     loop_C19DC
;     loop_C1A6E
;     loop_C1A99
;     loop_C1AB6
;     loop_C1AD2
;     loop_C1B04
;     loop_C1E6C
;     loop_C1E90
;     loop_C1EE4
;     loop_C1F7B
;     loop_C20CE
;     loop_C2105
;     loop_C21AC
;     loop_C21F8
;     loop_C2219
;     loop_C24F6
;     loop_C2573
;     loop_C2582
;     loop_C25B6
;     loop_C25E9
;     loop_C260F
;     loop_C26F4
;     sub_C0990
;     sub_C09A8
;     sub_C09FF
;     sub_C0A52
;     sub_C0A58
;     sub_C0A5C
;     sub_C0B84
;     sub_C0BAD
;     sub_C0BCB
;     sub_C0BE3
;     sub_C0BEE
;     sub_C124B
;     sub_C140F
;     sub_C1490
;     sub_C14E9
;     sub_C1509
;     sub_C15DA
;     sub_C1653
;     sub_C1673
;     sub_C1688
;     sub_C17DC
;     sub_C1863
;     sub_C18E5
;     sub_C18F5
;     sub_C18FF
;     sub_C1A3C
;     sub_C1A4B
;     sub_C1A60
;     sub_C1A66
;     sub_C1A6C
;     sub_C1A87
;     sub_C1AE2
;     sub_C1AEC
;     sub_C1B25
;     sub_C1B8F
;     sub_C1B97
;     sub_C1BA1
;     sub_C1BC6
;     sub_C1BDC
;     sub_C1BFC
;     sub_C1C0B
;     sub_C1C20
;     sub_C1C26
;     sub_C1C31
;     sub_C1C52
;     sub_C1C73
;     sub_C1CA0
;     sub_C1CAD
;     sub_C1D53
;     sub_C1D8C
;     sub_C1D95
;     sub_C1DE4
;     sub_C1DF3
;     sub_C1E04
;     sub_C1E08
;     sub_C1E0B
;     sub_C1E10
;     sub_C1E15
;     sub_C1E2D
;     sub_C1E2F
;     sub_C1E38
;     sub_C1E3F
;     sub_C1E52
;     sub_C1E62
;     sub_C1E66
;     sub_C1E68
;     sub_C1E77
;     sub_C1E7B
;     sub_C1E8A
;     sub_C1EAE
;     sub_C1EEB
;     sub_C1EF8
;     sub_C1F07
;     sub_C1F20
;     sub_C1F29
;     sub_C1F45
;     sub_C1F5D
;     sub_C1F69
;     sub_C1F6C
;     sub_C1FC9
;     sub_C1FDC
;     sub_C2034
;     sub_C2079
;     sub_C2083
;     sub_C208D
;     sub_C2099
;     sub_C20E0
;     sub_C20F0
;     sub_C20FE
;     sub_C2102
;     sub_C2107
;     sub_C2121
;     sub_C2132
;     sub_C216B
;     sub_C217B
;     sub_C2195
;     sub_C21BA
;     sub_C21FD
;     sub_C2209
;     sub_C2231
;     sub_C2232
;     sub_C2284
;     sub_C22DC
;     sub_C2310
;     sub_C2350
;     sub_C2370
;     sub_C2373
;     sub_C23A8
;     sub_C23D2
;     sub_C23E0
;     sub_C2424
;     sub_C242E
;     sub_C2441
;     sub_C247C
;     sub_C2494
;     sub_C24A6
;     sub_C24B0
;     sub_C24B3
;     sub_C24D9
;     sub_C24FE
;     sub_C250D
;     sub_C251A
;     sub_C2521
;     sub_C2533
;     sub_C254D
;     sub_C2550
;     sub_C2562
;     sub_C2565
;     sub_C2568
;     sub_C2586
;     sub_C2595
;     sub_C2596
;     sub_C25B2
;     sub_C25CB
;     sub_C25E5
;     sub_C25F5
;     sub_C2611
;     sub_C262A
;     sub_C2631
;     sub_C2639
;     sub_C2659
;     sub_C265B
;     sub_C266E
;     sub_C2671
;     sub_C2685
;     sub_C2695
;     sub_C26CA
;     sub_C26CC
;     sub_C26D0
;     sub_C26D4
;     sub_C26DD
;     sub_C26E8
;     sub_C26FC
;     sub_C271B
;     sub_C272B
;     sub_C273C
;     sub_C274A
;     sub_C274B
;     sub_C2766
;     sub_C276E
;     sub_C2782
;     sub_C2785
;     sub_C3000
;     sub_C3124
;     sub_C3141
;     sub_C317C
;     sub_C31B0
;     sub_C321A
;     sub_C3233
;     sub_C3250
;     sub_C3265
;     sub_C3268
;     sub_C3296
;     sub_C32B2
;     sub_C32CB
;     sub_C32E5
;     sub_C332A
;     sub_C3359
;     sub_C335B
;     sub_C336E
;     sub_C3395
;     sub_C33CA
;     sub_C33D0
;     sub_C33DD
;     sub_C33DF
;     sub_C33E8
;     sub_C341B
;     sub_C3485
;     sub_C4090
;     sub_C4152
;     sub_C4158
;     sub_C415C
;     sub_C41D3
;     sub_C4205
;     sub_C4246
;     sub_C4284
;     sub_C4298
;     sub_C429C
;     sub_C42A6
;     sub_C42AD
;     sub_C42CB
;     sub_C42E3
;     sub_C42EE
    ASSERT event_start_of_vertical_sync == &04
    ASSERT inkey_key_p == &C8
    ASSERT osbyte_acknowledge_escape == &7E
    ASSERT osbyte_disable_event == &0D
    ASSERT osbyte_inkey == &81
    ASSERT osbyte_read_adc_or_get_buffer_status == &80
    ASSERT osbyte_read_write_escape_break_effect == &C8
    ASSERT osbyte_tape == &8C

SAVE pydis_start, pydis_end
