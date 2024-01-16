# Siniestros Viales en la Ciudad Autono de Buenos Aires (CABA)  2016-2021
<p align="center"><img src="images\01_portada.png" alt="nulos de hechos"></p>

## Introducción

El siguiente proyecto de consultoria busca realizar un analísis para tomar acciones ante la accidentalidad en la ciudad autonoma de buenos aires (CABA), para esto utilizaremos una base de datos con información de accidentes ocurridos en las diferentes comunas de (CABA). La base de datos utilizada fue suministrada de la pagína oficial de la Secretaría de Transporte del Gobierno de la Ciudad Autónoma de Buenos Aires, junto con el observatorio de movilidad y seguridad vial.

La seguridad vial es un tema de gran importancia para el gobierno, es por esto que analizaremos la base de datos sobre accidentes viales para extraer información para la toma de acciones oportunas y poder reducir la accidentalidad y accidententes fatales.

El objetivo principal del informe es encontrar tendencias sobre la accidentalidad, conocer la evolución de la tasa de accidentalidad y encontrar patrones para tomar acción oportuna.

## Contextualización del problema

La Ciudad Autónoma de Buenos Aires (CABA) es la capital de Argentina y se encuentra ubicada en la región central del país, a orillas del Río de la Plata. Es el centro político, cultural y económico de Argentina. Está dividida en 15 comunas, cada una con su propio gobierno local. Cuenta con una población aproximada de $3 120 612$, con una superficie de $203 km^2$

Buenos Aires es la ciudad más poblada de la Argentina, cuenta con una densidad poblacional de $15151$ $habitante/km^2$. Está dividido en 15 comunanas, cada comuna tiene entre 1 a 5 barrios.

La base de datos cruda cuenta con archivos en formato excel.

**homicidios.xlsx:** contiene dos pestañas:

- **HECHOS**: Esta pestaña de excel contiene 696 registros de accidentes ocurridos en CABA.
<p align="center">
  <img src="images\01_ hechos.png" alt="hechos">
</p>

- **VICTIMAS**: Esta pestaña de excel contiene 717 registros de victimas fatales ocurridas en los 696 accidentes. la tabla hechos y la tabla victimas se encuentran relacionadas por un id unico, donde en un hecho pueden ocurrir varias victimas fatales.

<p align="center">
  <img src="images\03_victimas.png" alt="hechos">
</p>

Para mayor información, ingresar al siguiente documento [documento](NOTAS_HOMICIDIOS_SINIESTRO_VIAL.pdf).


A La base de datos se le realizó un proceso de extracción y transformación, para extraer columnas relevantes.

La tabla hechos contiene:

<p align="center">
  <img src="images\04_nulos_hechos.png" alt="nulos de hechos">
</p>


<p align="center">
  <img src="images\05_porcentaje_nullos_hechos.png" alt="nulos de hechos">
</p>

- Con la columna altura y cruce podemos inferir que no pueden ocurrir ambas al mismo tiempo, por lo tanto si existe datos en una de ellas la otra deberá ser nula. Asi creamos una columna booleana, donde

$$\begin{cases}
1 && \text{Si el accidente fue en un cruce} \\
0 && \text{Si el accidente no fue en un cruce}\\
-1 && \text{No existe registro de la ubicación}
\end{cases}$$
## Cantidad de accidente en cruces por tipo de calle

Los cruces de calles representan puntos críticos donde cualquier situación puede surgir, especialmente si los peatones o conductores están distraídos. En este análisis, nos enfocaremos en examinar la cantidad de víctimas en accidentes que ocurren específicamente en cruces, centrándonos en los distintos tipos de vías presentes en la Ciudad Autónoma de Buenos Aires (CABA): Avenidas, Autopistas, Calles y la General Paz.

El objetivo principal es identificar el tipo de vía que registra el mayor número de accidentes en cruces. Este análisis nos proporcionará información crucial para tomar medidas oportunas y abordar eficazmente esta problemática.

<p align="center">
  <img src="images\07_accidentes_cruces.png" alt="nulos de hechos">
</p>

