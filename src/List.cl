(*# NAMESPACE: Standard.Collections #*)

(*
Module List extracts
List
    car () : Object
    cdr () : List
    cons (Object) : List
    equal (List) : Bool
    from_iterable (Object) : List
    init (Object, List) : List
    is_null () : Bool
    show () : String
    showbody () : String
Cons from List
*)

class List (* General-typed linked list: an iterator *)
{
    std : Std <- new Std;

    cons (x : Object) : List
    {
        (new Cons).init(x, self)
    };
    
    equal (r : List) : Bool
    {
        if std.logic().and(is_null(), r.is_null()) then true else
        if is_null() then false else
        if r.is_null() then false else
            if not std.object().equal(car(), r.car()) then false else
                cdr().equal(cdr())
            fi
        fi fi fi
    };

    from_iterable (s : Object) : List
    {
        if std.iterator().is_null(s) then new List else
            from_iterable(std.iterator().tail(s)).cons(std.iterator().head(s))
        fi
    };

    is_null () : Bool
    {
        true
    };

    show () : String
    {
        "[".concat(showbody()).concat("]")
    };

    showbody () : String
    {
        let res : String <- "" in
        if is_null() then res else
        if cdr().is_null() then
            res.concat(std.object().to_string(car())).concat(cdr().showbody())
        else
            res.concat(std.object().to_string(car())).concat(",").concat(cdr().showbody())
        fi fi
    };

    -- Prototypes
    car () : Object {{ abort(); new Object; }};
    cdr () : List {{ abort(); self; }};
};

class Cons inherits List
{
    head : Object;
    tail : List <- new List;

    init (x : Object, xs : List) : List
    {{
        head <- x;
        tail <- xs;
        self;
    }};

    is_null () : Bool
    {
        false
    };

    car () : Object
    {
        head
    };

    cdr () : List
    {
        tail
    };
};

