from commands import *
import acorn


def label_and_comment(addr, labelText, commentText):
    label(addr, labelText)
    comment(addr, commentText, inline=True)
    return

def label_equw(addr, length, labelText, cols=None):
    label(addr, labelText)
    word(addr, length, cols)
    return

def label_equb(addr, length, labelText, cols=None):
    label(addr, labelText)
    byte(addr, length, cols)
    return

def comment_equb(addr, length, commentText, cols=None):
    comment(addr, commentText, inline=True)
    byte(addr, length, cols)
    return

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are
# multiple versions of the same program.
load(0x1900, "MREE_1900_4300.bin", "6502")

move(0x900, 0x4000, 0x300)
move(0x400, 0x3D00, 0x300)
move(0x040, 0x4384, 0x21)
move(0xC00, 0x1900, 0x2400)


config.set_lower_case(False)
config.set_hex_dump_max_bytes(12)
config.set_inline_comment_column(50)

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
label(0x900,  "run_music_and_pause_waiting_for_timer_interrupt_900")
label(0xA00, "relocated_data_A00")
label(0xB00, "relocated_data_B00")
label(0x400, "relocated_data_400")
label(0x500, "relocated_data_500")
label(0x600, "relocated_data_600")
label_equb(0xC00, 0x20, "user_defined_characters_224_to_255_relocated_data_C00")

# Address labels
label(0x087F, "possible_monster_stack_x_coord")
label(0x088F, "possible_monster_stack_y_coord")
label(0x089F, "possible_unknown_monster_data_1")
label(0x0100, "possible_unknown_monster_data_2")

label(0x0907,"escape_key_not_pressed")
label(0x090C,"loop_until_P_key_no_longer_pressed")
label(0x0911,"loop_paused_game_wait_for_P_key_press")
label(0x0916,"loop_until_P_key_no_longer_pressed_to_resume_game")
label(0x0987,"loop_until_timer_interrupt_fires")
label(0x091B,"play_sounds_if_configured")

subroutine(0x0A73, "write_sprite_to_screen_routine", None, "Writes a sprite to the screen", on_entry={'a': "sprite number", 'x' : "X screen coordinate", 'y' : "Y screen coordinate"})

subroutine(0x0A84, "write_pre_selected_sprite_to_screen_routine", None, "Writes a sprite to the screen with sprite addr already loaded in &84-85", on_entry={'a': "(unused)", 'x' : "X screen coordinate", 'y' : "Y screen coordinate"})

subroutine(0x0AD3, "calculate_screen_write_address_from_x_y_coords", 
                   None, 
                   "Screen coords for X=0..127, Y=0..???, returns screen address calculated &80-81", 
                   on_entry={'A': "Not used", 'X' : "X screen coordinate", 'Y' : "Y screen coordinate"})
#                   on_exit ={'A': "(corrupted)", "X" : "(undefined)", "Y":"(undefined)"},
#                   hook=False)


subroutine(0x0AD3, "calculate_screen_write_address_from_x_y_coords", 
                   None,
                   "Screen coords for X=0..127, Y=0..???, returns screen address calculated &80-81", 
                   on_entry={'A': "Not used", 'X' : "X screen coordinate", 'Y' : "Y screen coordinate"})
#                   on_exit ={'A': "(corrupted)", "X" : "(undefined)", "Y":"(undefined)"},
#                   hook=False)

subroutine(0x0BCB, "print_score_to_screen", 
                    None, 
                   "TBD", 
                   on_entry={'A': "Not used?", 'X' : "Not used?", 'Y' : "Not used?"})

subroutine(0x0BAD, "increment_score", 
                    None, 
                   "TBD", 
                   on_entry={'A': "Not used?", 'X' : "Not used?", 'Y' : "Not used?"})

subroutine(0x1402, "set_mr_ee_direction", 
                    None, 
                   "Sets Mr Ee new direction and plots mree sprite", 
                   on_entry={'A': "0-Right, 1-Left, 2-Up, 3-Down"})

subroutine(0x2533, "sub_possible_remove_monster_from_stack", 
                    None, 
                   "Removes monster from stack by copying the last monster on stack over the monster to be removed and decrementing monster count", 
                   on_entry={'X': "Stack index of monster to remove"})

subroutine(0x2550, "get_monster_data_off_stack", 
                    None, 
                   "Reads monster data from the stack and places in registers ready for printing", 
                   on_entry={'X': "Stack index of monster data to copy"})

