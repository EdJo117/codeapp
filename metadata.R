df = data.frame(name = NA, id = NA, perimetre = NA)

# ES

df[nrow(df)+1,] = c("Produit interieur brut","es.td.b1g_7ch_ind","ES") 
df[nrow(df)+1,] = c("Consommation privee","es.td.p3_s145_7ch_ind","ES")
df[nrow(df)+1,] = c("Investissement","es.td.p51g_7ch_ind","ES")
df[nrow(df)+1,] = c("Consommation publique","es.td.p3_s13_7ch_ind","ES")
df[nrow(df)+1,] = c("Exportations","es.td.p6_7ch_ind","ES")
df[nrow(df)+1,] = c("Importations","es.td.p7_7ch_ind","ES")
df[nrow(df)+1,] = c("Demande interieure hors stocks","es.di.contrib","ES")
df[nrow(df)+1,] = c("Variation de stocks","es.stocks.contrib","ES")
df[nrow(df)+1,] = c("Commerce exterieur","es.comext.contrib","ES")
df[nrow(df)+1,] = c("Investissement en construction","es.td.p51g_n11kg_7ch_ind","ES")
df[nrow(df)+1,] = c("Investissement en equipement","es.td.p51g_n11mg_7ch_ind","ES")
df[nrow(df)+1,] = c("RDB","es.td.b6g_s145_3","ES")
df[nrow(df)+1,] = c("Emploi salarie","es.td.Emploi_sal_3","ES")
df[nrow(df)+1,] = c("Salaires","es.smpt","ES")
df[nrow(df)+1,] = c("Salaires reels","es.smpt_7ch","ES")
df[nrow(df)+1,] = c("Taux d'activite","es.tx_act","ES")
df[nrow(df)+1,] = c("Population active","es.td.pop_act_3","ES")
df[nrow(df)+1,] = c("Emploi total","es.td.Emploi_3","ES")
df[nrow(df)+1,] = c("Taux de chomage","es.td.tx_chomage_pe","ES")
df[nrow(df)+1,] = c("Inflation energetique","es.td.ipch_nrj","ES")
df[nrow(df)+1,] = c("Inflation alimentaire","es.td.ipch_alim","ES")
df[nrow(df)+1,] = c("Inflation sous-jacente","es.td.ipch_sj","ES")
df[nrow(df)+1,] = c("Inflation totale","es.td.ipch_tot","ES")
df[nrow(df)+1,] = c("Deflateur de la consommation","es.td.p3_s145_9","ES")
df[nrow(df)+1,] = c("Taux d'epargne","es.tx_ep","ES")
df[nrow(df)+1,] = c("Pouvoir d'achat","es.td.b6g_s145_7","ES")

# AL

df[nrow(df)+1,] = c("Produit interieur brut","al.pib","AL")
df[nrow(df)+1,] = c("Consommation privee","al.conso","AL")
df[nrow(df)+1,] = c("Investissement","al.fbcf","AL")
df[nrow(df)+1,] = c("Consommation publique","al.consopub","AL")
df[nrow(df)+1,] = c("Exportations","al.export","AL")
df[nrow(df)+1,] = c("Importations","al.import","AL")
df[nrow(df)+1,] = c("Demande interieure hors stocks","al.di.contrib","AL")
df[nrow(df)+1,] = c("Variation de stocks","al.stocks.contrib","AL")
df[nrow(df)+1,] = c("Commerce exterieur","al.comext.contrib","AL")
df[nrow(df)+1,] = c("Investissement en construction","al.fbcfcons","AL")
df[nrow(df)+1,] = c("Investissement en equipement","al.fbcfeq","AL")
df[nrow(df)+1,] = c("Investissement autre","al.fbcfautre","AL")
df[nrow(df)+1,] = c("RDB","al.rdb_insee","AL")
df[nrow(df)+1,] = c("Emploi salarie","al.Emploi_sal","AL")
df[nrow(df)+1,] = c("Salaires","al.smpt","AL")
df[nrow(df)+1,] = c("Taux d'activite","al.tauxctivite","AL")
df[nrow(df)+1,] = c("Population active","al.popact","AL")
df[nrow(df)+1,] = c("Emploi total","al.Emploi_total","AL")
df[nrow(df)+1,] = c("Taux de chomage","al.tx_u_cnt","AL")
df[nrow(df)+1,] = c("Inflation energetique","al.ipch_energie_t","AL")
df[nrow(df)+1,] = c("Inflation alimentaire","al.ipchlim_t","AL")
df[nrow(df)+1,] = c("Inflation sous-jacente","al.ipch_sj_t","AL")
df[nrow(df)+1,] = c("Inflation totale","al.ipch_t","AL")
df[nrow(df)+1,] = c("Deflateur de la consommation","al.def_conso","AL")
df[nrow(df)+1,] = c("Pouvoir d'achat","al.pvrchat","AL")
df[nrow(df)+1,] = c("Taux d'epargne","al.tx_s_maison_b","AL")

