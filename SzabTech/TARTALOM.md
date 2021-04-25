# Tartalomjegyzék

> ez a tartalomjegyzék NEM a labor fájlok tartalmát részletezi, 
> hanem a teljes gyakorlat/labor anyagát, emiatt a fájlokban
> esetenként kevesebb jelenik meg.
> Érdemes a hozzá tartozó füzetes képeket is használni.


## 1. Labor
- ismerkedés a MatLab környezettel (nem lett feltöltve)

## 2. Labor - Szabályozási kör analizise
- egyszerű szabályozási körök vizsgálata
- Bode rajzolás
- Nyquist rajzolás
- vizsgáló jelek - step és impulse - ugrásválasz
- pólusok és zérusok - pzmap
- ltiview
- kéttárolós alapjai

## 3. Labor - Szabályozási kör analizise
- soros és párhuzamos kapcsolás
- visszacsatolás
- körerősités, hurokerősités
- hurokátvitel

### Rugóval csillapitott test mozgása
- szakasz megadása
- tipusszám
- ugrásválasz

### Egyszerű hurok vizsgálata a szabályzó állitásával
- integrátor nélkül
- mikor lesz instabil
- pólusok hogy reagálnak a változtatásra

## 4. Labor - Szabályozási kör analizise
### Rugóval csillapitott test mozgása
- tranziensek és pólusok hatása
- domináns pólusok
#### Arányos szabályzók - P
- negativ erősités instabilitása
- nincs integrátor
- K_c hatása a felfutásra és a túllövésre
- gyökhelygörbe
- Nyquist kritérium
- fázismenet
- zárt kör amplitúdómenete
- r -> y átvitel
#### PI - arányos szabályzó integrátorral
- integrátor miatt nincs végértékben hiba
- minreal - PZ párok kiejtése
- beavatkozó jel vizsgálata
- domináns tranziens

## 5. Labor
- vágási frekvencia def
- vágási frekvencia fázisa (argumantuma)

### Példa az előző fogalmakra
- Nyquist diagramon a vágási frekvencia -> egységkör metszés
- Nyquist egyéb elemzése - fázistartalék, W_c argumentuma
- Bode-n amplitúdómeneten a 0dB a vágási frekvencia, ezt vezetjük át a fázismenetre és nézzük a -180 fokhoz képest
#### 'A' változtatása 2-ről 5-re
- vágási frekvencia nagyobb lett
- fel lett fújva a Nyquist diagram
- kisebb fázistartalék
- felfutási idő gyorsabb
- túllövés megnőtt
- később áll be

#### 'A' változtatása 25-re
- Nyquist -2 -szer veszi körbe az '1' -et nulla helyett, ez gond -> előjel is számit !!!
- Nem lesz stabil
- fázistartalék negativ -> nem lesz stabil
- Bode kritérium vizsgálata

### Példa a törésponti frekvenciák elemzésére
- ábra elkészitése - papiron
- miket hanyagolhatunk el? - papiron
- zérus és pólus hatása Bode-n -> zérus +20 dB/dek, pólus -20dB/dek (ahány db ez v az annyiszor)
- 'i' db integrátor hatása -> annyiszor -20 dB/dek a kezdeti meredekség
- 'atan' vizsgálata (tudni kell, hogy monoton nő)

### Példa 2 integrátorral
- -40 dB/dek kezdődik
- stabilitás vizsgálata

### Példa 0 dB/dek kezdővel
- elhanyagolhatások a törések keresésénél

## 6. Labor - Soros kompenzátor tervezés
### PID alapok
- arányos -> kis hibára kicsi, nagy hibára nagy beavatkozó jel
- integrátor -> hiba múltbéli értékei
- deriváló -> aktuális érték változása - "jövőbeli" érték
- miért kell közelitő D - realizálás, nem lenne kauzális, végtelen ugrással nyitna

### P feladat
- lehet maradó hiba - e_végtelen
- felnyitott kör erősitése
- fázistartalék és beállási idő vizsgálata
- hatásvázlat beavatkozó jel vizsgálatához
- MINDIG a beavatkazó jel KEZDETI értéke a legnagyobb P szab. esetén
- P szabályzó esetén A_p -be nem szól bele a T_1 T_2 ...

### PI feladat - fázistartalékra
- I eltűnteti a maradó hibát
- fázistartalékra tervezünk
- -90 foktól indul a fázismenet -> -180-hoz közel kezdünk
- 2db integrátor esetén rögtön -180 fokon kezdünk
- zérust és pólust hozunk be
- domináns pólus kiejtése -> nagyobb vágási frekvencia
- A_p és T_i meghatározása ezeknek megfelelően
- Vágási frekvencia -> ahol abs() = 1
- margin(W_o) -> Fázistartalékos Bode

