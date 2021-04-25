# Tartalomjegyzék
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
