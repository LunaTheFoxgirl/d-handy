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
module handy.PreferencesWindow;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Window;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class PreferencesWindow : Window
{
	/** the main Gtk struct */
	protected HdyPreferencesWindow* hdyPreferencesWindow;

	/** Get the main Gtk struct */
	public HdyPreferencesWindow* getPreferencesWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyPreferencesWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyPreferencesWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyPreferencesWindow* hdyPreferencesWindow, bool ownedRef = false)
	{
		this.hdyPreferencesWindow = hdyPreferencesWindow;
		super(cast(GtkWindow*)hdyPreferencesWindow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_preferences_window_get_type();
	}

	/**
	 * Creates a new #HdyPreferencesWindow.
	 *
	 * Returns: a new #HdyPreferencesWindow
	 *
	 * Since: 0.0.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = hdy_preferences_window_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyPreferencesWindow*) p);
	}
}
