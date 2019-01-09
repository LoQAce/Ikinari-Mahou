*tool
[ignore  exp="tf.DrawFlag==1"  ]
[eval  exp="tf.DrawFlag=1"  ]
[clearfix  name="command1"  ]
[cm  ]
[clearstack  ]
[layopt  layer="message0"  visible="false"  ]
[action_command  ]
[wait  time="50"  ]
[tool_command  ]
[freeimage  layer="1"  ]
[eval  exp="tf.DrawFlag=0"  ]
[s  ]
[endignore  ]
*breve_select_tool
[brave_reset_window  ]
[clearfix  name="command1"  ]
[cm  ]
[clearstack  ]
[layopt  layer="message0"  visible="false"  ]
[action_command  ]
[wait  time="50"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="295"  storage="arcenemy/2_battle/2_Window/sub_window.png"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="476"  left="745"  storage="arcenemy/2_battle/9_SelectTool/select_tool_window.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*breve_select_tool2"  x="810"  y="450"  ]
[glink  clickse="02_b_006.ogg"  target="*brave_use"  exp="tf.check=1"  text="Prode"  x="750"  y="510"  ]
[wait  time="50"  ]
[s  ]
*breve_select_tool2
[wait  time="100"  ]
[clearstack  ]
[clearfix  name="command1"  ]
[cm  ]
[action_command  ]
[wait  time="50"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="296"  storage="arcenemy/2_battle/9_SelectTool/select_cheage.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*breve_select_tool"  x="330"  y="450"  ]
[glink  clickse="02_b_006.ogg"  name="command1"  target="*brave_use"  exp="tf.check=2"  text="Arcidemone"  x="320"  y="490"  layer="3"  ]
[wait  time="50"  ]
[s  ]
*brave_use
[if  exp="tf.tool==1"  ]
[eval  exp="tf.tool=0"  ]
[jump  target="*brave_leaf"  ]
[elsif  exp="tf.tool==2"  ]
[eval  exp="tf.tool=0"  ]
[jump  target="*brave_ether"  ]
[endif  ]
*brave_leaf
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
Il Prode usa Erba Medica!
[r  ]
[p  ]
[if  exp="tf.check==1"  ]
[eval  exp="f.braveLifePoint=f.braveLifePoint+50"  ]
[freeimage  layer="3"  ]
[brave_status  ]
[chara_show  layer="1"  name="m_window"  top="445"  left="0"  time="0"  ]
Il Prode recupera 50 PV!
[elsif  exp="tf.check==2"  ]
Ma i PV dell'Arcidemone sono già al massimo!
[endif  ]
[eval  exp="tf.check=0"  ]
[eval  exp="f.braveLeaf=f.braveLeaf-1"  ]
[p  ]
[cm  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_ether
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
Il Prode usa Etere!
[r  ]
[p  ]
[if  exp="tf.check==1"  ]
[eval  exp="f.braveMagicPoint=f.braveMagicPoint+50"  ]
[freeimage  layer="3"  ]
[brave_status  ]
Il Prode recupera 50 PM!
[p  ]
[elsif  exp="tf.check==2"  ]
[freeimage  layer="1"  ]
[eval  exp="f.deamonMagicPoint=f.deamonMagicPoint+50"  ]
L'Arcidemone recupera 50 PM!
[p  ]
[endif  ]
[eval  exp="tf.check=0"  ]
[eval  exp="f.braveEther=f.braveEther-1"  ]
[cm  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_diary
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[freeimage  layer="2"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
Il Prode legge il Diario del Prode!
[p  ]
Muwahahahaha!
[l  ]
[r  ]
Sono il solo e unico, insuperabile Prode!
[p  ]
Il solo che può battere l'Arcidemone!
[l  ]
[r  ]
Devo ammetterlo, devo essere un genio.
[l  ]
[r  ]
Non ho bisogno di noiosi addestramenti o altro.
[p  ]
Ora, senza neanche crescere di livello,
[l  ]
[r  ]
e con solo un altro membro nel party oltre a me,
[l  ]
[r  ]
divelleremo il castello dell'Arcidemone!
[p  ]
Cosa mai può andar storto?
[l  ]
[r  ]
(Firma illeggibile che inizia per P)
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_letter
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
Il Prode legge la lettera del Maestro
[p  ]
Mio caro Prode...
[l  ]
[r  ]
È tuo costume lanciare incantesimi come più ti aggrada,
[l  ]
[r  ]
sprecando in codesta guisa la scorta intera di mana
[p  ]
E ciò mi inquieta assai...
[l  ]
[r  ]
-Lo Maestro Tuo
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_dummy
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
Il Prode legge Mensile del Mago Magico
[p  ]
Include l'Incantesimo del Mese:
[p  ]
FUOCO - Incantesimo del Fuoco (30PM)
[l  ]
[r  ]
TEMPESTA - Incantesimo di Ghiaccio (30 PM)
[l  ]
[r  ]
SCAMBIO - Scambio corpi (30PM)
[p  ]
FUOCO INFERNALE - Fuoco ardente (50 PM)
[l  ]
[r  ]
GELO - Zero assoluto (50 PM)
[p  ]
SALTO TEMPORALE - Viaggio nel tempo (100 PM)
[l  ]
[r  ]
POSSESSIONE - Controlla la mente dell'avversario (100 PM)
[l  ]
[r  ]
SACRO - Incantesimo elementale della luce (100 PM)
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_book
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
Il Prode legge il Libro dello Mastro di Pugna
[p  ]
Li Segreti della Pugna
[l  ]
[r  ]
Codesta è l'universale legge della vittoria:
[p  ]
- Chi Primo colpisce Vince! - 
[l  ]
[r  ]
Attacca lo nemico tuo quando in resta,
[l  ]
[r  ]
e una nuova occasione di agire otterrai.
[p  ]
Giammai non esitare!
[l  ]
[r  ]
Attacca lo nemico avanti ch'egli concluda il favellare suo!
[l  ]
[r  ]
-Lo Maestro Tuo
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*arcenemy_tool
[arcenemy_reset_window  ]
[arcenmy_action_command  ]
[wait  time="50"  ]
[arcenemy_tool_command  ]
[s  ]
*arcenemy_select_tool
[arcenemy_reset_window  ]
[arcenmy_action_command  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="295"  storage="arcenemy/2_battle/2_Window/sub_window.png"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="476"  left="745"  storage="arcenemy/2_battle/9_SelectTool/select_tool_window.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*arcenemy_select_tool2"  x="810"  y="450"  ]
[glink  clickse="02_b_006.ogg"  target="*arcenemy_use"  exp="tf.check=1"  x="750"  y="510"  text="Arcidemone"  ]
[wait  time="50"  ]
[s  ]
*arcenemy_select_tool2
[arcenemy_reset_window  ]
[arcenmy_action_command  ]
[wait  time="50"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="295"  storage="arcenemy/2_battle/2_Window/sub_window.png"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="476"  left="296"  storage="arcenemy/2_battle/9_SelectTool/select_cheage.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*arcenemy_select_tool"  x="330"  y="450"  ]
[glink  clickse="02_b_006.ogg"  name="command1"  text="Prode"  target="*arcenemy_use"  exp="tf.check=2"  x="320"  y="490"  ]
[wait  time="50"  ]
[s  ]
*arcenemy_use
[freeimage  layer="1"  ]
[if  exp="tf.arcenemy_tool==1"  ]
[eval  exp="tf.arcenemy_tool=0"  ]
[jump  target="*arcenemy_leaf"  ]
[elsif  exp="tf.arcenemy_tool==2"  ]
[eval  exp="tf.arcenemy_tool=0"  ]
[jump  target="*arcenemy_ether"  ]
[endif  ]
*arcenemy_leaf
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
L'Arcidemone usa Erba Medicinale
[r  ]
[if  exp="tf.check==1"  ]
Ma i PV dell'Arcidemone sono già al massimo!
[r  ]
[p  ]
[elsif  exp="tf.check==2"  ]
Il Prode recupera 50 PV!
[r  ]
[p  ]
[endif  ]
[eval  exp="tf.check=0"  ]
[cm  ]
[eval  exp="f.daemonLeaf=f.daemonLeaf-1"  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_ether
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
[eval  exp="f.daemonEther=f.daemonEther-1"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
L'Arcidemone usa Etere!
[r  ]
[if  exp="tf.check==1"  ]
[freeimage  layer="3"  ]
[eval  exp="f.deamonMagicPoint=f.deamonMagicPoint+50"  ]
L'Arcidemone recupera 50 PM!
[r  ]
[p  ]
[arcenmy_status  ]
[elsif  exp="tf.check==2"  ]
Il Prode recupera 50 PM!
[r  ]
[p  ]
[eval  exp="f.braveMagicPoint=f.braveMagicPoint+50"  ]
[endif  ]
[eval  exp="tf.check=0"  ]
[cm  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_diary
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
Il segreto della mia debolezza...
[l  ]
[r  ]
È l'incantesimo elementale della luce!
[p  ]
Gli incantesimi elementali della luce possono essere lanciati solo
[l  ]
[r  ]
da colui che ha il corpo e l'anima
[l  ]
[r  ]
di un vero Prode!
[p  ]
Il party del Prode è ancora all'oscuro di ciò,
[l  ]
[r  ]
devo mantenere il riserbo a tutti i costi!
[l  ]
[r  ]
(Firma dell'Arcidemone)
[p  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_letter
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
Oh Signore! Per favore, accetta le nostre scuse!
[l  ]
[r  ]
Noi, le Élite Malevoli, siamo sconfitte.
[p  ]
Il Prode è indubbiamente uno stolto sciocco,
[p  ]
tuttavia il suo compare mago dal nome
[l  ]
[r  ]
<
[emb  exp="f.Player"  ]
>
[l  ]
[r  ]
non va preso alla leggera.
[p  ]
Il mago usa un incantesimo chiamato Possessione
[p  ]
che permette al mago
[l  ]
[r  ]
di impossessarsi delle nostre menti e controllarci.
[p  ]
Persino il nostro potente signore andrebbe in rovina,
[l  ]
[r  ]
una volta sottoposto a questo incantesimo.
[p  ]
Oh Signore, ti imploriamo di prendere precauzioni.
[l  ]
[r  ]
Questo sarà il nostro ultimo servizio in quanto Élite Malevoli
[p  ]
P.S.
[l  ]
[r  ]
Speriamo solo che tu non sia già sotto l'incantesimo
[l  ]
[r  ]
nel momento in cui stai leggen... (si interrompe bruscamente qui)
[p  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_dummy
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
L'Arcidemone legge Vademecum dell'Arcidemone!
[p  ]
Tre Principi Fondamentali dell'Arcidemone
[p  ]
1. Un Arcidemone non Fugge Mai
[l  ]
[r  ]
Non prova neanche a intentare la fuga.
[l  ]
[r  ]
È troppo imbarazzante per un arcidemone.
[p  ]
2. Un Arcidemone è un Vero Amico.
[l  ]
[r  ]
Sei in grado di usare oggetti contro il tuo avversario
[l  ]
[r  ]
tuttavia non potrai usare rivitalizzanti su di lui.
[p  ]
3. Un Arcidemone non Esaurisce Mai PM
[l  ]
[r  ]
Esaurire mana quando in procinto di lanciare un incantesimo
[l  ]
[r  ]
Sarebbe un brutto colpo per la tua dignità.
[p  ]
Assicurati sempre di avere
[l  ]
[r  ]
2 Etere quando intraprendi un combattimento.
[p  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
