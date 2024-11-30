Logo de Mi Empresa		Logo de mi Cliente

![C:\Users\EPIS\Documents\upt.png](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.001.png)

<a name="_heading=h.gjdgxs"></a>**UNIVERSIDAD PRIVADA DE TACNA**

**FACULTAD DE INGENIERIA**

**Escuela Profesional de Ingeniería de Sistemas**


**PROYECTO “DASHBOARD PARA EL GIMNASIO DE LA UNIVERSIDAD PRIVADA DE TACNA”** 



Curso: Inteligencia de Negocios 





Docente: *Patrick Cuadros Quiroga* 





Integrantes: 



**Lira Álvarez, Rodrigo Samael Adonai**				**(2019063331)** 

**Chávez Linares, Cesar Fabian**					**(2019063854)** 

**Arce Bracamonte, Sebastián Rodrigo**    			**(2019062986)** 

**Soto Rodríguez, Duanet**                                      		**(2015051384)** 







**Tacna – Perú** 

***2024***



|CONTROL DE VERSIONES||||||
| :-: | :- | :- | :- | :- | :- |
|Versión|Hecha por|Revisada por|Aprobada por|Fecha|Motivo|
|1\.0|MPV|ELV|ARV|10/10/2020|Versión Original|








**PROYECTO DASHBOARD PARA EL GIMNASIO DE LA UNIVERSIDAD PRIVADA DE TACNA**



<a name="_heading=h.30j0zll"></a>Documento de Arquitectura de Software

Versión *1.0*



|CONTROL DE VERSIONES||||||
| :-: | :- | :- | :- | :- | :- |
|Versión|Hecha por|Revisada por|Aprobada por|Fecha|Motivo|
|1\.0|DSR|PCQ|PCQ|10/11/2024|Versión Original|

INDICE GENERAL

**Contenido**