Segun la grafica  anterior el $75\%$ de los accidentes ocurrieron en cruces vehiculares, de los cuales  $362$ ocurrieron en Avenidas, es decir, $67\%$ de los accidentes ocurridos en cruces son causados en avenidas.

<p align="center"><img src="images\08_victimas_avenidas_tipo.png" alt="nulos de hechos"></p>

Podemos observar que contamos con 442 accidentes ocurridos en avenidas donde las victimas mas afectadas son MOTOS y PEATONES, mas aun, los hombres en moto son los mas afectados y representan el $34\%$
 y las mujeres peatones con un $16\%$
## Relación entre rango etario y fecha de accidente


El tiempo de reacción ante un accidente juega un papel fundamental en la prevención de víctimas fatales. En este análisis, nos centraremos en la cantidad de personas que lamentablemente pierden la vida en el mismo día del accidente. Además, llevaremos a cabo un estudio detallado según los diferentes grupos etarios, explorando la distribución de estas fatalidades.

Este enfoque nos permitirá comprender mejor las circunstancias en las que ocurren las tragedias y proporcionará información valiosa para implementar medidas y estrategias específicas, con el objetivo de reducir la pérdida de vidas en situaciones de accidentes. 

$$\begin{cases}
Menor && \text{si es menor 18 años}\\
Joven && \text{si mayor de 17 años y menor de 30}\\
Adulto && \text{mayor de 29 años y es menor 50 años}\\
Adulto Mayor && \text{si es mayor igual que 50 años}
\end{cases}$$


<p align="center"><img src="images\09_rango_etario_misma_fecha.png" alt="nulos de hechos"></p>


Se evidencia que la edad media de las personas que fallecen el mismo día del accidente se mantiene relativamente constante a lo largo del tiempo. Sin embargo, es notable un aumento en la edad media de las personas que fallecen en un día diferente al del accidente a partir del año 2020. Este incremento sugiere posibles cambios en la atención temprana a partir de ese año.

Es importante destacar que, a lo largo de los años, se registran casos de víctimas con edades extremas, desde recién nacidos hasta personas mayores de 80 años. Esta diversidad de edades resalta la necesidad de considerar medidas específicas para distintos grupos demográficos.

Una observación relevante es que la implementación de acciones destinadas a proporcionar asistencia prehospitalaria rápida (APH) podría contribuir significativamente a reducir la siniestralidad, especialmente en casos donde la atención inmediata marca la diferencia entre la vida y la muerte. Este enfoque podría preparar mejor a la población para responder eficazmente ante accidentes, minimizando las consecuencias fatales.


<p align="center"><img src="images\10_rango_etario.png" alt="nulos de hechos"></p>

<p align="center"><img src="images\11_victimas_mismo_dia_genero.png" alt="nulos de hechos"></p>

Observamos que la mayoría de las personas que experimentan un accidente lamentablemente fallecen en el mismo día, y entre los afectados, aquellos que tienen edades comprendidas entre los 30 y 50 años representan la mayoría de las víctimas. A continuación, procederemos a analizar la evolución de las fatalidades en el grupo de adultos. Por otro lado, entre las personas que pierden la vida el mismo día del accidente, se destaca que las mujeres mayores de 30 años son las que presentan una mayor incidencia de siniestros.


## Evolución de cantidad de victimas por fechas

El gobierno, en su compromiso por mejorar la calidad de vida de la población, lleva a cabo acciones que buscan impactar positivamente en la seguridad y bienestar ciudadano. En este contexto, procederemos a analizar la evolución anual de la cantidad de víctimas, desde el año 2016 hasta el 2021. Este análisis permitirá evaluar el impacto de las medidas implementadas a lo largo de estos años y brindará información valiosa para orientar futuras iniciativas que contribuyan a la seguridad y protección de la ciudadanía.

<p align="center"><img src="images\12_vitimas_fecha.png" alt="nulos de hechos"></p>

<p align="center"><img src="images\13_año_cruce.png" alt="nulos de hechos"></p>

