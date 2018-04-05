# MaquinaPilhaCOOL
Atividade Compiladores 2 (UNIFACS) - Implementar um programa em COOL
<br/>
<br/>
<strong>Componentes do grupo:</strong>
<br/>
 Caio Vinícius (@CaioVinicius)
<br/>
 Danilo Augusto (@AugsutoDC)
<br/>
 Danilo Quadros (@daniloba)
<br/>
 Ítalo Gregório (@ibgreg)
<br/>
<br/>

<strong>Funcionalidades do programa:</strong>
<br/>
<br/>
0-9: Armazena o número na pilha
<br/>
d: mostra o conteúdo da pilha, iniciando pelo topo
<br/>
x: encerra o programa
<br/>
+: empilha "+"
<br/>
s: empilha "s"
<br/>
e: analisa o topo da pilha de acordo com as seguintes condições abaixo:
<br/>
<br/>
<strong>Caso o "+" esteja no topo:</strong> o "+" é desempilhado, os dois números inteiros seguintes são desempilhados e adicionados, e o resultado da soma é empilhado.
<br/>
<strong>Caso o "s" esteja no topo:</strong> o "s" é desempilhado e os dois próximos itens têm as posições trocadas na pilha.
<br/>
<strong>Caso tenha um número inteiro ou a pilha estiver vazia:</strong> A pilha não será alterada