# BNL

df[nrow(df)+1,] = c("PIB belge","benl.pib_vol_be","BENL")
df[nrow(df)+1,] = c("Importations belges","benl.import_vol_be","BENL")
df[nrow(df)+1,] = c("Exportations belges","benl.export_vol_be","BENL")
df[nrow(df)+1,] = c("PIB NL","benl.pib_vol_nl","BENL")
df[nrow(df)+1,] = c("Importations NL","benl.import_vol_nl","BENL")
df[nrow(df)+1,] = c("Exportations NL","benl.export_vol_nl","BENL")

# CN

df[nrow(df)+1,] = c("PIB Insee","cn.pib_cn","CN")
df[nrow(df)+1,] = c("PIB officiel","cn.pib_nbsc","CN")
df[nrow(df)+1,] = c("Exportations","cn.exp_cn","CN")
df[nrow(df)+1,] = c("Importations","cn.imp_cn","CN")

# Comext

df[nrow(df)+1,] = c("Exportations","p6_d_7ch","COMEXT")
df[nrow(df)+1,] = c("dont Produits manufactures","p6_dim_7ch","COMEXT")
df[nrow(df)+1,] = c("Importations","p7_d_7ch","COMEXT")
df[nrow(df)+1,] = c("dont Produits manufactures","p7_dim_7ch","COMEXT")
df[nrow(df)+1,] = c("Contribution du commerce exterieur","c.solde_d_7ch","COMEXT")

# Conso

df[nrow(df)+1,] = c("Investissement des menages","p51m_d_7ch","CONSO")
df[nrow(df)+1,] = c("Produits agricoles","p3m_az_7ch","CONSO")
df[nrow(df)+1,] = c("Produits manufactures","p3m_dim_7ch","CONSO")
df[nrow(df)+1,] = c("Energie, eau, dechets","p3m_de_7ch","CONSO")
df[nrow(df)+1,] = c("Commerce","p3m_gz_7ch","CONSO")
df[nrow(df)+1,] = c("Services marchands hors commerce","p3m_dsmhc_7ch","CONSO")
df[nrow(df)+1,] = c("Services non marchands","p3m_oq_7ch","CONSO")
df[nrow(df)+1,] = c("Correction territoriale","p41_pchtr_7ch","CONSO")
df[nrow(df)+1,] = c("Depenses totales de consommation des menages","p3m_d_7ch","CONSO")
df[nrow(df)+1,] = c("Consommation effective totale des menages","p41_d_7ch","CONSO")

# DM

df[nrow(df)+1,] = c("Commerce mondial","dm_monde","DM")
df[nrow(df)+1,] = c("Importations des economies avancees","m_av","DM")
df[nrow(df)+1,] = c("Importations des economies emergentes","m_em","DM")
df[nrow(df)+1,] = c("Demande mondiale adressee a la France","dm_france","DM")
df[nrow(df)+1,] = c("Demande mondiale adressee a la zone euro","dm_zone_euro","DM")
df[nrow(df)+1,] = c("Demande mondiale adressee a l'Allemagne","dm_allemagne","DM")
df[nrow(df)+1,] = c("Demande mondiale adressee a l'Italie","dm_italie","DM")
df[nrow(df)+1,] = c("Demande mondiale adressee a l'ES","dm_ES","DM")
df[nrow(df)+1,] = c("Demande mondiale adressee aux US","dm_etats_unis","DM")
df[nrow(df)+1,] = c("Demande mondiale adressee au Royaume-Uni","dm_royaume_uni","DM")
df[nrow(df)+1,] = c("Demande mondiale adressee au Japon","dm_japon","DM")

