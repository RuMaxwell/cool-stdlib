(*# NAMESPACE: Standard.Types #*)

(*
Module OBJECT extracts
    str (Object) : String
    to_string () : String
*)

-- Since Cool doesn't support either multiple inheritance (which would be very useful when a type needs to inherits from IO and also other types) or interface inheritance, 
-- this class provide general-typing methods by implicitly writing cases for all types.
-- Other types requiring interface supports, the only way is to write a new case here.
-- FIXME: Use a base class (like OBJ) to let every other types to derive from, and provide 
-- interfaces inside.
class OBJECT inherits IO
{
    std : Std <- new Std;
    
    type_not_conform_exception () : IO { out_string("Types of two parameters of method `equal' is not the same.\n") };

    equal (l : Object, r : Object) : Bool
    {
        case l of
            x : Bool => case r of
                y : Bool => x = y;
                o : Object => { type_not_conform_exception(); abort(); false; };
            esac;
            x : Int => case r of
                y : Int => x = y;
                o : Object => { type_not_conform_exception(); abort(); false; };
            esac;
            x : String => case r of
                y : String => x = y;
                o : Object => { type_not_conform_exception(); abort(); false; };
            esac;
            x : List => case r of
                y : List => x.equal(y);
                y : Cons => x.equal(y);
                o : Object => { type_not_conform_exception(); abort(); false; };
            esac;
            x : Cons => case r of
                y : List => x.equal(y);
                y : Cons => x.equal(y);
                o : Object => { type_not_conform_exception(); abort(); false; };
            esac;
            x : Object => x = r;
        esac
    };

    to_string (o : Object) : String
    {
        case o of
            x : Bool => std.bool().to_string(x);
            x : Int => std.int().to_string(x);
            x : String => std.string().to_string(x);
            x : List => x.show();
            x : Pair => x.show();
            x : Pair_Int_Int => x.show();
            x : Object => "<Object instance>";
        esac
    };

    show () : String
    {
        "<OBJECT instance>"
    };
};

