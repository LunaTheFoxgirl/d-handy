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
module handy.ValueObject;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class ValueObject : ObjectG
{
	/** the main Gtk struct */
	protected HdyValueObject* hdyValueObject;

	/** Get the main Gtk struct */
	public HdyValueObject* getValueObjectStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyValueObject;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyValueObject;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyValueObject* hdyValueObject, bool ownedRef = false)
	{
		this.hdyValueObject = hdyValueObject;
		super(cast(GObject*)hdyValueObject, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return hdy_value_object_get_type();
	}

	/**
	 * Create a new #HdyValueObject.
	 *
	 * Params:
	 *     value = the #GValue to store
	 *
	 * Returns: a new #HdyValueObject
	 *
	 * Since: 0.0.8
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Value value)
	{
		auto p = hdy_value_object_new((value is null) ? null : value.getValueStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyValueObject*) p, true);
	}

	/**
	 * Creates a new #HdyValueObject. This is a convenience method to create a
	 * #HdyValueObject that stores a string.
	 *
	 * Params:
	 *     string_ = the string to store
	 *
	 * Returns: a new #HdyValueObject
	 *
	 * Since: 0.0.8
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string string_)
	{
		auto p = hdy_value_object_new_string(Str.toStringz(string_));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_string");
		}

		this(cast(HdyValueObject*) p, true);
	}

	/**
	 * Creates a new #HdyValueObject. This is a convenience method to create a
	 * #HdyValueObject that stores a string taking ownership of it.
	 *
	 * Params:
	 *     string_ = the string to store
	 *
	 * Returns: a new #HdyValueObject
	 *
	 * Since: 0.0.8
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string string_)
	{
		auto p = hdy_value_object_new_take_string(Str.toStringz(string_));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_take_string");
		}

		this(cast(HdyValueObject*) p, true);
	}

	/**
	 * Copy data from the contained #GValue into @dest.
	 *
	 * Params:
	 *     dest = #GValue with correct type to copy into
	 *
	 * Since: 0.0.8
	 */
	public void copyValue(Value dest)
	{
		hdy_value_object_copy_value(hdyValueObject, (dest is null) ? null : dest.getValueStruct());
	}

	/**
	 * Returns a copy of the contained string if the value is of type
	 * #G_TYPE_STRING.
	 *
	 * Returns: a copy of the contained string
	 *
	 * Since: 0.0.8
	 */
	public string dupString()
	{
		auto retStr = hdy_value_object_dup_string(hdyValueObject);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the contained string if the value is of type #G_TYPE_STRING.
	 *
	 * Returns: the contained string
	 *
	 * Since: 0.0.8
	 */
	public string getString()
	{
		return Str.toString(hdy_value_object_get_string(hdyValueObject));
	}

	/**
	 * Return the contained value.
	 *
	 * Returns: the contained #GValue
	 *
	 * Since: 0.0.8
	 */
	public Value getValue()
	{
		auto p = hdy_value_object_get_value(hdyValueObject);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) p);
	}
}
