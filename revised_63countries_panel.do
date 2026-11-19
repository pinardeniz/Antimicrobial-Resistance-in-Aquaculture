tsset pid pyear

*descriptive stats
summarize aquagr abu temp rq if(hic==1)
summarize aquagr abu temp rq if(umic==1)
summarize aquagr abu temp rq if(lmic==1)

*cross sectional averages over time
bysort pyear: summarize abu
bysort pyear: summarize aquagr
bysort pyear: summarize temp
bysort pyear: summarize rq

*replication for 63  countries - FE using ABU - lagged model
gen abu2= abu^2

gen abu_hic= abu*hic
gen abu_lmic= abu*lmic
gen abu_umic= abu*umic
gen abu_mic= abu*mic

* FE MODEL
xtreg aquagr temp abu, fe
outreg2 using sonuc.doc
xtreg aquagr temp abu abu_hic , fe
outreg2 using sonuc.doc
xtreg aquagr temp abu abu_umic , fe
outreg2 using sonuc.doc
xtreg aquagr temp abu abu_lmic , fe
outreg2 using sonuc.doc
xtreg aquagr temp abu abu_mic , fe
outreg2 using sonuc.doc

xtreg aquagr temp abu abu2, fe
outreg2 using sonuc.doc
xtreg aquagr temp abu abu2 abu_hic , fe
outreg2 using sonuc.doc
xtreg aquagr temp abu abu2 abu_umic , fe
outreg2 using sonuc.doc
xtreg aquagr temp abu abu2 abu_lmic , fe
outreg2 using sonuc.doc
xtreg aquagr temp abu abu2 abu_mic , fe
outreg2 using sonuc.doc

* FE MODEL (lag 2)
xtreg aquagr l.temp l.abu, fe
outreg2 using l.sonuc.doc
xtreg aquagr l.temp l.abu l.abu_hic , fe
outreg2 using l.sonuc.doc
xtreg aquagr l.temp l.abu l.abu_umic , fe
outreg2 using l.sonuc.doc
xtreg aquagr l.temp l.abu l.abu_lmic , fe
outreg2 using l.sonuc.doc
xtreg aquagr l.temp l.abu l.abu_mic , fe
outreg2 using l.sonuc.doc
xtreg aquagr l.temp l.abu l.abu2, fe
outreg2 using l.sonuc.doc
xtreg aquagr l.temp l.abu l.abu2 l.abu_hic , fe
outreg2 using l.sonuc.doc
xtreg aquagr l.temp l.abu l.abu2 l.abu_umic , fe
outreg2 using l.sonuc.doc
xtreg aquagr l.temp l.abu l.abu2 l.abu_lmic , fe
outreg2 using l.sonuc.doc
xtreg aquagr l.temp l.abu l.abu2 l.abu_mic , fe
outreg2 using l.sonuc.doc



* HANSEN (1999) FE THRESHOLD
xthreg aquagr temp, rx(abu) qx(abu) thnum(1) grid(500) trim(0.1) bs(1000)
outreg2 using sonuc1.doc
xthreg aquagr temp if(hic==1), rx(abu) qx(abu) thnum(1) grid(500) trim(0.1) bs(1000)
outreg2 using sonuc1.doc
xthreg aquagr temp if(umic==1), rx(abu) qx(abu) thnum(1) grid(500) trim(0.25) bs(1000)
outreg2 using sonuc1.doc
xthreg aquagr temp if(lmic==1), rx(abu) qx(abu) thnum(1) grid(500) trim(0.3) bs(1000)
outreg2 using sonuc1.doc
xthreg aquagr temp if(mic==1), rx(abu) qx(abu) thnum(1) grid(500) trim(0.3) bs(1000)
outreg2 using sonuc1.doc

* SEO AND SHIN (2016) -  panel threshold (controlling for endogeneity of abu)
xthenreg aquagr abu,  static endogenous(abu) boost(500)
outreg2 using sonuc2.doc
xthenreg aquagr abu if(hic==1),  static endogenous(abu) boost(500)
outreg2 using sonuc2.doc
xthenreg aquagr abu if(umic==1),  static endogenous(abu) boost(500)
outreg2 using sonuc2.doc
xthenreg aquagr abu if(lmic==1),  static endogenous(abu) boost(500)
outreg2 using sonuc2.doc
xthenreg aquagr abu if(mic==1),  static endogenous(abu) boost(500)
outreg2 using sonuc2.doc


* SEO AND SHIN (2016) - panel threshold using RQ as the threshold variable
xthenreg aquagr rq, endogenous(abu) static 
outreg2 using sonuc_rq.doc
xthenreg aquagr rq temp, endogenous(abu) static
outreg2 using sonuc_rq.doc
xthenreg aquagr rq, endogenous(abu)
outreg2 using sonuc_rq.doc
xthenreg aquagr rq temp, endogenous(abu)
outreg2 using sonuc_rq.doc

xthenreg aquagr rq, endogenous(abu) static boost(500)
outreg2 using sonuc2_rq.doc
xthenreg aquagr rq temp, endogenous(abu) static boost(500)
outreg2 using sonuc2_rq.doc
xthenreg aquagr rq, endogenous(abu) boost(500)
outreg2 using sonuc2_rq.doc
xthenreg aquagr rq temp, endogenous(abu) boost(500)
outreg2 using sonuc2_rq.doc
