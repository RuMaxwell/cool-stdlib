class Math
{
    std () : Std { new Std };

    pow (b : Int, i : Int) : Int
    {
        if b = 0 then 0 else
        if i < 0 then 0 else
        if i = 0 then 1 else
        if i = 1 then b else
            b * pow(b, i - 1)
        fi fi fi fi
    };

    show () : String { "<Math instance>" };
};