# EM

df[nrow(df)+1,] = c("PIB russe","em.rs_gdp","EM")
df[nrow(df)+1,] = c("Importations russes","em.rs_m","EM")
df[nrow(df)+1,] = c("PIB indien","em.in_gdp_cvs","EM")
df[nrow(df)+1,] = c("Importations indiennes","em.in_m_cvs","EM")
df[nrow(df)+1,] = c("PIB bresilien","em.br_gdp","EM")
df[nrow(df)+1,] = c("Importations bresiliennes","em.br_m","EM")
df[nrow(df)+1,] = c("PIB turc","em.tk_gdp_indice","EM")
df[nrow(df)+1,] = c("Importations turques","em.tk_m_indice","EM")
df[nrow(df)+1,] = c("PIB PECO","em.peco_gdp","EM")

# Emploi

df[nrow(df)+1,] = c("Emploi salarie SMNA","gf.emps_smna_1","EMPL")
df[nrow(df)+1,] = c("SMPT reel SMNA","gf.smptr_smna_3","EMPL")
df[nrow(df)+1,] = c("SMPT SMNA","gf.smpt_smna_3","EMPL")
df[nrow(df)+1,] = c("SMPT APU","gf.smpt_s13_3","EMPL")
df[nrow(df)+1,] = c("Productivite SMNA","gf.productiv_smna","EMPL")
df[nrow(df)+1,] = c("Masse salariale SMNA","gf.d11_smna_3","EMPL")

# FI

df[nrow(df)+1,] = c("Dollar en euro","usdeur","FI")
df[nrow(df)+1,] = c("Livre sterling en euro","gbpeur","FI")
df[nrow(df)+1,] = c("Yen en euro","jpyeur","FI")

# FITaux

df[nrow(df)+1,] = c("Taux francais 10 ans","fitaux.fr_gov10y","FItaux")
df[nrow(df)+1,] = c("Taux allemand 10 ans","fitaux.de_gov10y","FItaux")
df[nrow(df)+1,] = c("Taux italien 10 ans","fitaux.it_gov10y","FItaux")
df[nrow(df)+1,] = c("Taux espagnol 10 ans","fitaux.es_gov10y","FItaux")
df[nrow(df)+1,] = c("Taux neerlandais 10 ans","fitaux.nl_gov10y","FItaux")

# INV

df[nrow(df)+1,] = c("Produits manufactures","p51s_dim_7ch","INV")
df[nrow(df)+1,] = c("Construction","p51s_fz_7ch","INV")
df[nrow(df)+1,] = c("Autres","p51s_dsm_7ch","INV")
df[nrow(df)+1,] = c("Total","p51s_d_7ch","INV")

# IT

df[nrow(df)+1,] = c("Produit interieur brut","it.td.b1g_s1_7ch","IT")
df[nrow(df)+1,] = c("Consommation privee","it.td.p3_s145_7ch","IT")
df[nrow(df)+1,] = c("Investissement","it.td.p51g_7ch","IT")
df[nrow(df)+1,] = c("Consommation publique","it.td.p3_s13_7ch","IT")
df[nrow(df)+1,] = c("Exportations","it.td.p6_7ch","IT")
df[nrow(df)+1,] = c("Importations","it.td.p7_7ch","IT")
df[nrow(df)+1,] = c("Demande interieure hors stocks","it.di.contrib","IT")
df[nrow(df)+1,] = c("Variation de stocks","it.stocks.contrib","IT")
df[nrow(df)+1,] = c("Commerce exterieur","it.comext.contrib","IT")
df[nrow(df)+1,] = c("Investissement en construction","it.td.p51g_n11kg_7ch","IT")
df[nrow(df)+1,] = c("Investissement en equipement","it.td.p51g_n11mg_7ch","IT")
df[nrow(df)+1,] = c("Investissement autre","it.td.p51g_n1157g_7ch","IT")
df[nrow(df)+1,] = c("RDB Insee","it.td.rdb_insee_3","IT")
df[nrow(df)+1,] = c("Emploi salarie","it.td.Emploi_sal_3","IT")
df[nrow(df)+1,] = c("Salaires","it.td.smpt_3","IT")
df[nrow(df)+1,] = c("Salaires reels","it.td.smpt_7ch","IT")
df[nrow(df)+1,] = c("Taux d'activite","it.td.tx_act","IT")
df[nrow(df)+1,] = c("Population active","it.td.pop_act_3","IT")
df[nrow(df)+1,] = c("Emploi total","it.td.Emploi_3","IT")
df[nrow(df)+1,] = c("Taux de chomage","it.td.tx_chomage","IT")
df[nrow(df)+1,] = c("Inflation energetique","it.td.ipch_nrj_bis","IT")
df[nrow(df)+1,] = c("Inflation alimentaire","it.td.ipch_alim_hors_drogue","IT")
df[nrow(df)+1,] = c("Inflation sous-jacente","it.td.ipch_sj","IT")
df[nrow(df)+1,] = c("Inflation totale","it.td.ipch_tot","IT")
df[nrow(df)+1,] = c("Deflateur de la consommation","it.td.p3_s145_9","IT")
df[nrow(df)+1,] = c("Taux d'epargne","it.td.tx_epargne","IT")
df[nrow(df)+1,] = c("Pouvoir d'achat","it.td.rdb_insee_7","IT")

