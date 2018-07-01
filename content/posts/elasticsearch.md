---
title: "Elasticsearch"
date: 2016-07-27T20:00:00+01:00
author: "Henrique Leal"
---

E ai pessoal, tenho andado um pouco sumido durante esses últimos tempos, mas
agora que tudo voltou a normalidade tornarei a escrever algumas coisas por
aqui.

Ultimamente tenho trabalhado com um novo amigo, o Elasticsearch. Mas afinal o
que é esse cara?

O Elasticsearch é um servidor de buscas distribuído baseado no Apache Lucene.
Foi desenvolvido por Shay Banon e disponibilizado sobre os termos Apacha
License. Ele foi desenvolvido em Java e possui código fonte aberto liberado sob
os termos da Licença Apache.

Ele possui uma interface rest para que seja fácil integrar com qualquer
linguagem que você deseje. Com as configurações default fica acessível atráves
do endereço http://localhost:9200 e você pode enviar comandos via curl.

{{< highlight sh "linenos=table" >}}
curl -X GET http://localhost:9200
{{< / highlight >}}

Esse comando mostra as configurações básicas do Elasticsearch instalado.

### Indexando novos documentos

O Elasticsearch usa um esquema de indice, tipo e id para gravar um elemento
novo. Então o formato da url para indexar novos documentos é o seguinte:

{{< highlight sh "linenos=table" >}}
http://hostname:port/index_name/doc_type/doc_id
{{< / highlight >}}

Exemplo:

{{< highlight sh "linenos=table" >}}
curl -XPOST http://localhost:9000/blog/articles/1 -d '{"content": "Senhor dos anéis."}'
{{< / highlight >}}

### Atualizando um documento

Por default o Elasticsearch sobreescreve documentos ao invés de atualiza-los.
Então para esse trabalho precisamos utilizar a api de update. Cujo formato da
url é o seguinte:

{{< highlight sh "linenos=table" >}}
http://hostname:port/index_name/doc_type/doc_id/_update
{{< / highlight >}}

Utilizando essa api precisamos de um pequeno truque que é passar o campo a ser
atualizado dentro de um json na chave doc.

Exemplo:

{{< highlight sh "linenos=table" >}}
curl -XPUT http://localhost:9200/blog/articles/1 -d '{"doc": {"content": "Senhor dos anéis 2"}}'
{{< / highlight >}}

### Deletando documentos

Esse é a parte mais fácil. Seguindo o padrão rest o padrão temos o seguinte:

{{< highlight sh "linenos=table" >}}
http://hostname:port/index_name/doc_type/doc_id
{{< / highlight >}}

Exemplo:

{{< highlight sh "linenos=table" >}}
curl -XDELETE http://localhost:9200/blog/articles/1
{{< / highlight >}}

Esse é um início do funcionamento do Elasticsearch se tiverem interesse deixo
alguns links abaixo para aprofundar seu conhecimento nessa ferramenta.

### Referências

* http://elasticsearch-cheatsheet.jolicode.com
* https://marcobonzanini.com/2015/02/02/how-to-query-elasticsearch-with-python