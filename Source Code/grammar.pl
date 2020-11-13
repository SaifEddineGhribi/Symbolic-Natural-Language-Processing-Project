% Ghribi Saif Eddine
% SD 213 
% TELECOM PARIS
% Poject :Grammar Tunisian Arabic


% -- Grammar

vp --> v(_,_).
vp --> v(Sem1,Sem2),np(Sem1,Sem2). % Sem1 (Semantic feature 1) , Sem2 (Semantic feature 2)
vp --> v(Sem1,Sem2),pp(Sem1,Sem2). 
np --> nn(Numb,_,_),adj(Numb). 
pp(Sem1,Sem2) -->p(Sem1),np(Sem1,Sem2).
np(Sem1,Sem2) --> nn(_,Sem1,Sem2).
np(Sem1,Sem2) --> nn(Numb,Sem1,Sem2),adj(Numb). 
np(Sem1,Sem2) --> cp(Numb),nn(Numb,Sem1,Sem2). % Numb for plural or singular
np(Sem1,Sem2) -->nn(_,Sem1,Sem2), conj, nn(_,Sem1,Sem2).


% -- Lexicon
v(edible,non_drinkable) --> [klit]. % klit : I ate 
v(edible,drinkable) --> [chrabet]. % chrabet : I  drank
v(location,_) -->[mchit]. % mchit = I went 
v(location,_) -->[rawa7t]. % rawa7t = I returned

v(sentient_being,_)-->[tlabt]. % tlabt: I called
v(sentient_being,_)-->[kabelt]. % tlabt: I met 

v(edible,_) -->[chrit]. % chrit : I bought
v(edible,_) -->[a3tini]. % a3tini : give me
v(edible,_) -->[n7eb]. % n7eb : I  like 

v(sentient_being,_) -->[n7eb]. % n7eb : I  like 


nn(singular,location,_)-->[dar]. %  house
nn(plural,location,_)-->[diar]. %  houses
nn(singular,sentient_being,_)-->[sa7bi]. % my friend
nn(singular,sentient_being,_) -->[bouya]. % my father
nn(singular,sentient_being,_) -->[khouya]. % my brother
nn(singular,sentient_being,_) -->[weld3ami]. % my cousin
nn(plural,sentient_being,_) -->[s7abi]. % my friends

nn(singular,edible,non_drinkable) -->[ baytha ]. % one egg
nn(plural,edible,non_drinkable)-->[ bayth ]. % multiple eggs
nn(singular,edible,non_drinkable) -->[mergueza]. % one sausage
nn(plural,edible,non_drinkable)-->[merguez]. % multiple sausages
nn(plural,edible,drinkable) --> [jus]. % juice
nn(plural,edible,drinkable) --> [ma2]. % water
nn(singular,location,_) --> [sou9]. % market
nn(plural,location,_) --> [aswe9]. % marlets
conj --> [w]. % and
p(location) --> [lel]. % to,toward
adj(singular) -->[sghira]. % small
adj(plural) -->[sghar]. % small
adj(singular) -->[kbira]. % big
adj(plural) -->[kbar]. % big
cp(plural) -->[barcha]. % many
cp(singular) -->[wa7da]. % only
