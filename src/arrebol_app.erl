-module(arrebol_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1, start/1, start/0]).

%% ===================================================================
%% Application callbacks
%% ===================================================================
start() ->
	application:start(arrebol).
start([Scheduler]) ->
	application:start(arrebol, Scheduler).
start(_StartType, [_StartArgs]) ->
    worker_sup:start_link(_StartArgs).

stop(_State) ->
    ok.
