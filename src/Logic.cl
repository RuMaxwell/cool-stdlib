class Logic
{
    std : Std <- new Std;

    and (x : Bool, y : Bool) : Bool
    {
        if not x then false else
        if not y then false else
            true
        fi fi
    };

    and3 (x : Bool, y : Bool, z : Bool) : Bool
    {
        if not x then false else
        if not y then false else
        if not z then false else
            true
        fi fi fi
    };

    and4 (a : Bool, b : Bool, c : Bool, d : Bool) : Bool
    {
        if not a then false else
        if not b then false else
        if not c then false else
        if not d then false else
            true
        fi fi fi fi
    };

    and5 (a : Bool, b : Bool, c : Bool, d : Bool, e : Bool) : Bool
    {
        if not a then false else
        if not b then false else
        if not c then false else
        if not d then false else
        if not e then false else
            true
        fi fi fi fi fi
    };

    and6 (a : Bool, b : Bool, c : Bool, d : Bool, e : Bool, f : Bool) : Bool
    {
        if not a then false else
        if not b then false else
        if not c then false else
        if not d then false else
        if not e then false else
        if not f then false else
            true
        fi fi fi fi fi fi
    };

    and7 (a : Bool, b : Bool, c : Bool, d : Bool, e : Bool, f : Bool, g : Bool) : Bool
    {
        if not a then false else
        if not b then false else
        if not c then false else
        if not d then false else
        if not e then false else
        if not f then false else
        if not g then false else
            true
        fi fi fi fi fi fi fi
    };

    or (x : Bool, y : Bool) : Bool
    {
        if x then true else
        if y then true else
            false
        fi fi
    };

    or3 (x : Bool, y : Bool, z : Bool) : Bool
    {
        if x then true else
        if y then true else
        if z then true else
            false
        fi fi fi
    };

    or4 (a : Bool, b : Bool, c : Bool, d : Bool) : Bool
    {
        if a then true else
        if b then true else
        if c then true else
        if d then true else
            false
        fi fi fi fi
    };

    or5 (a : Bool, b : Bool, c : Bool, d : Bool, e : Bool) : Bool
    {
        if a then true else
        if b then true else
        if c then true else
        if d then true else
        if e then true else
            false
        fi fi fi fi fi
    };

    or6 (a : Bool, b : Bool, c : Bool, d : Bool, e : Bool, f : Bool) : Bool
    {
        if a then true else
        if b then true else
        if c then true else
        if d then true else
        if e then true else
        if f then true else
            false
        fi fi fi fi fi fi
    };

    or7 (a : Bool, b : Bool, c : Bool, d : Bool, e : Bool, f : Bool, g : Bool) : Bool
    {
        if a then true else
        if b then true else
        if c then true else
        if d then true else
        if e then true else
        if f then true else
        if g then true else
            false
        fi fi fi fi fi fi fi
    };
};
