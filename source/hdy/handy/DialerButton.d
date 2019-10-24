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
module handy.DialerButton;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.ActivatableIF;
private import gtk.ActivatableT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Button;
private import gtk.Widget;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class DialerButton : Button
{
	/** the main Gtk struct */
	protected HdyDialerButton* hdyDialerButton;

	/** Get the main Gtk struct */
	public HdyDialerButton* getDialerButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyDialerButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyDialerButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyDialerButton* hdyDialerButton, bool ownedRef = false)
	{
		this.hdyDialerButton = hdyDialerButton;
		super(cast(GtkButton*)hdyDialerButton, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_dialer_button_get_type();
	}

	/**
	 * Create a new #HdyDialerButton which displays
	 * @symbols. If
	 * @symbols is %NULL no symbols will be displayed.
	 *
	 * Params:
	 *     symbols = the symbols displayed on the #HdyDialerButton
	 *
	 * Returns: the newly created #HdyDialerButton widget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string symbols)
	{
		auto p = hdy_dialer_button_new(Str.toStringz(symbols));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyDialerButton*) p);
	}

	/**
	 * Get the #HdyDialerButton's digit.
	 *
	 * Returns: the button's digit
	 */
	public int getDigit()
	{
		return hdy_dialer_button_get_digit(hdyDialerButton);
	}

	/**
	 * Get the #HdyDialerButton's symbols.
	 *
	 * Returns: the button's symbols.
	 */
	public string getSymbols()
	{
		return Str.toString(hdy_dialer_button_get_symbols(hdyDialerButton));
	}
}
