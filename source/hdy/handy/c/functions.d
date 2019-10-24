/*
 * This file is part of d-handy.
 *
 * d-handy is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * d-handy is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with d-handy; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
module handy.c.functions;

import std.stdio;
import handy.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_HANDY = ["libhandy-0.0-0.dll;handy-0.0-0.dll;handy-0.dll"];
else version (OSX)
	static immutable LIBRARY_HANDY = ["libhandy-0.0.0.dylib"];
else
	static immutable LIBRARY_HANDY = ["libhandy-0.0.so.0"];

shared static this()
{
	// handy.ActionRow

	Linker.link(hdy_action_row_get_type, "hdy_action_row_get_type", LIBRARY_HANDY);
	Linker.link(hdy_action_row_new, "hdy_action_row_new", LIBRARY_HANDY);
	Linker.link(hdy_action_row_activate, "hdy_action_row_activate", LIBRARY_HANDY);
	Linker.link(hdy_action_row_add_action, "hdy_action_row_add_action", LIBRARY_HANDY);
	Linker.link(hdy_action_row_add_prefix, "hdy_action_row_add_prefix", LIBRARY_HANDY);
	Linker.link(hdy_action_row_get_activatable_widget, "hdy_action_row_get_activatable_widget", LIBRARY_HANDY);
	Linker.link(hdy_action_row_get_icon_name, "hdy_action_row_get_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_action_row_get_subtitle, "hdy_action_row_get_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_action_row_get_title, "hdy_action_row_get_title", LIBRARY_HANDY);
	Linker.link(hdy_action_row_get_use_underline, "hdy_action_row_get_use_underline", LIBRARY_HANDY);
	Linker.link(hdy_action_row_set_activatable_widget, "hdy_action_row_set_activatable_widget", LIBRARY_HANDY);
	Linker.link(hdy_action_row_set_icon_name, "hdy_action_row_set_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_action_row_set_subtitle, "hdy_action_row_set_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_action_row_set_title, "hdy_action_row_set_title", LIBRARY_HANDY);
	Linker.link(hdy_action_row_set_use_underline, "hdy_action_row_set_use_underline", LIBRARY_HANDY);

	// handy.Arrows

	Linker.link(hdy_arrows_get_type, "hdy_arrows_get_type", LIBRARY_HANDY);
	Linker.link(hdy_arrows_new, "hdy_arrows_new", LIBRARY_HANDY);
	Linker.link(hdy_arrows_animate, "hdy_arrows_animate", LIBRARY_HANDY);
	Linker.link(hdy_arrows_get_count, "hdy_arrows_get_count", LIBRARY_HANDY);
	Linker.link(hdy_arrows_get_direction, "hdy_arrows_get_direction", LIBRARY_HANDY);
	Linker.link(hdy_arrows_get_duration, "hdy_arrows_get_duration", LIBRARY_HANDY);
	Linker.link(hdy_arrows_set_count, "hdy_arrows_set_count", LIBRARY_HANDY);
	Linker.link(hdy_arrows_set_direction, "hdy_arrows_set_direction", LIBRARY_HANDY);
	Linker.link(hdy_arrows_set_duration, "hdy_arrows_set_duration", LIBRARY_HANDY);

	// handy.Column

	Linker.link(hdy_column_get_type, "hdy_column_get_type", LIBRARY_HANDY);
	Linker.link(hdy_column_new, "hdy_column_new", LIBRARY_HANDY);
	Linker.link(hdy_column_get_linear_growth_width, "hdy_column_get_linear_growth_width", LIBRARY_HANDY);
	Linker.link(hdy_column_get_maximum_width, "hdy_column_get_maximum_width", LIBRARY_HANDY);
	Linker.link(hdy_column_set_linear_growth_width, "hdy_column_set_linear_growth_width", LIBRARY_HANDY);
	Linker.link(hdy_column_set_maximum_width, "hdy_column_set_maximum_width", LIBRARY_HANDY);

	// handy.ComboRow

	Linker.link(hdy_combo_row_get_type, "hdy_combo_row_get_type", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_new, "hdy_combo_row_new", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_bind_model, "hdy_combo_row_bind_model", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_bind_name_model, "hdy_combo_row_bind_name_model", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_get_model, "hdy_combo_row_get_model", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_get_selected_index, "hdy_combo_row_get_selected_index", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_get_use_subtitle, "hdy_combo_row_get_use_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_set_for_enum, "hdy_combo_row_set_for_enum", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_set_get_name_func, "hdy_combo_row_set_get_name_func", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_set_selected_index, "hdy_combo_row_set_selected_index", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_set_use_subtitle, "hdy_combo_row_set_use_subtitle", LIBRARY_HANDY);

	// handy.Dialer

	Linker.link(hdy_dialer_get_type, "hdy_dialer_get_type", LIBRARY_HANDY);
	Linker.link(hdy_dialer_new, "hdy_dialer_new", LIBRARY_HANDY);
	Linker.link(hdy_dialer_clear_number, "hdy_dialer_clear_number", LIBRARY_HANDY);
	Linker.link(hdy_dialer_get_number, "hdy_dialer_get_number", LIBRARY_HANDY);
	Linker.link(hdy_dialer_get_relief, "hdy_dialer_get_relief", LIBRARY_HANDY);
	Linker.link(hdy_dialer_get_show_action_buttons, "hdy_dialer_get_show_action_buttons", LIBRARY_HANDY);
	Linker.link(hdy_dialer_set_number, "hdy_dialer_set_number", LIBRARY_HANDY);
	Linker.link(hdy_dialer_set_relief, "hdy_dialer_set_relief", LIBRARY_HANDY);
	Linker.link(hdy_dialer_set_show_action_buttons, "hdy_dialer_set_show_action_buttons", LIBRARY_HANDY);

	// handy.DialerButton

	Linker.link(hdy_dialer_button_get_type, "hdy_dialer_button_get_type", LIBRARY_HANDY);
	Linker.link(hdy_dialer_button_new, "hdy_dialer_button_new", LIBRARY_HANDY);
	Linker.link(hdy_dialer_button_get_digit, "hdy_dialer_button_get_digit", LIBRARY_HANDY);
	Linker.link(hdy_dialer_button_get_symbols, "hdy_dialer_button_get_symbols", LIBRARY_HANDY);

	// handy.DialerCycleButton

	Linker.link(hdy_dialer_cycle_button_get_type, "hdy_dialer_cycle_button_get_type", LIBRARY_HANDY);
	Linker.link(hdy_dialer_cycle_button_new, "hdy_dialer_cycle_button_new", LIBRARY_HANDY);
	Linker.link(hdy_dialer_cycle_button_get_current_symbol, "hdy_dialer_cycle_button_get_current_symbol", LIBRARY_HANDY);
	Linker.link(hdy_dialer_cycle_button_get_cycle_timeout, "hdy_dialer_cycle_button_get_cycle_timeout", LIBRARY_HANDY);
	Linker.link(hdy_dialer_cycle_button_is_cycling, "hdy_dialer_cycle_button_is_cycling", LIBRARY_HANDY);
	Linker.link(hdy_dialer_cycle_button_set_cycle_timeout, "hdy_dialer_cycle_button_set_cycle_timeout", LIBRARY_HANDY);
	Linker.link(hdy_dialer_cycle_button_stop_cycle, "hdy_dialer_cycle_button_stop_cycle", LIBRARY_HANDY);

	// handy.Dialog

	Linker.link(hdy_dialog_get_type, "hdy_dialog_get_type", LIBRARY_HANDY);
	Linker.link(hdy_dialog_new, "hdy_dialog_new", LIBRARY_HANDY);
	Linker.link(hdy_dialog_get_narrow, "hdy_dialog_get_narrow", LIBRARY_HANDY);

	// handy.EnumValueObject

	Linker.link(hdy_enum_value_object_get_type, "hdy_enum_value_object_get_type", LIBRARY_HANDY);
	Linker.link(hdy_enum_value_object_new, "hdy_enum_value_object_new", LIBRARY_HANDY);
	Linker.link(hdy_enum_value_object_get_name, "hdy_enum_value_object_get_name", LIBRARY_HANDY);
	Linker.link(hdy_enum_value_object_get_nick, "hdy_enum_value_object_get_nick", LIBRARY_HANDY);
	Linker.link(hdy_enum_value_object_get_value, "hdy_enum_value_object_get_value", LIBRARY_HANDY);

	// handy.ExpanderRow

	Linker.link(hdy_expander_row_get_type, "hdy_expander_row_get_type", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_new, "hdy_expander_row_new", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_get_enable_expansion, "hdy_expander_row_get_enable_expansion", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_get_expanded, "hdy_expander_row_get_expanded", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_get_show_enable_switch, "hdy_expander_row_get_show_enable_switch", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_set_enable_expansion, "hdy_expander_row_set_enable_expansion", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_set_expanded, "hdy_expander_row_set_expanded", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_set_show_enable_switch, "hdy_expander_row_set_show_enable_switch", LIBRARY_HANDY);

	// handy.HeaderBar

	Linker.link(hdy_header_bar_get_type, "hdy_header_bar_get_type", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_new, "hdy_header_bar_new", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_centering_policy, "hdy_header_bar_get_centering_policy", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_custom_title, "hdy_header_bar_get_custom_title", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_decoration_layout, "hdy_header_bar_get_decoration_layout", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_has_subtitle, "hdy_header_bar_get_has_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_interpolate_size, "hdy_header_bar_get_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_show_close_button, "hdy_header_bar_get_show_close_button", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_subtitle, "hdy_header_bar_get_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_title, "hdy_header_bar_get_title", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_transition_duration, "hdy_header_bar_get_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_transition_running, "hdy_header_bar_get_transition_running", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_pack_end, "hdy_header_bar_pack_end", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_pack_start, "hdy_header_bar_pack_start", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_centering_policy, "hdy_header_bar_set_centering_policy", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_custom_title, "hdy_header_bar_set_custom_title", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_decoration_layout, "hdy_header_bar_set_decoration_layout", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_has_subtitle, "hdy_header_bar_set_has_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_interpolate_size, "hdy_header_bar_set_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_show_close_button, "hdy_header_bar_set_show_close_button", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_subtitle, "hdy_header_bar_set_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_title, "hdy_header_bar_set_title", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_transition_duration, "hdy_header_bar_set_transition_duration", LIBRARY_HANDY);

	// handy.HeaderGroup

	Linker.link(hdy_header_group_get_type, "hdy_header_group_get_type", LIBRARY_HANDY);
	Linker.link(hdy_header_group_new, "hdy_header_group_new", LIBRARY_HANDY);
	Linker.link(hdy_header_group_add_header_bar, "hdy_header_group_add_header_bar", LIBRARY_HANDY);
	Linker.link(hdy_header_group_get_focus, "hdy_header_group_get_focus", LIBRARY_HANDY);
	Linker.link(hdy_header_group_get_header_bars, "hdy_header_group_get_header_bars", LIBRARY_HANDY);
	Linker.link(hdy_header_group_remove_header_bar, "hdy_header_group_remove_header_bar", LIBRARY_HANDY);
	Linker.link(hdy_header_group_set_focus, "hdy_header_group_set_focus", LIBRARY_HANDY);

	// handy.Leaflet

	Linker.link(hdy_leaflet_get_type, "hdy_leaflet_get_type", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_new, "hdy_leaflet_new", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_child_transition_duration, "hdy_leaflet_get_child_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_child_transition_running, "hdy_leaflet_get_child_transition_running", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_child_transition_type, "hdy_leaflet_get_child_transition_type", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_fold, "hdy_leaflet_get_fold", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_homogeneous, "hdy_leaflet_get_homogeneous", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_interpolate_size, "hdy_leaflet_get_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_mode_transition_duration, "hdy_leaflet_get_mode_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_mode_transition_type, "hdy_leaflet_get_mode_transition_type", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_visible_child, "hdy_leaflet_get_visible_child", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_visible_child_name, "hdy_leaflet_get_visible_child_name", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_child_transition_duration, "hdy_leaflet_set_child_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_child_transition_type, "hdy_leaflet_set_child_transition_type", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_homogeneous, "hdy_leaflet_set_homogeneous", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_interpolate_size, "hdy_leaflet_set_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_mode_transition_duration, "hdy_leaflet_set_mode_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_mode_transition_type, "hdy_leaflet_set_mode_transition_type", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_visible_child, "hdy_leaflet_set_visible_child", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_visible_child_name, "hdy_leaflet_set_visible_child_name", LIBRARY_HANDY);

	// handy.Paginator

	Linker.link(hdy_paginator_get_type, "hdy_paginator_get_type", LIBRARY_HANDY);
	Linker.link(hdy_paginator_new, "hdy_paginator_new", LIBRARY_HANDY);
	Linker.link(hdy_paginator_get_animation_duration, "hdy_paginator_get_animation_duration", LIBRARY_HANDY);
	Linker.link(hdy_paginator_get_center_content, "hdy_paginator_get_center_content", LIBRARY_HANDY);
	Linker.link(hdy_paginator_get_indicator_spacing, "hdy_paginator_get_indicator_spacing", LIBRARY_HANDY);
	Linker.link(hdy_paginator_get_indicator_style, "hdy_paginator_get_indicator_style", LIBRARY_HANDY);
	Linker.link(hdy_paginator_get_interactive, "hdy_paginator_get_interactive", LIBRARY_HANDY);
	Linker.link(hdy_paginator_get_n_pages, "hdy_paginator_get_n_pages", LIBRARY_HANDY);
	Linker.link(hdy_paginator_get_position, "hdy_paginator_get_position", LIBRARY_HANDY);
	Linker.link(hdy_paginator_get_spacing, "hdy_paginator_get_spacing", LIBRARY_HANDY);
	Linker.link(hdy_paginator_insert, "hdy_paginator_insert", LIBRARY_HANDY);
	Linker.link(hdy_paginator_prepend, "hdy_paginator_prepend", LIBRARY_HANDY);
	Linker.link(hdy_paginator_reorder, "hdy_paginator_reorder", LIBRARY_HANDY);
	Linker.link(hdy_paginator_scroll_to, "hdy_paginator_scroll_to", LIBRARY_HANDY);
	Linker.link(hdy_paginator_scroll_to_full, "hdy_paginator_scroll_to_full", LIBRARY_HANDY);
	Linker.link(hdy_paginator_set_animation_duration, "hdy_paginator_set_animation_duration", LIBRARY_HANDY);
	Linker.link(hdy_paginator_set_center_content, "hdy_paginator_set_center_content", LIBRARY_HANDY);
	Linker.link(hdy_paginator_set_indicator_spacing, "hdy_paginator_set_indicator_spacing", LIBRARY_HANDY);
	Linker.link(hdy_paginator_set_indicator_style, "hdy_paginator_set_indicator_style", LIBRARY_HANDY);
	Linker.link(hdy_paginator_set_interactive, "hdy_paginator_set_interactive", LIBRARY_HANDY);
	Linker.link(hdy_paginator_set_spacing, "hdy_paginator_set_spacing", LIBRARY_HANDY);

	// handy.PreferencesGroup

	Linker.link(hdy_preferences_group_get_type, "hdy_preferences_group_get_type", LIBRARY_HANDY);
	Linker.link(hdy_preferences_group_new, "hdy_preferences_group_new", LIBRARY_HANDY);
	Linker.link(hdy_preferences_group_get_description, "hdy_preferences_group_get_description", LIBRARY_HANDY);
	Linker.link(hdy_preferences_group_get_title, "hdy_preferences_group_get_title", LIBRARY_HANDY);
	Linker.link(hdy_preferences_group_set_description, "hdy_preferences_group_set_description", LIBRARY_HANDY);
	Linker.link(hdy_preferences_group_set_title, "hdy_preferences_group_set_title", LIBRARY_HANDY);

	// handy.PreferencesPage

	Linker.link(hdy_preferences_page_get_type, "hdy_preferences_page_get_type", LIBRARY_HANDY);
	Linker.link(hdy_preferences_page_new, "hdy_preferences_page_new", LIBRARY_HANDY);
	Linker.link(hdy_preferences_page_get_icon_name, "hdy_preferences_page_get_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_preferences_page_get_title, "hdy_preferences_page_get_title", LIBRARY_HANDY);
	Linker.link(hdy_preferences_page_set_icon_name, "hdy_preferences_page_set_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_preferences_page_set_title, "hdy_preferences_page_set_title", LIBRARY_HANDY);

	// handy.PreferencesRow

	Linker.link(hdy_preferences_row_get_type, "hdy_preferences_row_get_type", LIBRARY_HANDY);
	Linker.link(hdy_preferences_row_new, "hdy_preferences_row_new", LIBRARY_HANDY);
	Linker.link(hdy_preferences_row_get_title, "hdy_preferences_row_get_title", LIBRARY_HANDY);
	Linker.link(hdy_preferences_row_get_use_underline, "hdy_preferences_row_get_use_underline", LIBRARY_HANDY);
	Linker.link(hdy_preferences_row_set_title, "hdy_preferences_row_set_title", LIBRARY_HANDY);
	Linker.link(hdy_preferences_row_set_use_underline, "hdy_preferences_row_set_use_underline", LIBRARY_HANDY);

	// handy.PreferencesWindow

	Linker.link(hdy_preferences_window_get_type, "hdy_preferences_window_get_type", LIBRARY_HANDY);
	Linker.link(hdy_preferences_window_new, "hdy_preferences_window_new", LIBRARY_HANDY);

	// handy.SearchBar

	Linker.link(hdy_search_bar_get_type, "hdy_search_bar_get_type", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_new, "hdy_search_bar_new", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_connect_entry, "hdy_search_bar_connect_entry", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_get_search_mode, "hdy_search_bar_get_search_mode", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_get_show_close_button, "hdy_search_bar_get_show_close_button", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_handle_event, "hdy_search_bar_handle_event", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_set_search_mode, "hdy_search_bar_set_search_mode", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_set_show_close_button, "hdy_search_bar_set_show_close_button", LIBRARY_HANDY);

	// handy.Squeezer

	Linker.link(hdy_squeezer_get_type, "hdy_squeezer_get_type", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_new, "hdy_squeezer_new", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_child_enabled, "hdy_squeezer_get_child_enabled", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_homogeneous, "hdy_squeezer_get_homogeneous", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_interpolate_size, "hdy_squeezer_get_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_transition_duration, "hdy_squeezer_get_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_transition_running, "hdy_squeezer_get_transition_running", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_transition_type, "hdy_squeezer_get_transition_type", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_visible_child, "hdy_squeezer_get_visible_child", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_child_enabled, "hdy_squeezer_set_child_enabled", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_homogeneous, "hdy_squeezer_set_homogeneous", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_interpolate_size, "hdy_squeezer_set_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_transition_duration, "hdy_squeezer_set_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_transition_type, "hdy_squeezer_set_transition_type", LIBRARY_HANDY);

	// handy.TitleBar

	Linker.link(hdy_title_bar_get_type, "hdy_title_bar_get_type", LIBRARY_HANDY);
	Linker.link(hdy_title_bar_new, "hdy_title_bar_new", LIBRARY_HANDY);
	Linker.link(hdy_title_bar_get_selection_mode, "hdy_title_bar_get_selection_mode", LIBRARY_HANDY);
	Linker.link(hdy_title_bar_set_selection_mode, "hdy_title_bar_set_selection_mode", LIBRARY_HANDY);

	// handy.ValueObject

	Linker.link(hdy_value_object_get_type, "hdy_value_object_get_type", LIBRARY_HANDY);
	Linker.link(hdy_value_object_new, "hdy_value_object_new", LIBRARY_HANDY);
	Linker.link(hdy_value_object_new_collect, "hdy_value_object_new_collect", LIBRARY_HANDY);
	Linker.link(hdy_value_object_new_string, "hdy_value_object_new_string", LIBRARY_HANDY);
	Linker.link(hdy_value_object_new_take_string, "hdy_value_object_new_take_string", LIBRARY_HANDY);
	Linker.link(hdy_value_object_copy_value, "hdy_value_object_copy_value", LIBRARY_HANDY);
	Linker.link(hdy_value_object_dup_string, "hdy_value_object_dup_string", LIBRARY_HANDY);
	Linker.link(hdy_value_object_get_string, "hdy_value_object_get_string", LIBRARY_HANDY);
	Linker.link(hdy_value_object_get_value, "hdy_value_object_get_value", LIBRARY_HANDY);

	// handy.ViewSwitcher

	Linker.link(hdy_view_switcher_get_type, "hdy_view_switcher_get_type", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_new, "hdy_view_switcher_new", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_get_icon_size, "hdy_view_switcher_get_icon_size", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_get_narrow_ellipsize, "hdy_view_switcher_get_narrow_ellipsize", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_get_policy, "hdy_view_switcher_get_policy", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_get_stack, "hdy_view_switcher_get_stack", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_set_icon_size, "hdy_view_switcher_set_icon_size", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_set_narrow_ellipsize, "hdy_view_switcher_set_narrow_ellipsize", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_set_policy, "hdy_view_switcher_set_policy", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_set_stack, "hdy_view_switcher_set_stack", LIBRARY_HANDY);

	// handy.ViewSwitcherBar

	Linker.link(hdy_view_switcher_bar_get_type, "hdy_view_switcher_bar_get_type", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_new, "hdy_view_switcher_bar_new", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_get_icon_size, "hdy_view_switcher_bar_get_icon_size", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_get_policy, "hdy_view_switcher_bar_get_policy", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_get_reveal, "hdy_view_switcher_bar_get_reveal", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_get_stack, "hdy_view_switcher_bar_get_stack", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_set_icon_size, "hdy_view_switcher_bar_set_icon_size", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_set_policy, "hdy_view_switcher_bar_set_policy", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_set_reveal, "hdy_view_switcher_bar_set_reveal", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_set_stack, "hdy_view_switcher_bar_set_stack", LIBRARY_HANDY);
}

__gshared extern(C)
{

	// handy.ActionRow

	GType function() c_hdy_action_row_get_type;
	HdyActionRow* function() c_hdy_action_row_new;
	void function(HdyActionRow* self) c_hdy_action_row_activate;
	void function(HdyActionRow* self, GtkWidget* widget) c_hdy_action_row_add_action;
	void function(HdyActionRow* self, GtkWidget* widget) c_hdy_action_row_add_prefix;
	GtkWidget* function(HdyActionRow* self) c_hdy_action_row_get_activatable_widget;
	const(char)* function(HdyActionRow* self) c_hdy_action_row_get_icon_name;
	const(char)* function(HdyActionRow* self) c_hdy_action_row_get_subtitle;
	const(char)* function(HdyActionRow* self) c_hdy_action_row_get_title;
	int function(HdyActionRow* self) c_hdy_action_row_get_use_underline;
	void function(HdyActionRow* self, GtkWidget* widget) c_hdy_action_row_set_activatable_widget;
	void function(HdyActionRow* self, const(char)* iconName) c_hdy_action_row_set_icon_name;
	void function(HdyActionRow* self, const(char)* subtitle) c_hdy_action_row_set_subtitle;
	void function(HdyActionRow* self, const(char)* title) c_hdy_action_row_set_title;
	void function(HdyActionRow* self, int useUnderline) c_hdy_action_row_set_use_underline;

	// handy.Arrows

	GType function() c_hdy_arrows_get_type;
	GtkWidget* function() c_hdy_arrows_new;
	void function(HdyArrows* self) c_hdy_arrows_animate;
	uint function(HdyArrows* self) c_hdy_arrows_get_count;
	HdyArrowsDirection function(HdyArrows* self) c_hdy_arrows_get_direction;
	uint function(HdyArrows* self) c_hdy_arrows_get_duration;
	void function(HdyArrows* self, uint count) c_hdy_arrows_set_count;
	void function(HdyArrows* self, HdyArrowsDirection direction) c_hdy_arrows_set_direction;
	void function(HdyArrows* self, uint duration) c_hdy_arrows_set_duration;

	// handy.Column

	GType function() c_hdy_column_get_type;
	HdyColumn* function() c_hdy_column_new;
	int function(HdyColumn* self) c_hdy_column_get_linear_growth_width;
	int function(HdyColumn* self) c_hdy_column_get_maximum_width;
	void function(HdyColumn* self, int linearGrowthWidth) c_hdy_column_set_linear_growth_width;
	void function(HdyColumn* self, int maximumWidth) c_hdy_column_set_maximum_width;

	// handy.ComboRow

	GType function() c_hdy_combo_row_get_type;
	HdyComboRow* function() c_hdy_combo_row_new;
	void function(HdyComboRow* self, GListModel* model, GtkListBoxCreateWidgetFunc createListWidgetFunc, GtkListBoxCreateWidgetFunc createCurrentWidgetFunc, void* userData, GDestroyNotify userDataFreeFunc) c_hdy_combo_row_bind_model;
	void function(HdyComboRow* self, GListModel* model, HdyComboRowGetNameFunc getNameFunc, void* userData, GDestroyNotify userDataFreeFunc) c_hdy_combo_row_bind_name_model;
	GListModel* function(HdyComboRow* self) c_hdy_combo_row_get_model;
	int function(HdyComboRow* self) c_hdy_combo_row_get_selected_index;
	int function(HdyComboRow* self) c_hdy_combo_row_get_use_subtitle;
	void function(HdyComboRow* self, GType enumType, HdyComboRowGetEnumValueNameFunc getNameFunc, void* userData, GDestroyNotify userDataFreeFunc) c_hdy_combo_row_set_for_enum;
	void function(HdyComboRow* self, HdyComboRowGetNameFunc getNameFunc, void* userData, GDestroyNotify userDataFreeFunc) c_hdy_combo_row_set_get_name_func;
	void function(HdyComboRow* self, int selectedIndex) c_hdy_combo_row_set_selected_index;
	void function(HdyComboRow* self, int useSubtitle) c_hdy_combo_row_set_use_subtitle;

	// handy.Dialer

	GType function() c_hdy_dialer_get_type;
	GtkWidget* function() c_hdy_dialer_new;
	void function(HdyDialer* self) c_hdy_dialer_clear_number;
	const(char)* function(HdyDialer* self) c_hdy_dialer_get_number;
	GtkReliefStyle function(HdyDialer* self) c_hdy_dialer_get_relief;
	int function(HdyDialer* self) c_hdy_dialer_get_show_action_buttons;
	void function(HdyDialer* self, const(char)* number) c_hdy_dialer_set_number;
	void function(HdyDialer* self, GtkReliefStyle relief) c_hdy_dialer_set_relief;
	void function(HdyDialer* self, int show) c_hdy_dialer_set_show_action_buttons;

	// handy.DialerButton

	GType function() c_hdy_dialer_button_get_type;
	GtkWidget* function(const(char)* symbols) c_hdy_dialer_button_new;
	int function(HdyDialerButton* self) c_hdy_dialer_button_get_digit;
	const(char)* function(HdyDialerButton* self) c_hdy_dialer_button_get_symbols;

	// handy.DialerCycleButton

	GType function() c_hdy_dialer_cycle_button_get_type;
	GtkWidget* function(const(char)* symbols) c_hdy_dialer_cycle_button_new;
	dchar function(HdyDialerCycleButton* self) c_hdy_dialer_cycle_button_get_current_symbol;
	int function(HdyDialerCycleButton* self) c_hdy_dialer_cycle_button_get_cycle_timeout;
	int function(HdyDialerCycleButton* self) c_hdy_dialer_cycle_button_is_cycling;
	void function(HdyDialerCycleButton* self, int timeout) c_hdy_dialer_cycle_button_set_cycle_timeout;
	void function(HdyDialerCycleButton* self) c_hdy_dialer_cycle_button_stop_cycle;

	// handy.Dialog

	GType function() c_hdy_dialog_get_type;
	GtkWidget* function(GtkWindow* parent) c_hdy_dialog_new;
	int function(HdyDialog* self) c_hdy_dialog_get_narrow;

	// handy.EnumValueObject

	GType function() c_hdy_enum_value_object_get_type;
	HdyEnumValueObject* function(GEnumValue* enumValue) c_hdy_enum_value_object_new;
	const(char)* function(HdyEnumValueObject* self) c_hdy_enum_value_object_get_name;
	const(char)* function(HdyEnumValueObject* self) c_hdy_enum_value_object_get_nick;
	int function(HdyEnumValueObject* self) c_hdy_enum_value_object_get_value;

	// handy.ExpanderRow

	GType function() c_hdy_expander_row_get_type;
	HdyExpanderRow* function() c_hdy_expander_row_new;
	int function(HdyExpanderRow* self) c_hdy_expander_row_get_enable_expansion;
	int function(HdyExpanderRow* self) c_hdy_expander_row_get_expanded;
	int function(HdyExpanderRow* self) c_hdy_expander_row_get_show_enable_switch;
	void function(HdyExpanderRow* self, int enableExpansion) c_hdy_expander_row_set_enable_expansion;
	void function(HdyExpanderRow* self, int expanded) c_hdy_expander_row_set_expanded;
	void function(HdyExpanderRow* self, int showEnableSwitch) c_hdy_expander_row_set_show_enable_switch;

	// handy.HeaderBar

	GType function() c_hdy_header_bar_get_type;
	GtkWidget* function() c_hdy_header_bar_new;
	HdyCenteringPolicy function(HdyHeaderBar* self) c_hdy_header_bar_get_centering_policy;
	GtkWidget* function(HdyHeaderBar* self) c_hdy_header_bar_get_custom_title;
	const(char)* function(HdyHeaderBar* self) c_hdy_header_bar_get_decoration_layout;
	int function(HdyHeaderBar* self) c_hdy_header_bar_get_has_subtitle;
	int function(HdyHeaderBar* self) c_hdy_header_bar_get_interpolate_size;
	int function(HdyHeaderBar* self) c_hdy_header_bar_get_show_close_button;
	const(char)* function(HdyHeaderBar* self) c_hdy_header_bar_get_subtitle;
	const(char)* function(HdyHeaderBar* self) c_hdy_header_bar_get_title;
	uint function(HdyHeaderBar* self) c_hdy_header_bar_get_transition_duration;
	int function(HdyHeaderBar* self) c_hdy_header_bar_get_transition_running;
	void function(HdyHeaderBar* self, GtkWidget* child) c_hdy_header_bar_pack_end;
	void function(HdyHeaderBar* self, GtkWidget* child) c_hdy_header_bar_pack_start;
	void function(HdyHeaderBar* self, HdyCenteringPolicy centeringPolicy) c_hdy_header_bar_set_centering_policy;
	void function(HdyHeaderBar* self, GtkWidget* titleWidget) c_hdy_header_bar_set_custom_title;
	void function(HdyHeaderBar* self, const(char)* layout) c_hdy_header_bar_set_decoration_layout;
	void function(HdyHeaderBar* self, int setting) c_hdy_header_bar_set_has_subtitle;
	void function(HdyHeaderBar* self, int interpolateSize) c_hdy_header_bar_set_interpolate_size;
	void function(HdyHeaderBar* self, int setting) c_hdy_header_bar_set_show_close_button;
	void function(HdyHeaderBar* self, const(char)* subtitle) c_hdy_header_bar_set_subtitle;
	void function(HdyHeaderBar* self, const(char)* title) c_hdy_header_bar_set_title;
	void function(HdyHeaderBar* self, uint duration) c_hdy_header_bar_set_transition_duration;

	// handy.HeaderGroup

	GType function() c_hdy_header_group_get_type;
	HdyHeaderGroup* function() c_hdy_header_group_new;
	void function(HdyHeaderGroup* self, GtkHeaderBar* headerBar) c_hdy_header_group_add_header_bar;
	GtkHeaderBar* function(HdyHeaderGroup* self) c_hdy_header_group_get_focus;
	GSList* function(HdyHeaderGroup* self) c_hdy_header_group_get_header_bars;
	void function(HdyHeaderGroup* self, GtkHeaderBar* headerBar) c_hdy_header_group_remove_header_bar;
	void function(HdyHeaderGroup* self, GtkHeaderBar* headerBar) c_hdy_header_group_set_focus;

	// handy.Leaflet

	GType function() c_hdy_leaflet_get_type;
	GtkWidget* function() c_hdy_leaflet_new;
	uint function(HdyLeaflet* self) c_hdy_leaflet_get_child_transition_duration;
	int function(HdyLeaflet* self) c_hdy_leaflet_get_child_transition_running;
	HdyLeafletChildTransitionType function(HdyLeaflet* self) c_hdy_leaflet_get_child_transition_type;
	HdyFold function(HdyLeaflet* self) c_hdy_leaflet_get_fold;
	int function(HdyLeaflet* self, HdyFold fold, GtkOrientation orientation) c_hdy_leaflet_get_homogeneous;
	int function(HdyLeaflet* self) c_hdy_leaflet_get_interpolate_size;
	uint function(HdyLeaflet* self) c_hdy_leaflet_get_mode_transition_duration;
	HdyLeafletModeTransitionType function(HdyLeaflet* self) c_hdy_leaflet_get_mode_transition_type;
	GtkWidget* function(HdyLeaflet* self) c_hdy_leaflet_get_visible_child;
	const(char)* function(HdyLeaflet* self) c_hdy_leaflet_get_visible_child_name;
	void function(HdyLeaflet* self, uint duration) c_hdy_leaflet_set_child_transition_duration;
	void function(HdyLeaflet* self, HdyLeafletChildTransitionType transition) c_hdy_leaflet_set_child_transition_type;
	void function(HdyLeaflet* self, HdyFold fold, GtkOrientation orientation, int homogeneous) c_hdy_leaflet_set_homogeneous;
	void function(HdyLeaflet* self, int interpolateSize) c_hdy_leaflet_set_interpolate_size;
	void function(HdyLeaflet* self, uint duration) c_hdy_leaflet_set_mode_transition_duration;
	void function(HdyLeaflet* self, HdyLeafletModeTransitionType transition) c_hdy_leaflet_set_mode_transition_type;
	void function(HdyLeaflet* self, GtkWidget* visibleChild) c_hdy_leaflet_set_visible_child;
	void function(HdyLeaflet* self, const(char)* name) c_hdy_leaflet_set_visible_child_name;

	// handy.Paginator

	GType function() c_hdy_paginator_get_type;
	HdyPaginator* function() c_hdy_paginator_new;
	uint function(HdyPaginator* self) c_hdy_paginator_get_animation_duration;
	int function(HdyPaginator* self) c_hdy_paginator_get_center_content;
	uint function(HdyPaginator* self) c_hdy_paginator_get_indicator_spacing;
	HdyPaginatorIndicatorStyle function(HdyPaginator* self) c_hdy_paginator_get_indicator_style;
	int function(HdyPaginator* self) c_hdy_paginator_get_interactive;
	uint function(HdyPaginator* self) c_hdy_paginator_get_n_pages;
	double function(HdyPaginator* self) c_hdy_paginator_get_position;
	uint function(HdyPaginator* self) c_hdy_paginator_get_spacing;
	void function(HdyPaginator* self, GtkWidget* child, int position) c_hdy_paginator_insert;
	void function(HdyPaginator* self, GtkWidget* child) c_hdy_paginator_prepend;
	void function(HdyPaginator* self, GtkWidget* child, int position) c_hdy_paginator_reorder;
	void function(HdyPaginator* self, GtkWidget* widget) c_hdy_paginator_scroll_to;
	void function(HdyPaginator* self, GtkWidget* widget, long duration) c_hdy_paginator_scroll_to_full;
	void function(HdyPaginator* self, uint duration) c_hdy_paginator_set_animation_duration;
	void function(HdyPaginator* self, int centerContent) c_hdy_paginator_set_center_content;
	void function(HdyPaginator* self, uint spacing) c_hdy_paginator_set_indicator_spacing;
	void function(HdyPaginator* self, HdyPaginatorIndicatorStyle style) c_hdy_paginator_set_indicator_style;
	void function(HdyPaginator* self, int interactive) c_hdy_paginator_set_interactive;
	void function(HdyPaginator* self, uint spacing) c_hdy_paginator_set_spacing;

	// handy.PreferencesGroup

	GType function() c_hdy_preferences_group_get_type;
	HdyPreferencesGroup* function() c_hdy_preferences_group_new;
	const(char)* function(HdyPreferencesGroup* self) c_hdy_preferences_group_get_description;
	const(char)* function(HdyPreferencesGroup* self) c_hdy_preferences_group_get_title;
	void function(HdyPreferencesGroup* self, const(char)* description) c_hdy_preferences_group_set_description;
	void function(HdyPreferencesGroup* self, const(char)* title) c_hdy_preferences_group_set_title;

	// handy.PreferencesPage

	GType function() c_hdy_preferences_page_get_type;
	HdyPreferencesPage* function() c_hdy_preferences_page_new;
	const(char)* function(HdyPreferencesPage* self) c_hdy_preferences_page_get_icon_name;
	const(char)* function(HdyPreferencesPage* self) c_hdy_preferences_page_get_title;
	void function(HdyPreferencesPage* self, const(char)* iconName) c_hdy_preferences_page_set_icon_name;
	void function(HdyPreferencesPage* self, const(char)* title) c_hdy_preferences_page_set_title;

	// handy.PreferencesRow

	GType function() c_hdy_preferences_row_get_type;
	HdyPreferencesRow* function() c_hdy_preferences_row_new;
	const(char)* function(HdyPreferencesRow* self) c_hdy_preferences_row_get_title;
	int function(HdyPreferencesRow* self) c_hdy_preferences_row_get_use_underline;
	void function(HdyPreferencesRow* self, const(char)* title) c_hdy_preferences_row_set_title;
	void function(HdyPreferencesRow* self, int useUnderline) c_hdy_preferences_row_set_use_underline;

	// handy.PreferencesWindow

	GType function() c_hdy_preferences_window_get_type;
	HdyPreferencesWindow* function() c_hdy_preferences_window_new;

	// handy.SearchBar

	GType function() c_hdy_search_bar_get_type;
	GtkWidget* function() c_hdy_search_bar_new;
	void function(HdySearchBar* self, GtkEntry* entry) c_hdy_search_bar_connect_entry;
	int function(HdySearchBar* self) c_hdy_search_bar_get_search_mode;
	int function(HdySearchBar* self) c_hdy_search_bar_get_show_close_button;
	int function(HdySearchBar* self, GdkEvent* event) c_hdy_search_bar_handle_event;
	void function(HdySearchBar* self, int searchMode) c_hdy_search_bar_set_search_mode;
	void function(HdySearchBar* self, int visible) c_hdy_search_bar_set_show_close_button;

	// handy.Squeezer

	GType function() c_hdy_squeezer_get_type;
	HdySqueezer* function() c_hdy_squeezer_new;
	int function(HdySqueezer* self, GtkWidget* child) c_hdy_squeezer_get_child_enabled;
	int function(HdySqueezer* self) c_hdy_squeezer_get_homogeneous;
	int function(HdySqueezer* self) c_hdy_squeezer_get_interpolate_size;
	uint function(HdySqueezer* self) c_hdy_squeezer_get_transition_duration;
	int function(HdySqueezer* self) c_hdy_squeezer_get_transition_running;
	HdySqueezerTransitionType function(HdySqueezer* self) c_hdy_squeezer_get_transition_type;
	GtkWidget* function(HdySqueezer* self) c_hdy_squeezer_get_visible_child;
	void function(HdySqueezer* self, GtkWidget* child, int enabled) c_hdy_squeezer_set_child_enabled;
	void function(HdySqueezer* self, int homogeneous) c_hdy_squeezer_set_homogeneous;
	void function(HdySqueezer* self, int interpolateSize) c_hdy_squeezer_set_interpolate_size;
	void function(HdySqueezer* self, uint duration) c_hdy_squeezer_set_transition_duration;
	void function(HdySqueezer* self, HdySqueezerTransitionType transition) c_hdy_squeezer_set_transition_type;

	// handy.TitleBar

	GType function() c_hdy_title_bar_get_type;
	HdyTitleBar* function() c_hdy_title_bar_new;
	int function(HdyTitleBar* self) c_hdy_title_bar_get_selection_mode;
	void function(HdyTitleBar* self, int selectionMode) c_hdy_title_bar_set_selection_mode;

	// handy.ValueObject

	GType function() c_hdy_value_object_get_type;
	HdyValueObject* function(GValue* value) c_hdy_value_object_new;
	HdyValueObject* function(GType type, ... ) c_hdy_value_object_new_collect;
	HdyValueObject* function(const(char)* string_) c_hdy_value_object_new_string;
	HdyValueObject* function(char* string_) c_hdy_value_object_new_take_string;
	void function(HdyValueObject* value, GValue* dest) c_hdy_value_object_copy_value;
	char* function(HdyValueObject* value) c_hdy_value_object_dup_string;
	const(char)* function(HdyValueObject* value) c_hdy_value_object_get_string;
	GValue* function(HdyValueObject* value) c_hdy_value_object_get_value;

	// handy.ViewSwitcher

	GType function() c_hdy_view_switcher_get_type;
	HdyViewSwitcher* function() c_hdy_view_switcher_new;
	GtkIconSize function(HdyViewSwitcher* self) c_hdy_view_switcher_get_icon_size;
	PangoEllipsizeMode function(HdyViewSwitcher* self) c_hdy_view_switcher_get_narrow_ellipsize;
	HdyViewSwitcherPolicy function(HdyViewSwitcher* self) c_hdy_view_switcher_get_policy;
	GtkStack* function(HdyViewSwitcher* self) c_hdy_view_switcher_get_stack;
	void function(HdyViewSwitcher* self, GtkIconSize iconSize) c_hdy_view_switcher_set_icon_size;
	void function(HdyViewSwitcher* self, PangoEllipsizeMode mode) c_hdy_view_switcher_set_narrow_ellipsize;
	void function(HdyViewSwitcher* self, HdyViewSwitcherPolicy policy) c_hdy_view_switcher_set_policy;
	void function(HdyViewSwitcher* self, GtkStack* stack) c_hdy_view_switcher_set_stack;

	// handy.ViewSwitcherBar

	GType function() c_hdy_view_switcher_bar_get_type;
	HdyViewSwitcherBar* function() c_hdy_view_switcher_bar_new;
	GtkIconSize function(HdyViewSwitcherBar* self) c_hdy_view_switcher_bar_get_icon_size;
	HdyViewSwitcherPolicy function(HdyViewSwitcherBar* self) c_hdy_view_switcher_bar_get_policy;
	int function(HdyViewSwitcherBar* self) c_hdy_view_switcher_bar_get_reveal;
	GtkStack* function(HdyViewSwitcherBar* self) c_hdy_view_switcher_bar_get_stack;
	void function(HdyViewSwitcherBar* self, GtkIconSize iconSize) c_hdy_view_switcher_bar_set_icon_size;
	void function(HdyViewSwitcherBar* self, HdyViewSwitcherPolicy policy) c_hdy_view_switcher_bar_set_policy;
	void function(HdyViewSwitcherBar* self, int reveal) c_hdy_view_switcher_bar_set_reveal;
	void function(HdyViewSwitcherBar* self, GtkStack* stack) c_hdy_view_switcher_bar_set_stack;
}


// handy.ActionRow

alias c_hdy_action_row_get_type hdy_action_row_get_type;
alias c_hdy_action_row_new hdy_action_row_new;
alias c_hdy_action_row_activate hdy_action_row_activate;
alias c_hdy_action_row_add_action hdy_action_row_add_action;
alias c_hdy_action_row_add_prefix hdy_action_row_add_prefix;
alias c_hdy_action_row_get_activatable_widget hdy_action_row_get_activatable_widget;
alias c_hdy_action_row_get_icon_name hdy_action_row_get_icon_name;
alias c_hdy_action_row_get_subtitle hdy_action_row_get_subtitle;
alias c_hdy_action_row_get_title hdy_action_row_get_title;
alias c_hdy_action_row_get_use_underline hdy_action_row_get_use_underline;
alias c_hdy_action_row_set_activatable_widget hdy_action_row_set_activatable_widget;
alias c_hdy_action_row_set_icon_name hdy_action_row_set_icon_name;
alias c_hdy_action_row_set_subtitle hdy_action_row_set_subtitle;
alias c_hdy_action_row_set_title hdy_action_row_set_title;
alias c_hdy_action_row_set_use_underline hdy_action_row_set_use_underline;

// handy.Arrows

alias c_hdy_arrows_get_type hdy_arrows_get_type;
alias c_hdy_arrows_new hdy_arrows_new;
alias c_hdy_arrows_animate hdy_arrows_animate;
alias c_hdy_arrows_get_count hdy_arrows_get_count;
alias c_hdy_arrows_get_direction hdy_arrows_get_direction;
alias c_hdy_arrows_get_duration hdy_arrows_get_duration;
alias c_hdy_arrows_set_count hdy_arrows_set_count;
alias c_hdy_arrows_set_direction hdy_arrows_set_direction;
alias c_hdy_arrows_set_duration hdy_arrows_set_duration;

// handy.Column

alias c_hdy_column_get_type hdy_column_get_type;
alias c_hdy_column_new hdy_column_new;
alias c_hdy_column_get_linear_growth_width hdy_column_get_linear_growth_width;
alias c_hdy_column_get_maximum_width hdy_column_get_maximum_width;
alias c_hdy_column_set_linear_growth_width hdy_column_set_linear_growth_width;
alias c_hdy_column_set_maximum_width hdy_column_set_maximum_width;

// handy.ComboRow

alias c_hdy_combo_row_get_type hdy_combo_row_get_type;
alias c_hdy_combo_row_new hdy_combo_row_new;
alias c_hdy_combo_row_bind_model hdy_combo_row_bind_model;
alias c_hdy_combo_row_bind_name_model hdy_combo_row_bind_name_model;
alias c_hdy_combo_row_get_model hdy_combo_row_get_model;
alias c_hdy_combo_row_get_selected_index hdy_combo_row_get_selected_index;
alias c_hdy_combo_row_get_use_subtitle hdy_combo_row_get_use_subtitle;
alias c_hdy_combo_row_set_for_enum hdy_combo_row_set_for_enum;
alias c_hdy_combo_row_set_get_name_func hdy_combo_row_set_get_name_func;
alias c_hdy_combo_row_set_selected_index hdy_combo_row_set_selected_index;
alias c_hdy_combo_row_set_use_subtitle hdy_combo_row_set_use_subtitle;

// handy.Dialer

alias c_hdy_dialer_get_type hdy_dialer_get_type;
alias c_hdy_dialer_new hdy_dialer_new;
alias c_hdy_dialer_clear_number hdy_dialer_clear_number;
alias c_hdy_dialer_get_number hdy_dialer_get_number;
alias c_hdy_dialer_get_relief hdy_dialer_get_relief;
alias c_hdy_dialer_get_show_action_buttons hdy_dialer_get_show_action_buttons;
alias c_hdy_dialer_set_number hdy_dialer_set_number;
alias c_hdy_dialer_set_relief hdy_dialer_set_relief;
alias c_hdy_dialer_set_show_action_buttons hdy_dialer_set_show_action_buttons;

// handy.DialerButton

alias c_hdy_dialer_button_get_type hdy_dialer_button_get_type;
alias c_hdy_dialer_button_new hdy_dialer_button_new;
alias c_hdy_dialer_button_get_digit hdy_dialer_button_get_digit;
alias c_hdy_dialer_button_get_symbols hdy_dialer_button_get_symbols;

// handy.DialerCycleButton

alias c_hdy_dialer_cycle_button_get_type hdy_dialer_cycle_button_get_type;
alias c_hdy_dialer_cycle_button_new hdy_dialer_cycle_button_new;
alias c_hdy_dialer_cycle_button_get_current_symbol hdy_dialer_cycle_button_get_current_symbol;
alias c_hdy_dialer_cycle_button_get_cycle_timeout hdy_dialer_cycle_button_get_cycle_timeout;
alias c_hdy_dialer_cycle_button_is_cycling hdy_dialer_cycle_button_is_cycling;
alias c_hdy_dialer_cycle_button_set_cycle_timeout hdy_dialer_cycle_button_set_cycle_timeout;
alias c_hdy_dialer_cycle_button_stop_cycle hdy_dialer_cycle_button_stop_cycle;

// handy.Dialog

alias c_hdy_dialog_get_type hdy_dialog_get_type;
alias c_hdy_dialog_new hdy_dialog_new;
alias c_hdy_dialog_get_narrow hdy_dialog_get_narrow;

// handy.EnumValueObject

alias c_hdy_enum_value_object_get_type hdy_enum_value_object_get_type;
alias c_hdy_enum_value_object_new hdy_enum_value_object_new;
alias c_hdy_enum_value_object_get_name hdy_enum_value_object_get_name;
alias c_hdy_enum_value_object_get_nick hdy_enum_value_object_get_nick;
alias c_hdy_enum_value_object_get_value hdy_enum_value_object_get_value;

// handy.ExpanderRow

alias c_hdy_expander_row_get_type hdy_expander_row_get_type;
alias c_hdy_expander_row_new hdy_expander_row_new;
alias c_hdy_expander_row_get_enable_expansion hdy_expander_row_get_enable_expansion;
alias c_hdy_expander_row_get_expanded hdy_expander_row_get_expanded;
alias c_hdy_expander_row_get_show_enable_switch hdy_expander_row_get_show_enable_switch;
alias c_hdy_expander_row_set_enable_expansion hdy_expander_row_set_enable_expansion;
alias c_hdy_expander_row_set_expanded hdy_expander_row_set_expanded;
alias c_hdy_expander_row_set_show_enable_switch hdy_expander_row_set_show_enable_switch;

// handy.HeaderBar

alias c_hdy_header_bar_get_type hdy_header_bar_get_type;
alias c_hdy_header_bar_new hdy_header_bar_new;
alias c_hdy_header_bar_get_centering_policy hdy_header_bar_get_centering_policy;
alias c_hdy_header_bar_get_custom_title hdy_header_bar_get_custom_title;
alias c_hdy_header_bar_get_decoration_layout hdy_header_bar_get_decoration_layout;
alias c_hdy_header_bar_get_has_subtitle hdy_header_bar_get_has_subtitle;
alias c_hdy_header_bar_get_interpolate_size hdy_header_bar_get_interpolate_size;
alias c_hdy_header_bar_get_show_close_button hdy_header_bar_get_show_close_button;
alias c_hdy_header_bar_get_subtitle hdy_header_bar_get_subtitle;
alias c_hdy_header_bar_get_title hdy_header_bar_get_title;
alias c_hdy_header_bar_get_transition_duration hdy_header_bar_get_transition_duration;
alias c_hdy_header_bar_get_transition_running hdy_header_bar_get_transition_running;
alias c_hdy_header_bar_pack_end hdy_header_bar_pack_end;
alias c_hdy_header_bar_pack_start hdy_header_bar_pack_start;
alias c_hdy_header_bar_set_centering_policy hdy_header_bar_set_centering_policy;
alias c_hdy_header_bar_set_custom_title hdy_header_bar_set_custom_title;
alias c_hdy_header_bar_set_decoration_layout hdy_header_bar_set_decoration_layout;
alias c_hdy_header_bar_set_has_subtitle hdy_header_bar_set_has_subtitle;
alias c_hdy_header_bar_set_interpolate_size hdy_header_bar_set_interpolate_size;
alias c_hdy_header_bar_set_show_close_button hdy_header_bar_set_show_close_button;
alias c_hdy_header_bar_set_subtitle hdy_header_bar_set_subtitle;
alias c_hdy_header_bar_set_title hdy_header_bar_set_title;
alias c_hdy_header_bar_set_transition_duration hdy_header_bar_set_transition_duration;

// handy.HeaderGroup

alias c_hdy_header_group_get_type hdy_header_group_get_type;
alias c_hdy_header_group_new hdy_header_group_new;
alias c_hdy_header_group_add_header_bar hdy_header_group_add_header_bar;
alias c_hdy_header_group_get_focus hdy_header_group_get_focus;
alias c_hdy_header_group_get_header_bars hdy_header_group_get_header_bars;
alias c_hdy_header_group_remove_header_bar hdy_header_group_remove_header_bar;
alias c_hdy_header_group_set_focus hdy_header_group_set_focus;

// handy.Leaflet

alias c_hdy_leaflet_get_type hdy_leaflet_get_type;
alias c_hdy_leaflet_new hdy_leaflet_new;
alias c_hdy_leaflet_get_child_transition_duration hdy_leaflet_get_child_transition_duration;
alias c_hdy_leaflet_get_child_transition_running hdy_leaflet_get_child_transition_running;
alias c_hdy_leaflet_get_child_transition_type hdy_leaflet_get_child_transition_type;
alias c_hdy_leaflet_get_fold hdy_leaflet_get_fold;
alias c_hdy_leaflet_get_homogeneous hdy_leaflet_get_homogeneous;
alias c_hdy_leaflet_get_interpolate_size hdy_leaflet_get_interpolate_size;
alias c_hdy_leaflet_get_mode_transition_duration hdy_leaflet_get_mode_transition_duration;
alias c_hdy_leaflet_get_mode_transition_type hdy_leaflet_get_mode_transition_type;
alias c_hdy_leaflet_get_visible_child hdy_leaflet_get_visible_child;
alias c_hdy_leaflet_get_visible_child_name hdy_leaflet_get_visible_child_name;
alias c_hdy_leaflet_set_child_transition_duration hdy_leaflet_set_child_transition_duration;
alias c_hdy_leaflet_set_child_transition_type hdy_leaflet_set_child_transition_type;
alias c_hdy_leaflet_set_homogeneous hdy_leaflet_set_homogeneous;
alias c_hdy_leaflet_set_interpolate_size hdy_leaflet_set_interpolate_size;
alias c_hdy_leaflet_set_mode_transition_duration hdy_leaflet_set_mode_transition_duration;
alias c_hdy_leaflet_set_mode_transition_type hdy_leaflet_set_mode_transition_type;
alias c_hdy_leaflet_set_visible_child hdy_leaflet_set_visible_child;
alias c_hdy_leaflet_set_visible_child_name hdy_leaflet_set_visible_child_name;

// handy.Paginator

alias c_hdy_paginator_get_type hdy_paginator_get_type;
alias c_hdy_paginator_new hdy_paginator_new;
alias c_hdy_paginator_get_animation_duration hdy_paginator_get_animation_duration;
alias c_hdy_paginator_get_center_content hdy_paginator_get_center_content;
alias c_hdy_paginator_get_indicator_spacing hdy_paginator_get_indicator_spacing;
alias c_hdy_paginator_get_indicator_style hdy_paginator_get_indicator_style;
alias c_hdy_paginator_get_interactive hdy_paginator_get_interactive;
alias c_hdy_paginator_get_n_pages hdy_paginator_get_n_pages;
alias c_hdy_paginator_get_position hdy_paginator_get_position;
alias c_hdy_paginator_get_spacing hdy_paginator_get_spacing;
alias c_hdy_paginator_insert hdy_paginator_insert;
alias c_hdy_paginator_prepend hdy_paginator_prepend;
alias c_hdy_paginator_reorder hdy_paginator_reorder;
alias c_hdy_paginator_scroll_to hdy_paginator_scroll_to;
alias c_hdy_paginator_scroll_to_full hdy_paginator_scroll_to_full;
alias c_hdy_paginator_set_animation_duration hdy_paginator_set_animation_duration;
alias c_hdy_paginator_set_center_content hdy_paginator_set_center_content;
alias c_hdy_paginator_set_indicator_spacing hdy_paginator_set_indicator_spacing;
alias c_hdy_paginator_set_indicator_style hdy_paginator_set_indicator_style;
alias c_hdy_paginator_set_interactive hdy_paginator_set_interactive;
alias c_hdy_paginator_set_spacing hdy_paginator_set_spacing;

// handy.PreferencesGroup

alias c_hdy_preferences_group_get_type hdy_preferences_group_get_type;
alias c_hdy_preferences_group_new hdy_preferences_group_new;
alias c_hdy_preferences_group_get_description hdy_preferences_group_get_description;
alias c_hdy_preferences_group_get_title hdy_preferences_group_get_title;
alias c_hdy_preferences_group_set_description hdy_preferences_group_set_description;
alias c_hdy_preferences_group_set_title hdy_preferences_group_set_title;

// handy.PreferencesPage

alias c_hdy_preferences_page_get_type hdy_preferences_page_get_type;
alias c_hdy_preferences_page_new hdy_preferences_page_new;
alias c_hdy_preferences_page_get_icon_name hdy_preferences_page_get_icon_name;
alias c_hdy_preferences_page_get_title hdy_preferences_page_get_title;
alias c_hdy_preferences_page_set_icon_name hdy_preferences_page_set_icon_name;
alias c_hdy_preferences_page_set_title hdy_preferences_page_set_title;

// handy.PreferencesRow

alias c_hdy_preferences_row_get_type hdy_preferences_row_get_type;
alias c_hdy_preferences_row_new hdy_preferences_row_new;
alias c_hdy_preferences_row_get_title hdy_preferences_row_get_title;
alias c_hdy_preferences_row_get_use_underline hdy_preferences_row_get_use_underline;
alias c_hdy_preferences_row_set_title hdy_preferences_row_set_title;
alias c_hdy_preferences_row_set_use_underline hdy_preferences_row_set_use_underline;

// handy.PreferencesWindow

alias c_hdy_preferences_window_get_type hdy_preferences_window_get_type;
alias c_hdy_preferences_window_new hdy_preferences_window_new;

// handy.SearchBar

alias c_hdy_search_bar_get_type hdy_search_bar_get_type;
alias c_hdy_search_bar_new hdy_search_bar_new;
alias c_hdy_search_bar_connect_entry hdy_search_bar_connect_entry;
alias c_hdy_search_bar_get_search_mode hdy_search_bar_get_search_mode;
alias c_hdy_search_bar_get_show_close_button hdy_search_bar_get_show_close_button;
alias c_hdy_search_bar_handle_event hdy_search_bar_handle_event;
alias c_hdy_search_bar_set_search_mode hdy_search_bar_set_search_mode;
alias c_hdy_search_bar_set_show_close_button hdy_search_bar_set_show_close_button;

// handy.Squeezer

alias c_hdy_squeezer_get_type hdy_squeezer_get_type;
alias c_hdy_squeezer_new hdy_squeezer_new;
alias c_hdy_squeezer_get_child_enabled hdy_squeezer_get_child_enabled;
alias c_hdy_squeezer_get_homogeneous hdy_squeezer_get_homogeneous;
alias c_hdy_squeezer_get_interpolate_size hdy_squeezer_get_interpolate_size;
alias c_hdy_squeezer_get_transition_duration hdy_squeezer_get_transition_duration;
alias c_hdy_squeezer_get_transition_running hdy_squeezer_get_transition_running;
alias c_hdy_squeezer_get_transition_type hdy_squeezer_get_transition_type;
alias c_hdy_squeezer_get_visible_child hdy_squeezer_get_visible_child;
alias c_hdy_squeezer_set_child_enabled hdy_squeezer_set_child_enabled;
alias c_hdy_squeezer_set_homogeneous hdy_squeezer_set_homogeneous;
alias c_hdy_squeezer_set_interpolate_size hdy_squeezer_set_interpolate_size;
alias c_hdy_squeezer_set_transition_duration hdy_squeezer_set_transition_duration;
alias c_hdy_squeezer_set_transition_type hdy_squeezer_set_transition_type;

// handy.TitleBar

alias c_hdy_title_bar_get_type hdy_title_bar_get_type;
alias c_hdy_title_bar_new hdy_title_bar_new;
alias c_hdy_title_bar_get_selection_mode hdy_title_bar_get_selection_mode;
alias c_hdy_title_bar_set_selection_mode hdy_title_bar_set_selection_mode;

// handy.ValueObject

alias c_hdy_value_object_get_type hdy_value_object_get_type;
alias c_hdy_value_object_new hdy_value_object_new;
alias c_hdy_value_object_new_collect hdy_value_object_new_collect;
alias c_hdy_value_object_new_string hdy_value_object_new_string;
alias c_hdy_value_object_new_take_string hdy_value_object_new_take_string;
alias c_hdy_value_object_copy_value hdy_value_object_copy_value;
alias c_hdy_value_object_dup_string hdy_value_object_dup_string;
alias c_hdy_value_object_get_string hdy_value_object_get_string;
alias c_hdy_value_object_get_value hdy_value_object_get_value;

// handy.ViewSwitcher

alias c_hdy_view_switcher_get_type hdy_view_switcher_get_type;
alias c_hdy_view_switcher_new hdy_view_switcher_new;
alias c_hdy_view_switcher_get_icon_size hdy_view_switcher_get_icon_size;
alias c_hdy_view_switcher_get_narrow_ellipsize hdy_view_switcher_get_narrow_ellipsize;
alias c_hdy_view_switcher_get_policy hdy_view_switcher_get_policy;
alias c_hdy_view_switcher_get_stack hdy_view_switcher_get_stack;
alias c_hdy_view_switcher_set_icon_size hdy_view_switcher_set_icon_size;
alias c_hdy_view_switcher_set_narrow_ellipsize hdy_view_switcher_set_narrow_ellipsize;
alias c_hdy_view_switcher_set_policy hdy_view_switcher_set_policy;
alias c_hdy_view_switcher_set_stack hdy_view_switcher_set_stack;

// handy.ViewSwitcherBar

alias c_hdy_view_switcher_bar_get_type hdy_view_switcher_bar_get_type;
alias c_hdy_view_switcher_bar_new hdy_view_switcher_bar_new;
alias c_hdy_view_switcher_bar_get_icon_size hdy_view_switcher_bar_get_icon_size;
alias c_hdy_view_switcher_bar_get_policy hdy_view_switcher_bar_get_policy;
alias c_hdy_view_switcher_bar_get_reveal hdy_view_switcher_bar_get_reveal;
alias c_hdy_view_switcher_bar_get_stack hdy_view_switcher_bar_get_stack;
alias c_hdy_view_switcher_bar_set_icon_size hdy_view_switcher_bar_set_icon_size;
alias c_hdy_view_switcher_bar_set_policy hdy_view_switcher_bar_set_policy;
alias c_hdy_view_switcher_bar_set_reveal hdy_view_switcher_bar_set_reveal;
alias c_hdy_view_switcher_bar_set_stack hdy_view_switcher_bar_set_stack;
