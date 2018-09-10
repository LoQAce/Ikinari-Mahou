*input_name
[cm  ]
[clearfix  ]
[freeimage  layer="1"  ]
[bg  storage="black.jpg"  time="100"  ]
[layopt  layer="message"  visible="false"  ]
[ptext  layer="1"  text="Inserisci&nbsp;un&nbsp;nome"  size="30"  x="180"  y="180"  color="white"  ]
[edit  name="f.Player"  top="290"  left="320"  maxchars="20"  size="30"  height="50"  ]
[glink  clickse="02_b_006.ogg"  text="Conferma"  target="*commit"  x="540"  y="285"  ]
[s  ]
*commit
[commit  name="f.Player"  ]
[cm  ]
[if  exp="f.Player==''"  ]
[jump  target="*input_name"  ]
[endif  ]
[freeimage  layer="1"  ]
[iscript  ]
$(".current_span").parent().css("text-align","center");
[endscript  ]
[layopt  layer="message"  visible="true"  ]
[r  ]
[r  ]
[r  ]
Il nome che hai inserito è
[l  ]
[r  ]
"
[emb  exp="f.Player"  ]
"
[l  ]
[r  ]
È corretto?
[playse  storage="03_b_051.ogg"  loop="false"  ]
[glink  clickse="02_b_006.ogg"  text="Sì"  storage="opening.ks"  target="*input_judge"  x="370"  y="380"  ]
[glink  clickse="02_b_006.ogg"  text="No"  storage="opening.ks"  target="*input_name"  x="370"  y="440"  ]
[s  ]
*input_judge
[cm  ]
[clearfix  ]
[freeimage  layer="1"  ]
[iscript  ]
$(".current_span").parent().css("text-align","center");
[endscript  ]
[if  exp="f.Player=='まおう'||f.Player=='魔王'||f.Player=='マオウ'||f.Player=='maou'"  ]
[layopt  layer="message"  visible="true"  ]
[r  ]
[r  ]
Questo nome non è disponibile!
[l  ]
[r  ]
[jump  target="*input_name"  ]
[endif  ]
[if  exp="f.Player=='マオウ'||f.Player=='maou'"  ]
[layopt  layer="message"  visible="true"  ]
[r  ]
[r  ]
Questo nome non è disponibile!
[l  ]
[r  ]
[jump  target="*input_name"  ]
[endif  ]
[if  exp="f.Player=='ゆうしゃ'||f.Player=='勇者'||f.Player=='ユウシャ'||f.Player=='yuusha'||f.Player=='ゆうしや'"  ]
[r  ]
Questo nome non è disponibile!
[l  ]
[r  ]
[jump  target="*input_name"  ]
[endif  ]
[jump  target="*opning"  ]
*opning
[cm  ]
[clearfix  ]
[freeimage  layer="1"  ]
[layopt  layer="message"  visible="true"  ]
[bg  storage="black.jpg"  time="100"  ]
[stopbgm  ]
[position  left="16"  top="16"  width="928"  height="608"  marginl="8"  margint="8"  marginr="8"  marginb="8"  ]
[font  size="30"  bold="false"  ]
Dal nulla
[r  ]
risuona la voce del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Lo ruolo tuo conoscere devi, caro compare,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
codesta è la chiave dello successo tuo.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Aiutare dovrai lo Vero Prode, acciocché prevalere possa.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Disposto a ciò sei? Inquieto non esser,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
allo tuo interno la saggezza risiede - fanne buon uso per soggiogare
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
lo male che entrambi attende.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Arcidemone sarà, ma cadere lui dovrà.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Intelligi lo peso della favella mia?
[l  ]
[resetfont  ]
[playse  storage="03_b_051.ogg"  loop="false"  ]
[glink  clickse="02_b_006.ogg"  text="Sì"  storage="battle.ks"  target="*battle_judge"  x="370"  y="510"  ]
[glink  clickse="02_b_006.ogg"  text="No"  storage="title.ks"  target="*start"  x="370"  y="570"  ]
[s  ]
