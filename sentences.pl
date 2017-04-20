
sentenca(sentenca(Stuff1, Stuff2)) --> frase_nom(Stuff1), frase_verb(Stuff2).
sentenca(sentenca(Stuff1, Stuff2)) --> frase_nom_p(Stuff1), frase_verb_p(Stuff2).


frase_nom(frasenom(Ar, Sub)) --> artigo_f(Ar), subst_f(Sub).
frase_nom(frasenom(Ar, Sub)) --> artigo_m(Ar), subst_m(Sub).
frase_nom(frasenom(Sub)) --> subst_f(Sub).
frase_nom(frasenom(Sub)) --> subst_m(Sub).

frase_nom_p(frasenompl(Arpl, Subpl)) --> artigo_f_p(Arpl), subst_f_p(Subpl).
frase_nom_p(frasenompl(Arpl, Subpl)) --> artigo_m_p(Arpl), subst_m_p(Subpl).
frase_nom_p(frasenompl(Subpl)) --> subst_f_p(Subpl).
frase_nom_p(frasenompl(Subpl)) --> subst_m_p(Subpl).



% frases verbais singulares
frase_verb(fraseverb(Ver,Prep, Art, Sub)) --> verbo(Ver), prep(Prep), artigo_m(Art), subst_m(Sub).
frase_verb(fraseverb(Ver,Prep, Art, Sub)) --> verbo(Ver), prep(Prep), artigo_f(Art), subst_f(Sub).
frase_verb(fraseverb(Ver,Prep, Artp, Subp)) --> verbo(Ver), prep(Prep), artigo_m_p(Artp), subst_m_p(Subp).
frase_verb(fraseverb(Ver,Prep, Artp, Subp)) --> verbo(Ver), prep(Prep), artigo_f_p(Artp), subst_f_p(Subp).

frase_verb(fraseverb(Ver, Prep, Sub)) --> verbo(Ver), prep_m(Prep), subst_m(Sub).
frase_verb(fraseverb(Ver, Prep, Sub)) --> verbo(Ver), prep_f(Prep), subst_f(Sub).
frase_verb(fraseverb(Ver, Pron, Sub)) --> verbo(Ver), pron_m(Pron), subst_m(Sub).
frase_verb(fraseverb(Ver, Pron, Sub)) --> verbo(Ver), pron_f(Pron), subst_f(Sub).

%strange stuff
frase_verb(fraseverb(Ver, Art, Sub)) --> verbo(Ver), artigo_m(Art), subst_m(Sub).
frase_verb(fraseverb(Ver, Art, Sub)) --> verbo(Ver), artigo_f(Art), subst_f(Sub).


frase_verb(frasever(Ver)) --> verbo(Ver).


%------------------------
% frases verbais plurais
frase_verb_p(fraseverbp(Verp, Prep, Art, Sub)) --> verbo_p(Verp), prep(Prep), artigo_m(Art), subst_m(Sub).
frase_verb_p(fraseverbp(Verp, Prep, Art, Sub)) --> verbo_p(Verp), prep(Prep), artigo_f(Art), subst_f(Sub).
frase_verb_p(fraseverbp(Verp, Prep, Artp, Subp)) --> verbo_p(Verp), prep(Prep), artigo_m_p(Artp), subst_m_p(Subp).
frase_verb_p(fraseverbp(Verp, Prep, Artp, Subp)) --> verbo_p(Verp), prep(Prep), artigo_f_p(Artp), subst_f_p(Subp).

frase_verb_p(fraseverbp(Verp, Pron, Sub)) --> verbo_p(Verp), pron_f(Pron), subst_f(Sub).
frase_verb_p(fraseverbp(Verp, Pron, Sub)) --> verbo_p(Verp), pron_m(Pron), subst_m(Sub).
frase_verb_p(fraseverbp(Verp, Prep, Sub)) --> verbo_p(Verp), prep_f(Prep), subst_m(Sub).
frase_verb_p(fraseverbp(Verp, Prep, Sub)) --> verbo_p(Verp), prep_m(Prep), subst_m(Sub).

frase_verb_p(fraseverp(Ver)) --> verbo_p(Ver).


%dicionario
%SEPERAR 1 POR LINHA
subst_m(substm(tempo)) --> [tempo].
subst_m(substm(cacador)) --> [cacador].
subst_m(substm(rio)) --> [rio].
subst_m(substm(vento)) --> [vento].
subst_m(substm(martelo)) --> [martelo].
subst_m(substm(sino)) --> [sino].
subst_m(substm(rosto)) --> [rosto].
subst_m(substm(mar)) --> [mar].
subst_m(substm(cachorro)) --> [cachorro].
subst_m(substm(tambor)) --> [tambor].
subst_m(substm(lobo)) --> [lobo].

subst_f(substf(menina)) --> [menina].
subst_f(substf(vida)) --> [vida].
subst_f(substf(noticia)) --> [noticia].
subst_f(substf(porta)) --> [porta].
subst_f(substf(floresta)) --> [floresta].
subst_f(substf(mae)) --> [mae].
subst_f(substf(lagrima)) --> [lagrima].
subst_f(substf(cidade)) --> [cidade].

subst_m_p(substmp(cacadores)) --> [cacadores].
subst_m_p(substmp(rios)) --> [rios].
subst_m_p(substmp(martelos)) --> [martelos].
subst_m_p(substmp(sinos)) --> [sinos].
subst_m_p(substmp(rostos)) --> [rostos].
subst_m_p(substmp(cachorros)) --> [cachorros].
subst_m_p(substmp(lobos)) --> [lobos].
subst_m_p(substmp(tambores)) --> [tambores].

subst_f_p(substfp(lagrimas)) --> [lagrimas].
subst_f_p(substfp(meninas)) --> [meninas].
subst_f_p(substfp(cidades)) --> [cidades].
subst_f_p(substfp(portas)) --> [portas].
subst_f_p(substfp(noticias)) --> [noticias].

% subst_f_p(subfp(cacadores)) --> [cacadores].


artigo_m(artigom(o)) --> [o].
artigo_m(artigom('O')) --> ['O'].
artigo_f(artigof(a)) --> [a].
artigo_f(artigof('A')) --> ['A'].
artigo_m_p(artigomp(os)) --> [os].
artigo_m_p(artigomp('Os')) --> ['Os'].
artigo_f_p(artigofp(as)) --> [as].
artigo_f_p(artigofp('As')) --> ['As'].



verbo(verbo(corre)) --> [corre].
verbo(verbo(correu)) --> [correu].
verbo(verbo(corria)) --> [corria].
verbo(verbo(bateu))  --> [bateu].

verbo_p(verbop(corriam)) --> [corriam].
verbo_p(verbop(bateram)) --> [bateram].
verbo_p(verbop(correram)) --> [correram].
verbo_p(verbop(correm)) --> [correm].

prep(prep(com)) --> [com].
prep(prep(para)) --> [para].
prep_m(prepm(pelo)) --> [pelo].
prep_f(prepf(pela)) --> [pela].

pron_m(pronm(no)) --> [no].
pron_f(pronf(na)) --> [na].