# JP

df[nrow(df)+1,] = c("Produit interieur brut","jp.pib","JP")
df[nrow(df)+1,] = c("Consommation privee","jp.conso","JP")
df[nrow(df)+1,] = c("Investissement","jp.inv","JP")
df[nrow(df)+1,] = c("Consommation publique","jp.conso_pu","JP")
df[nrow(df)+1,] = c("Exportations","jp.exp_trim","JP")
df[nrow(df)+1,] = c("Importations","jp.imp","JP")
df[nrow(df)+1,] = c("Demande interieure hors stocks","jp.di.contrib","JP")
df[nrow(df)+1,] = c("Variation de stocks","jp.stocks.contrib","JP")
df[nrow(df)+1,] = c("Commerce exterieur","jp.comext.contrib","JP")
df[nrow(df)+1,] = c("Investissement public","jp.inv_pu","JP")
df[nrow(df)+1,] = c("Investissement prive des menages","jp.inv_priv_l","JP")
df[nrow(df)+1,] = c("Investissement des entreprises","jp.inv_priv_hl","JP")
df[nrow(df)+1,] = c("RDB","jp.rdb_v_sa","JP")
df[nrow(df)+1,] = c("Emploi salarie","jp.emp_salarie_q","JP")
df[nrow(df)+1,] = c("Salaires nominaux","jp.smpt_q","JP")
df[nrow(df)+1,] = c("Population active","jp.popactive_q","JP")
df[nrow(df)+1,] = c("Emploi total","jp.emp","JP")
df[nrow(df)+1,] = c("Taux de chomage","jp.u","JP")
df[nrow(df)+1,] = c("Inflation energetique","jp.ipc_energ","JP")
df[nrow(df)+1,] = c("Inflation alimentaire","jp.ipc_alim","JP")
df[nrow(df)+1,] = c("Inflation sous-jacente","jp.ipc_sj","JP")
df[nrow(df)+1,] = c("Inflation totale","jp.ipc","JP")
df[nrow(df)+1,] = c("Deflateur de la consommation","jp.defconso","JP")
df[nrow(df)+1,] = c("Taux d'epargne","jp.tx_ep","JP")
df[nrow(df)+1,] = c("Pouvoir d'achat","jp.rdb_r","JP")

# Oil

df[nrow(df)+1,] = c("Brent en dollar","brent_m","OIL")

# PIBFr

df[nrow(df)+1,] = c("Produit interieur brut","pib_7ch","PIBFR")
df[nrow(df)+1,] = c("Consommation privee","p3m_d_7ch","PIBFR")
df[nrow(df)+1,] = c("Investissement","p51_d_7ch","PIBFR")
df[nrow(df)+1,] = c("Consommation publique","p3pg_d_7ch","PIBFR")
df[nrow(df)+1,] = c("Exportations","p6_d_7ch","PIBFR")
df[nrow(df)+1,] = c("Importations","p7_d_7ch","PIBFR")
df[nrow(df)+1,] = c("Demande interieure hors stocks","c.dintfhs_d_7ch","PIBFR")
df[nrow(df)+1,] = c("Variations de stocks","c.p54_d_7ch","PIBFR")
df[nrow(df)+1,] = c("Commerce exterieur","c.solde_d_7ch","PIBFR")
df[nrow(df)+1,] = c("Investissement des ENF","p51s_d_7ch","PIBFR")
df[nrow(df)+1,] = c("Investissement des menages","p51m_d_7ch","PIBFR")
df[nrow(df)+1,] = c("Investissement des APU","p51g_d_7ch","PIBFR")

