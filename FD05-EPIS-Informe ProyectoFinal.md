![C:\\Users\\EPIS\\Documents\\upt.png][image1]

**UNIVERSIDAD PRIVADA DE TACNA**

**FACULTAD DE INGENIERÍA**

**Escuela Profesional de Ingeniería de Sistemas**

 **Proyecto “Dashboard de Evaluación Docente: Insights Estadísticos de 'Tu Opinión Cuenta' en la UPT 2024-II”**

Curso: Inteligencia de Negocios

Docente: Ing. Patrick Cuadros Quiroga

Integrantes:

***Lira Álvarez, Rodrigo Samael Adonai			(2019063331)***   
***Chávez Linares, Cesar Fabian				(2019063854)***   
***Arce Bracamonte, Sebastián Rodrigo    		(2019062986)***   
***Soto Rodríguez, Duanet                                     	(2015051384)***

**Tacna – Perú**  
**2024**

| CONTROL DE VERSIONES |  |  |  |  |  |
| :---: | :---: | :---: | :---: | :---: | ----- |
| **Versión** | **Hecha por** | **Revisada por** | **Aprobada por** | **Fecha** | **Motivo** |
| **1.0** | **DSR** | **PCQ** | **PCQ** | **23/10/2024** | **Versión 1** |
| **2.0** | **DSR** | **PCQ** | **PCQ** | **2/12/2024** | **Versión 2** |

**ÍNDICE GENERAL**

 

**1\.  	Antecedentes**                                                                                                  	

**2\.  	Planteamiento del Problema**                                                                         

          **a.  	Problema**

**b.  	Justificación**

**c.   	Alcance**

**3\.  	Objetivos**                                                                                                         	

**4\.  	Marco Teórico**  	

**5\.  	Desarrollo de la Solución**                                                                    	

**a.  	Análisis de Factibilidad (técnico, económica, operativa, social, legal, ambiental)**

**b.  	Tecnología de Desarrollo**

**c.   	Metodología de implementación**

**(Documento de VISIÓN, SRS, SAD)**

**6\.  	Cronograma**                                                                                                   	

**7\.  	Presupuesto**                                                                                                    	

**8\.  	Conclusiones**                                                                                                   	

**Recomendaciones                                                                                                	14**

**Bibliografía                                                                                                           	15**

**Anexos                                                                                                                  	16**

**Anexo 01 Informe de Factibilidad**

**Anex0 02   Documento de Visión**

**Anexo 03 Documento SRS**

**Anexo 04 Documento SAD**

**Anexo 05 Manuales y otros documentos**

1. ## **Planteamiento del problema**

   **2.1 Problema**  
     
   La Universidad Privada de Tacna (UPT) enfrenta un problema crítico en su proceso de evaluación docente debido a la baja participación estudiantil en las encuestas de "Tu Opinión Cuenta", lo que invalida los resultados cuando no se alcanza una tasa mínima del 50%, limitando la representatividad y dificultando la toma de decisiones informadas para mejorar la calidad educativa. Factores como la falta de tiempo, desconocimiento de la importancia de las encuestas, dificultades de acceso a la plataforma y ausencia de incentivos contribuyen a esta situación. Además, la falta de un sistema centralizado para analizar y visualizar los datos de manera eficiente limita la identificación de patrones, la mejora del desempeño docente y la transparencia en el proceso de evaluación.

###              **2.2 Justificación**

El proyecto "Dashboard de Evaluación Docente: Insights Estadísticos de 'Tu Opinión Cuenta'" se enfocará en el diseño, desarrollo e implementación de un sistema de visualización y análisis de datos que centralice la información obtenida de las encuestas de evaluación docente realizadas por los estudiantes al término de la primera unidad académica. Este dashboard permitirá:

1. **Centralizar la información:** Consolidar los datos de las encuestas en una plataforma única, accesible y segura.  
2. **Visualizar tendencias y patrones:** Generar gráficos e informes dinámicos para identificar fortalezas y áreas de mejora en el desempeño docente.  
3. **Facilitar la toma de decisiones:** Proporcionar herramientas analíticas para respaldar decisiones informadas orientadas a la mejora continua de la calidad educativa.  
4. **Promover la transparencia:** Hacer visibles los resultados de las evaluaciones de manera clara y comprensible para la comunidad universitaria.  
5. **Optimizar procesos:** Automatizar la generación de reportes y análisis, reduciendo tiempos y esfuerzos administrativos.

