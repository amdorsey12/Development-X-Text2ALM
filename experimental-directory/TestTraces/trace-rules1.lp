location2(A,B,C) :- location(A,B,C).
%!trace {"% was at % during sentence %", O', S', B} location2(O, S, B) : is_a(O, O'), is_a(S, S').
%!trace {"% % % at time point %", X0', A, B', X2} happened(X1,X2) : is_a(X1, X1'), event_agent(X1, X0), is_a(X0, X0'), link(X1', A), actions_vn_destination(X1,B), is_a(B, B').
%!show_trace location2(O_G,D_G,VAR_0).