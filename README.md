# Inova.farm Hackaton - Equipe Produs

## O que é
Produs é um sistema que permite o acompanhamento contínuo, de fácil acesso, da composição nutricional de folhas de videira a fim orientar uma gestão eficiente de recursos e materiais para controle da produção.
Acesse: <http://produs.herokuapp.com>

## O que o Produs faz
  - Realiza leituras via fotosensor da concentração de clorofila e arranjo iônico dos nutrientes
  - Infere a composição e teores nutricionais da folha
  - Avalia de forma sistêmica o índice de balanço nutricional da folha em suas fases críticas
  - Avalia a performance nutricional e seu impacto na produtividade da videira

## Pré-Requisitos
* Ruby 5.2.1
* Rails 5.2.2
* PostgreSQL > 9.5

## Instalação - Aplicação Rails
#### Aplicação
```sh
bundle install
```
#### Banco de Dados
```sh
rails db:drop db:create db:migrate db:seed
```
#### Rodar a Aplicação
```sh
rails s
```

## Visualizações - Power Bi
* Obter Dados -> Banco de Dados PostgreSQL
* Servidor - ec2-54-197-234-33.compute-1.amazonaws.com:5432
* Banco de Dados - dcr56lsd8p6f7v
* Credenciais:
* Username - sklsmtvzqewggf
* Password - ee65047d47e7a923d1470705e8b78f37811b29bddc362cab1adb7f390364f8f9

## NodeMCU
O código para o sensor de luminosidade encontra-se no caminho `lib/chlorophyll-meter/chlorophyll-meter.ino`
O único pré-requisito são as bibliotecas do ESP8266: ESP8266WiFi e ESP8266HTTPClient

### Configuração de Rede
```
const char* ssid = "nome-do-wifi";
const char* password = "senha";
```
### Configuração do Servidor
```
http.begin("http://www.endereco-do-site.com");
```

## Licenças
* [Produs](https://github.com/leodcs/produs) - MIT
* [NodeMCU](http://www.nodemcu.com/index_en.html) - MIT
* [Rails](https://rubyonrails.org/) - MIT
* [PostgreSQL](www.postgresql.org) - PostgreSQL License
* [Puma](https://github.com/puma/puma) - BSD 3-Clause
* [Power Bi](https://www.powerbi.com/) - Free License


License
----

MIT