El alcance incluye la capacitación básica del personal encargado, la implementación inicial del dashboard en un entorno local y la posibilidad de escalar el sistema en el futuro, para integrar nuevos datos o funcionalidades según las necesidades institucionales.

## **Objetivos**

### **3.1 Objetivo general**

Diseñar e implementar un dashboard interactivo que permita centralizar, visualizar y analizar los datos de las encuestas de evaluación docente "Tu Opinión Cuenta" en la Universidad Privada de Tacna (UPT), mejorando la calidad del proceso de evaluación y fomentando la transparencia y la toma de decisiones informadas.

### **3.2 Objetivos específicos**

1. Integrar los datos de las encuestas de evaluación docente en una plataforma única y accesible.  
2. Desarrollar herramientas gráficas y reportes dinámicos que permitan identificar patrones y tendencias en los resultados de las evaluaciones.  
3. Proporcionar indicadores claros y detallados que respalden decisiones estratégicas para mejorar el desempeño docente.  
4. Presentar los resultados de las evaluaciones de forma comprensible, fomentando la confianza y participación de la comunidad universitaria.  
5. Automatizar la generación de reportes y análisis, reduciendo esfuerzos manuales y tiempos de procesamiento.  
   

**Marco Teórico** 

#### **Evaluación docente**

La evaluación docente es un proceso esencial para medir y analizar el desempeño de los profesores dentro de una institución educativa. Este proceso busca identificar fortalezas y áreas de mejora en la práctica docente, promoviendo una enseñanza de calidad y la mejora continua. Según diversos autores, la evaluación debe ser representativa, confiable y transparente, considerando no solo las calificaciones de los estudiantes, sino también factores como la preparación, la metodología de enseñanza y la interacción en el aula.

#### **Visualización de datos**

La visualización de datos es una técnica que permite representar información compleja de manera gráfica e intuitiva. Herramientas como dashboards son ampliamente utilizadas en diversos sectores para facilitar la interpretación de grandes volúmenes de datos, identificando patrones, tendencias y relaciones clave. En el ámbito educativo, los dashboards pueden centralizar y presentar resultados de encuestas o evaluaciones, simplificando el análisis para la toma de decisiones.

#### **Transparencia y participación en la educación**

La transparencia es un principio fundamental en los procesos educativos, especialmente en la evaluación docente, ya que genera confianza entre los estudiantes, docentes y la institución. Al presentar resultados claros y accesibles, se fomenta la participación activa de la comunidad educativa, lo que contribuye a una cultura de retroalimentación y mejora continua.

#### **Tecnología en la gestión educativa**

El uso de herramientas tecnológicas en la educación, como sistemas de información y dashboards, ha demostrado ser un elemento clave para optimizar procesos administrativos y académicos. Estas herramientas permiten centralizar datos, automatizar tareas y ofrecer análisis detallados, mejorando la eficiencia y efectividad de la gestión educativa.

#### **"Tu Opinión Cuenta"**

"Tu Opinión Cuenta" es una plataforma utilizada por la Universidad Privada de Tacna para recopilar la percepción de los estudiantes sobre el desempeño docente. Esta herramienta se fundamenta en encuestas que evalúan aspectos específicos del proceso de enseñanza-aprendizaje, utilizando una escala del 0 al 20\. La representatividad de las encuestas es crítica para asegurar decisiones fundamentadas en datos confiables y significativos.

Metodologia de Implementacion 

La implementación del dashboard "Dashboard de Evaluación Docente: Insights Estadísticos de 'Tu Opinión Cuenta'" se llevará a cabo siguiendo una metodología estructurada basada en etapas clave, con un enfoque iterativo y centrado en la calidad y usabilidad del sistema.

#### **1\. Análisis de Requerimientos**

* Identificación de los objetivos del dashboard con los principales interesados (administrativos, docentes y estudiantes).  
* Recolección de información sobre las encuestas de "Tu Opinión Cuenta", incluyendo formato, estructura y frecuencia.  
* Definición de las métricas e indicadores clave (KPIs) que se visualizarán en el dashboard.

#### **2\. Diseño del Sistema**

* **Arquitectura:** Diseño de la arquitectura del sistema para garantizar la integración de bases de datos, el acceso seguro y la escalabilidad.  
* **Interfaz de Usuario (UI):** Creación de un prototipo visual del dashboard, con énfasis en la claridad, accesibilidad y experiencia del usuario (UX).  
* **Modelado de Base de Datos:** Estructuración de la base de datos para optimizar el almacenamiento y recuperación de la información de las encuestas.