subroutine(0x2565, "unknown_fetch_and_process_monster_routine", 
                    None, 
                   "Reads monster data from the stack and the does something with it", 
                   on_entry={'X': "Stack index of monster data to copy"})

subroutine(0x2568, "unknown_process_monster_routine_without_fetch", 
                    None, 
                   "On entry monster is already fetched, then does something with it", 
                   on_entry={'X': "Stack index of monster data to copy"})

subroutine(0x25B2, "flush_all_sound_channels",
                   None,
                   "Plays a sound - not yet sure what it does but it does use accumulator", 
                   on_entry={'A': "Used by something"})

subroutine(0x0A40, "delay_routine", 
                    None, 
                   "So game sound and then wait perform delay routine based on via chip timer", 
                   on_entry={'A': "Amount of time to wait (not sure about tick size yet)"})

subroutine(0x0B98, "play_precompile_sound_block_at_zp_78", 
                    None, 
                   "Plays a pre-compiled OSWORD sound block at &78-&7F if sound is enabled.", 
                   on_entry={'A': "(Unused)"})

subroutine(0x0B9C, "compile_sound_from_AXY_data", 
                    None, 
                   "Creates a OSWORD sound block at &70-&77 and makes the OSWORD sound call if enabled. Note Channel is already preselected in &70-&71 prior to the subroutine call", 
                   on_entry={'A': "Sound Amplitude", 'X': "Sound Pitch", 'Y': "Sound Duration"})

subroutine(0x1B85, "handle_firing_of_the_the_ball_routine_possible", 
                    None, 
                   "Handles when fire key is pressed.  Note if the ball is already in flight or not available no action will happen", 
                   on_entry={'A': "If non-zero user is pressin the first key", 'X': "unused?", 'Y': "unused?"})


label(0x2695, "sub_possible_fire_ball_then_in_motion_routine")

subroutine(0x2698, "sub_possible_ball_printing_or_in_motion_routine", 
                    None, 
                   "Does something to do with the ball", 
                   on_entry={'A': "Used for something", 'X': "ball X coordinate", 'Y': "ball Y coordinate"})

subroutine(0x26D0, "sub_eor_write_bit_of_ball_to_screen", 
                    None, 
                   "EOR and store at screen address stored in &80-&81", 
                   on_entry={'A': "Unused", 'X': "Unused", 'Y': "screen memory offset index"})

subroutine(0x1A60, "sub_add_8_to_y_register", 
                    None, 
                   "Adds 8 to y register - possibly something to do with screen writing routines", 
                   on_entry={'A': "Unused", 'X': "Unused", 'Y': "Amount to increment by 8"})

subroutine(0x266E, "calculate_ball_x_y_position_relative_to_mr_ee", 
                    None, 
                   "Routine that fires Mr.EEs ball", 
                   on_entry={'A': "Unused - Returns non-zero garbage", 'X': "Unused - Returns balls X coordinate", 'Y': "Unused - Returns balls Y coordinate"})

subroutine(0x1A3C, "sub_increment_y_position_and_recalc_80_81_screen_address", 
                    None, 
                   "Inrements Y position of object, then calculates if this affects screen address in &80-&81 and modifies that screen address if required", 
                   on_entry={'A': "Unused - Corrupted", 'X': "Unused - Preserved", 'Y': "Y coordinate of object - Incremented Y coord"})


subroutine(0x2785, "sub_move_80_81_screen_address_down_one_line", 
                    None, 
                   "Adds &280 to screen address at &80-&81", 
                   on_entry={'A': "Unused - Corrupted", 'X': "Unused - Not changed", 'Y': "Unused - Not Changed"})

subroutine(0x1856, "sub_write_a_mask_to_80_81_screen_address_plus_y", 
                    None, 
                   "Writes &C0 to screen address at &80-&81, unless result is 0, in which case mask of 5F is written", 
                   on_entry={'A': "Unused - Corrupted", 'X': "Unused - Preserver", 'Y': "Unused - Preserved"})

subroutine(0x1B25, "sub_check_for_eaten_cherries", 
                    None, 
                   "Possibly checks for eaten cherries. &720,Y seems to be an important write area", 
                   on_entry={'A': "Unused - Corrupted", 'X': "Unused - Corrupted", 'Y': "Some sort of index to &720 data"})

subroutine(0x25CB, "sub_print_squished_mr_ee", 
                    None, 
                   "EOR - Prints or erases squished mr ee sprite to screen", 
                   on_entry={'A': "Unused - Corrupted", 'X': "Unused - Corrupted", 'Y': "Unused - Corrupted"})

