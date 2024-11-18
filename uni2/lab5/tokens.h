#ifndef TOKEN_H
#define TOKEN_H

#include <string>
#include <sstream>
using std::stringstream;
using std::string;

// constantes para os tokens 
enum Tag { ID = 256, INTEGER, FLOATING,BOOLEAN, ELSE, LT, GT, TYPE, TRUE, FALSE, MAIN, IF, WHILE, DO, OR, AND, EQ, NEQ, LTE, GTE };

struct Token
{
	int tag;
	string lexeme;

	Token() : tag(0) {}
	Token(char ch) : tag(int(ch)), lexeme({ch}) {}
	Token(int t, string s) : tag(t), lexeme(s) {}
};

#endif // TOKEN_H