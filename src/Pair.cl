(*# NAMESPACE: Standard.Collections #*)

(*
Module Pair extracts
Pair
    init (Object, Object) : SELF_TYPE
    fst () : Object
    snd () : Object
    show () : String
Pair_Int_Int from Pair
    iinit (Int, Int) : SELF_TYPE
    ifst () : Int
    isnd () : Int
*)

class Pair (* general-typed *)
{
    std : Std <- new Std;

    first : Object;
    second : Object;
    
    init (x : Object, y : Object) : SELF_TYPE
    {{ first <- x; second <- y; self; }};
    
    fst () : Object { first };
    snd () : Object { second };
    
    show () : String
    {
        let s0 : String <- "(",
            s1 : String <- std.object().to_string(first),
            s2 : String <- ", ",
            s3 : String <- std.object().to_string(second),
            s4 : String <- ")"
        in
            s0.concat(s1).concat(s2).concat(s3).concat(s4)
    };
};

class Pair_Int_Int inherits Pair
{
    ifirst : Int;
    isecond : Int;

    iinit (x : Int, y : Int) : SELF_TYPE
    {{ ifirst <- x; isecond <- y; self; }};
    
    ifst () : Int { ifirst };
    isnd () : Int { isecond };
};


