(*# NAMESPACE: Standard.Types #*)

(*
Module CHAR extracts
    chr (Int) : String
    compare (String, String) : Int
    greater_equal (String, String) : Bool
    greater_than (String, String) : Bool
    is_alpha (String) : Bool
    is_alpha_digit (String) : Bool
    is_digit (String) : Bool
    less_equal (String, String) : Bool
    less_than (String, String) : Bool
    ord (String) : Int
*)

class CHAR (* single-char String: equal, compareable *)
{
    std () : Std { new Std };

    chr (x : Int) : String
    {
        if x = 0 then "" else
        if x = 9 then "\t" else
        if x = 10 then "\n" else
        if x = 13 then "\r" else
        
        if x = 32 then " " else
        if x = 33 then "!" else
        if x = 34 then "\"" else
        if x = 35 then "#" else
        if x = 36 then "$" else
        if x = 37 then "%" else
        if x = 38 then "&" else
        if x = 39 then "'" else
        if x = 40 then "(" else
        if x = 41 then ")" else
        if x = 42 then "*" else
        if x = 43 then "+" else
        if x = 44 then "," else
        if x = 45 then "-" else
        if x = 46 then "." else
        if x = 47 then "/" else
        
        if x = 48 then "0" else
        if x = 49 then "1" else
        if x = 50 then "2" else
        if x = 51 then "3" else
        if x = 52 then "4" else
        if x = 53 then "5" else
        if x = 54 then "6" else
        if x = 55 then "7" else
        if x = 56 then "8" else
        if x = 57 then "9" else
        
        if x = 58 then ":" else
        if x = 59 then ";" else
        if x = 60 then "<" else
        if x = 61 then "=" else
        if x = 62 then ">" else
        if x = 63 then "?" else
        if x = 64 then "@" else
        
        if x = 65 then "A" else
        if x = 66 then "B" else
        if x = 67 then "C" else
        if x = 68 then "D" else
        if x = 69 then "E" else
        if x = 70 then "F" else
        if x = 71 then "G" else
        if x = 72 then "H" else
        if x = 73 then "I" else
        if x = 74 then "J" else
        if x = 75 then "K" else
        if x = 76 then "L" else
        if x = 77 then "M" else
        if x = 78 then "N" else
        if x = 79 then "O" else
        if x = 80 then "P" else
        if x = 81 then "Q" else
        if x = 82 then "R" else
        if x = 83 then "S" else
        if x = 84 then "T" else
        if x = 85 then "U" else
        if x = 86 then "V" else
        if x = 87 then "W" else
        if x = 88 then "X" else
        if x = 89 then "Y" else
        if x = 90 then "Z" else
        
        if x = 91 then "[" else
        if x = 92 then "\\" else
        if x = 93 then "]" else
        if x = 94 then "^" else
        if x = 95 then "_" else
        if x = 96 then "`" else
        
        if x = 97 then "a" else
        if x = 98 then "b" else
        if x = 99 then "c" else
        if x = 100 then "d" else
        if x = 101 then "e" else
        if x = 102 then "f" else
        if x = 103 then "g" else
        if x = 104 then "h" else
        if x = 105 then "i" else
        if x = 106 then "j" else
        if x = 107 then "k" else
        if x = 108 then "l" else
        if x = 109 then "m" else
        if x = 110 then "n" else
        if x = 111 then "o" else
        if x = 112 then "p" else
        if x = 113 then "q" else
        if x = 114 then "r" else
        if x = 115 then "s" else
        if x = 116 then "t" else
        if x = 117 then "u" else
        if x = 118 then "v" else
        if x = 119 then "w" else
        if x = 120 then "x" else
        if x = 121 then "y" else
        if x = 122 then "z" else
        
        if x = 123 then "{" else
        if x = 124 then "|" else
        if x = 125 then "}" else
        if x = 126 then "~" else
        
            -- wan e zhi yuan
            -- To use `int::to_string' here is dangerous. It may cause infinite calling loop.
            -- (new String).concat("\\").concat(std().int().to_string(x))
            "?"
        
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
    };
    
    compare (x : String, y : String) : Int
    {
        if ord(x) < ord(y) then (0 - 1) else
        if ord(x) = ord(y) then 0 else
            1
        fi fi
    };
    
    equal (x : String, y : String) : Bool
    {
        compare(x, y) = 0
    };
    
    greater_equal (x : String, y : String) : Bool
    {
        std().logic().or(greater_than(x, y), equal(x, y))
    };
    
    greater_than (x : String, y : String) : Bool
    {
        compare(x, y) = 1
    };
    
    is_alpha (x : String) : Bool
    {
        if std().logic().and(greater_equal(x, "A"), less_equal(x, "Z")) then true else
        if std().logic().and(greater_equal(x, "a"), less_equal(x, "z")) then true else
            false
        fi fi
    };
    
    is_alpha_digit (x : String) : Bool
    {
        std().logic().or(is_alpha(x), is_digit(x))
    };
    
    is_digit (x : String) : Bool
    {
        std().logic().and(greater_equal(x, "0"), less_equal(x, "9"))
    };
    
    less_equal (x : String, y : String) : Bool
    {
        std().logic().or(less_than(x, y), equal(x, y))
    };
    
    less_than (x : String, y : String) : Bool
    {
        compare(x, y) = (0 - 1)
    };
    
    ord (x : String) : Int
    {
        if x = "" then 0 else
        if x = "\t" then 9 else
        if x = "\n" then 10 else
        if x = "\r" then 13 else
    
        if x = " " then 32 else
        if x = "!" then 33 else
        if x = "\"" then 34 else
        if x = "#" then 35 else
        if x = "$" then 36 else
        if x = "%" then 37 else
        if x = "&" then 38 else
        if x = "'" then 39 else
        if x = "(" then 40 else
        if x = ")" then 41 else
        if x = "*" then 42 else
        if x = "+" then 43 else
        if x = "," then 44 else
        if x = "-" then 45 else
        if x = "." then 46 else
        if x = "/" then 47 else
        
        if x = "0" then 48 else
        if x = "1" then 49 else
        if x = "2" then 50 else
        if x = "3" then 51 else
        if x = "4" then 52 else
        if x = "5" then 53 else
        if x = "6" then 54 else
        if x = "7" then 55 else
        if x = "8" then 56 else
        if x = "9" then 57 else
        
        if x = ":" then 58 else
        if x = ";" then 59 else
        if x = "<" then 60 else
        if x = "=" then 61 else
        if x = ">" then 62 else
        if x = "?" then 63 else
        if x = "@" then 64 else
        
        if x = "A" then 65 else
        if x = "B" then 66 else
        if x = "C" then 67 else
        if x = "D" then 68 else
        if x = "E" then 69 else
        if x = "F" then 70 else
        if x = "G" then 71 else
        if x = "H" then 72 else
        if x = "I" then 73 else
        if x = "J" then 74 else
        if x = "K" then 75 else
        if x = "L" then 76 else
        if x = "M" then 77 else
        if x = "N" then 78 else
        if x = "O" then 79 else
        if x = "P" then 80 else
        if x = "Q" then 81 else
        if x = "R" then 82 else
        if x = "S" then 83 else
        if x = "T" then 84 else
        if x = "U" then 85 else
        if x = "V" then 86 else
        if x = "W" then 87 else
        if x = "X" then 88 else
        if x = "Y" then 89 else
        if x = "Z" then 90 else
        
        if x = "[" then 91 else
        if x = "\\" then 92 else
        if x = "]" then 93 else
        if x = "^" then 94 else
        if x = "_" then 95 else
        if x = "`" then 96 else
        
        if x = "a" then 97 else
        if x = "b" then 98 else
        if x = "c" then 99 else
        if x = "d" then 100 else
        if x = "e" then 101 else
        if x = "f" then 102 else
        if x = "g" then 103 else
        if x = "h" then 104 else
        if x = "i" then 105 else
        if x = "j" then 106 else
        if x = "k" then 107 else
        if x = "l" then 108 else
        if x = "m" then 109 else
        if x = "n" then 110 else
        if x = "o" then 111 else
        if x = "p" then 112 else
        if x = "q" then 113 else
        if x = "r" then 114 else
        if x = "s" then 115 else
        if x = "t" then 116 else
        if x = "u" then 117 else
        if x = "v" then 118 else
        if x = "w" then 119 else
        if x = "x" then 120 else
        if x = "y" then 121 else
        if x = "z" then 122 else
        
        if x = "{" then 123 else
        if x = "|" then 124 else
        if x = "}" then 125 else
        if x = "~" then 126 else
            
            0
        
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
        fi fi fi fi fi fi fi fi fi
    };
};