subroutine(0x1673, "sub_possible_handle_ball_update_movement", 
                    None, 
                   "Possibly Examines ball state and updates the ball position accordingly (any screen printing?)", 
                   on_entry={'A': "Unused - Corrupted", 'X': "Unused - Corrupted?", 'Y': "Unused - Corrupted?"})

subroutine(0x1673, "sub_possible_handle_ball_update_movement", 
                    None, 
                   "Possibly Examines ball state and updates the ball position accordingly (any screen printing?)", 
                   on_entry={'A': "Unused - Corrupted", 'X': "Unused - Corrupted?", 'Y': "Unused - Corrupted?"})

subroutine(0x0A52, "write_sprite_at_central_base", 
                    None, 
                   "Writes sprite, whose number is passed in to the accumulator as the current central base character on screen", 
                   on_entry={'A': "Sprite number", 'X': "Unused - Corrupted?", 'Y': "Unused - Corrupted?"})

subroutine(0x0A58, "write_mr_ee_right", 
                    None, 
                   "Writes the Mr.Ee right sprite at the coordinates specified", 
                   on_entry={'A': "Unused - Corrupted", 'X': "Mr Ee x position", 'Y': "Mr Ee y position"})

subroutine(0x0B4F, "update_extra_letters_at_top_of_screen", 
                    None, 
                   "Prints 'E X T R A' in correct colours at the top of the screen (not sure how colours are chosen yet)", 
                   on_entry={'A': "EXTRA bitmap showing which letters have been collected", 'X': "??", 'Y': "??"})


subroutine(0x1E04, "write_apple_to_screen_using_90x_93y", 
                    None, 
                   "Writes the full apple sprite to the screen at the x,y coordinates specified in &90, &93", 
                   on_entry={'A': "Unused - Corrupted", 'X': "Unused - Corrupted?", 'Y': "Unused - Corrupted?"})

subroutine(0x1E08, "write_apple_to_screen_uncorrected", 
                    None, 
                   "Writes the full apple sprite to the screen at the x,y coordinates specified.  X coordinate has not been corrected and will be shifted correctly", 
                   on_entry={'A': "Unused - Corrupted", 'X': "Apple x position (uncorrected)", 'Y': "Apple y position"})


subroutine(0x1E0B, "write_apple_to_screen_corrected", 
                    None, 
                   "Writes the full apple sprite to the screen at the x,y coordinates specified.  X coordinate has already been shifted correctly", 
                   on_entry={'A': "Unused - Corrupted", 'X': "Apple x position (already corrected)", 'Y': "Apple y position"})


# Zero page date labels.
label(0x0004, "number_of_continuous_cherries_consumed")
label(0x0008, "remaining_cherry_count")
label(0x0005, "score")
label(0x0006, "score+1")
label(0x0007, "score+2")
label(0x0009, "number_of_apples_on_screen")
label(0x000A, "sound_on_off_flag")
label(0x0012, "next_monster_release_timer")
label(0x0013, "number_of_all_enemies_on_stack")
label(0x0014, "remaining_monsters_to_spawn_minus_1") # FF if no more monsters
label(0x0015, "scene_number")
label(0x0016, "extra_monster_status") # 0x8x = Active in player area, 0x4x recently killed, 0xX0-0xX5 - E, X, T, R, A letter of letter monster.
label(0x001B, "ball_state")  # 0 = with MrEe.  4x ball in motion - Cx ball exploding, Ax ball coming back
label(0x001D, "number_of_normal_monsters_remaining_minus_1") ## FF if no more monsters on this level
label(0x001E, "number_of_active_ghosts")
label(0x0019, "possible_ball_x_coordinate")
label(0x001A, "possible_ball_y_coordinate")
label(0x001F, "extra_bitmap")
label(0x0020, "mr_ee_x_coord")
label(0x0021, "mr_ee_y_coord")
label(0x0022, "possible_mr_ee_direction")
label(0x0023, "level_number_scene_mod_10")

label(0x0027, "mr_ee_status") # 00 = ok?
label(0x0024, "zp_24_lives_remaining")
label(0x002F, "keyboard_or_joystick_flag")
label(0x003C, "unknown_counter")
label(0x003D, "unknown_counter+1")
label(0x003E, "unknown_counter+2")
label(0x0070, "zp_70_sound_channel")
label(0x0072, "zp_72_sound_amplitude")
label(0x0074, "zp_74_sound_pitch")
label(0x0076, "zp_76_sound_duration")
label(0x008F, "zp_8f_screencalc_temp_store")