#### **3\. Desarrollo del Dashboard**

* Configuración del entorno de desarrollo, utilizando herramientas como Power BI para la visualización de datos.  
* Codificación e integración de los módulos principales:  
  * Importación y procesamiento de datos de las encuestas.  
  * Generación de gráficos e informes interactivos.  
  * Funcionalidades de filtrado y segmentación de datos por áreas, docentes o periodos.  
* Pruebas unitarias de cada componente para garantizar su funcionalidad.

#### **4\. Pruebas e Integración**

* **Pruebas Funcionales:** Validación de que todas las funcionalidades del dashboard cumplen con los requisitos establecidos.  
* **Pruebas de Usuario:** Sesiones piloto con usuarios clave (administrativos y docentes) para evaluar la usabilidad y efectividad de la interfaz.  
* **Corrección de Errores:** Ajustes y mejoras basados en los resultados de las pruebas realizadas.

#### **5\. Capacitación del Personal**

* Elaboración de guías de usuario y tutoriales.  
* Capacitación al personal administrativo sobre el uso del dashboard, creación de reportes y análisis de resultados.

#### **6\. Implementación y Lanzamiento**

* Configuración del dashboard en el servidor institucional, garantizando seguridad y accesibilidad.  
* Migración de datos históricos para análisis comparativos (si es necesario).  
* Lanzamiento oficial del sistema con comunicación a la comunidad universitaria.

#### **7\. Seguimiento y Mantenimiento**

* Monitoreo del rendimiento del sistema para asegurar su funcionamiento continuo.  
* Implementación de actualizaciones y mejoras según las necesidades detectadas.  
* Atención a solicitudes de soporte técnico por parte de los usuarios.

Esta metodología asegura una implementación eficiente y alineada con las necesidades de la UPT, garantizando el éxito del proyecto y su impacto positivo en los procesos de evaluación docente.

**Atributos de Calidad de Software**

Los atributos de calidad del software son características que definen qué tan bien cumple un sistema con los requisitos funcionales y no funcionales establecidos. Para el "Dashboard de Evaluación Docente: Insights Estadísticos de 'Tu Opinión Cuenta'", los principales atributos de calidad considerados son:

#### **1\. Usabilidad**

* **Definición:** Facilidad con la que los usuarios pueden interactuar con el dashboard.  
* **Aplicación:** El sistema contará con una interfaz intuitiva, organizada y amigable que permita a los usuarios acceder a la información rápidamente, incluso sin experiencia técnica previa.

#### **2\. Fiabilidad**

* **Definición:** Capacidad del software para funcionar correctamente bajo condiciones específicas durante un periodo de tiempo.  
* **Aplicación:** El sistema procesará los datos de las encuestas de manera precisa y estará diseñado para minimizar errores, asegurando la exactitud de los resultados y reportes.

#### **3\. Rendimiento**

* **Definición:** Eficiencia con la que el sistema utiliza los recursos disponibles para ejecutar tareas.  
* **Aplicación:** El dashboard procesará grandes volúmenes de datos en tiempo real, ofreciendo respuestas rápidas a consultas y generación de gráficos.

#### **4\. Seguridad**

* **Definición:** Protección contra accesos no autorizados y manejo seguro de datos sensibles.  
* **Aplicación:** Implementación de mecanismos como cifrado de datos, autenticación de usuarios y políticas de acceso para garantizar la privacidad y confidencialidad de los datos de los estudiantes y docentes.

#### **5\. Escalabilidad**

* **Definición:** Capacidad del software para adaptarse al crecimiento en el volumen de datos o usuarios sin afectar su desempeño.  
* **Aplicación:** El diseño del sistema permitirá incorporar nuevas funcionalidades o manejar un mayor número de encuestas sin necesidad de modificaciones significativas.

#### **6\. Mantenibilidad**

* **Definición:** Facilidad con la que se pueden realizar modificaciones o actualizaciones en el sistema.  
* **Aplicación:** El código y la arquitectura estarán documentados, asegurando que futuros desarrollos o ajustes puedan realizarse de manera eficiente y sin comprometer la estabilidad del sistema.

#### **7\. Portabilidad**

