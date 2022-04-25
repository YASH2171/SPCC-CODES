%{
int ch=0, words=0, sentences=0, lines=0, tabs=0, numbers=0, spaces=0;
%}

%%

[(A-Z)(0-9)\w] { words++;}
[' ']  { spaces++;}
[0-9]+ { numbers++;}
[\t] { tabs++;}
[\.] { sentences++;}
[A-Za-z] { ch++;}
[\n] { lines++; words++; }
%%

int main()
{
yyin=fopen("abc.txt", "r");
yylex();
printf("\n Characters=%d",ch);
printf("\n Words=%d",words);
printf("\n Sentences=%d",sentences);
printf("\n Lines=%d",lines);
printf("\n Tabs=%d",tabs);
printf("\n Numbers=%d",numbers);
printf("\n Spaces=%d",spaces);
}

int yywrap()
{
return 1;
}
