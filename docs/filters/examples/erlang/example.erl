%% -*- erlang -*-
%%! -smp enable -sname factorial -mnesia debug verbose

% Example from http://www.erlang.org/doc/man/escript.html

main([String]) ->
    try
            N = list_to_integer(String),
                    F = fac(N),
                            io:format("factorial ~w = ~w\n", [N,F])
                                catch
                                        _:_ ->
                                                    usage()
      end;
      main(_) ->
          usage().
          usage() ->
              io:format("usage: factorial integer\n"),
                  halt(1).
                  fac(0) -> 1;
                  fac(N) -> N * fac(N-1).