# Prod

df[nrow(df)+1,] = c("Agriculture","p1e_az_7ch","PROD")
df[nrow(df)+1,] = c("Branches manufacturieres","p1e_dim_7ch","PROD")
df[nrow(df)+1,] = c("Energie, eau, dechets","p1e_de_7ch","PROD")
df[nrow(df)+1,] = c("Construction","p1e_fz_7ch","PROD")
df[nrow(df)+1,] = c("Commerce","p1e_gz_7ch","PROD")
df[nrow(df)+1,] = c("Services marchands hors commerce","p1e_dsmhc_7ch","PROD")
df[nrow(df)+1,] = c("Services non marchands","p1e_oq_7ch","PROD")
df[nrow(df)+1,] = c("Total","p1e_d_7ch","PROD")

# Rev

df[nrow(df)+1,] = c("Revenu disponible brut (RDB)","b6_s14_3","REV")
df[nrow(df)+1,] = c("Masse salariale brute","d11_s14r_3","REV")
df[nrow(df)+1,] = c("EBE des entrepreneurs individuels","b2_s14a_3","REV")
df[nrow(df)+1,] = c("Prestations sociales en espece","d62_s14r_3","REV")
df[nrow(df)+1,] = c("EBE des menages purs","b2_s14b_3","REV")
df[nrow(df)+1,] = c("Revenus de la propriete","d4_s14s_3","REV")
df[nrow(df)+1,] = c("Cotisations des menages","d613z_s14e_3","REV")
df[nrow(df)+1,] = c("Impots sur le revenu et le patrimoine","d5_s14e_3","REV")
df[nrow(df)+1,] = c("Prix de la consommation des menages","p3m_d_9ch","REV")
df[nrow(df)+1,] = c("Pouvoir d'achat du RDB","pardb_men","REV")

# Syn

