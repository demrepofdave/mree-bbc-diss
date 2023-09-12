from commands import *
import acorn


def label_and_comment(addr, labelText, commentText):
    label(addr, labelText)
    comment(addr, commentText, inline=True)
    return

def label_equw(addr, length, labelText):
    label(addr, labelText)
    word(addr, length)
    return

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are
# multiple versions of the same program.
load(0x1900, "MREE_1900_4300.bin", "6502")

move(0x900, 0x4000, 0x100)
move(0xA00, 0x4100, 0x100)
move(0xB00, 0x4200, 0x100)
move(0x400, 0x3D00, 0x100)
move(0x500, 0x3E00, 0x100)
move(0x600, 0x3F00, 0x100)
move(0x040, 0x4384, 0x21)
move(0xC00, 0x1900, 0x2400)


config.set_lower_case(False)
config.set_hex_dump_max_bytes(12)

acorn.bbc()

# Start tracing instructions at 0x2000.
entry(0x4300)
label(0x4300, "entry_point_4300")

# Data reloaction labels
label(0x4000, "data_to_relocate_4000")
label(0x4100, "data_to_relocate_4100")
label(0x4200, "data_to_relocate_4200")
label(0x3D00, "data_to_relocate_3D00")
label(0x3E00, "data_to_relocate_3E00")
label(0x3F00, "data_to_relocate_3F00")
label(0x1900, "code_to_relocate_1900")
label(0x4384, "data_to_relocate_4384")

label(0x0040, "relocated_data_0040")
label(0x900,  "relocated_data_900")
label(0xA00, "relocated_data_A00")
label(0xB00, "relocated_data_B00")
label(0x400, "relocated_data_400")
label(0x500, "relocated_data_500")
label(0x600, "relocated_data_600")
label(0xC00, "relocated_data_C00")

# Address labels

label_and_comment(0x0A73, "write_sprite_to_screen_routine", "A = sprite number. following code block calculates sprite source address and stores in zp84,85, x and y appear to be screen coordinates, screen memory address stored in zp 80-81")
label(0x0A84, "possible_calculate_screen_write_address_from_x_y_coords")
label(0x0A8F, "write_sprite_to_screen_memory")
label(0x0A91, "self_modified_code_1_1")
label(0x0A92, "self_modified_code_1_2")
label(0x0A93, "self_modified_code_1_3")
label(0x0A94, "self_modified_code_1_4")
label(0x0B05, "set_self_modified_code_1_NOP_JSR_0B31")
label(0x0B46, "set_self_modified_code_1_NOP_JSR_0B3F")

entry(0x0B31, "unknown_mod_1")
entry(0x0B3F, "unknown_mod_2")

label(0x0B0C, "set_self_modified_code_1_NOP_JSRabs")
label(0x0B1E, "restore_self_modified_code_eor_zp80")
label(0x0D94, "begin_new_game")
label(0x1320, "check_key_press_S")
label(0x132B, "check_key_press_Q")
label(0x1334, "store_sound_mask")
label(0x1336, "possibly_check_game_keyboard_and_joystick")
label(0x1363, "check_keys_return_Z_X")
label(0x1379, "handle_right_input")
label(0x1383, "handle_up_input")
label(0x138D, "handle_down_input")
label(0x137C, "check_key_colon")
label(0x1386, "check_key_forward_slash")
label(0x1399, "handle_Z_left_key_press")
label(0x1421, "handle_X_right_key_press")
label(0x1610, "game_over_routine")
label(0x161C, "loop_print_game_over_1")
label(0X1627, "loop_print_game_over_2")
label(0x1635, "wait_for_input_space_or_fire")
label(0x1637, "loop_no_space_or_fire_pressed")
label(0x1650, "space_or_fire_press_detected")
label(0x1A82, "print_unknown_number_char_on_screen")
label(0x1B85, "handle_possible_fire_and_ball_routine_possible")
label(0x26DF, "execute_inkey")
label(0x4326, "loop_relocate_data")
label(0x434D, "loop_relocate_more_data")
label(0x436E, "loop_relocate_zero_page_data")
label(0x4378, "loop_print_press_space_or_fire")


