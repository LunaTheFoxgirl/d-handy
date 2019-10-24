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
module handy.ExpanderRow;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import handy.ActionRow;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class ExpanderRow : ActionRow
{
	/** the main Gtk struct */
	protected HdyExpanderRow* hdyExpanderRow;

	/** Get the main Gtk struct */
	public HdyExpanderRow* getExpanderRowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyExpanderRow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyExpanderRow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyExpanderRow* hdyExpanderRow, bool ownedRef = false)
	{
		this.hdyExpanderRow = hdyExpanderRow;
		super(cast(HdyActionRow*)hdyExpanderRow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_expander_row_get_type();
	}

	/**
	 * Creates a new #HdyExpanderRow.
	 *
	 * Returns: a new #HdyExpanderRow
	 *
	 * Since: 0.0.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = hdy_expander_row_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyExpanderRow*) p);
	}

	/**
	 * Gets whether the expansion of @self is enabled.
	 *
	 * Returns: whether the expansion of @self is enabled.
	 *
	 * Since: 0.0.6
	 */
	public bool getEnableExpansion()
	{
		return hdy_expander_row_get_enable_expansion(hdyExpanderRow) != 0;
	}

	/** */
	public bool getExpanded()
	{
		return hdy_expander_row_get_expanded(hdyExpanderRow) != 0;
	}

	/**
	 * Gets whether the switch enabling the expansion of @self is visible.
	 *
	 * Returns: whether the switch enabling the expansion of @self is visible.
	 *
	 * Since: 0.0.6
	 */
	public bool getShowEnableSwitch()
	{
		return hdy_expander_row_get_show_enable_switch(hdyExpanderRow) != 0;
	}

	/**
	 * Sets whether the expansion of @self is enabled.
	 *
	 * Params:
	 *     enableExpansion = %TRUE to enable the expansion
	 *
	 * Since: 0.0.6
	 */
	public void setEnableExpansion(bool enableExpansion)
	{
		hdy_expander_row_set_enable_expansion(hdyExpanderRow, enableExpansion);
	}

	/** */
	public void setExpanded(bool expanded)
	{
		hdy_expander_row_set_expanded(hdyExpanderRow, expanded);
	}

	/**
	 * Sets whether the switch enabling the expansion of @self is visible.
	 *
	 * Params:
	 *     showEnableSwitch = %TRUE to show the switch enabling the expansion
	 *
	 * Since: 0.0.6
	 */
	public void setShowEnableSwitch(bool showEnableSwitch)
	{
		hdy_expander_row_set_show_enable_switch(hdyExpanderRow, showEnableSwitch);
	}
}
