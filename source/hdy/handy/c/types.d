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
module handy.c.types;

public import gdk.c.types;
public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import gtk.c.types;
public import pango.c.types;


public enum HdyArrowsDirection
{
	/**
	 * Arrows point upwards
	 */
	UP = 0,
	/**
	 * Arrows point to the left
	 */
	DOWN = 1,
	/**
	 * Arrows point to the right
	 */
	LEFT = 2,
	/**
	 * Arrows point downwards
	 */
	RIGHT = 3,
}
alias HdyArrowsDirection ArrowsDirection;

public enum HdyCenteringPolicy
{
	/**
	 * Keep the title centered when possible
	 */
	LOOSE = 0,
	/**
	 * Keep the title centered at all cost
	 */
	STRICT = 1,
}
alias HdyCenteringPolicy CenteringPolicy;

/**
 * Represents the fold of widgets and other objects which can be switched
 * between folded and unfolded state on the fly, like HdyLeaflet.
 */
public enum HdyFold
{
	/**
	 * The element isn't folded
	 */
	UNFOLDED = 0,
	/**
	 * The element is folded
	 */
	FOLDED = 1,
}
alias HdyFold Fold;

/**
 * These enumeration values describe the possible transitions between pages in a
 * #HdyLeaflet widget.
 *
 * New values may be added to this enumeration over time.
 */
public enum HdyLeafletChildTransitionType
{
	/**
	 * No transition
	 */
	NONE = 0,
	/**
	 * A cross-fade
	 */
	CROSSFADE = 1,
	/**
	 * Slide from left, right, up or down according to the orientation, text direction and the children order
	 */
	SLIDE = 2,
	/**
	 * Cover the old page or uncover the new page, sliding from or towards the end according to orientation, text direction and children order
	 */
	OVER = 3,
	/**
	 * Uncover the new page or cover the old page, sliding from or towards the start according to orientation, text direction and children order
	 */
	UNDER = 4,
}
alias HdyLeafletChildTransitionType LeafletChildTransitionType;

/**
 * These enumeration values describe the possible transitions between pages in a
 * #HdyLeaflet widget.
 *
 * New values may be added to this enumeration over time.
 */
public enum HdyLeafletModeTransitionType
{
	/**
	 * No transition
	 */
	NONE = 0,
	/**
	 * Slide from left, right, up or down according to the orientation, text direction and the children order
	 */
	SLIDE = 1,
}
alias HdyLeafletModeTransitionType LeafletModeTransitionType;

/**
 * These enumeration values describe the possible page indicator styles in a
 * #HdyPaginator widget.
 *
 * New values may be added to this enumeration over time.
 */
public enum HdyPaginatorIndicatorStyle
{
	/**
	 * No indicators
	 */
	NONE = 0,
	/**
	 * Each page is represented by a dot. Active dot gradually becomes larger and more opaque.
	 */
	DOTS = 1,
	/**
	 * Each page is represented by a thin and long line, and active view is shown with another line that moves between them
	 */
	LINES = 2,
}
alias HdyPaginatorIndicatorStyle PaginatorIndicatorStyle;

/**
 * These enumeration values describe the possible transitions between children
 * in a #HdySqueezer widget.
 */
public enum HdySqueezerTransitionType
{
	/**
	 * No transition
	 */
	NONE = 0,
	/**
	 * A cross-fade
	 */
	CROSSFADE = 1,
}
alias HdySqueezerTransitionType SqueezerTransitionType;

public enum HdyViewSwitcherPolicy
{
	/**
	 * Automatically adapt to the best fitting mode
	 */
	AUTO = 0,
	/**
	 * Force the narrow mode
	 */
	NARROW = 1,
	/**
	 * Force the wide mode
	 */
	WIDE = 2,
}
alias HdyViewSwitcherPolicy ViewSwitcherPolicy;

struct HdyActionRow
{
	HdyPreferencesRow parentInstance;
}

struct HdyActionRowClass
{
	/**
	 * The parent class
	 */
	GtkListBoxRowClass parentClass;
	/** */
	extern(C) void function(HdyActionRow* self) activate;
}

struct HdyArrows
{
	GtkDrawingArea parentInstance;
}

struct HdyArrowsClass
{
	/**
	 * The parent class
	 */
	GtkDrawingAreaClass parentClass;
}

struct HdyColumn;

struct HdyColumnClass
{
	GtkBinClass parentClass;
}

struct HdyComboRow
{
	HdyActionRow parentInstance;
}

struct HdyComboRowClass
{
	/**
	 * The parent class
	 */
	HdyActionRowClass parentClass;
}

