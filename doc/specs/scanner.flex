package compiler.lexical;

import compiler.syntax.sym;
import compiler.lexical.Token;
import es.uned.lsi.compiler.lexical.ScannerIF;
import es.uned.lsi.compiler.lexical.LexicalError;
import es.uned.lsi.compiler.lexical.LexicalErrorManager;

// incluir aqui, si es necesario otras importaciones

%%
 
%public
%class Scanner
%char
%line
%column
%cup

%implements ScannerIF
%scanerror LexicalError

// incluir aqui, si es necesario otras directivas

%{
  LexicalErrorManager lexicalErrorManager = new LexicalErrorManager ();
  private int commentCount = 0;
%}  

digit = [0-9]
letter = [a-zA-Z]
Identifier = {letter}({letter}|{digit})*
//LiteralInt = {digit}+
// sym.TRUE o "true" as a reserved word? VER ESTO
//LiteralBool = TRUE | FALSE
  
%%

// Ver si es necesario estado inicial (YYINITIAL) o se debe cambiar de estado en que reconoce tokens

<YYINITIAL> 
{

	
    // ojo al terminal PLUS que no existe en la especificacion A (71280002N)  
    // Operadores     			       
    "+"                {  
                           Token token = new Token (sym.PLUS);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                        }
	"-"                {  
                           Token token = new Token (sym.MINUS);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                        }   
	"<"                {  
                           Token token = new Token (sym.LESSER);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                        }
	"/="                {  
                           Token token = new Token (sym.NOTEQUAL);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                        }
	":="                {  
                           Token token = new Token (sym.ASSIGN);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                        }
	"."                {  
                           Token token = new Token (sym.FIELDACC);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                        }                                                
                   
	// Palabras Reservadas
	"and"                {  
                           Token token = new Token (sym.AND);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                     	    }
	"array"              {  
                           Token token = new Token (sym.ARRAY);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                       	  }
	"begin"                {  
                           Token token = new Token (sym.BEGIN);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                       	  }
	"Boolean"            {  
                           Token token = new Token (sym.BOOLEAN);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                     	   }
	"constant"           {  
                           Token token = new Token (sym.CONSTANT);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                      	   }   
	"else"               {  
                           Token token = new Token (sym.ELSE);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	"end"                {  
                           Token token = new Token (sym.END);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	"False"              {  
                           Token token = new Token (sym.FALSE);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	// OJO QUE FOR NO EXISTE EN ESPECIFICACION A                         
	"for"                {  
                           Token token = new Token (sym.FOR);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	"function"     	      {  
                           Token token = new Token (sym.FUNCTION);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                     	    }
	"if"              	  {  
                           Token token = new Token (sym.IF);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	"in"                {  
                           Token token = new Token (sym.IN);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	"Integer"                {  
                           Token token = new Token (sym.INTEGER);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	"is"                {  
                           Token token = new Token (sym.IS);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	"loop"                {  
                           Token token = new Token (sym.LOOP);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	"of"                {  
                           Token token = new Token (sym.OF);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	// OJO QUE OR NO EXISTE EN ESPECIFICACION A                         
	"or"                {  
                           Token token = new Token (sym.OR);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	"out"                {  
                           Token token = new Token (sym.OUT);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                   	      }
	"procedure"          {  
                           Token token = new Token (sym.PROCEDURE);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                      	   }
	"Put_line"           {  
                           Token token = new Token (sym.PUTLINE);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                      		  }    
	"record"              {  
                           Token token = new Token (sym.RECORD);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                     	    }
	"return"              {  
                           Token token = new Token (sym.RETURN);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                   		      }
	"then"                {  
                           Token token = new Token (sym.THEN);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                      	   }
	"True"                {  
                           Token token = new Token (sym.TRUE);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                    	     }
	"type"                {  
                           Token token = new Token (sym.TYPE);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                       		  }  
	"while"               {  
                           Token token = new Token (sym.WHILE);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                      	   }   
	// Delimitadores  (VER LOS CHARS DE ESCAPE PARA " )
	\"        	        {  
                           Token token = new Token (sym.QUOTES);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }    
	"("            	    {  
                           Token token = new Token (sym.LPAREN);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                 	        }
	")"       	         {  
                           Token token = new Token (sym.RPAREN);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                   	      }                         
	".."           	     {  
                           Token token = new Token (sym.PNTPNT);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                     	    }
	"--{saltolinea}"                {  
                           Token token = new Token (sym.COMMENT);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	","                {  
                           Token token = new Token (sym.COMMA);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }
	";"                {  
                           Token token = new Token (sym.SEMICOL);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }  
	":"        	        {  
                           Token token = new Token (sym.COL);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                         }	                                                                                                                                                                                                                                                                                                                                                                
    
    // incluir aqui el resto de las reglas patron - accion
    // No terminales definidos en la seccion de definiciones (VER SI ESTA CORRECTA SU UBICACION)
    {Identifier}          {  
                           Token token = new Token (sym.IDENTIFIER);
                           token.setLine (yyline + 1);
                           token.setColumn (yycolumn + 1);
                           token.setLexema (yytext ());
           			       return token;
                 	        }
    
    
    // error en caso de coincidir con ningún patrón (VER ESTA SINTAXIS [^])
	[^]     
                        {                                               
                           LexicalError error = new LexicalError ();
                           error.setLine (yyline + 1);
                           error.setColumn (yycolumn + 1);
                           error.setLexema (yytext ());
                           lexicalErrorManager.lexicalError (error);
                        }
                        
	// VER LA DISPOSICION DEL CODIGO (LAS AREAS DELIMITADAS POR %%)  
	// DA FORMATO AL CODIGO EN TEMAS DE DELIMITADORES { (AL CODIGO DE LEX NO DE HADA...)                      
    
}


                         