label(0x0078, "zp_78_sound_channel")
label(0x007A, "zp_7A_sound_amplitude")
label(0x007C, "zp_7C_sound_pitch")
label(0x007E, "zp_7E_sound_duration")

label(0x0080, "zp_80_dest_screenaddr")
label(0x0081, "zp_81_dest_screenaddr")
label(0x0082, "zp_82")
label(0x0083, "zp_83")
label(0x0084, "zp_84_source_spriteaddr")
label(0x0085, "zp_85_source_spriteaddr")
label(0x00FF, "escape_key_pressed_flag")


# Game play workspace
label(0x08AF, "apple_x_coordinate")

# Code labels.
label(0x0A40, "delay_routine")
label(0x0A46, "delay_loop")
label(0x0A5C, "sub_plot_mr_ee_on_screen")
label(0x0A63, "skip_some_unknown_subroutine")
label(0x0A8D, "loop_write_next_two_pixels")
label(0x0A8F, "write_sprite_to_screen_memory")
label(0x0A91, "self_modified_code_1_1")
label(0x0A92, "self_modified_code_1_2")
label(0x0A93, "self_modified_code_1_3")
label(0x0A94, "self_modified_code_1_4")
label(0x0AB6, "possible_increment_screen_address")
#label(0x0AD3, "calculate_screen_write_address_from_x_y_coords")

label(0x1538, "loop_write_win_extra_mr_ee_text_to_screen")
label(0x1558, "move_mr_ee_towards_enemy")

label(0x0BA6, "play_sound_if_enabled")
label(0x0B04, "skip_screenaddr_msb_increment")
label(0x0B05, "set_self_modified_code_1_NOP_JSR_0B31_unknown_mod_1")
label(0x0B0C, "set_self_modified_code_1_NOP_JSRabs")
label(0x0B1E, "set_sprite_code_to_eor_with_background")
label(0x0B46, "set_self_modified_code_1_NOP_JSR_0B3F_unknown_mod_2")
entry(0x0B31, "unknown_mod_1")
entry(0x0B3F, "unknown_mod_2")

label(0x0B97, "finish_subroutine")
label(0x0BA4, "skip_other_sound_routine")
label(0x0BE3, "byte_to_2_digit_score")
label(0x0BEE, "print_digit_or_move_cursor")
label(0x0BF8, "print_digit")
label(0x0BFC, "move_cursor_right")

label(0x0D94, "begin_new_game")
label(0x0DB3, "begin_next_level")

label(0x0E0E, "loop_until_all_pallet_colours_are_set_to_black")
label(0x0E40, "perform_vdu_25_plot_a_x_y")
label(0x0E42, "loop_plot")
label(0x0E4F, "loop_until_brick_line_is_plotted")

label(0x10F3, "possible_all_ghosts_killed")
label(0x1095, "loop_decrement_three_unknown_counters")
label(0x10A9, "loop_possible_reset_game_pallete")
label(0x10D6, "main_game_action_loop")
label(0x10E4, "skip_over_some_sprite_plotting")

label(0x1121, "mr_ee_is_still_alive")
label(0x112F, "game_event_detected")
label(0x1134, "loop_keep_plotting_animations_post_event")
label(0x1149, "detect_event_type")
label(0x1162, "extra_completed")
label(0x1165, "level_completed")
label(0x1168, "mr_ee_just_got_killed")
label(0x1174, "not_killed_by_apple")

label(0x1177, "death_ditty")
label(0x117B, "loop_death_ditty")
label(0x11CF, "lose_a_life")
label(0x11D6, "still_have_lives")
label(0x11E7, "possible_reset_sprites_after_death_routines")

label(0x120E, "skip_extra_monster_not_in_playing_field")
label(0x124B, "sub_called_by_main_game_loop_1")
label(0x12C9, "mr_ee_has_not_triggered_ghosts")
label(0x12EA, "loop_unknown_sound_loop")

label(0x1319, "skip_more_somethings")
label(0x1320, "start_keyboard_checks_key_S")
label(0x132B, "check_key_press_Q")
label(0x1334, "store_sound_mask")
label(0x133A, "handle_joystick_input")
label(0x1336, "possibly_check_game_keyboard_and_joystick")
label(0x1363, "check_keys_return_Z_X")
label(0x1379, "right_input_detected")
label(0x1383, "up_input_detected")
label(0x13B9, "loop_another_unknown_stuff")
label(0x138D, "handle_down_input")
label(0x137C, "check_key_colon")
label(0x1386, "check_key_forward_slash")
label(0x1390, "reset_cherries_consumed_counter")
label(0x1399, "handle_left_input")

