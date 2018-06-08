(*# NAMESPACE: Standard.Types #*)

(*
Module INT extracts
    abs (Int) : Int
    div_mod (Int, Int) : Pair_Int_Int
    show () : String
    to_string (Int) : String
*)

class INT
{
    std : Std <- new Std;

    abs (x : Int) : Int
    {
        if x < 0 then (0 - x) else x fi
    };
    
    div_mod (x : Int, y : Int) : Pair_Int_Int
    {
        let posquot : Bool,
            posrest : Bool
        in
        {
            posquot <- if x * y < 0 then false else true fi;
            posrest <- if x < 0 then false else true fi;
            
            if y = 0 then { abort(); new Pair_Int_Int; } else
            {
                x <- abs(x);
                y <- abs(y);
                if x < y then (new Pair_Int_Int).iinit(0, x) else
                let qr : Pair_Int_Int <- div_mod(x - y, y) in
                    (new Pair_Int_Int).iinit(qr.ifst() + 1, qr.isnd())
                fi;
            }
            fi;
        }
    };
    
    show () : String
    {
        "<INT instance>"
    };

    to_string (x : Int) : String
    {
        let qr : Pair_Int_Int <- div_mod(x, 10),
            q : Int <- qr.ifst(),
            r : Int <- qr.isnd(),
            rc : String <- std.string().digit_to_char(r)
        in
            if q = 0 then rc else
                to_string(q).concat(rc)
            fi
    };
};


