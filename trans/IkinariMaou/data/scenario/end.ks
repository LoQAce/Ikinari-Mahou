*end
[jump  target="*hint"  ]
[jump  target="*hint"  ]
*trueend
[stopbgm  ]
[playbgm  storage="05_game_maoudamashii_9_jingle05.ogg"  ]
[chara_mod  name="yuusha"  face="done"  time="0"  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Prode: Sììì! Finalmente... ce l'ho fatta!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Ehi!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Smettila di nasconderti ed esci fuori!
[l  ]
[chara_mod  name="yuusha"  face="normal"  time="0"  ]
[keyframe  name="animation1"  ]
[frame  p="100%"  x="-571"  ]
[endkeyframe  ]
[chara_show  layer="4"  name="player"  wait="true"  top="320"  left="1124"  ]
[chara_mod  name="player"  face="done"  time="0"  ]
[keyframe  name="animation2"  ]
[frame  p="100%"  x="-130"  ]
[endkeyframe  ]
[kanim  name="yuusha"  keyframe="animation2"  time="2000"  ]
[kanim  name="player"  layer="3"  keyframe="animation1"  time="2000"  ]
[wa  ]
[cm  ]
[chara_mod  name="player"  face="normal"  time="0"  ]
[chara_mod  name="yuusha"  face="done"  time="0"  ]
Prode: Ben fatto!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Hai usato Possessione
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
e hai assunto il suo controllo durante il combattimento, vero?
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Fantastico ottimo lavoro!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Cosa?
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Ho scombussolato le cose
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
lanciando Scambio su di noi?
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Ah, non badare ai dettagli!
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
È sistemato per sempre, non è così?
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Non c'è nient'altro da temere,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
specialmente l'Arcidemone,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
perché ho te e il tuo incantesimo di possessione!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
I migliori amici di sempre, giusto!
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Ah ah ah!!!
[p  ]
[cm  ]
[freeimage  layer="4"  ]
[freeimage  layer="3"  ]
[freeimage  layer="2"  ]
[freeimage  layer="1"  ]
[freeimage  layer="0"  ]
[bg  storage="black.jpg"  time="400"  ]
[wait  time="500"  ]
[jump  storage="staff.ks"  target="*staffroll"  ]
*hint
[eval  exp="f.deadcounter=f.deadcounter+1"  ]
[if  exp="f.hollyFlag==1"  ]
Dal nulla
[r  ]
risuona la voce del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Il Prode può solo lanciare Sacro
[l  ]
[r  ]
quando lo corpo e lo spirito suo
[l  ]
[r  ]
sono una sola cosa.
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Pondera profondamente, amico mio
[l  ]
[r  ]
su quale foggia di creaturo tu sia.
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.ChangeDoneFlag==1"  ]
Dal nulla
[l  ]
[r  ]
risuona la voce del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Per sconfiggere l'Arcidemone
[l  ]
[r  ]
distruggere le sue carni dovrai!
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.SurpriseAttckDoneFlag==1&&f.braveMagicPoint>0"  ]
Dal nulla
[l  ]
[r  ]
risuona la voce del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Se sconfiggere l'Arcidemone vorrai,
[l  ]
[r  ]
adoperare i suoi oggetti dovrai,
[p  ]
o altrimenti tu morrai.
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.SurpriseAttckDoneFlag==1&&f.braveMagicPoint==0"  ]
Dal nulla
[l  ]
[r  ]
risuona la voce del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Per lanciare un incantesimo
[l  ]
[r  ]
ripristina lo mana tuo con l'Etere.
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
Dal nulla
[l  ]
[r  ]
risuona la voce del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Leggi lo Libro dello Mastro di Pugna 
[l  ]
[r  ]
per trovare la strada tua.
[p  ]
[jump  storage="initialize.ks"  ]
