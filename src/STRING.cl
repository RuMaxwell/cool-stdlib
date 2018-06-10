(*# NAMESPACE: Standard.Types #*)

(*
Module STRING extracts
    all_digit (String) : Bool
    any_digit (String) : Bool
    at (String, Int) : String
    char_to_digit (String) : Int
    compare (String, String) : Int
    digit_to_char (Int) : String
    equal (String, String) : Bool
    from_int (Int) : String
    head (String) : String
    initial (String) : String
    is_int (String) : Bool
    -- is_list (String) : Bool
    is_null (String) : Bool
    -- is_pair (String) : Bool
    last (String) : String
    show () : String
    tail (String) : String
    to_int (String) : Int
    -- to_list (String) : List
    -- to_pair (String) : Pair
    to_string (String) : String
*)

class STRING (* String: equal, comparable; an iterator *)
{
    std : Std <- new Std;

    all_digit (s : String) : Bool
    {
        if is_null(s) then false else
        if is_null(tail(s)) then std.char().is_digit(head(s)) else
        if std.char().is_digit(head(s)) then all_number(tail(s)) else
            false
        fi fi
    };

    any_digit (s : String) : Bool
    {
        if is_null(s) then false else
        if std.char().is_digit(head(s)) then true else
            any_digit(tail(s))
        fi fi
    };

    at (s : String, i : Int) : String
    {
        if i = 0 then head(s)
        else at(tail(s), i - 1) fi
    };

    char_to_digit (x : String) : Int
    {
        std.char().ord(x) - 48
    };
    
    compare (sl : String, sr : String) : Int
    {
        let xl : String <- head(sl),
            xr : String <- head(sr),
            xsl : String <- tail(sl),
            xsr : String <- tail(sr)
        in
            if std.logic().and(sl.length() = 0, sr.length() = 0) then 0 else
            if sl.length() = 0 then (0 - 1) else
            if sr.length() = 0 then 1 else
            let cmp : Int <- std.char().compare(head(sl), tail(sl)) in
                if cmp = 0 then compare(tail(sl), tail(sr)) else
                    cmp
                fi
            fi fi fi
    };

    digit_to_char (x : Int) : String
    {
        if std.logic().and(x < 10, 0 <= x) then
            std.char().chr(x + 48)
        else
            { std.value_error().raise(); ""; }
        fi
    };

    equal (sl : String, sr : String) : Bool
    {
        let xl : String <- head(sl),
            xr : String <- head(sr),
            xsl : String <- tail(sl),
            xsr : String <- tail(sr)
        in
            if std.logic().and(sl.length() = 0, sr.length() = 0) then true else
            if sl.length() = 0 then false else
            if sr.length() = 0 then false else
                if not head(sl) = head(sr) then false else
                    equal(tail(sl), tail(sr))
                fi
            fi fi fi
    };

    eval (str : String) : Object
    {
        if is_int(str) then to_int(str) else
        if is_list(str) then to_list(str) else
        if is_pair(str) then to_pair(str) else
            str
        fi fi fi
    };

    head (s : String) : String
    {
        s.substr(0, 1)
    };

    initial (s : String) : String
    {
        s.substr(0, s.length() - 1)
    };

    is_int (s : String) : Bool
    {
        -- How I wish Cool can pass function as value
        -- if std.iterator().all(std.char().is_digit, s)
        all_number (s)
    };

    is_list (s : String) : Bool
    {{
        std.not_implemented().raise();
        false;
    }};

    is_null (s : String) : Bool
    {
        s.length() = 0
    };

    is_pair (s : String) : Bool
    {{
        -- remove whitespaces
        -- do checking
        std.not_implemented().raise();
        false;
    }};
    
    last (s : String) : String
    {
        s.substr(s.length() - 1, s.length())
    };

    show () : String
    {
        "<STRING instance>"
    };
    
    from_int (x : Int) : String
    {
        std.int().to_string(x)
    };

    tail (s : String) : String
    {
        s.substr(1, s.length())
    };
    
    to_int (s : String) : Int
    {
        let len : Int <- s.length() in
            if len = 0 then 0 else
                char_to_digit(head(s)) * std.math().pow(10, len) + to_int(tail(s))
            fi
    };

    to_list (s : String) : List
    {{
        std.not_implemented().raise();
        new List;
    }};

    to_pair (s : String) : Pair
    {{
        std.not_implemented().raise();
        new Pair;
    }};

    to_string (s : String) : String
    {
        "\"".concat(s).concat("\"")
    };
};