label(0x1421, "handle_right_input")
label(0x1532, "extra_player_routine")
label(0x1570, "loop_fired_ball_in_transit")
label(0x15AF, "loop_ball_exploding")

label(0x1610, "game_over_routine")
label(0x161C, "loop_print_game_black_box")
label(0X1627, "loop_print_game_over_characters_slowly")
label(0x1635, "wait_for_input_space_or_fire")
label(0x1637, "loop_no_space_or_fire_pressed")
label(0x1650, "space_or_fire_press_detected")
label(0x16DB, "ball_with_mr_ee")

label(0x1759, "process_all_monsters")
label(0x175D, "loop_process_next_monster_1")
label(0x1794, "no_more_monsters_to_process_1")

label(0x1862, "skip_mask_result_is_zero")

label(0x1A4A, "local_skip_whatever_a")
label(0x1A82, "print_unknown_number_char_on_screen")
label(0x1A99, "loop_print_mr_ee_remaining_lives_on_left")
label(0x14A5, "handle_up_input")
label(0x1AAA, "no_more_mr_ee_lives_to_print")
label(0x1AD2, "loop_draw_extra_box_lines_horizontal")

label(0x1B04, "loop_draw_extra_box_lines_vertical")
label(0x1B21, "skip_move_row_down")
label(0x1B4C, "possible_skip_no_cherry_eaten")
label(0x1BDE, "skip_next_item")
label(0x1BA0, "skip_no_ball_action_required")
label(0x1BA1, "sub_possible_print_existing_game_sprites")
label(0x1BA9, "loop_next_item")
label(0x1BE4, "possible_skip_sprint_print")
label(0x1BF2, "mr_ee_not_squished_by_apple")

label(0x1CF1, "loop_process_next_monster_2")

label(0x1D3D, "no_more_monsters_to_process_2")
label(0x1DEC, "update_apple_data_in_memory")

label(0x1EE4, "loop_process_next_monster_3")

label(0x1F03, "no_more_monsters_to_process_3")
label(0x1F7B, "loop_process_next_monster_4")
label(0x1F9A, "no_more_monsters_to_process_4")

label(0x2056, "loop_possible_process_single_monster")
label(0x2062, "skip_if_positive")
label(0x2073, "skip_if_carry_set")
label(0x20B2, "possible_monster_not_hit_by_ball")

label(0x2344, "possible_update_a_monster")
label(0x237B, "ghost_possible_chomping_apples_sprint_print")
label(0x23B5, "enemy_squished_by_apple_detected_sprite_print")

label(0x2423, "all_monsters_processed")
label(0x2441, "sub_widely_used_print_some_sprite")
label(0x24B0, "sub_monster_hit_by_ball_sprite_print")
label(0x24CD, "restore_pallet_from_red")
label(0x24EC, "skip_ghost_and_extra_checks_checks_complete")

label(0x2573, "loop_local_monster_maths_1")
label(0x2582, "loop_local_monster_maths_2")
label(0x25B6, "loop_possible_flush_all_sound_channels")
label(0x25CA, "local_finished_rts")

label(0x2680, "mr_ee_direction_right_up_or_down")
label(0x2688, "mr_ee_direction_up_or_down")
label(0x2690, "mr_ee_direction_down")
label(0x2693, "skip_end_ball_pos_calculation")
label(0x26D7, "possible_update_ball_if_exists")
label(0x26DD, "sub_check_P_key_pressed")
label(0x26DF, "execute_inkey")

label(0x4326, "loop_relocate_data")
label(0x434D, "loop_relocate_more_data")
label(0x436E, "loop_relocate_zp_data")
label(0x4378, "loop_print_press_space_or_fire")


label(0x213C, "local_skip_1")
label(0x2143, "local_skip_2")
label(0x214A, "local_skip_3")


label(0x30F1, "screen_memory_30F1")
label(0x35F2, "screen_memory_35F2")
label(0x35F3, "screen_memory_35F3")
label(0x35F4, "screen_memory_35F4")
label(0x35F5, "screen_memory_35F5")
label(0x35F6, "screen_memory_35F6")

# Data labels
label(0x1225, "write_current_base_sprite")

label_equb(0x05CF, 0x14, "game_over_string_data")
label_equb(0x05E3, 28, "initial_screen_setup_vdus")
label_equb(0x0C20, 0x11, "scene_and_score_zero_string_data")

