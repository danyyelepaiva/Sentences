sentenca --> frase_nom, frase_verb.
sentenca --> frase_nom_p, frase_verb_p.

frase_nom --> artigo_f, subst_f.
frase_nom --> artigo_m, subst_m.
frase_nom --> subst_f.
frase_nom --> subst_m.

frase_nom_p --> artigo_f_p, subst_f_p.
frase_nom_p --> artigo_m_p, subst_m_p.
frase_nom_p --> subst_f_p.
frase_nom_p --> subst_m_p.



frase_verb --> verbo, prep, artigo_m, subst_m.
frase_verb --> verbo, prep, artigo_f, subst_f.
frase_verb --> verbo, prep, artigo_m_p, subst_m_p.
frase_verb --> verbo, prep, artigo_f_p, subst_f_p.

frase_verb --> verbo, prep_m, subst_m.
frase_verb --> verbo, prep_f, subst_f.
frase_verb --> verbo, pron_m, subst_m.
frase_verb --> verbo, pron_f, subst_f.


frase_verb --> verbo, artigo_f, subst_f.
frase_verb --> verbo, artigo_m, subst_m.
frase_verb --> verbo, artigo_m_p, subst_m_p.
frase_verb --> verbo, artigo_f_p, subst_f_p.



frase_verb --> verbo.

frase_verb_p --> verbo_p, prep, artigo_m, subst_m.
frase_verb_p --> verbo_p, prep, artigo_f, subst_f.
frase_verb_p --> verbo_p, prep, artigo_m_p, subst_m_p.
frase_verb_p --> verbo_p, prep, artigo_f_p, subst_f_p.

frase_verb_p --> verbo_p, pron_f, subst_f.
frase_verb_p --> verbo_p, pron_m, subst_m.
frase_verb_p --> verbo_p, prep_f, subst_m.
frase_verb_p --> verbo_p, prep_m, subst_m.

frase_verb_p --> verbo_p.


%dicionario
subst_m --> [tempo]; [cacador]; [rio]; [vento]; [martelo]; [sino]; [rosto]; [mar]; [cachorro]; [tambor]; [lobo].
subst_f --> [menina]; [vida]; [noticia]; [porta]; [floresta]; [mae]; [lagrima]; [cidade].

subst_m_p --> [cacadores]; [rios]; [martelos]; [sinos]; [rostos]; [cachorros]; [lobos]; [tambores].
subst_f_p --> [lagrimas]; [meninas]; [cidades]; [portas]; [noticias].


artigo_m --> [o]; ['O'].
artigo_f --> [a]; ['A'].
artigo_m_p --> [os]; ['Os'].
artigo_f_p --> [as]; ['As'].


verbo --> [corre]; [correu]; [corria]; [bateu].
verbo_p --> [corriam]; [bateram]; [correram]; [correm].

prep --> [com]; [para].
prep_m --> [pelo].
prep_f --> [pela].

pron_m --> [no].
pron_f --> [na].