struct HdyDialer
{
	GtkBin parentInstance;
}

struct HdyDialerButton
{
	GtkButton parentInstance;
}

struct HdyDialerButtonClass
{
	GtkButtonClass parentClass;
}

struct HdyDialerClass
{
	/**
	 * The parent class
	 */
	GtkBinClass parentClass;
	/** */
	extern(C) void function(HdyDialer* self, const(char)* number) submitted;
}

struct HdyDialerCycleButton
{
	HdyDialerButton parentInstance;
}

struct HdyDialerCycleButtonClass
{
	/**
	 * The parent classqn
	 */
	HdyDialerButtonClass parentClass;
	/** */
	extern(C) void function(HdyDialerCycleButton* self) cycleStart;
	/** */
	extern(C) void function(HdyDialerCycleButton* self) cycleEnd;
}

struct HdyDialog
{
	GtkDialog parentInstance;
}

struct HdyDialogClass
{
	GtkDialogClass parentClass;
}

struct HdyEnumValueObject;

struct HdyEnumValueObjectClass
{
	GObjectClass parentClass;
}

struct HdyExpanderRow
{
	HdyActionRow parentInstance;
}

struct HdyExpanderRowClass
{
	/**
	 * The parent class
	 */
	HdyActionRowClass parentClass;
}

struct HdyHeaderBar
{
	GtkContainer parentInstance;
}

struct HdyHeaderBarClass
{
	/**
	 * The parent class
	 */
	GtkContainerClass parentClass;
}

struct HdyHeaderGroup
{
	GObject parentInstance;
}

struct HdyHeaderGroupClass
{
	/**
	 * The parent class
	 */
	GObjectClass parentClass;
}

struct HdyLeaflet
{
	GtkContainer parentInstance;
}

struct HdyLeafletClass
{
	/**
	 * The parent class
	 */
	GtkContainerClass parentClass;
	/** */
	extern(C) void function(HdyLeaflet* self) todo;
}

struct HdyPaginator;

struct HdyPaginatorClass
{
	GtkEventBoxClass parentClass;
}

struct HdyPreferencesGroup
{
	GtkBox parentInstance;
}

struct HdyPreferencesGroupClass
{
	/**
	 * The parent class
	 */
	GtkBoxClass parentClass;
}

struct HdyPreferencesPage
{
	GtkScrolledWindow parentInstance;
}

struct HdyPreferencesPageClass
{
	/**
	 * The parent class
	 */
	GtkScrolledWindowClass parentClass;
}

struct HdyPreferencesRow
{
	GtkListBoxRow parentInstance;
}

struct HdyPreferencesRowClass
{
	/**
	 * The parent class
	 */
	GtkListBoxRowClass parentClass;
}

struct HdyPreferencesWindow
{
	GtkWindow parentInstance;
}

struct HdyPreferencesWindowClass
{
	/**
	 * The parent class
	 */
	GtkWindowClass parentClass;
}

struct HdySearchBar
{
	GtkBin parentInstance;
}

struct HdySearchBarClass
{
	GtkBinClass parentClass;
}

struct HdySqueezer
{
	GtkContainer parentInstance;
}

struct HdySqueezerClass
{
	/**
	 * The parent class
	 */
	GtkContainerClass parentClass;
}

struct HdyTitleBar;

struct HdyTitleBarClass
{
	GtkBinClass parentClass;
}

struct HdyValueObject;

struct HdyValueObjectClass
{
	GObjectClass parentClass;
}

struct HdyViewSwitcher
{
	GtkBox parentInstance;
}

struct HdyViewSwitcherBar
{
	GtkBin parentInstance;
}

struct HdyViewSwitcherBarClass
{
	GtkBinClass parentClass;
}

struct HdyViewSwitcherClass
{
	GtkBoxClass parentClass;
}

/**
 * Called for combo rows that are bound to an enumeration with
 * hdy_combo_row_set_for_enum() for each value from that enumeration.
 *
 * Params:
 *     value = the value from the enum from which to get a name
 *     userData = user data
 *
 * Returns: a newly allocated displayable name that represents @value
 */
public alias extern(C) char* function(HdyEnumValueObject* value, void* userData) HdyComboRowGetEnumValueNameFunc;

/**
 * Called for combo rows that are bound to a #GListModel with
 * hdy_combo_row_bind_name_model() for each item that gets added to the model.
 *
 * Params:
 *     item = the item from the model from which to get a name
 *     userData = user data
 *
 * Returns: a newly allocated displayable name that represents @item
 */
public alias extern(C) char* function(void* item, void* userData) HdyComboRowGetNameFunc;
