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
module handy.Arrows;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.DrawingArea;
private import gtk.Widget;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class Arrows : DrawingArea
{
	/** the main Gtk struct */
	protected HdyArrows* hdyArrows;

	/** Get the main Gtk struct */
	public HdyArrows* getArrowsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyArrows;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyArrows;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyArrows* hdyArrows, bool ownedRef = false)
	{
		this.hdyArrows = hdyArrows;
		super(cast(GtkDrawingArea*)hdyArrows, ownedRef);
	}

	alias getDirection = Widget.getDirection;

	/**
	 * Get the direction the arrows point to
	 *
	 * Returns: the arrows direction
	 */
	public HdyArrowsDirection getDirection()
	{
		return hdy_arrows_get_direction(hdyArrows);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return hdy_arrows_get_type();
	}

	/**
	 * Create a new #HdyArrows widget.
	 *
	 * Returns: the newly created #HdyArrows widget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = hdy_arrows_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyArrows*) p);
	}

	/**
	 * Render the arrows animation.
	 */
	public void animate()
	{
		hdy_arrows_animate(hdyArrows);
	}

	/**
	 * Get the number of arrows displayed in the widget.
	 *
	 * Returns: the current number of arrows
	 */
	public uint getCount()
	{
		return hdy_arrows_get_count(hdyArrows);
	}

	/**
	 * Get the duration of the arrows animation.
	 *
	 * Returns: the duration of the animation in ms
	 */
	public uint getDuration()
	{
		return hdy_arrows_get_duration(hdyArrows);
	}

	/**
	 * Set the number of arrows to display.
	 *
	 * Params:
	 *     count = the number of arrows to display
	 */
	public void setCount(uint count)
	{
		hdy_arrows_set_count(hdyArrows, count);
	}

	/**
	 * Set the direction the arrows should point to.
	 *
	 * Params:
	 *     direction = the arrows direction
	 */
	public void setDirection(HdyArrowsDirection direction)
	{
		hdy_arrows_set_direction(hdyArrows, direction);
	}

	/**
	 * Set the duration of the arrow animation.
	 *
	 * Params:
	 *     duration = the duration of the animation in ms
	 */
	public void setDuration(uint duration)
	{
		hdy_arrows_set_duration(hdyArrows, duration);
	}
}
