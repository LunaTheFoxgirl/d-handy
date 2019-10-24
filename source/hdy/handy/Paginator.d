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
module handy.Paginator;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.EventBox;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class Paginator : EventBox, OrientableIF
{
	/** the main Gtk struct */
	protected HdyPaginator* hdyPaginator;

	/** Get the main Gtk struct */
	public HdyPaginator* getPaginatorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyPaginator;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyPaginator;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyPaginator* hdyPaginator, bool ownedRef = false)
	{
		this.hdyPaginator = hdyPaginator;
		super(cast(GtkEventBox*)hdyPaginator, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(HdyPaginator);


	/** */
	public static GType getType()
	{
		return hdy_paginator_get_type();
	}

	/**
	 * Create a new #HdyPaginator widget.
	 *
	 * Returns: The newly created #HdyPaginator widget
	 *
	 * Since: 0.0.11
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = hdy_paginator_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyPaginator*) p);
	}

	/**
	 * Gets animation duration used by hdy_paginator_scroll_to().
	 *
	 * Returns: Animation duration in milliseconds
	 *
	 * Since: 0.0.11
	 */
	public uint getAnimationDuration()
	{
		return hdy_paginator_get_animation_duration(hdyPaginator);
	}

	/**
	 * Sets whether @self is centering pages.
	 *
	 * Returns: %TRUE if @self is centering pages
	 *
	 * Since: 0.0.11
	 */
	public bool getCenterContent()
	{
		return hdy_paginator_get_center_content(hdyPaginator) != 0;
	}

	/**
	 * Gets spacing between content and page indicators.
	 *
	 * Returns: Spacing between content and indicators
	 *
	 * Since: 0.0.11
	 */
	public uint getIndicatorSpacing()
	{
		return hdy_paginator_get_indicator_spacing(hdyPaginator);
	}

	/**
	 * Gets the current page indicator style.
	 *
	 * Returns: the current indicator style
	 *
	 * Since: 0.0.11
	 */
	public HdyPaginatorIndicatorStyle getIndicatorStyle()
	{
		return hdy_paginator_get_indicator_style(hdyPaginator);
	}

	/**
	 * Gets whether @self can be navigated.
	 *
	 * Returns: %TRUE if @self can be swiped
	 *
	 * Since: 0.0.11
	 */
	public bool getInteractive()
	{
		return hdy_paginator_get_interactive(hdyPaginator) != 0;
	}

	/**
	 * Gets the number of pages in @self.
	 *
	 * Returns: The number of pages in @self
	 *
	 * Since: 0.0.11
	 */
	public uint getNPages()
	{
		return hdy_paginator_get_n_pages(hdyPaginator);
	}

	/**
	 * Gets current scroll position in @self. It's unitless, 1 matches 1 page.
	 *
	 * Returns: The scroll position
	 *
	 * Since: 0.0.11
	 */
	public double getPosition()
	{
		return hdy_paginator_get_position(hdyPaginator);
	}

	/**
	 * Gets spacing between pages in pixels.
	 *
	 * Returns: Spacing between pages
	 *
	 * Since: 0.0.11
	 */
	public uint getSpacing()
	{
		return hdy_paginator_get_spacing(hdyPaginator);
	}

	/**
	 * Inserts @child into @self at position @position.
	 *
	 * If position is -1, or larger than the number of pages,
	 * @child will be appended to the end.
	 *
	 * Params:
	 *     child = a widget to add
	 *     position = the position to insert @child in.
	 *
	 * Since: 0.0.11
	 */
	public void insert(Widget child, int position)
	{
		hdy_paginator_insert(hdyPaginator, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Prepends @child to @self
	 *
	 * Params:
	 *     child = a widget to add
	 *
	 * Since: 0.0.11
	 */
	public void prepend(Widget child)
	{
		hdy_paginator_prepend(hdyPaginator, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Moves @child into position @position.
	 *
	 * If position is -1, or larger than the number of pages, @child will be moved
	 * to the end.
	 *
	 * Params:
	 *     child = a widget to add
	 *     position = the position to move @child to.
	 *
	 * Since: 0.0.11
	 */
	public void reorder(Widget child, int position)
	{
		hdy_paginator_reorder(hdyPaginator, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Scrolls to @widget position with an animation.
	 * #HdyPaginator:animation-duration property can be used for controlling the
	 * duration.
	 *
	 * Params:
	 *     widget = a child of @self
	 *
	 * Since: 0.0.11
	 */
	public void scrollTo(Widget widget)
	{
		hdy_paginator_scroll_to(hdyPaginator, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Scrolls to @widget position with an animation.
	 *
	 * Params:
	 *     widget = a child of @self
	 *     duration = animation duration in milliseconds
	 *
	 * Since: 0.0.11
	 */
	public void scrollToFull(Widget widget, long duration)
	{
		hdy_paginator_scroll_to_full(hdyPaginator, (widget is null) ? null : widget.getWidgetStruct(), duration);
	}

	/**
	 * Sets animation duration used by hdy_paginator_scroll_to().
	 *
	 * Params:
	 *     duration = animation duration in milliseconds
	 *
	 * Since: 0.0.11
	 */
	public void setAnimationDuration(uint duration)
	{
		hdy_paginator_set_animation_duration(hdyPaginator, duration);
	}

	/**
	 * Sets whether @self is centering content. If #HdyPaginator:indicator-style is
	 * @HDY_PAGINATOR_INDICATOR_STYLE_NONE, centering does nothing, otherwise it
	 * adds whitespace to the left or above the pages to compensate for the
	 * indicators.
	 *
	 * Params:
	 *     centerContent = whether @self should center contents
	 *
	 * Since: 0.0.11
	 */
	public void setCenterContent(bool centerContent)
	{
		hdy_paginator_set_center_content(hdyPaginator, centerContent);
	}

	/**
	 * Sets spacing between content and page indicators. Does nothing if
	 * #HdyPaginator:indicator-style is @HDY_PAGINATOR_INDICATOR_STYLE_NONE.
	 *
	 * Params:
	 *     spacing = the new spacing value
	 *
	 * Since: 0.0.11
	 */
	public void setIndicatorSpacing(uint spacing)
	{
		hdy_paginator_set_indicator_spacing(hdyPaginator, spacing);
	}

	/**
	 * Sets style of page indicators. Depending on orientation, they are displayed
	 * below or besides the pages. If the pages are meant to be centered,
	 * #HdyPaginator:center-content can be used to compensate for that.
	 *
	 * Params:
	 *     style = indicator style to use
	 *
	 * Since: 0.0.11
	 */
	public void setIndicatorStyle(HdyPaginatorIndicatorStyle style)
	{
		hdy_paginator_set_indicator_style(hdyPaginator, style);
	}

	/**
	 * Sets whether @self can be navigated. This can be used to temporarily disable
	 * a #HdyPaginator to only allow swiping in a certain state.
	 *
	 * Params:
	 *     interactive = whether @self can be swiped.
	 *
	 * Since: 0.0.11
	 */
	public void setInteractive(bool interactive)
	{
		hdy_paginator_set_interactive(hdyPaginator, interactive);
	}

	/**
	 * Sets spacing between pages in pixels.
	 *
	 * Params:
	 *     spacing = the new spacing value
	 *
	 * Since: 0.0.11
	 */
	public void setSpacing(uint spacing)
	{
		hdy_paginator_set_spacing(hdyPaginator, spacing);
	}
}
