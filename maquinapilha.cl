class Main inherits IO {
	num:Int;
	stringparaint:A2I;
	sairselecionado:Bool;
	opcaoinput:String;
	modificapilhaop:String;
	numhead1:String;
	numhead2:String;
	topopilha:Stackcommand;
	valortmp:Stackcommand;
	stringtmp:String;
	main():Object{{
		num<-0;
		sairselecionado<-false;
		stringparaint<-new A2I;
		while not sairselecionado loop {
			out_string(">");
			opcaoinput<-in_string();
                        if opcaoinput ="x" then 
				sairselecionado<-true
			else
				if opcaoinput="e" then {
					modificapilhaop<-removedapilha();
					if modificapilhaop="+" then {
						numhead1<-removedapilha();
						numhead2<-removedapilha();
						adicionanapilha(stringparaint.i2a(stringparaint.a2i(numhead1)+stringparaint.a2i(numhead2)));
					}
					else
						if modificapilhaop="s" then {
							numhead1<-removedapilha();
							numhead2<-removedapilha();
							adicionanapilha(numhead1);
							adicionanapilha(numhead2);
						}
						else
							adicionanapilha(modificapilhaop)
						fi
					fi;
				}
				else
					if opcaoinput="d" then
						imprimepilha()
					else
						adicionanapilha(opcaoinput)
					fi
				fi
			fi;
			}
		pool;			 		
	}};
	adicionanapilha(str:String):Object{{
		num<-num+1;
		valortmp<-new Stackcommand;
		valortmp.init(str);
		if num=1 then
			topopilha<-valortmp
		else {
			valortmp.inserir(topopilha);
			topopilha<-valortmp;
		}
		fi;
			
	}};
	removedapilha():String{{
		num<-num-1;
		stringtmp<-topopilha.getitem();
		topopilha<-topopilha.getnextitem();
		stringtmp;
	}};
	imprimepilha():Object{{
		valortmp<-topopilha;
		while not isvoid valortmp loop {
			out_string(valortmp.getitem());
			out_string("\n");
			valortmp<-valortmp.getnextitem();
		}
		pool;
	}};

};

class Stackcommand inherits IO {
	head:String;
	tail:Stackcommand;
	init(x:String):Object{
		head<-x
	};
	inserir(y:Stackcommand):Object{
		tail<-y
	};
	getitem():String{head};
	getnextitem():Stackcommand{tail};
};