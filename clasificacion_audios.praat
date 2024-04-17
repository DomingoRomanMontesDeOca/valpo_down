
# Obtiene el número de audios
ene_sonidos = Get number of strings

select stringsTG

# Obtiene el número de TextGrids
ene_TextGrids = Get number of strings

#
# crea una tabla vacía con el número de filas igual al número de TextGrids de la carpeta
#

tabla_datos_archivos_grandes = Create Table with column names: "tablaDeArchivos", ene_sonidos , { "archivo", "localización"}
tabla_datos_archivos_pequeños = Create Table with column names: "tablaDeArchivos", ene_TextGrids , { "archivo", "localización"}

for i to ene_sonidos
  select Strings lista_1
  audio$ = Get string... i
  audio = Read from file: directorio_1$ + "/" + audio$
  select Strings lista_2
  textG$ = Get string... i
  textG = Read from file: directorio_1$ + "/" + textG$

  select audio
  plus textG
  pauseScript: "..."

endfor

appendInfoLine: audio$,tab$,textG$