* **Definición:** Capacidad del software para ser utilizado en diferentes plataformas o entornos.  
* **Aplicación:** El dashboard será accesible desde distintos dispositivos, como computadoras de escritorio o laptops, y compatible con navegadores populares como Google Chrome.

#### **8\. Interoperabilidad**

* **Definición:** Habilidad del sistema para interactuar con otros sistemas o plataformas.  
* **Aplicación:** El dashboard integrará datos provenientes de "Tu Opinión Cuenta" y herramientas como SQL Server, asegurando una transferencia de información fluida entre sistemas.

Estos atributos garantizan que el dashboard cumpla con altos estándares de calidad, asegurando su funcionalidad, sostenibilidad y valor para la UPT.

**Beneficios para la empresa:**

 La implementación del "Dashboard de Evaluación Docente: Insights Estadísticos de 'Tu Opinión Cuenta'" ofrece múltiples beneficios para la Universidad Privada de Tacna (UPT), impactando positivamente en diversos aspectos institucionales:

####  **Mejora en la Gestión Académica**

* Centraliza la información de las encuestas de evaluación docente, facilitando el análisis y la toma de decisiones estratégicas.  
* Identifica áreas de mejora en el desempeño docente, permitiendo implementar acciones correctivas oportunas.

#### **Eficiencia Operativa**

* Automatiza procesos administrativos como la generación de reportes y análisis de tendencias, reduciendo el tiempo y esfuerzo del personal encargado.  
* Optimiza los recursos institucionales al enfocarse en áreas específicas que requieren atención.

#### **Transparencia y Participación**

* Fomenta la confianza de estudiantes y docentes al proporcionar una herramienta que asegura la transparencia en la evaluación.  
* Promueve la participación estudiantil, incentivando la respuesta en las encuestas al mostrar que los resultados generan mejoras visibles.

####  **Incremento de la Calidad Educativa**

* Facilita la evaluación constante de los procesos educativos, contribuyendo a un entorno de mejora continua.  
* Permite a la UPT posicionarse como una institución innovadora y comprometida con la excelencia académica.

#### **Reducción de Costos**

* Minimiza los costos administrativos al eliminar procesos manuales y el uso de documentos físicos.  
* Ahorra tiempo en la elaboración y análisis de reportes, permitiendo al personal enfocarse en actividades de mayor valor estratégico.

**Desarrollo de la Solución**

**El Análisis de Factibilidad es un componente crucial para determinar si el proyecto es viable desde diferentes perspectivas. A continuación, se presenta un desglose del análisis de factibilidad técnica, económica, operativa, social, legal y ambiental del Sistema** 

**Análisis de Factibilidad**

El estudio de Factibilidad busca analizar los beneficios generales obtenidos con el desarrollo del dashboard a la empresa y sus procesos.

Estos beneficios incluyen la agilización del control de los usuarios.

Se va a requerir una computadora para el desarrollo con las siguientes características:

| *COMPUTADORAS PARA EL DESARROLLO* |  |
| :---- | :---- |
| ***Hardware*** | ***Descripción*** |
| *Monitor* | *Samsung 24’Hp 24’* |
| *Procesador* | *Intel Core i7  3.40GHz* |
| *Sistema Operativo* | *Windows 10 Professional 64 bits* |
| *RAM* | *12 GB* |
| *Almacenamiento* | *1 – 2 TB* |
| *Impresora* | *HP Deskjet 4530* |
| ***Software*** | ***Descripción*** |
| *Navegador* | *Google Chrome* |
| *Diseñador de base de datos* | *MySQL Workbench 8.0* |
| *Entorno de Desarrollo* | *POWER BI* |
| *Modelador Visual de sistemas software.* | *IBM Rational Rose Enterprise Edition* |
| *Herramientas Microsoft* | *Microsoft Office 365 Empresa Estándar* |

1. Factibilidad Técnica

Requerimientos Técnicos para el desarrollo del Proyecto

| Características | Requerimientos mínimos |
| :---- | :---- |
| Procesador | Intel Core i5 2.4ghz |
| Sistema Operativo | Windows 11 Professional 64 bits |
| RAM | 16GB |
| Almacenamiento | 1TB |
| Software | Google Chrome IBM Rational Rose Enterprise   SQL Server Management Studio 18 **Microsoft Office 365 Empresa Estándar** |

 

Características comerciales de software para desarrollo