label(0x15DC, "extra_player_string_data")
label_equb(0x15DD, 0x32, "scene_and_score_zero_string_data+1")

label(0x3618, "start_of_game_sprites_area")
label_equw(0x2940, 0x20, "sprite_01_apple_graphic")
label_equw(0x2980, 0x20, "sprite_02_bonus_base_graphic")
label_equw(0x29C0, 0x20, "sprite_03_extra_character_graphic")
label_equw(0x2A00, 0x20, "sprite_04_extra_character_chomp_1")
label_equw(0x2A40, 0x20, "sprite_05_extra_character_chomp_2")
label_equw(0x2A80, 0x20, "sprite_06_cherry_graphic")
label_equw(0x2AC0, 0x20, "sprite_07_center_base_graphic")
label_equw(0x2B00, 0x20, "sprite_08_mr_ee_right_1")
label_equw(0x2B40, 0x20, "sprite_09_mr_ee_left_1")
label_equw(0x2B80, 0x20, "sprite_0A_mr_ee_up_1")
label_equw(0x2BC0, 0x20, "sprite_0B_mr_ee_down_1")
label_equw(0x2C00, 0x20, "sprite_0C_mr_ee_right_2")
label_equw(0x2C40, 0x20, "sprite_0D_mr_ee_left_2")
label_equw(0x2C80, 0x20, "sprite_0E_mr_ee_up_2")
label_equw(0x2CC0, 0x20, "sprite_0F_mr_ee_down_2")
label_equw(0x2D00, 0x20, "sprite_10_ghost_right")
label_equw(0x2D40, 0x20, "sprite_11_ghost_left")
label_equw(0x2D80, 0x20, "sprite_12_ghost_up")
label_equw(0x2DC0, 0x20, "sprite_13_ghost_down")
label_equw(0x2E00, 0x20, "sprite_14_enemy_angry_right")
label_equw(0x2E40, 0x20, "sprite_15_enemy_angry_left")
label_equw(0x2E80, 0x20, "sprite_16_enemy_angry_up")
label_equw(0x2EC0, 0x20, "sprite_17_enemy_angry_down")
label_equw(0x2F00, 0x20, "sprite_18_enemy_right")
label_equw(0x2F40, 0x20, "sprite_19_enemy_left")
label_equw(0x2F80, 0x20, "sprite_1A_enemy_up")
label_equw(0x2FC0, 0x20, "sprite_1B_enemy_down")
label_equw(0x400, 0x8, "sprite_EXTRA_E")
label_equw(0x410, 0x8, "sprite_EXTRA_X")
label_equw(0x420, 0x8, "sprite_EXTRA_T")
label_equw(0x430, 0x8, "sprite_EXTRA_R")
label_equw(0x440, 0x8, "sprite_EXTRA_A")
label_equw(0x450, 0x10, "sprite_squished_enemy")
label_equw(0x470, 0x10, "sprite_squished_ghost")
label_equw(0x490, 0x10, "sprite_unknown_possible_squishing_apple")
label_equw(0x4B0, 0x20, "sprite_breaking_apple")

label_equb(0x05FF, 0x09, "game_pallet_data", cols=1)
label_equb(0x0608, 0x04, "game_pallet_data_2", cols=1)
label_equb(0x060C, 0x03, "game_pallet_data_3", cols=1)
label_equb(0x060F, 0x01, "game_pallet_data_4_or_apple_y_coord_minus_1", cols=1)

label(0x061F, "unknown_apple_status_data") # 0 = Not moving? 0x74 = ?


label(0x108C, "initial_write_of_central_base_to_screen")
label(0x4361,"loop_initialize_70_7F_to_zero")
label(0x43A5, "press_space_or_fire_string_data")

label(0x2650, "restore_L0017_L0018_to_defaults_x18_and_x10")

label(0x0AA5, "skip_inc_1")

label(0x0E7D, "loop_possible_build_maze")

# Commented line.

comment(0x0C00, "VDU 224 - Level block 1 - X", inline=True)
comment(0x0C08, "VDU 225 - Level block 2 - Slide", inline=True)
comment(0x0C10, "VDU 226 - Level block 3 - Brick", inline=True)
comment(0x0C18, "VDU 227 - Level block 4 - Wavey", inline=True)

