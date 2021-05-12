# Proyecto de integración de React JS con Ruby on Rails.

Ejercicio TORNEO DE VERANO para entrevista técnica CON SCV.

## Tabla de Contenidos

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
```

_React_

```
> bundle add react_on_rails --strict
> bundle exec rails webpacker:install:react
> rails generate react_on_rails:install

> npm i bootstrap reactstrap
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

<<<<<<< HEAD
### Algoritmos preliminares del problema

```
var teams = new Array ('River', 'Boca', 'Racing', 'Independiente');
var matches = [];

function invertMatch(match) {
    let invert = `${ match.split('-')[1] }-${ match.split('-')[0] }`;
    return invert;
}

function ifNotExistsMatchInsertPush(match) {
    let inversoMatch = invertMatch(match);
    if(matches.includes(inversoMatch))
        return;

    matches.push(match);
    //console.log('matches: ');
    //console.log(matches);
}

for (let i = 0; i < teams.length; i++) {
    for (let j = 1; j < teams.length; j++) {
        let match = teams[i] + '-' + teams[j];
        if(i != j) {
            if((i - 1) % 2 == 1) {
                ifNotExistsMatchInsertPush(match);
                console.log('True ' + match);
            }
            else {
                ifNotExistsMatchInsertPush(match);
                console.log('False ' + match) ;
            }
        }
    }
}
console.log('FECHA 1');
console.log(matches[0] + ' & ' + matches[5]);
console.log('FECHA 2');
console.log(matches[1] + ' & ' + matches[4]);
console.log('FECHA 3');
console.log(matches[2] + ' & ' + matches[3]);
```

```
let number_of_rounds = 1
let number_of_matches =2
let matches_home = [];
let matches_away = [];

for (let i = 0; i <= number_of_rounds; i++) {
    for (let j = 0; j <= number_of_matches; j++) {
        let team_1 = teams[j];
        let team_2 = teams[number_of_rounds - j];
        matches_home << [team_1, team_2];
        matches_away << [team_2, team_1];
    }

    let home_rounds = matches_home;
    let away_rounds = matches_away;


  last = teams.pop
  teams.insert(1, last)

}
```
=======
### Algoritmo preliminar del problema


### Tablas
[Tablas del sistema]
(https://github.com/Fernadiego/Tournaments/blob/master/app/assets/images/dataBase.png)

