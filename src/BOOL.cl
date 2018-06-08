(*# NAMESPACE: Standard.Types #*)

(*
Module BOOL extracts
    show () : String
    to_string (Bool) : String
*)

class BOOL
{
    std : Std <- new Std;

    show () : String
    {
        "<BOOL instance>"
    };

    to_string(b : Bool) : String
    {
        if b then "true" else "false" fi
    };
};