comment(0x0C32, "Level 0 (e.g. scene 10) data begins", inline=True)
comment_equb(0x0C52, 0x01, "Level 0 foreground/background brick color (0x22 = 34 bytes in total per level)", cols=1)
comment_equb(0x0C53, 0x01, "Level 0 Brick character", cols=1)
comment(0x0C54, "Level 1 (e.g. scene 1) data begins", inline=True)
comment_equb(0x0C74, 0x01, "Level 1 foreground/background brick color", cols=1)
comment_equb(0x0C75, 0x01, "Level 1 Brick character", cols=1)
comment(0x0C76, "Level 2 data begins", inline=True)
comment_equb(0x0C96, 0x01, "Level 2 foreground/background brick color", cols=1)
comment_equb(0x0C97, 0x01, "Level 2 Brick character", cols=1)
comment(0x0C98, "Level 3 data begins", inline=True)
comment_equb(0x0CB8, 0x01, "Level 3 foreground/background brick color", cols=1)
comment_equb(0x0CB9, 0x01, "Level 3 Brick character", cols=1)
comment(0x0CBA, "Level 4 data begins", inline=True)
comment_equb(0x0CDA, 0x01, "Level 4 foreground/background brick color", cols=1)
comment_equb(0x0CDB, 0x01, "Level 4 Brick character", cols=1)
comment(0x0CDC, "Level 5 data begins", inline=True)
comment_equb(0x0CFC, 0x01, "Level 5 foreground/background brick color", cols=1)
comment_equb(0x0CFD, 0x01, "Level 5 Brick character", cols=1)
comment(0x0CFE, "Level 6 data begins", inline=True)
comment_equb(0x0D1E, 0x01, "Level 6 foreground/background brick color", cols=1)
comment_equb(0x0D1F, 0x01, "Level 6 Brick character", cols=1)
comment(0x0D20, "Level 7 data begins", inline=True)
comment_equb(0x0D40, 0x01, "Level 7 foreground/background brick color", cols=1)
comment_equb(0x0D41, 0x01, "Level 7 Brick character", cols=1)
comment(0x0D42, "Level 8 data begins", inline=True)
comment_equb(0x0D62, 0x01, "Level 8 foreground/background brick color", cols=1)
comment_equb(0x0D63, 0x01, "Level 8 Brick character", cols=1)
comment(0x0D64, "Level 9 data begins", inline=True)
comment_equb(0x0D84, 0x01, "Level 9 foreground/background brick color", cols=1)
comment_equb(0x0D85, 0x01, "Level 9 Brick character", cols=1)

label(0x2797, "sound_pitch_data")

label(0x0001, "somthing_used_to_index_address_0720")

comment(0x0AC1, "increment screen address by one whole line (finished printing top line, now print bottom", inline=True)
comment(0x0AD3, "X Screen offset calulation begins (Only values 127-0 are used, each value represents two pixels wide)", inline=True)
comment(0x0AD4, "X coord * 4 (Only values 127-0 are used)", inline=True)
comment(0x0AE0, "Y Screen offset calulatiom begins Y=lllllnnn, where lllll = line number, nnn = offset within that line (0-7)", inline=True)
comment(0x0ADA, "Shift overflowed bits into MSB", inline=True)
comment(0x0AF6, "We have memory offset address for printing spite. Add &3000 (start address of mode 2 to make it point to correct screen memory location", inline=True)
comment(0x0A58, "Select sprite 8 to write (mr ee right frame one)", inline=True)
comment(0x0A73, "Calculate address for sprite in memory (&3400*(A*&40))", inline=True)
comment(0x0A93, "zp 80 writes to screen memory (print sprite)", inline=True)

comment(0x0B19, "Select sprite 6 to write (cherry)", inline=True)
comment(0x0B3C, "zp 80 writes to screen memory (print sprite)", inline=True)
comment(0x0B43, "zp 80 writes to screen memory (print sprite)", inline=True)
comment(0x0B5C, "Stores 8 to L0017", inline=True)
comment(0x0B5E, "Stores 8 to L0018", inline=True)

comment(0x0BA6, "flag either containes 7 = Sound on and OSWORD 7, or 0 = skip osword command") # Not displayed?

comment(0x0E0C, "logical color 15 (flash white/black) -> 7 EOR 7 = Actual color 0 (Black)", inline=True)
comment(0x0E12, "subtract 1 from logical color, set this to actual color 0 (Black)", inline=True)
comment(0x0E16, "VDU 16 (CLG - clear graphics area)", inline=True)
comment(0x0E1D, "Get brick pallet for level", inline=True)

comment(0x108C, "Sprite 7 to write (center_base)", inline=True)
comment(0x10B6, "set ACR register to 01000000 = 01 Continuous Interupts, PB7 disabled + 0 = Timed Interrupt + 000 Shift Control Register Disabled + 00 (PA/PB Latch Disabled)")

