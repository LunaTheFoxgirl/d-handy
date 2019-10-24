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
module handy.EnumValueObject;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class EnumValueObject : ObjectG
{
	/** the main Gtk struct */
	protected HdyEnumValueObject* hdyEnumValueObject;

	/** Get the main Gtk struct */
	public HdyEnumValueObject* getEnumValueObjectStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyEnumValueObject;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyEnumValueObject;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyEnumValueObject* hdyEnumValueObject, bool ownedRef = false)
	{
		this.hdyEnumValueObject = hdyEnumValueObject;
		super(cast(GObject*)hdyEnumValueObject, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_enum_value_object_get_type();
	}

	/** */
	public this(GEnumValue* enumValue)
	{
		auto p = hdy_enum_value_object_new(enumValue);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyEnumValueObject*) p, true);
	}

	/** */
	public string getName()
	{
		return Str.toString(hdy_enum_value_object_get_name(hdyEnumValueObject));
	}

	/** */
	public string getNick()
	{
		return Str.toString(hdy_enum_value_object_get_nick(hdyEnumValueObject));
	}

	/** */
	public int getValue()
	{
		return hdy_enum_value_object_get_value(hdyEnumValueObject);
	}
}
