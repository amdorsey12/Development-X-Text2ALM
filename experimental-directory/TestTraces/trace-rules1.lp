location2(A,B,C) :- location(A,B,C).
%!trace {"% was at % during sentence %", O', S', B} location2(O, S, B) : is_a(O, O'), is_a(S, S').
%!trace {"% % % at time point %", X0', A, B', X2} happened(X1,X2) : is_a(X1, X1'), event_agent(X1, X0), is_a(X0, X0'), link(X1', A), actions_vn_destination(X1,B), is_a(B, B').
%! trace {"% went to % at time point %", Y_G', Y', X2} event_agent(X_G, Y_G), actions_vn_location(X,Y), happened(X1,X2) : is_a(Y_G, Y_G'), is_a(Y, Y').
%! trace {"% was carried out by %", X_G', Y_G'} event_agent(X_G, Y_G) : is_a(X_G, X_G'), is_a(Y_G, Y_G').
%! trace {"% occured at time point %", X1', X2} happened(X1,X2) : is_a(X1, X1').
%! trace {"% led to the destination %", X_G', Y_G'} actions_vn_location(X_G,Y_G) : is_a(X_G, X_G'), is_a(Y_G, Y_G').
%! trace {"and % led to the destination %", X_G', Y_G'} actions_vn_destination(X_G,Y_G) : is_a(X_G, X_G'), is_a(Y_G, Y_G').
%!show_trace location2(O_G,D_G,VAR_0).