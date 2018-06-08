(*# NAMESPACE: Standard.Types #*)

(*
Module STRING extracts
    at (String, Int) : String
    char_to_digit (String) : Int
    compare (String, String) : Int
    equal (String, String) : Bool
    head (String) : String
    initial (String) : String
    digit_to_char (Int) : String
    last (String) : String
    tail (String) : String
    to_str (String) : String
    to_string () : String
    to_int (String) : Int
*)

class STRING (* String: equal, comparable; an iterator *)
{
    std : Std <- new Std;

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

    head (this : String) : String
    {
        this.substr(0, 1)
    };

    initial (this : String) : String
    {
        this.substr(0, this.length() - 1)
    };
    
    digit_to_char (x : Int) : String
    {
        if std.logic().and(x < 10, 0 <= x) then
            std.char().chr(x + 48)
        else
            { abort(); ""; }
        fi
    };

    last (this : String) : String
    {
        this.substr(this.length() - 1, this.length())
    };

    show () : String
    {
        "<STRING instance>"
    };
    
    from_int (x : Int) : String
    {
        std.int().to_string(x)
    };

    tail (this : String) : String
    {
        this.substr(1, this.length())
    };
    
    to_int (this : String) : Int
    {
        let len : Int <- this.length() in
            if len = 0 then 0 else
                char_to_digit(head(this)) * std.math().pow(10, len) + to_int(tail(this))
            fi
    };

    to_string (this : String) : String
    {
        "\"".concat(this).concat("\"")
    };
};

