
# Selecciona los objetos. Requiere tener el TextGrid, el audio y la tabla (.csv) de palabras del corpus

Cambia las etiquetas con números por etiquetas con audio$ + palabra


tg = selected("TextGrid")
audio = selected("Sound")
audio$ = selected$("Sound")
lista_palabras = selected("Table")


select tg

n_etiquetas = Get number of intervals: 1


for i to n_etiquetas

	select tg

	etiqueta$ = Get label of interval: 1, i

	if etiqueta$ <> ""

		eti = number(etiqueta$)

		select lista_palabras

		item$ = Get value: eti, "palabra"

		select tg

		Set interval text: 1, i, audio$+"_"+item$

	endif


endfor


