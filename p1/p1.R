print.default(sum(Filter(function(x){ x %% 3 == 0 || x %% 5 == 0 }, seq(3,999))))
