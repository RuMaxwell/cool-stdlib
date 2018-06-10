(*# NAMESPACE: Standard.Interfaces #*)

(*
Module Iterator extracts
    head (Object) : Object
    is_null (Object) : Bool
    tail (Object) : Object
*)

class Iterator (* inherits IO *)
{
    std : Std <- new Std;

    head (it : Object) : Object
    {
        case it of
            x : String => std.string().head(x);
            x : List => x.head();
            x : Object => std.not_an_iterator();
        esac
    };

    is_null (it : Object) : Bool
    {
        case it of
            x : String => std.string().is_null(it);
            x : List => x.is_null();
            x : Object => std.not_an_iterator();
        esac
    };

    tail (it : Object) : Object
    {
        case it of
            x : String => std.string().tail(x);
            x : List => x.tail();
            x : Object => std.not_an_iterator();
        esac
    };
};
