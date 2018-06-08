class Main inherits IO
{
    std : Std <- new Std;

    l0 : List  <- (new List).cons(5).cons(4).cons(3).cons(2).cons(1);
    l1 : List  <- (new List).cons("o").cons("l").cons("l").cons("e").cons("h");

    msg : String <- "The length of this string is ";
    l2 : List  <- (new List).cons(".").cons(msg.length()).cons(msg);
    l3 : List  <- (new List).cons(
        (new List).cons("c").cons("b").cons("a")
    ).cons(
        (new List).cons("3").cons("2").cons("1")
    ).cons("root");

    main () : IO
    {{
        std.io().println(l0);
        std.io().println(l1);
        std.io().println(l2);
        std.io().println(l3);
    }};
};