| Software | Licencia |
| :---- | :---- |
| Google Chrome | Gratuita |
| IBM Rational Rose Enterprise | Gratuita |
| **Microsoft 365 Empresa Estándar** | $ 12.50 |
| SQL Server Management Studio 20 | $ 850.00 |

 

Requerimientos Técnicos para funcionamiento:

Para la implementación del sistema se requerirá un servidor, el cual debe contar con las siguientes características mínimas.

| Requerimientos del servidor |  |
| :---- | :---- |
| **Hardware** | **Software** |
| Procesador: Intel Core i7 3.4ghz | Sistema Operativo:  Windows Server 2022 Datacenter 64 bits |
| Memoria: RAM 16GB | Base de datos: SQL Server Management Studio 20 |
| Disco Duro: 2TB HDD |   |

 

 

 

| Requerimientos del equipo |  |
| :---- | :---- |
| **Hardware** | **Software** |
| Procesador: Intel Core i5 2.4ghz | Sistema Operativo: Windows 11 Professional 64 bits |
| Memoria: RAM 8GB | Visual Studio Enterprise 2022 |
| Disco Duro: 1TB HDD |   |

 

1. **Factibilidad Económica**

Este estudio tiene como finalidad evaluar la viabilidad del proyecto en el área económica, es decir, si existen los recursos para invertir en el desarrollo del dashboard y sus beneficios al momento de implementarlo.

Inversión Inicial de Costos por el Paquete Microsoft 365 Empresa Estándar \= $12.50

Inversión Inicial de Costos por la Licencia de Visual Studio Enterprise 2019 (Suscripción de Professional) \= $45.00

Inversión Inicial de Costos por la Licencia de Microsoft SQL Server \= $850

Definir los siguientes costos:

1. **Costos Generales** 

| *Materiales de uso diario* | *Coste (1 mes)* |
| :---- | :---- |
| *Papeles* | *$4.00* |
| *Lapiceros* | *$2.00* |
| *Correctores* | *$2.00* |
| *Marcadores* | *$2.00* |
| *Engrapadora* | *$10.00* |
| *Grapas* | *$2.00* |
| *Clips* | *$0.50* |
| *Total* | *$22.5* |

   2. Costos operativos durante el desarrollo 

| *Servicio* | *Costo (1 mes)* |
| :---- | :---- |
| *Oficina* | *$300* |
| *Servicio Eléctrico* | *$30* |
| *Servicio de Agua* | *$10* |
| *Total* | *$340* |

      3. Costos del ambiente

| Servicio | Coste (1 mes) |
| :---- | :---- |
| Acceso a Internet | $50 |
| Total | $50 |

      4. Costos de personal

| *Rol* | *Horario (Lunes a Viernes)* | *Pago* |
| :---- | :---- | :---- |
| *Analista* | *8:00 – 16:00* | *$350* |
| *Administrador de base de datos* | *8:00 – 16:00* | *$300* |
| *Programador* | *13:00 – 21:00* | *$300* |
| *Diseñador* | *13:00 – 21:00* | *$250* |
| *Documentador* | *13:00 – 21:00* | *$250* |
| *Total* |  | *$1450* |

   2. **Factibilidad Operativa**

El dashboard para la evaluación docente presenta una alta factibilidad operativa, dado que se integra fácilmente en los procesos existentes en la Universidad Privada de Tacna (UPT) y su diseño intuitivo asegura que los usuarios puedan manejarlo sin necesidad de grandes adaptaciones.

**Beneficios del Producto**

1. Simplifica el análisis y la visualización de datos de "Tu Opinión Cuenta".  
   2. Automatiza procesos como la generación de reportes y la identificación de patrones de evaluación.  
   3. Reduce la carga administrativa, permitiendo a los encargados centrarse en tareas de mejora educativa.

**Capacitación mínima y facilidad de uso**  
El dashboard será fácil de usar, y el personal administrativo recibirá una capacitación breve para manejar sus principales funcionalidades, como la creación de reportes, la consulta de tendencias y la interpretación de resultados.

**Interfaz amigable y accesibilidad**  
La interfaz gráfica está diseñada para ser clara y accesible desde dispositivos como computadoras y laptops, facilitando su uso tanto por la administración como por los docentes.

**Automatización de procesos clave**  
Los reportes y análisis serán generados automáticamente, eliminando la necesidad de cálculos manuales y asegurando la precisión de los datos.

**Gestión eficiente de recursos**  
Al identificar áreas problemáticas o patrones recurrentes, se optimizará la asignación de recursos para mejorar el desempeño docente.