[***1.***](#_heading=h.1fob9te)[	](#_heading=h.1fob9te)***INTRODUCCIÓN	5******

[**1.1.**](#_heading=h.3znysh7)[	](#_heading=h.3znysh7)**Propósito (Diagrama 4+1)	5**

[**1.2.**](#_heading=h.2et92p0)[	](#_heading=h.2et92p0)**Alcance	5**

[**1.3.**](#_heading=h.tyjcwt)[	](#_heading=h.tyjcwt)**Definición, siglas y abreviaturas	5**

[**1.4.**](#_heading=h.3dy6vkm)[	](#_heading=h.3dy6vkm)**Organización del documento	5**

[***2.***](#_heading=h.1t3h5sf)[	](#_heading=h.1t3h5sf)***OBJETIVOS Y RESTRICCIONES ARQUITECTONICAS	5***

[2.1.1.](#_heading=h.4d34og8)[	](#_heading=h.4d34og8)Requerimientos Funcionales	5

[2.1.2.](#_heading=h.17dp8vu)[	](#_heading=h.17dp8vu)Requerimientos No Funcionales – Atributos de Calidad	5

[***3.***](#_heading=h.3rdcrjn)[	](#_heading=h.3rdcrjn)***REPRESENTACIÓN DE LA ARQUITECTURA DEL SISTEMA	6***

[**3.1.**](#_heading=h.lnxbz9)[	](#_heading=h.lnxbz9)**Vista de Caso de uso	6**

[3.1.1.](#_heading=h.35nkun2)[	](#_heading=h.35nkun2)Diagramas de Casos de uso	6

[**3.2.**](#_heading=h.1ksv4uv)[	](#_heading=h.1ksv4uv)**Vista Lógica	6**

[3.2.1.](#_heading=h.2jxsxqh)[	](#_heading=h.2jxsxqh)Diagrama de Subsistemas (paquetes)	7

[3.2.2.](#_heading=h.z337ya)[	](#_heading=h.z337ya)Diagrama de Secuencia (vista de diseño)	7

[3.2.3.](#_heading=h.3j2qqm3)[	](#_heading=h.3j2qqm3)Diagrama de Colaboración (vista de diseño)	7

[3.2.4.](#_heading=h.1y810tw)[	](#_heading=h.1y810tw)Diagrama de Objetos	7

[3.2.5.](#_heading=h.4i7ojhp)[	](#_heading=h.4i7ojhp)Diagrama de Clases	7

[3.2.6.](#_heading=h.2xcytpi)[	](#_heading=h.2xcytpi)Diagrama de Base de datos (relacional o no relacional)	7

[**3.3.**](#_heading=h.1ci93xb)[	](#_heading=h.1ci93xb)**Vista de Implementación (vista de desarrollo)	7**

[3.3.1.](#_heading=h.3whwml4)[	](#_heading=h.3whwml4)Diagrama de arquitectura software (paquetes)	7

[3.3.2.](#_heading=h.2bn6wsx)[	](#_heading=h.2bn6wsx)Diagrama de arquitectura del sistema (Diagrama de componentes)	7

[**3.4.**](#_heading=h.qsh70q)[	](#_heading=h.qsh70q)**Vista de procesos	7**

[3.4.1.](#_heading=h.3as4poj)[	](#_heading=h.3as4poj)Diagrama de Procesos del sistema (diagrama de actividad)	8

[**3.5.**](#_heading=h.1pxezwc)[	](#_heading=h.1pxezwc)**Vista de Despliegue (vista física)	8**

[3.5.1.](#_heading=h.49x2ik5)[	](#_heading=h.49x2ik5)Diagrama de despliegue	8

[***4.***](#_heading=h.2p2csry)[	](#_heading=h.2p2csry)***ATRIBUTOS DE CALIDAD DEL SOFTWARE	8***

[**Escenario de Funcionalidad	8**](#_heading=h.147n2zr)

[**Escenario de Usabilidad	8**](#_heading=h.3o7alnk)

[**Escenario de confiabilidad	9**](#_heading=h.23ckvvd)

[**Escenario de rendimiento	9**](#_heading=h.ihv636)

[**Escenario de mantenibilidad	9**](#_heading=h.32hioqz)

[**Otros Escenarios	9**](#_heading=h.1hmsyys)












































1. <a name="_heading=h.1fob9te"></a>INTRODUCCIÓN

   1. <a name="_heading=h.3znysh7"></a>Propósito (Diagrama 4+1)

El propósito de este documento es detallar la arquitectura del sistema para el desarrollo del dashboard de evaluación docente para la Universidad Privada de Tacna (UPT). El sistema busca proporcionar a los usuarios una plataforma interactiva y accesible para visualizar, analizar y tomar decisiones basadas en los resultados de las evaluaciones de los docentes, con el fin de mejorar la calidad educativa. Se describe la arquitectura del sistema a través de varias vistas, que incluyen los requerimientos funcionales, la representación de la arquitectura, y los atributos de calidad.

1. <a name="_heading=h.2et92p0"></a>Alcance

Este proyecto abarca el desarrollo y la implementación de un sistema de dashboard para la evaluación docente dentro de la Universidad Privada de Tacna. El sistema estará orientado a monitorear y analizar las evaluaciones de desempeño docente realizadas por los estudiantes, brindando informes automáticos y en tiempo real. Su alcance incluye la implementación de funcionalidades como generación de reportes, visualización de datos, control de acceso, y monitoreo en tiempo real, con el fin de optimizar la gestión educativa en la universidad.

1. <a name="_heading=h.lopghxwirbkt"></a>Definición, siglas y abreviaturas

Dashboard: Herramienta interactiva de visualización y análisis de datos.

BI (Business Intelligence): Inteligencia de negocios, el proceso de analizar datos para tomar decisiones informadas.

UPT: Universidad Privada de Tacna.

TI: Tecnología de la Información.

SGBD: Sistema de Gestión de Bases de Datos.

<a name="_heading=h.3dy6vkm"></a>Organización del documento

Este documento está organizado de la siguiente manera:

Sección 1: Introducción, donde se presentan el propósito y alcance del proyecto.

Sección 2: Objetivos y restricciones arquitectónicas, que detallan los requisitos funcionales y no funcionales del sistema.

Sección 3: Representación de la arquitectura del sistema, que incluye diagramas y descripciones detalladas de las vistas del sistema.

Sección 4: Atributos de calidad del software, en la cual se presentan los escenarios que definen la calidad del sistema en áreas como funcionalidad, usabilidad, confiabilidad, rendimiento, y mantenibilidad.

1. **OBJETIVOS Y RESTRICCIONES ARQUITECTÓNICAS**

   **2.1. Priorización de Requerimientos**

|**Descripción**|**Prioridad**|
| :-: | :-: |
|Monitoreo en tiempo real el sistema debe permitir visualizar los resultados de las evaluaciones docentes en tiempo real.|Alta|
|La generación de reportes automáticos debe ser capaz de generar informes detallados sobre las evaluaciones, permitiendo su descarga y distribución entre los usuarios autorizados.|Alta|
|Interfaz intuitiva el sistema debe contar con una interfaz fácil de usar para todos los usuarios|Media|
|Control de acceso, implementación de roles y permisos para garantizar que solo los usuarios autorizados puedan acceder a los datos sensibles.|Alta|
|Análisis de tendencias el sistema debe permitir el análisis de datos históricos para identificar tendencias y patrones en las evaluaciones de los docentes|Alta|
|Filtrado de datos debe permitir filtrar y buscar información específica, como resultados por docente, curso, o grupo de estudiantes|Alta|




**2.1.1. Requerimientos Funcionales**

|**Descripción**|**Prioridad**|
| :-: | :-: |
|Monitoreo en tiempo real el sistema debe permitir visualizar los resultados de las evaluaciones docentes en tiempo real.|Alta|
|La generación de reportes automáticos debe ser capaz de generar informes detallados sobre las evaluaciones, permitiendo su descarga y distribución entre los usuarios autorizados.|Alta|
|Interfaz intuitiva el sistema debe contar con una interfaz fácil de usar para todos los usuarios|Media|
|Control de acceso, implementación de roles y permisos para garantizar que solo los usuarios autorizados puedan acceder a los datos sensibles.|Alta|
|Análisis de tendencias el sistema debe permitir el análisis de datos históricos para identificar tendencias y patrones en las evaluaciones de los docentes|Alta|
|Filtrado de datos debe permitir filtrar y buscar información específica, como resultados por docente, curso, o grupo de estudiantes|Alta|

**2.1.2. Requerimientos No Funcionales – Atributos de Calidad**

|**Descripción**|**Prioridad**|
| :-: | :-: |
|Usabilidad: El sistema debe ser fácil de usar, con una interfaz clara y accesible para diferentes tipos de usuarios.|Alta|
|Rendimiento: El sistema debe ser capaz de procesar grandes volúmenes de datos rápidamente, sin retrasos significativos al generar informes o realizar búsquedas.|Alta|
|Mantenibilidad: El sistema debe ser fácil de actualizar y mantener a lo largo del tiempo, con una arquitectura modular que permita la integración de nuevas funcionalidades sin afectar la estabilidad.|Alta|
|Usabilidad: El sistema debe ser fácil de usar, con una interfaz clara y accesible para diferentes tipos de usuarios.|Alta|

1. # <a name="_heading=h.3rdcrjn"></a>**REPRESENTACIÓN DE LA ARQUITECTURA DEL SISTEMA**
<a name="_heading=h.lnxbz9"></a>3.1Vista de Caso de uso

La vista de caso de uso describe las interacciones entre los usuarios y el sistema. Los casos de uso principales incluyen:

Monitoreo de evaluaciones: Los administradores y personal académico pueden monitorear en tiempo real las respuestas de los estudiantes sobre los docentes.

Generación de reportes: Los administradores pueden generar reportes detallados sobre el desempeño docente.

Acceso de usuarios: Los estudiantes pueden acceder a los resultados de las evaluaciones de manera personalizada.

Análisis de tendencias: Los administradores y personal académico pueden analizar los resultados históricos de las evaluaciones para tomar decisiones informadas.

### <a name="_heading=h.35nkun2"></a>3.1.1 Diagramas de Casos de uso
![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.002.png)

![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.003.png)

![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.004.png)![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.005.png)

<a name="_heading=h.1ksv4uv"></a>Vista Lógica

La vista lógica muestra la estructura del sistema y cómo se organizarán los subsistemas y componentes.
###
### <a name="_heading=h.44sinio"></a><a name="_heading=h.2jxsxqh"></a>3.1.2 Diagrama de Subsistemas (paquetes)
![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.006.png)


1. ### <a name="_heading=h.z337ya"></a>Diagrama de Secuencia (vista de diseño)
![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.007.png)
1. ### <a name="_heading=h.3j2qqm3"></a>Diagrama de Colaboración (vista de diseño)
![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.008.png)
1. ### <a name="_heading=h.1y810tw"></a>Diagrama de Objetos
![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.009.png)
1. ### <a name="_heading=h.4i7ojhp"></a>Diagrama de Clases
![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.010.png)
1. ### <a name="_heading=h.2xcytpi"></a>Diagrama de Base de datos (relacional o no relacional)
![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.011.png)




















<a name="_heading=h.1ci93xb"></a>Vista de Implementación (vista de desarrollo)
1. ### <a name="_heading=h.3whwml4"></a>Diagrama de arquitectura software (paquetes)

Este diagrama muestra cómo se organiza el sistema en diferentes paquetes y subsistemas. Define las capas que componen el sistema y cómo interactúan entre ellas.

![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.012.png)

**Descripción:** En este diagrama se agrupan las clases y los componentes en tres capas: **Presentación**, **Lógica de Negocio**, y **Datos**. El flujo entre las capas muestra cómo se comunica el sistema entre estas secciones, con el propósito de manejar la interfaz de usuario, el procesamiento de las evaluaciones y el acceso a la base de datos.

1. ### <a name="_heading=h.2bn6wsx"></a>Diagrama de arquitectura del sistema (Diagrama de componentes)

Este diagrama muestra cómo los componentes del sistema se distribuyen entre los nodos y las diferentes instancias que ejecutan el sistema.

![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.013.png)

**Descripción:** Este diagrama muestra que el sistema se implementa en dos servidores: uno para la **Interfaz de Usuario** y la **Lógica de Negocio** (en el servidor de aplicaciones) y otro para la **Base de Datos**. La comunicación entre los componentes se muestra mediante flechas que indican cómo interactúan entre sí.

<a name="_heading=h.qsh70q"></a>Vista de procesos
1. ### <a name="_heading=h.3as4poj"></a>Diagrama de Procesos del sistema (diagrama de actividad)
   Este diagrama describe los procesos dentro del sistema, mostrando cómo se llevan a cabo las actividades dentro de un proceso y cómo los diferentes procesos interactúan.

   ![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.014.png)

   **Descripción:** Este diagrama muestra el flujo de actividades del proceso principal del sistema. Comienza con la solicitud de un reporte de evaluaciones, luego pasa por las etapas de recopilación de datos, generación de reportes, y finalmente muestra los resultados en la interfaz de usuario.

<a name="_heading=h.1pxezwc"></a>Vista de Despliegue (vista física)
1. ### <a name="_heading=h.49x2ik5"></a>Diagrama de despliegue

El diagrama de despliegue muestra cómo se distribuyen físicamente los componentes del sistema en diferentes nodos y cómo interactúan entre sí.

![](Aspose.Words.0403411a-8765-41f4-b8ee-160eff9991b1.015.png)

**Descripción:** Este diagrama describe cómo se distribuyen los artefactos del sistema (como la interfaz de usuario y la base de datos) en diferentes nodos físicos, como servidores. Las flechas indican la comunicación entre los artefactos en los nodos.

1. # <a name="_heading=h.2p2csry"></a>**ATRIBUTOS DE CALIDAD DEL SOFTWARE**
### <a name="_heading=h.cbyl97thgahj"></a>2.1 **Escenarios de Calidad del Software**
**2.1.1 Escenario de Funcionalidad**
El dashboard debe permitir realizar las tareas clave de monitoreo de evaluaciones, generación de reportes y análisis de tendencias sin errores, con una alta tasa de disponibilidad y precisión.

**Escenario de Usabilidad**
El sistema debe ser intuitivo, fácil de navegar para usuarios sin experiencia técnica avanzada, y adaptarse a diferentes dispositivos para garantizar accesibilidad.

**Escenario de Confiabilidad**
El sistema debe tener un tiempo de actividad mínimo, con errores reducidos al máximo y una correcta gestión de fallos.

**Escenario de Rendimiento**
Debe permitir la visualización de datos y generación de reportes de manera rápida, sin afectar la experiencia del usuario.

**Escenario de Mantenibilidad**
El sistema debe ser fácilmente actualizable y modular para permitir la adición de nuevas funcionalidades sin interrumpir el funcionamiento del sistema.

**Otros Escenarios**

- **Performance:** Este atributo se refiere a la capacidad del sistema para responder rápidamente a eventos o manejar múltiples eventos simultáneamente.
  - **Evaluación:** El sistema debe manejar eficientemente las solicitudes de los usuarios, como la creación de nuevas evaluaciones, la generación de reportes, o la visualización de resultados sin afectar la experiencia del usuario, incluso cuando muchos usuarios están utilizando el sistema simultáneamente.