df[nrow(df)+1,] = c("PIB des economies avancees","syn.pib_ea","SYN")
df[nrow(df)+1,] = c("Produit intérieur brut","syn.ze.pib","SYN")
df[nrow(df)+1,] = c("Consommation privée","syn.ze.conso","SYN")
df[nrow(df)+1,] = c("Investissement","syn.ze.fbcf","SYN")
df[nrow(df)+1,] = c("Consommation publique","syn.ze.conso_pub","SYN")
df[nrow(df)+1,] = c("Exportations","syn.ze.export","SYN")
df[nrow(df)+1,] = c("Importations","syn.ze.import","SYN")
df[nrow(df)+1,] = c("Demande intérieure hors stocks","syn.ze.di.contrib","SYN")
df[nrow(df)+1,] = c("Variation de stocks","syn.ze.stocks.contrib","SYN")
df[nrow(df)+1,] = c("Commerce extérieur","syn.ze.comext.contrib","SYN")
df[nrow(df)+1,] = c("Produit intérieur brut","syn.fr.gfou.fr.pib","SYN")
df[nrow(df)+1,] = c("Consommation privée","syn.fr.gfou.fr.conso","SYN")
df[nrow(df)+1,] = c("Investissement","syn.fr.gfou.fr.fbcf","SYN")
df[nrow(df)+1,] = c("Consommation publique","syn.fr.gfou.fr.conso_s13s15","SYN")
df[nrow(df)+1,] = c("Exportations","syn.fr.gfou.fr.export","SYN")
df[nrow(df)+1,] = c("Importations","syn.fr.gfou.fr.import","SYN")
df[nrow(df)+1,] = c("Demande intérieure hors stocks","syn.fr.di.contrib","SYN")
df[nrow(df)+1,] = c("Variation de stocks","syn.fr.stocks.contrib","SYN")
df[nrow(df)+1,] = c("Commerce extérieur","syn.fr.comext.contrib","SYN")
df[nrow(df)+1,] = c("Produit intérieur brut","syn.al.pib","SYN")
df[nrow(df)+1,] = c("Consommation privée","syn.al.conso","SYN")
df[nrow(df)+1,] = c("Investissement","syn.al.fbcf","SYN")
df[nrow(df)+1,] = c("Consommation publique","syn.al.consopub","SYN")
df[nrow(df)+1,] = c("Exportations","syn.al.export","SYN")
df[nrow(df)+1,] = c("Importations","syn.al.import","SYN")
df[nrow(df)+1,] = c("Demande intérieure hors stocks","syn.al.di.contrib","SYN")
df[nrow(df)+1,] = c("Variation de stocks","syn.al.stocks.contrib","SYN")
df[nrow(df)+1,] = c("Commerce extérieur","syn.al.comext.contrib","SYN")
df[nrow(df)+1,] = c("Produit intérieur brut","syn.it.td.b1g_s1_7ch","SYN")
df[nrow(df)+1,] = c("Consommation privée","syn.it.td.p3_s145_7ch","SYN")
df[nrow(df)+1,] = c("Investissement","syn.it.td.p51g_7ch","SYN")
df[nrow(df)+1,] = c("Consommation publique","syn.it.td.p3_s13_7ch","SYN")
df[nrow(df)+1,] = c("Exportations","syn.it.td.p6_7ch","SYN")
df[nrow(df)+1,] = c("Importations","syn.it.td.p7_7ch","SYN")
df[nrow(df)+1,] = c("Demande intérieure hors stocks","syn.it.di.contrib","SYN")
df[nrow(df)+1,] = c("Variation de stocks","syn.it.stocks.contrib","SYN")
df[nrow(df)+1,] = c("Commerce extérieur","syn.it.comext.contrib","SYN")
df[nrow(df)+1,] = c("Produit intérieur brut","syn.es.td.b1g_7ch_ind","SYN")
df[nrow(df)+1,] = c("Consommation privée","syn.es.td.p3_s145_7ch_ind","SYN")
df[nrow(df)+1,] = c("Investissement","syn.es.td.p51g_7ch_ind","SYN")
df[nrow(df)+1,] = c("Consommation publique","syn.es.td.p3_s13_7ch_ind","SYN")
df[nrow(df)+1,] = c("Exportations","syn.es.td.p6_7ch_ind","SYN")
df[nrow(df)+1,] = c("Importations","syn.es.td.p7_7ch_ind","SYN")
df[nrow(df)+1,] = c("Demande intérieure hors stocks","syn.es.di.contrib","SYN")
df[nrow(df)+1,] = c("Variation de stocks","syn.es.stocks.contrib","SYN")
df[nrow(df)+1,] = c("Commerce extérieur","syn.es.comext.contrib","SYN")
df[nrow(df)+1,] = c("Produit interieur brut","syn.us.pib","SYN")
df[nrow(df)+1,] = c("Consommation privee","syn.us.conso","SYN")
df[nrow(df)+1,] = c("Investissement prive","syn.us.inv_hs","SYN")
df[nrow(df)+1,] = c("Depenses gouvernementales","syn.us.dp","SYN")
df[nrow(df)+1,] = c("Exportations","syn.us.exports","SYN")
df[nrow(df)+1,] = c("Importations","syn.us.imports","SYN")
df[nrow(df)+1,] = c("Demande interieure hors stocks","syn.us.di_contrib","SYN")
df[nrow(df)+1,] = c("Variation de stocks","syn.us.stocks.contrib","SYN")
df[nrow(df)+1,] = c("Commerce exterieur","syn.us.comext.contrib","SYN")
df[nrow(df)+1,] = c("Produit interieur brut","syn.uk.pib_vol_q","SYN")
df[nrow(df)+1,] = c("Consommation privee","syn.uk.conso_men_vol_q","SYN")
df[nrow(df)+1,] = c("Investissement","syn.uk.imt_vol_q","SYN")
df[nrow(df)+1,] = c("Consommation publique","syn.uk.conso_pub_vol_q","SYN")
df[nrow(df)+1,] = c("Exportations","syn.uk.x_vol_q","SYN")
df[nrow(df)+1,] = c("Importations","syn.uk.m_vol_q","SYN")
df[nrow(df)+1,] = c("Demande interieure hors stocks","syn.uk.di.contrib","SYN")
df[nrow(df)+1,] = c("Variation de stocks","syn.uk.stocks.contrib","SYN")
df[nrow(df)+1,] = c("Commerce exterieur","syn.uk.comext.contrib","SYN")
df[nrow(df)+1,] = c("Produit interieur brut","syn.jp.pib","SYN")
df[nrow(df)+1,] = c("Consommation privee","syn.jp.conso","SYN")
df[nrow(df)+1,] = c("Investissement","syn.jp.inv","SYN")
df[nrow(df)+1,] = c("Consommation publique","syn.jp.conso_pu","SYN")
df[nrow(df)+1,] = c("Exportations","syn.jp.exp_trim","SYN")
df[nrow(df)+1,] = c("Importations","syn.jp.imp","SYN")
df[nrow(df)+1,] = c("Demande interieure hors stocks","syn.jp.di.contrib","SYN")
df[nrow(df)+1,] = c("Variation de stocks","syn.jp.stocks.contrib","SYN")
df[nrow(df)+1,] = c("Commerce exterieur","syn.jp.comext.contrib","SYN")    


