%{
// Reconhecedor de uma linguagem simplificada
#include <iostream>
#include "tokens.h"
using std::cout;
using std::endl;
%}

%option noyywrap
delim	[ \t\n]
brancos {delim}+
letra	[A-Za-z]
digito	[0-9]
id      ((\_)+|{letra})+((\_)*|{letra}|{digito})*
num	    {digito}+(\.{digito}+)?(E[+-]?{digito}+)?

%%
{brancos}	; // nenhuma ação e nenhum retorno
{num}	    return NUM;
if		    return IF; 
then		return THEN; 
else		return ELSE; 
while       return WHILE; 
"=="        return RELOP;
"!="        return RELOP;
"<"		    return RELOP; 
"<="		return RELOP; 
"="		    return RELOP; 
"<>"		return RELOP; 
">"		    return RELOP;
">="		return RELOP; 
{id}		return ID;  
\"({delim}|{id}|{num}|(\\[\"\\n\\t\\r\\b\\f\\v]))*\"  return STRING;
%%

// nenhuma função auxiliar é necessária