**Soporte técnico y mantenimiento mínimo**  
El sistema requerirá poco mantenimiento, ya que las actualizaciones de software se realizarán de manera remota y automática.

**Escalabilidad y flexibilidad**  
El dashboard está diseñado para escalar conforme crezca la cantidad de encuestas o las necesidades de análisis, asegurando su utilidad a largo plazo.

4. **Factibilidad Legal**

El proyecto cumple con todas las normativas legales relevantes, principalmente en lo relacionado con la protección de datos personales y la privacidad de los usuarios.

* **Cumplimiento de la Ley de Protección de Datos Personales**  
  Se garantizará la anonimización de los datos de los estudiantes y docentes. El acceso a la información será restringido y solo para personal autorizado.  
* **Reglamento General de Protección de Datos (GDPR)**  
  Aunque el sistema estará orientado a un contexto local, se considerarán estándares internacionales para la protección de datos, como el GDPR, en caso de futuros intercambios o expansiones.  
* **Seguridad de los datos**  
  El dashboard contará con protocolos de cifrado, autenticación segura y respaldo periódico de la información, cumpliendo con altos estándares de seguridad.

  5. **Factibilidad Social**

El impacto social del proyecto es positivo, al fomentar la participación y transparencia en la evaluación docente.

* **Mejora de la experiencia del usuario**  
  El dashboard permitirá un acceso rápido y sencillo a los resultados de las evaluaciones, promoviendo una mayor confianza en el sistema.  
* **Fomento de la transparencia**  
  Los resultados visibles fomentarán la participación estudiantil y la confianza de los docentes en el proceso.  
* **Impacto comunitario**  
  El uso del dashboard posicionará a la UPT como una institución comprometida con la mejora continua, promoviendo la cultura de evaluación y retroalimentación en el ámbito académico.

  6. **Factibilidad Ambiental**

El impacto ambiental del proyecto es mínimo, dado que se trata de una solución principalmente digital.

* **Reducción del uso de papel**  
  Al digitalizar todos los reportes y procesos relacionados con la evaluación docente, se eliminará la necesidad de documentos físicos.  
* **Uso eficiente de recursos electrónicos**  
  Los equipos utilizados serán optimizados para garantizar un consumo energético bajo, promoviendo prácticas sostenibles.

## **Presupuesto** 

 

| Periodos | *0* | 1 | 2 | 3 | 4 | 5 | Total |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| **Ingresos** |   | 2,606 | 3,050 | 2,800 | 2,555 | 3,112 | **14,123** |
| **Costos** |   | 1800 | 1800 | 1800 | 1800 | 1800 | **9,000** |
| **Inversión** | 2770 |   |   |   |   |   | **2,770** |
| **Flujo** | \-2770 | 806 | 1,250 | 1,000 | 755 | 1,312 | **5,123** |

**Analisis de Rentabilidad**

El análisis de rentabilidad tiene como objetivo evaluar la viabilidad económica del proyecto "Dashboard de Evaluación Docente: Insights Estadísticos de 'Tu Opinión Cuenta'" para la Universidad Privada de Tacna (UPT), analizando la relación entre los costos de inversión y los beneficios obtenidos a lo largo del tiempo.

#### **1\. Inversión Inicial**

El costo inicial del proyecto se compone de las siguientes inversiones:

* **Microsoft 365 Empresa Estándar**: $12.50 por mes.  
* **Licencia de Visual Studio Enterprise 2019 (Suscripción de Professional)**: $45.00.  
* **Licencia de Microsoft SQL Server**: $850.00.

**Total de inversión inicial**: $907.50

#### **2\. Costos Operativos Anuales**

Los costos operativos incluyen los gastos generales, costos de personal y costos de ambiente durante el desarrollo del proyecto:

* **Costos Generales (materiales de oficina)**: $22.50 por mes.  
* **Costos operativos de oficina**: $340.00 por mes.  
* **Costos del ambiente (acceso a Internet)**: $50.00 por mes.  
* **Costos de personal**: $1,450.00 por mes (analista, administrador de base de datos, programador, diseñador, documentador).

**Total de costos operativos mensuales**: $1,862.50  
**Total de costos operativos anuales**: $22,350.00

#### **3\. Beneficios del Proyecto**