# UK

df[nrow(df)+1,] = c("Produit interieur brut","uk.pib_vol_q","UK")
df[nrow(df)+1,] = c("Consommation privee","uk.conso_men_vol_q","UK")
df[nrow(df)+1,] = c("Investissement","uk.imt_vol_q","UK")
df[nrow(df)+1,] = c("Consommation publique","uk.conso_pub_vol_q","UK")
df[nrow(df)+1,] = c("Exportations","uk.x_vol_q","UK")
df[nrow(df)+1,] = c("Importations","uk.m_vol_q","UK")
df[nrow(df)+1,] = c("Demande interieure hors stocks","uk.di.contrib","UK")
df[nrow(df)+1,] = c("Variation de stocks","uk.stocks.contrib","UK")
df[nrow(df)+1,] = c("Commerce exterieur","uk.comext.contrib","UK")
df[nrow(df)+1,] = c("Investissement des entreprises","uk.imt_ent_vol_q","UK")
df[nrow(df)+1,] = c("Investissement des menages","uk.imt_log_vol_q","UK")
df[nrow(df)+1,] = c("Investissement public","uk.imt_pub_vol_q","UK")
df[nrow(df)+1,] = c("RDB","uk.rdb_val_q","UK")
df[nrow(df)+1,] = c("Emploi salarie","uk.emp_sal_q","UK")
df[nrow(df)+1,] = c("Salaires nominaux","uk.smpt","UK")
df[nrow(df)+1,] = c("Population active","uk.pop_act_q","UK")
df[nrow(df)+1,] = c("Emploi total","uk.emp_tot_q","UK")
df[nrow(df)+1,] = c("Taux de chomage","uk.tx_u_bit_q","UK")
df[nrow(df)+1,] = c("Inflation energetique","uk.ipc_nrj","UK")
df[nrow(df)+1,] = c("Inflation alimentaire","uk.ipc_alim","UK")
df[nrow(df)+1,] = c("Inflation sous-jacente","uk.ipc_sj","UK")
df[nrow(df)+1,] = c("Inflation totale","uk.ipc_cvs","UK")
df[nrow(df)+1,] = c("Deflateur de la consommation","uk.deflateur_conso_q","UK")
df[nrow(df)+1,] = c("Taux d'epargne","uk.tx_s_q","UK")
df[nrow(df)+1,] = c("Pouvoir d'achat (avec fonds de pension)","uk.rdb_reel_fdp_q","UK")

# US

