person(gabriel). person(clare).

drive(gabriel).
resist(gabriel).
alcohol(gabriel, 40).

drive(clare).
alcohol(clare, 0).
-resist(clare).

punish(P) :- drive(P), alcohol(P,A), A>30.
punish(P) :- resist(P).

sentence(P, prison) :-  punish(P).

%!trace_rule {"% is innocent.",P}
    sentence(P, innocent) :- person(P), not sentence(P, prison).

%%%% labels
%!trace {"% was driving",P} drive(P).
%!trace {"% BCA over 30",P} alcohol(P,A) : A>30.
%!trace {"% has resisted to authority",P} resist(P).
%!trace {"% has not resisted authority",P} -resist(P).
%!trace {"% has been sentenced to %",P,S} sentence(P,S) : S!=innocent.

%!show_trace sentence(P, X).  % Explain all sentences


%%%% Other posible show_traces (delete spaces between '%' and '!' to activate one)
%%%% Note: different show_traces add up to each other
%  !show_trace sentence(P, innocent).        % All innocent sentences
%  !show_trace sentence(P, S) : S=prison.    % All prison sentences
%  !show_trace sentence(P, S) : resist(P).   % All sentences of persons who had been resisted authority
%  !show_trace sentence(P, S) : alcohol(P,A), A>30.   % All sentences of persons who had a BAC over 30
