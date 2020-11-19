%!trace {"% % % the % at time point %", X0', A, B', C', X2} happened(X1,X2) : is_a(X1, X1'), event_agent(X1, X0), is_a(X0, X0'), link(X1', A), actions_vn_recipient(X1,B), is_a(B, B'), actions_vn_theme(X1,C), is_a(C, C').
%!show_trace happened(X1,X2).
