tsset pid year

xthenreg aquagr abu if(hic==1),  static endogenous(temp abu)
outreg2 using thresh_pinar.doc
xthenreg aquagr abu if(umic==1),  static endogenous(temp abu)
outreg2 using thresh_pinar.doc
xthenreg aquagr abu if(lmic==1),  static endogenous(temp abu)
outreg2 using thresh_pinar.doc


xthenreg aquagr abu if(hic==1),   endogenous(temp abu)
outreg2 using thresh_pinar.doc
xthenreg aquagr abu if(umic==1),   endogenous(temp abu)
outreg2 using thresh_pinar.doc
xthenreg aquagr abu if(lmic==1),   endogenous(temp abu)
outreg2 using thresh_pinar.doc

xthenreg aquagr abu ,   endogenous(temp abu)
outreg2 using thresh_pinar.doc
xthenreg aquagr abu ,   endogenous(temp abu) static
outreg2 using thresh_pinar.doc

xthenreg aquagr abu if(hic==1),  static endogenous(temp abu) inst(l.temp l.abu)
