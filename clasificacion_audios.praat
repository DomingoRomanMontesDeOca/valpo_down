#
#
#
#
# directorio con TextGrids y Audios general
# Selecciona carpeta que contiene los TextGrids

directorio_1$ = chooseDirectory$ ("Elija directorio")
directorio_2$ = chooseDirectory$ ("Elija directorio")

# Crea la lista de archivos .TextGrid que hay en esa carpeta
stringsSN = Create Strings as file list... lista_1 'directorio_1$'/*.wav
stringsTG = Create Strings as file list... lista_1 'directorio_1$'/*.TextGrid

#
# directorio para trasladar audio
# abrir cada audio

select stringsSN

# Obtiene el número de audios que hay en esa carpeta
ene_sonidos = Get number of strings


select stringsTG

# Obtiene el número de TextGrids que hay en esa carpeta
ene_TextGrids = Get number of strings

# crea una tabla vacía con el número de filas igual al número de TextGrids de la carpeta


# Los nombres de las columnas son:

tabla_datos = Create Table with column names: "tabla general", ene_casos , { "informante", "sexo", "curso", "nivel", "n_pausas0", "n_pausas1", "tpo_pausas_0", "tpo_pausas_1", "dur_oraciones", "dur_silab_final"}


#
# Crear tabla con nombre de audios y caso relevante
#
#
#



