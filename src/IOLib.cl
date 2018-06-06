(*# NAMESPACE: Standard.Toolkits #*)

(*
Module IOLib extracts
    print (Object) : IO
    println (Object) : IO
*)

class IOLib inherits IO
{
    std () : Std { new Std };

    print (x : Object) : IO
    {
        out_string(std().object().to_string(x))
    };

    println (x : Object) : IO
    {{
        print(x);
        out_string("\n");
    }};
    
    putsln (s : String) : IO
    {{
        out_string(s);
        out_string("\n");
    }};
};