#### Megfigyeléseink
- vágási frekvecnia kisebb
- fázistartalék nőtt (jó) - de erre terveztünk!!
- túllövés kisebb (jó)
- beállási idő nőtt (rossz)
- beavatkozási jel maximuma csökkent (jó)
- nincs maradandó hiba (jó)

### PD feladat - fázistartalékra
- nincs benne integrátor, tehát a fázismenetet P-hez képest nem rontja
- Nincs I -> tipusszám 0 marad
- MÁSODIK leglassabb pólust ejtjük ki (ha nincs integrátor)
- Bode elemzése

#### Megfigyeléseink
- kisebb túllövés
- nagyobb beavatkozó jelek (NAGYSÁGRENDEKKEL)
- vágási frekvencia nőtt
- fázistartalék nőtt ( de alapból erre oldottuk meg!!)

### PD feladat nem fázistartalékra, hanem MAX bevatkozási jelre
- lassabb lesz emiatt

## 7. Labor - Soros kompenzátorok
### Holtidő szerepe
- exp(-s * T_h)
### Példa holtidőre
- OutputDelay felvitele és vizsgálata
- integrátor miatt a leglassabb T-t ejtjük ki
- könnyebben lesz instabil a holtidő miatt

### PID példa 
- A_p, T_i, T_d, T_c, W_c meghatározása 5 db egyenletből
- PZ kiejtés
- Nem lineáris egyenletrendszert kapunk, emiatt Matlabra hagyatkozunk
- Kezdeti értéket keresünk T_c -re és A_p -re
- fsolve() használata
- A holtidő a fázistartalékot befolyásolná

### Megvalósitás
#### ZOH - Zero Order Hold DAC
- kitartja az értéket a következő mintavételig
- rosszabb lesz a fázismenet

#### Szabályozás algoritmusának meghatározása
- Nyquist frekvencia def.

## 8. Labor - DAC és ADC, diszkrét időben tervezés
- általános szabályozó struktúra
- ZOH

### Tervezés diszkrét időben
- mi igaz pólusokra és zérusokra áttéréskor?
- integrátor hogy néz ki diszkrét időben?
- egységkör diszkrét számsikon
- PACMAN
- mely pólusok a gyorsabbak diszkrét időben (-> 0)

### Példa - diszkrét 
- stabilitás vizsgálata
- Matlab miért növel fokszámot?
- model alapú tervezés
- r_K -> ... -> y_k
- T(z), S(z) és R(z) meghatározása
- domináns póluspár
- gyors valós pólus
- zártkör átvitele
- Hova kerül az integrátor? - > R-be
- B -> szakasz zérusai
- Bminus és Bplus meghatározása

### Simulink - 2DOF, két szabadságfokú model

## 9. Labor - 2DOF, két szabadságfokú szabályzó tervezése / méretezése
- miért 2DOF? 
- előrecsatoló átvitel
- visszacsatoló átvitel
- RST polinomok
- modelalkotás
- diszkrét zártkörű átvitel
- 'B' faktorizálása

### Példa B(z) megadásával
- mi kiejthető?
- mi nem kiejthető?
- megfigyelő polinom ( A_o )
- Bm ' meghatározása
- végtelenben a kimenet 1 legyen lehetőleg
- ugrásválasz végértéke
- fokszám feltételek
- csúnya nagy gonosz mátrix, amit senki sem ért igazán, de legalább elvileg számolható

### 2017-es minta vizsga feladata
W(s) adott, T_s adott, csillapitás adott, W_o adott

#### D, Bminus és Bplus meghatározása
Nulladrendű tartószerv, B monik, integrátor kell

#### A_m, A_o, S és R'_ 1 egyenleteinek meghatározása
Fokszámok adottak egymáshoz képest
> marad 4 db ismeretlen

#### A_m(z) és A_o(z) specifikáció segitségével

#### B' _ m meghatározása
> csúnya gonosz mátrix magyarázása itt kerül elő

- hogyan érdemes megadni az eredményeket?
- minden maradék ismeretlen meghatározása

## 10. Labor - Dead beat -  véges beállású szabályozó
### FIR
- final input response
- origóban vannak a pólusai
- D(z) sablon FIR esetén
- z^-1 plinomja -> FIR
- véges lépés után beáll
- D_cl meghatározása
- D_ur meghatározása
- U_max feltétel

### Példa a szokásos W-vel
- T_s megválasztása
- T_s költség függvénye

### Simulink tervezés

### Állapotteres módszer
- x pont és y
- sajátértékek
- pólusok és s.é. kapcsolata
- NEM egyértelmű megvalósitás
- Látjuk, hogy a sajátértékeke megegyeznek a pólusokkal

