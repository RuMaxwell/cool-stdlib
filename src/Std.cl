(*
 * RuM Standard Library for Cool Programming Language
 * 
 * Author: Ruthenium Maxwell, 2018
 * GitHub repo: https://github.com/RuMaxwell/cool-stdlib
 *
*)

(*
Concatination order:

-- Standard.Initialization
Std.cl

-- Standard.Toolkits
IOLib.cl
Logic.cl
Math.cl

-- Standard.Types
BOOL.cl
CHAR.cl
INT.cl
OBJECT.cl
STRING.cl

-- Standard.Collections
List.cl
Pair.cl

-- Program
Main.cl
*)

(*
Interface standard methods:
class <t> (* some interfaces *)
    attribute : a;

class <T>
    interface_method (t...) : ...;

Equal:
    equal (t, t) : Bool

Compareable inherits Equal:
    compare (t, t) : Int
    > optional:
        greater_than (t, t) : Bool
        greater_equal (t, t) : Bool
        less_than (t, t) : Bool
        less_equal (t, t) : Bool

Class type standard methods:
class <t> (* some types *)
Iterator:
    head (t) : a
    is_null (t) : Bool
    tail (t) : t
    > optional:
        at (Int) : a
        concat (Int) : t
        delete (a) : t
        indexOf (a) : Int
        init (t) : t
        insert (a) : t
        last (t) : a
        length (t) : Int
        pop (a) : t
        push (a) : t
*)


(*# NAMESPACE: Standard.Initialization #*)

-- This class stands for the standard library. Add
--      std : Std <- new Std;
-- to every class that uses the utilities of the standard library (this is called "include/import the library").
-- This class initializes instances for all Standard.Toolkits and Standard.Types classes.
-- These classes are designed only for providing functions, considered /static/.
-- Directly creating and using instances of these standard library classes are not recommended,
-- include the library and use
--      std.lib_name().method(...)
-- instead.
class Std
{
    std () : Std { self };

    io () : IOLib { new IOLib };
    logic () : Logic { new Logic };
    math () : Math { new Math };

    bool () : BOOL { new BOOL };
    char () : CHAR { new CHAR };
    int () : INT { new INT };
    object () : OBJECT { new OBJECT };
    string () : STRING { new STRING };
    
    show () : String { "<Std instance>" };
};

