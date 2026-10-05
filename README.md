AquaGR is the annual growth of aquaculture production (metric tons) from World Bank database.

ABU refers to antibiotic use, which is originally from IQVIA MIDAS data-base. We collect the data from the study of Klein et al. (2024), which is openly available in their supporting file . Following the formula from World Health Organization (WHO) for the total use of antibiotics expressed as DDD per 1000 inhabitants per day, we divide the total antibiotic use data of Klein et al. (2024) by relevant population collected from World Bank database and by 365 (number of days in a year) and multiply with 1000 to get DDD per 1000 inhabitants per day.

TEMP is average maximum surface air temperature from Climate Change Knowledge Portal of the World Bank.

Dataset: The dataset covers 2016-2023. 

Methodology:

untitled.wf1 file runs FE model

mapping_new.R file plots mapping

Seo_et_al_2016_threshold.do file runs threshold regression model.

---------------------
World Health Organization - GLASS Data Visualization Dashboard - Global AMR data - Resistance to antibiotics in the selected calendar year
Bloodstream is used as the infection type due to larger data availability and for each country and year (2020-2023), Resistance Percentage is averaged across all antibiotics for each bacterial pathogen. Zero values are removed. Countries which are not available for each year are also omitted to ensure a balanced dataset.

Data availability for each bacterial pathogen type:
Acinetobacter spp.: 54 countries
Escherichia coli: 64 countries
Klebsiella pneumoniae: 65 countries
Salmonella spp.: 26 countries
Streptococcus pneumoniae: 29 countries

Afterwards, we average Resistance Percentages across Bacterial pathogens (Acinetobacter spp., Escherichia coli, Klebsiella pneumoniae, Salmonella spp., Streptococcus pneumoniae) for each year. We end up 70 countries (with ISO3 codes: ARE, ARG, AUS, AUT, BEL, BFA, BGD, BHR, BIH, BRA, BRN, CHE, CYP, CZE, DEU, DNK, ETH, FIN, FRA, GBR, GEO, GHA, GRC, HRV, IDN, IND, IRL, IRN, IRQ, ITA, JOR, JPN, KOR, KWT, LAO, LBN, LKA, LTU, LUX, LVA, MDA, MKD, MLI, MLT, MMR, MOZ, MUS, NGA, NLD, NOR, NPL, OMN, PAK, PER, PHL, POL, QAT, RUS, SAU, SGP, SWE, THA, TLS, TUN, TZA, UGA, UKR, XKX, ZAF, ZMB)


