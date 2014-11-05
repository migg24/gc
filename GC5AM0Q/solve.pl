gen(A,B,C,D,E,F,G,H) :- permutation([A,B,C,D,E,F,G,H],['king','queen','rook','rook','bishop','bishop','knight','knight']).

f1(A,C,H) :- (A = 'rook'; A = 'queen'), (C = 'king'; C = 'queen'; C = 'bishop'), (H = 'queen'; H = 'rook').
f2(A,C,F) :- (A = 'queen'; A = 'rook'), (C = kind; C = 'queen'; C = 'rook'), F \= 'bishop', F \= 'queen';
  (A = 'queen'; A = 'rook'), C \= kind, C \= 'queen', C \= 'rook', (F = 'bishop'; F = 'queen');
  A \= 'queen', A \= 'rook', (C = kind; C = 'queen'; C = 'rook'), (F = 'bishop'; F = 'queen').
f3(C,D,E,G) :- C = 'king'; C = 'queen'; C = 'rook'; D = 'queen'; D = 'rook'; E = 'knight'; G = 'queen'; G = 'bishop'.
f4(B,D,F,G) :- (B = 'king'; B = 'bishop'; B = 'knight'), (D = 'king'; D = 'knight'; D = 'bishop'), (F = 'knight'; F = 'bishop'), (G = 'king'; G = 'queen'; G = 'rook'; G = 'bishop').
f5(A,B,D,F,G) :- (A = 'queen'; A = 'rook'), B = 'knight', D \= 'rook', D \= 'queen', F \= 'king', F \= 'queen', F \= 'bishop', G \= 'king', G \= 'queen', G \= 'bishop';
  (A = 'queen'; A = 'rook'), B \= 'knight', (D = 'rook'; D = 'queen'), F \= 'king', F \= 'queen', F \= 'bishop', G \= 'king', G \= 'queen', G \= 'bishop';
  (A = 'queen'; A = 'rook'), B \= 'knight', D \= 'rook', D \= 'queen', (F = 'king'; F = 'queen'; F = 'bishop'), G \= 'king', G \= 'queen', G \= 'bishop';
  (A = 'queen'; A = 'rook'), B \= 'knight', D \= 'rook', D \= 'queen', F \= 'king', F \= 'queen', F \= 'bishop', (G = 'king'; G = 'queen'; G = 'bishop');
  A \= 'queen', A \= 'rook', B = 'knight', (D = 'rook'; D = 'queen'), F \= 'king', F \= 'queen', F \= 'bishop', G \= 'king', G \= 'queen', G \= 'bishop';
  A \= 'queen', A \= 'rook', B = 'knight', D \= 'rook', D \= 'queen', (F = 'king'; F = 'queen'; F = 'bishop'), G \= 'king', G \= 'queen', G \= 'bishop';
  A \= 'queen', A \= 'rook', B = 'knight', D \= 'rook', D \= 'queen', F \= 'king', F \= 'queen', F \= 'bishop', (G = 'king'; G = 'queen'; G = 'bishop');
  A \= 'queen', A \= 'rook', B \= 'knight', (D = 'rook'; D = 'queen'), (F = 'king'; F = 'queen'; F = 'bishop'), G \= 'king', G \= 'queen', G \= 'bishop';
  A \= 'queen', A \= 'rook', B \= 'knight', (D = 'rook'; D = 'queen'), F \= 'king', F \= 'queen', F \= 'bishop', (G = 'king'; G = 'queen'; G = 'bishop');
  A \= 'queen', A \= 'rook', B \= 'knight', D \= 'rook', D \= 'queen', (F = 'king'; F = 'queen'; F = 'bishop'), (G = 'king'; G = 'queen'; G = 'bishop').
f6(B,D,G,H) :- (B = 'queen'; B = 'bishop'), D \= 'knight', G \= 'king', G \= 'queen', G \= 'rook', H \= 'queen', H \= 'rook';
  B \= 'queen', B \= 'bishop', D = 'knight', G \= 'king', G \= 'queen', G \= 'rook', H \= 'queen', H \= 'rook';
  B \= 'queen', B \= 'bishop', D \= 'knight', (G = 'king'; G = 'queen'; G = 'rook'), H \= 'queen', H \= 'rook';
  B \= 'queen', B \= 'bishop', D \= 'knight', G \= 'king', G \= 'queen', G \= 'rook', (H = 'queen'; H = 'rook').
f7(B,C,D,E,G,H) :- (B = 'queen'; B = 'bishop'), C \= 'queen', C \= 'rook', D \= 'knight', E \= 'queen', E \= 'bishop', G \= 'knight', H \= 'knight';
  B \= 'queen', B \= 'bishop', (C = 'queen'; C = 'rook'), D \= 'knight', E \= 'queen', E \= 'bishop', G \= 'knight', H \= 'knight';
  B \= 'queen', B \= 'bishop', C \= 'queen', C \= 'rook', D = 'knight', E \= 'queen', E \= 'bishop', G \= 'knight', H \= 'knight';
  B \= 'queen', B \= 'bishop', C \= 'queen', C \= 'rook', D \= 'knight', (E = 'queen'; E = 'bishop'), G \= 'knight', H \= 'knight';
  B \= 'queen', B \= 'bishop', C \= 'queen', C \= 'rook', D \= 'knight', E \= 'queen', E \= 'bishop', G = 'knight', H \= 'knight';
  B \= 'queen', B \= 'bishop', C \= 'queen', C \= 'rook', D \= 'knight', E \= 'queen', E \= 'bishop', G \= 'knight', H = 'knight'.
f8(E) :- E = 'king'; E = 'bishop'; E = 'knight'.

match :- gen(A,B,C,D,E,F,G,H), f1(A,C,H), f2(A,C,F), f3(C,D,E,G), f4(B,D,F,G), f5(A,B,D,F,G), f6(B,D,G,H), f7(B,C,D,E,G,H), f8(E), print([A,B,C,D,E,F,G,H]).

