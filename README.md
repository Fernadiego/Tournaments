- [Requisitos](#requisitos)
- [Comandos utilizados](#comandos_utilizados)
- [Integración de ambientes](#integración_de_ambientes)

### Requisitos:

- Ruby Version 2.7.3p183 (2021-04-05 revision 6847ee089d) [x64-mingw32]

- Rails Version 6.1.3.1

- Node.js v14.16.1

- Yarn 1.22.10

- RSpec 3.10
  - rspec-core 3.10.1
  - rspec-expectations 3.10.1
  - rspec-mocks 3.10.2
  - rspec-support 3.10.2

### Comandos utilizados:

_Rails_

```
> rails new tournaments -T
```

_Rspec_

```
> gem install rspec
> rspec --init
> rails generate model test _model name:string (Creo model_test para probar el ambiente)
```

### Scaffolds

Generación de scaffolds Tournament, Fixture, Position, Match y Team

```
> rails generate scaffold Tournament description:string
> rails generate scaffold Fixture id_tournament:integer id_match:integer round:integer local:integer visitor:integer l_goals:integer v_goals:integer
```

### Testing

- C:\Users\Fernando\Documents\Proyectos\tournaments\spec

### Integración de ambientes:

Poner en marcha el servidor de Rails, mediante este comando.

```
> rails server
```

Para la integracion de Rails probamos ingresando en:
[`http://localhost:3000`](http://localhost:3000)

Para la integracion de React probamos ingresando en:
[`http://localhost:3000/hello_world`](http://localhost:3000/hello_world)

### Análisis preliminar del problema

1. Para cada partido necesito evaluar 3 atributos:
   Local
   Visitante
   Fecha
2. Un mismo equipo no puede jugar mas de una vez por fecha.

3. Un equipo no puede jugar contra si mismo.

4. Como el numero de equipos debe ser par, todos los equipos participan en todas las fechas.

5. Hay la mitad de partidos que el numero total de equipos intervinientes por fecha.

6. La cantidad de fechas del torneo es igual a la cantidad de equipos menos 1.

7. Se asume que la distribucion de local y visitante se realiza equitativamente segun el orden en que aparecen los equipos
   y no se puede establecer prioridades en este sentido.

### Algoritmo preliminar del problema
