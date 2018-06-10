(*# NAMESPACE: Standard.Toolkits #*)

(*
Module IOLib extracts
    print (Object) : IO
    println (Object) : IO
*)

class IOLib inherits IO
{
    std : Std <- new Std;

    read () : Object
    {
        let str : String <- in_string() in
        {
            std.string().eval(str)
        }
    };

    print (x : Object) : IO
    {
        out_string(std.object().to_string(x))
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