comment(0x1212, "Sprite 7 to write (center_base)", inline=True)
comment(0x121C, "Sprite &18 to write (enemy right)", inline=True)
comment(0x1289, "Sprite 2 to write (bonus base graphic)", inline=True)

comment(0x1293, "logical color 8 (flash black/white) -> 6 EOR 7 = Actual color 1 (Red)", inline=True)
comment(0x1298, "logical color 12 (flash blue/yellow) -> 6 EOR 7 = Actual color 1 (Red)", inline=True)
comment(0x12F3, "SOUND ?,1,<data>,2", inline=True)

comment(0x1558, "remove mree from screen (EOR)", inline=True)
comment(0x155D, "plot mree on screen (EOR)", inline=True)

comment(0x1BA7, "Stores 8 to L0018", inline=True)

comment(0x1E0B, "Sprite 1 to write (apple?)", inline=True)
comment(0x1FFB, "Sprite 7 to write (center_base)", inline=True)

comment(0x2008, "Sprite 7 to write (center_base)", inline=True)
comment(0x200D, "Sprite 2 to write (bonus_base_graphic)", inline=True)

comment(0x224D, "Sprite &19 to write (enemy left)", inline=True)
comment(0x2650, "Stores &18 (24) to L0017", inline=True)
comment(0x2654, "Stores &10 (16) to L0018", inline=True)
comment(0x26D9, "if X=0 then ball does not exist on screen?", inline=True)
comment(0x270A, "Sprite 3 to write (extra_character_graphic)", inline=True)
comment(0x2D1B, "Sprite &18 to write (enemy right)", inline=True)

comment(0x4307, "*FX200,2 - disable escape and clear memory on break", inline=True)
comment(0x431E, "loads address &0C00 into &80-81", inline=True)
comment(0x4324, "loads address &1900 into &82-83", inline=True)

comment(0x05E3, "read backwards - &16,2 = MODE 2", inline=True)
comment(0x05EB, "23,0,10,32,0,0,0,0,0,0 = CRTC register 10 = Cursor start line and blink type?", inline=True)
comment(0x05F3, "24,144,0,0,0,88,4,172,3= VDU 24, define a graphics window", inline=True)
comment(0x05FB, "18,0,12 18,0,136| = GCOL 0,12 (col 12) + GCOL 0,136 (background col 8) + VDU 5 (Write text at graphics cursor)", inline=True)

comment(0x0600, "Log.color 0 (black) -> Actual Color 0 (black)", inline=True)
comment(0x0601, "Log.color 1 (red) -> Actual Color 1 (red)", inline=True)
comment(0x0602, "Log.color 2 (green) -> Actual Color 7 (white)", inline=True)
comment(0x0603, "Log.color 3 (yellow) -> Actual Color 3 (yellow)", inline=True)
comment(0x0604, "Log.color 4 (blue) -> Actual Color 4 (blue)", inline=True)
comment(0x0605, "Log.color 5 (magenta) -> Actual Color 5 (magenta)", inline=True)
comment(0x0606, "Log.color 6 (cyan) -> Actual Color 6 (cyan)", inline=True)
comment(0x0607, "Log.color 7 (white) -> Actual Color 2 (green)", inline=True)
comment(0x0608, "Backgound brick Log.color (flashing) -> 1 Actual Color 6 (cyan)", inline=True)
comment(0x0609, "Log.color 9 (flashing) -> 6 Actual Color 1 (red)", inline=True)
comment(0x060A, "Log.color 10 (flashing) -> 0 Actual Color 7 (white)", inline=True)
comment(0x060B, "Log.color 11 (flashing) -> 4 Actual Color 3 (yellow)", inline=True)
comment(0x060C, "Foreground brick Log.color 12 (flashing) -> 3 Actual Color 4 (blue)", inline=True)
comment(0x060D, "Log.color 13 (flashing) -> 6 Actual Color 1 (red)", inline=True)
comment(0x060E, "Log.color 14 (flashing) -> 0 Actual Color ? (white)", inline=True)
comment(0x060F, "Log.color 15 (flashing) -> 4 Actual Color 3 (yellow)", inline=True)

comment(0x0E25, "Set correct foreground brick for level (Logical color 12)", inline=True)
comment(0x0E2E, "Set correct backgound brick for level (Logical color 8)", inline=True)


# Add extra stuff here as the disassembly progresses...

# Use all the information provided to actually disassemble the program.
go()
