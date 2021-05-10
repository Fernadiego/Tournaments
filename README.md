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

### Scaffolds

```
> rails generate scaffold Tournament description:string
> rails generate scaffold Fixture id_tournament:integer id_match:integer round:integer local:integer visitor:integer l_goals:integer v_goals:integer

```
