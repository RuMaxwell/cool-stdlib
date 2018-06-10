(*# NAMESPACE: Standard.Exceptions #*)

(*
Module Exceptions extracts
    class Exception
        default () : Exception
        message (String) : Exception
        raise () : Object
        show () : String
    class Not_An_Iterator_Exception : Exception
*)

class Exception inherits IO
{
    msg : String <- "";

    default () : SELF_TYPE
    {{
        msg <- "";
        self;
    }};

    message (s : String) : SELF_TYPE
    {{
        msg <- s;
        self;
    }};

    raise () : Object
    {{
        out_string(msg);
        abort();
    }};

    show () : String
    {
        "<Exception: \"".concat(msg).concat("\">")
    };
};

class Not_An_Iterator_Exception inherits Exception
{
    default () : SELF_TYPE
    {{
        msg <- "Error: not an iterator";
        self;
    }};

    show () : String
    {
        "<Not_An_Iterator_Exception: \"".concat(msg).concat("\">")
    };
};

class Not_Implemented_Exception inherits Exception
{
    default () : SELF_TYPE
    {{
        msg <- "Feature not implemented";
        self;
    }};

    show () : String
    {
        "<Not_Implemented_Exception: \"".concat(msg).concat("\">")
    };
};

class Value_Error inherits Exception
{
    default () : SELF_TYPE
    {{
        msg <- "Not a proper value";
        self;
    }};

    show () : String
    {
        "<Value_Error: \"".concat(msg).concat("\">")
    };
};
