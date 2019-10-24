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
module handy.PreferencesGroup;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Box;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class PreferencesGroup : Box
{
	/** the main Gtk struct */
	protected HdyPreferencesGroup* hdyPreferencesGroup;

	/** Get the main Gtk struct */
	public HdyPreferencesGroup* getPreferencesGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyPreferencesGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyPreferencesGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyPreferencesGroup* hdyPreferencesGroup, bool ownedRef = false)
	{
		this.hdyPreferencesGroup = hdyPreferencesGroup;
		super(cast(GtkBox*)hdyPreferencesGroup, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_preferences_group_get_type();
	}

	/**
	 * Creates a new #HdyPreferencesGroup.
	 *
	 * Returns: a new #HdyPreferencesGroup
	 *
	 * Since: 0.0.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = hdy_preferences_group_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyPreferencesGroup*) p);
	}

	/**
	 * Returns: the description of @self.
	 *
	 * Since: 0.0.10
	 */
	public string getDescription()
	{
		return Str.toString(hdy_preferences_group_get_description(hdyPreferencesGroup));
	}

	/**
	 * Gets the title of @self.
	 *
	 * Returns: the title of @self.
	 *
	 * Since: 0.0.10
	 */
	public string getTitle()
	{
		return Str.toString(hdy_preferences_group_get_title(hdyPreferencesGroup));
	}

	/**
	 * Sets the description for @self.
	 *
	 * Params:
	 *     description = the description
	 *
	 * Since: 0.0.10
	 */
	public void setDescription(string description)
	{
		hdy_preferences_group_set_description(hdyPreferencesGroup, Str.toStringz(description));
	}

	/**
	 * Sets the title for @self.
	 *
	 * Params:
	 *     title = the title
	 *
	 * Since: 0.0.10
	 */
	public void setTitle(string title)
	{
		hdy_preferences_group_set_title(hdyPreferencesGroup, Str.toStringz(title));
	}
}
