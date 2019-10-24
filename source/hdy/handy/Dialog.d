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
module handy.Dialog;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Dialog : GtkDiag = Dialog;
private import gtk.Widget;
private import gtk.Window;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class Dialog : GtkDiag
{
	/** the main Gtk struct */
	protected HdyDialog* hdyDialog;

	/** Get the main Gtk struct */
	public HdyDialog* getHandyDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyDialog* hdyDialog, bool ownedRef = false)
	{
		this.hdyDialog = hdyDialog;
		super(cast(GtkDialog*)hdyDialog, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_dialog_get_type();
	}

	/**
	 * Create a #HdyDialog with #GtkWindow:transient-for set to parent
	 *
	 * C Usage
	 * |[<!-- language="C" -->
	 * GtkWidget *dlg = hdy_dialog_new (GTK_WINDOW (main_window));
	 * ]|
	 *
	 * Vala Usage
	 * |[<!-- language="Vala" -->
	 * var dlg = new Hdy.Dialog (main_window);
	 * ]|
	 *
	 * Python Usage
	 * |[<!-- language="Python" -->
	 * dlg = Handy.Dialog.new (main_window);
	 * ]|
	 *
	 * Params:
	 *     parent = #GtkWindow this dialog is a child of
	 *
	 * Since: 0.0.7
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Window parent)
	{
		auto p = hdy_dialog_new((parent is null) ? null : parent.getWindowStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyDialog*) p);
	}

	/**
	 * Gets whether @self is narrow.
	 *
	 * Returns: %TRUE if @self is narrow, %FALSE otherwise.
	 *
	 * Since: 0.0.11
	 */
	public bool getNarrow()
	{
		return hdy_dialog_get_narrow(hdyDialog) != 0;
	}
}