Los beneficios esperados del proyecto incluyen la mejora en la eficiencia del proceso de evaluación docente, reducción de costos administrativos y optimización de la toma de decisiones. Según los cálculos de ingresos y costos durante los primeros años, los ingresos generados a través de la optimización de recursos y la mejora en la calidad educativa se proyectan de la siguiente manera:

* **Ingresos proyectados para el primer año**: $2,606.00  
* **Ingresos proyectados para el segundo año**: $3,050.00  
* **Ingresos proyectados para el tercer año**: $2,800.00  
* **Ingresos proyectados para el cuarto año**: $2,555.00  
* **Ingresos proyectados para el quinto año**: $3,112.00  
* **Total de ingresos proyectados**: $14,123.00

#### **4\. Análisis de Rentabilidad**

* **Relación Beneficio/Costo (B/C)**:  
  La relación B/C se calcula dividiendo los beneficios totales entre los costos totales. En este caso, la relación B/C es 1.1295, lo que indica que por cada dólar invertido, se espera un retorno de aproximadamente 1.13 dólares. Como la relación B/C es mayor que 1, el proyecto es rentable.  
* **Valor Actual Neto (VAN)**:  
  El VAN mide el valor actual de los flujos de caja futuros generados por el proyecto. Un VAN positivo indica que el proyecto es rentable. En este caso, el VAN es de $4,059.67, lo que confirma que la inversión es viable y genera un retorno positivo.  
* **Tasa Interna de Retorno (TIR)**:  
  La TIR es la tasa de descuento que hace que el VAN sea igual a cero. En este caso, la TIR es del 24%, lo cual es significativamente superior a la tasa de descuento de 8%, lo que confirma la viabilidad y rentabilidad del proyecto.

#### 

El análisis de rentabilidad muestra que el proyecto "Dashboard de Evaluación Docente: Insights Estadísticos de 'Tu Opinión Cuenta'" es económicamente viable. Con una relación B/C superior a 1, un VAN positivo y una TIR que excede el costo de oportunidad, el proyecto representa una inversión rentable para la Universidad Privada de Tacna. Los beneficios tangibles e intangibles que ofrece el proyecto, como la mejora en la calidad educativa, la optimización de procesos y la transparencia en la evaluación docente, justificarán la inversión inicial y operativa, asegurando su éxito a largo plazo.

**Conclusiones**

El proyecto "Dashboard de Evaluación Docente: Insights Estadísticos de 'Tu Opinión Cuenta'" es técnicamente viable, ya que la infraestructura de hardware y software necesaria para su desarrollo y operación es accesible y cumple con los requerimientos mínimos. La integración del sistema con las plataformas existentes en la UPT es sencilla, lo que asegura una implementación fluida.

El análisis económico muestra que el proyecto es rentable, con una relación beneficio/costo superior a 1, lo que indica que por cada dólar invertido se espera obtener un retorno significativo. El Valor Actual Neto (VAN) positivo y la Tasa Interna de Retorno (TIR) del 24% confirman la viabilidad financiera y la rentabilidad a largo plazo.

El proyecto contribuirá significativamente a la mejora de la calidad educativa en la UPT, permitiendo una evaluación docente más transparente, precisa y eficiente. La visualización de los resultados de las encuestas de "Tu Opinión Cuenta" facilitará la identificación de áreas de mejora en el desempeño docente, promoviendo la mejora continua.

[**Anexo 01 Informe de Factibilidad**](https://docs.google.com/document/d/1NUhrtDNbyICf1zkNHn_beGhaBRmV6lOr/edit?usp=drive_link&ouid=110157796656622787356&rtpof=true&sd=true)

[**Anex0 02 Documento de Visión**](https://docs.google.com/document/d/1zoC-9G4bLanYeAFu0_Wq1CPaFVvqWncO/edit?usp=drive_link&ouid=110157796656622787356&rtpof=true&sd=true)

[**Anexo 03 Documento SRS**](https://docs.google.com/document/d/1nF4ORSrqOCzq5OlzX35KSbjE0TT7rgax/edit?usp=drive_link&ouid=110157796656622787356&rtpof=true&sd=true)

[**Anexo 04 Documento SAD**](https://docs.google.com/document/d/1xMAcz412_PLlkWHZe9jFu5O7bJJHCbuB/edit?usp=drive_link&ouid=110157796656622787356&rtpof=true&sd=true)

**Anexo 05 Manuales y otros documentos**

[image1]: <data:image/png;base64,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>