Observamos que la cantidad de accidentes en cruces ha experimentado una disminución a partir del año 2019, mientras que la cantidad de accidentes fuera de cruces se mantiene con una tendencia constante. Este indicativo sugiere un posible impacto positivo de las medidas implementadas o cambios en la infraestructura vial que han influido en la reducción de incidentes en los cruces. Es fundamental seguir monitoreando estas tendencias para comprender mejor los factores que contribuyen a la seguridad vial y continuar implementando acciones efectivas.

# Indicadores de desempeño

Queremos monitorear la evulución de la accidentalidad, en las 15 comunas de CABA. para esto, nos basamos en el analisis anterior y en las consignas solicitadas por el cliente para controlar y monitorear de manera oportuna las situaciones más relevantes en la movilidad.
************************************************************************************************************************************

<div style="text-align:center; font-weight:bold;font-size:25px;">Reducir en un 5% la cantidad de accidentes mortales en las diferentes calles de caba en el último año, respecto al año anterior.</div>



para monitorear este problema, hemos tomado como una meta realizable, reducir en un $5\%$ la tasa crecimiento de victimas respecto al año anterior. La formula utilizada es
$$\left(\frac{victimas_{\text{año anterior}} - victimas_{\text{año actual}} }{victimas_{\text{año anterior}}} \right)\cdot 100$$

**La expresión anterior es un indicador porcentual que describe cómo ha cambiado el número de victimas desde el año anterior al año actual. Un resultado positivo indica una disminución de victimas , mientras que un resultado negativo indica un incremento en el númeor de victimas**.

<p align="center"><img src="images\02_tipo_calle.png" alt="tipo de calle"></p>


***************************************************************************************************************************

<div style="text-align:center; font-weight:bold;font-size:25px;">Reducir en un 7% la cantidad de accidentes mortales de motociclistas en el último año, en CABA, respecto al año anterior.</div>


<p align="center"><img src="images\03_tipo_victima.png" alt="tipo de victima"></p>

***************************

<div style="text-align:center; font-weight:bold;font-size:25px;">Reducir en un 10% la tasa de homicidios en siniestros viales de los últimos seis meses, en CABA, en comparación con la tasa de homicidios en siniestros viales del semestre anterior.</div>

Definimos a la tasa de homicidios en siniestros viales como el número de víctimas fatales en accidentes de tránsito por cada 100,000 habitantes en un área geográfica durante un período de tiempo específico. Su fórmula es:

$$vic_{semestre} =\frac{\text{Número de homicidios en siniestros viales}}{\text{población total}}$$

Para monitorear la evolución de la siniestralidad semestralmente, queremos  reducir la varianción semestrala un $10\%$, utilizando la formula:

$$\frac{ vic_{\text{semestre anterior}}  - vic_{\text{semestre actual}}}{vic_{\text{semestre anterior}}}$$

<p align="center"><img src="images\04_semestre.png" alt="nulos de hechos"></p>

**La expresión anterior es un indicador porcentual que describe cómo ha cambiado el número de victimas desde el año anterior al año actual. Un resultado positivo indica un incremento en número de victimas , mientras que un resultado negativo indica una dismunución en el númeor de victimas**.


<div style="text-align:center; font-weight:bold;font-size:25px;">Densidad por victimas</div>

La densidad población es una medida que relaciona la cantidad de personas por unidad de área, la siguiente gráfica muestra la densidad poblaciónal por comuna por cantidad de victimas por cada 100.000 habitantes. es decir

$$\frac{población(millones)}{área(km^2)}\cdot (\text{número de victimas})$$

<p align="center"><img src="images\05_densidad.png" alt="nulos de hechos"></p>

<div style="text-align:center; font-weight:bold;font-size:25px;">Victimas por género y rango etario</div>

<p align="center"><img src="images\06_victimas_sexo.png" alt="nulos de hechos"></p>

## Conclusiones

conclusión...

## Base de datos

https://www.indec.gob.ar/ftp/cuadros/poblacion/proy_1025_depto_caba.xls


https://www.indec.gob.ar/ -- informacion de la poblacion

[link](https://data.buenosaires.gob.ar/dataset/victimas-siniestros-viales) -- base de datos

https://data.buenosaires.gob.ar/dataset/comunas/resource/b0b627ac-5b47-4574-89ac-6999b63598ee -- geojson