label(0x133A, "handle_joystick_input")

# Data labels
label(0x000A, "sound_on_off_flag_or_maybe_mask")
label(0x002F, "keyboard_or_joystick_flag")
#comment(0x002F, "Zero value for keyboard, non-zero for joystick", inline=True)
label(0x0080, "zero_page_80")
label(0x0081, "zero_page_81")
label(0x0082, "zero_page_82")
label(0x0083, "zero_page_83")
label(0x0024, "lives_remaining_0024_possible")
label(0x05CF, "game_over_string_data")
label(0x05E3, "more_character_data")
label(0x0C20, "scene_and_score_zero_string_data")
decimal(0x0C20, 0x11)
label(0x15DC, "extra_player_string_data")
decimal(0x05E3, 28)

label(0x3618, "start_of_game_sprites_area")
label_equw(0x3640, 0x20, "sprite_01_apple_graphic")
label_equw(0x3680, 0x20, "sprite_02_bonus_base_graphic")
label_equw(0x36C0, 0x20, "sprite_03_extra_character_graphic")
label_equw(0x3700, 0x20, "sprite_04_extra_character_chomp_1")
label_equw(0x3740, 0x20, "sprite_05_extra_character_chomp_2")
label_equw(0x3780, 0x20, "sprite_06_cherry_graphic")
label_equw(0x37C0, 0x20, "sprite_07_center_base_graphic")
label_equw(0x3800, 0x20, "sprite_08_unknown")
label_equw(0x3840, 0x20, "sprite_09_unknown")
label_equw(0x3880, 0x20, "sprite_0A_unknown")
label_equw(0x38C0, 0x20, "sprite_0B_unknown")
label_equw(0x3900, 0x20, "sprite_0C_unknown")
label_equw(0x3940, 0x20, "sprite_0D_unknown")
label_equw(0x3980, 0x20, "sprite_0E_unknown")
label_equw(0x39C0, 0x20, "sprite_0F_unknown")
label_equw(0x3A00, 0x20, "sprite_10_unknown")
label_equw(0x3A40, 0x20, "sprite_11_unknown")
label_equw(0x3A80, 0x20, "sprite_12_unknown")
label_equw(0x3AC0, 0x20, "sprite_13_unknown")
label_equw(0x3B00, 0x20, "sprite_14_unknown")



label(0x4361,"loop_initialize_70_7F_to_zero")
label(0x43A5, "press_space_or_fire_string_data")

label(0x2650, "store_x18_to_0017_and_x10_to_0018")



# Commented line.

comment(0x0A58, "Select sprite 8 to write (???)", inline=True)
comment(0x0A93, "zp 80 writes to screen memory (print sprite)", inline=True)
comment(0x0B19, "Select sprite 6 to write (cherry)", inline=True)
comment(0x1E0B, "Select sprite 1 to write (apple?)", inline=True)
comment(0x1FFB, "Select sprite 7 to write (center_base)", inline=True)
comment(0x2008, "Select sprite 7 to write (center_base)", inline=True)
comment(0x200D, "Select sprite 2 to write (bonus_base_graphic)", inline=True)
comment(0x270A, "Select sprite 3 to write (extra_character_graphic)", inline=True)

comment(0x0B3C, "zp 80 writes to screen memory (print sprite)", inline=True)
comment(0x0B43, "zp 80 writes to screen memory (print sprite)", inline=True)
comment(0x431E, "loads address &0C00 into &80-81", inline=True)
comment(0x4324, "loads address &1900 into &82-83", inline=True)




# Add extra stuff here as the disassembly progresses...

# Use all the information provided to actually disassemble the program.
go()
