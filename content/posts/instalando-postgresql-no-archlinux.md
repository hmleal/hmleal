---
title: "Instalando Postgresql No Archlinux"
date: 2015-01-24T20:00:00+01:00
author: "Henrique Leal"
---

Olá pessoal o artigo é sobre como instalar e rodar o PostgreSQL no seu
ArchLinux. Atualmente esse é o banco primário no meu stack de desenvolvimento.

O PostgreSQL é um poderoso sistema gerenciador de banco de dados
objeto-relacional de código aberto. Tem mais de 15 anos de desenvolvimento
ativo e uma arquitetura que comprovadamente ganhou forte reputação de
confiabilidade, integridade de dados e conformidade a padrões. Roda em todos os
grandes sistemas operacionais, incluindo GNU/Linux, Unix (AIX, BSD, HP-UX, SGI
IRIX, Mac OS X, Solaris, Tru64), e MS Windows.

### Instalação no ArchLinux

A instalação é mais simples impossível é necessário apenas o seguinte comando:

{{< highlight sh "linenos=table" >}}
# pacman -S postgresql
{{< / highlight >}}

Um usuário chamado postgres será criado automáticamente com a instalação.
Então será necessário especificar a senha do usuário.

{{< highlight sh "linenos=table" >}}
# passwd postgres
{{< / highlight >}}

Depois disso temos o banco de dados instalado e pronto para uso.
E como ninguém é de ferro para ficar usando o terminal para efetuar o
gerenciamento do banco é interessante a instalação da ferramenta pgadmin3.

{{< highlight sh "linenos=table" >}}
# pacman -S pgadmin3
{{< / highlight >}}

### Referências

* http://www.postgresql.org.br/old/sobre
* ArchWiki: https://wiki.archlinux.org/index.php/PostgreSQL