df[nrow(df)+1,] = c("Produit interieur brut","us.pib","US")
df[nrow(df)+1,] = c("Consommation privee","us.conso","US")
df[nrow(df)+1,] = c("Investissement prive","us.inv_hs","US")
df[nrow(df)+1,] = c("Depenses gouvernementales","us.dp","US")
df[nrow(df)+1,] = c("Exportations","us.exports","US")
df[nrow(df)+1,] = c("Importations","us.imports","US")
df[nrow(df)+1,] = c("Demande interieure hors stocks","us.di_contrib","US")
df[nrow(df)+1,] = c("Variation de stocks","us.stocks.contrib","US")
df[nrow(df)+1,] = c("Commerce exterieur","us.comext.contrib","US")
df[nrow(df)+1,] = c("RDB","us.cm_rdb","US")
df[nrow(df)+1,] = c("Emploi salarie","us.emp_sal","US")
df[nrow(df)+1,] = c("Salaires nominaux","us.smpt","US")
df[nrow(df)+1,] = c("Population active","us.pop_act","US")
df[nrow(df)+1,] = c("Emploi total","us.emp","US")
df[nrow(df)+1,] = c("Taux de chomage","us.u","US")
df[nrow(df)+1,] = c("Inflation energetique","us.ipc_nrj","US")
df[nrow(df)+1,] = c("Inflation alimentaire","us.ipc_fd","US")
df[nrow(df)+1,] = c("Inflation sous-jacente","us.ipc_sj","US")
df[nrow(df)+1,] = c("Inflation totale","us.ipc","US")
df[nrow(df)+1,] = c("Deflateur de la consommation","us.defconso","US")
df[nrow(df)+1,] = c("Taux d'epargne","us.txep","US")
df[nrow(df)+1,] = c("Pouvoir d'achat","us.cm_rdbr","US")

# ZE

df[nrow(df)+1,] = c("Produit intérieur brut","ze.pib","ZE")
df[nrow(df)+1,] = c("Consommation privée","ze.conso","ZE")
df[nrow(df)+1,] = c("Investissement","ze.fbcf","ZE")
df[nrow(df)+1,] = c("Consommation publique","ze.conso_pub","ZE")
df[nrow(df)+1,] = c("Exportations","ze.export","ZE")
df[nrow(df)+1,] = c("Importations","ze.import","ZE")
df[nrow(df)+1,] = c("Demande intérieure hors stocks","ze.di.contrib","ZE")
df[nrow(df)+1,] = c("Variation de stocks","ze.stocks.contrib","ZE")
df[nrow(df)+1,] = c("Commerce extérieur","ze.comext.contrib","ZE")
df[nrow(df)+1,] = c("Investissement en construction","ze.fbcf_cons","ZE")
df[nrow(df)+1,] = c("Investissement en équipement","ze.fbcf_eq","ZE")
df[nrow(df)+1,] = c("RDB","ze.b6g_paid","ZE")
df[nrow(df)+1,] = c("Emploi salarié","ze.emploi_sal","ZE")
df[nrow(df)+1,] = c("Salaires","ze.smpt","ZE")
df[nrow(df)+1,] = c("Salaires réels","ze.smptr","ZE")
df[nrow(df)+1,] = c("Taux d'activité","ze.tx_activite_sa","ZE")
df[nrow(df)+1,] = c("Population active","ze.pop_active_sa","ZE")
df[nrow(df)+1,] = c("Emploi total","ze.emploi_tot_sa","ZE")
df[nrow(df)+1,] = c("Taux de chômage","ze.tx_chom","ZE")
df[nrow(df)+1,] = c("Inflation énergetique","ze.ipch_trim_nrj_sa","ZE")
df[nrow(df)+1,] = c("Inflation alimentaire","ze.ipch_trim_alim_sa","ZE")
df[nrow(df)+1,] = c("Inflation sous-jacente","ze.ipch_trim_core_sa","ZE")
df[nrow(df)+1,] = c("Inflation totale","ze.ipch_trim_tot_sa","ZE")
df[nrow(df)+1,] = c("Déflateur de la consommation","ze.def_conso","ZE")
df[nrow(df)+1,] = c("Taux d'epargne","ze.tx_ep","ZE")
df[nrow(df)+1,] = c("Pouvoir d'achat","ze.rdbr_sa","ZE")


# Colonne des opÃ©rations

df = df[-1,]

id <- function (x) {return(x)}

growth <- function (x) {return(100*(x - dplyr::lag(x))/dplyr::lag(x))}

op <- function (var) {
  if ((startsWith(var,"Taux") == TRUE && endsWith(var,"10 ans") == FALSE) ||
      (var %in% c("Dollar en euro","Livre sterling en euro","Yen en euro"))) {
    return("id")
    }else {
      return("growth")
      }}

df$Operations = sapply(as.list(df$name), function(x) op(x))


# Nommer metadata

metadata = df


