function str = task1b_AorB_max(str1,str2) 

ApmB = '([0-9\.]��+pm��[0-9\.]+)';
match_expr      = ApmB;
m1              = eval(regexprep(str1,match_expr,'$1'));
s1              = eval(regexprep(str1,match_expr,'$2'));
m2              = eval(regexprep(str2,match_expr,'$1'));
s2              = eval(regexprep(str2,match_expr,'$2'));

[m,j] = max([m1,m2]);

if j == 1
    s = s1;
else
    s = s2;
end

str = [num2str(m),'pm',num2str(s)];
end

