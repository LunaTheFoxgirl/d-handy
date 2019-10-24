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
module handy.TitleBar;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Bin;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class TitleBar : Bin
{
	/** the main Gtk struct */
	protected HdyTitleBar* hdyTitleBar;

	/** Get the main Gtk struct */
	public HdyTitleBar* getTitleBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyTitleBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyTitleBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyTitleBar* hdyTitleBar, bool ownedRef = false)
	{
		this.hdyTitleBar = hdyTitleBar;
		super(cast(GtkBin*)hdyTitleBar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_title_bar_get_type();
	}

	/**
	 * Creates a new #HdyTitleBar.
	 *
	 * Returns: a new #HdyTitleBar
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = hdy_title_bar_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyTitleBar*) p);
	}

	/**
	 * Returns wether whether @self is in selection mode.
	 *
	 * Returns: %TRUE if the title bar is in selection mode
	 */
	public bool getSelectionMode()
	{
		return hdy_title_bar_get_selection_mode(hdyTitleBar) != 0;
	}

	/**
	 * Sets whether @self is in selection mode.
	 *
	 * Params:
	 *     selectionMode = %TRUE to enable the selection mode
	 */
	public void setSelectionMode(bool selectionMode)
	{
		hdy_title_bar_set_selection_mode(hdyTitleBar, selectionMode);
	}
}
