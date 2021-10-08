%{
   #include "shre.tab.h"
%}

%%
"#"    { return HASH; }
"="    { return EQUALS; }
\n     { return EOL; }
[0-9]+\.[0-9]. { return FLOAT; }
[0-9]+ { yylval = atoi(yytext); return INT; }
[ \t]  { /* ignore whitespace */ }
"\".+\"" { yylval = yytext; return STRING; }
"[a-zA-Z][a-zA-Z0-9]." { yylval = yytext; return ID; }
.      { printf("Mystery character %c\n", *yytext); }
%%
