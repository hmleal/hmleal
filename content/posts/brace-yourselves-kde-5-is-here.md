---
title: "Brace Yourselves Kde 5 Is Here"
date: 2015-01-27T20:00:00+01:00
author: "Henrique Leal"
---

Conforme noticiado essa semana a coleção de softwares do KDE tem sido
atualizado para versão do KDE Applications. Com isso os desenvolvedores do KDE
iniciaram o port dos seus software para o KDE Framework e Qt5.

Quando um port do KDE Applications para o KDE Frameworks é considerado estável,
este é disponibilizado com o KDE Applications e seu desenvolvimento e correções
de bugs não são mais aplicados para a versão Qt4/KDE4. Isto significa que
conforme as versões portadas das aplicações forem disponibilizadas o ArchLinux
irá mudar para a versão mais nova. Ao mesmo tempo, irão remover o prefixo KDE
dos módulos (ex: kdebase-konsole -> konsole).

O resultado dessa transição é que alguns pacotes irão usar Qt5 e outros Qt4.
Como recomendação do ArchLinux é necessário atualizar o seu sistema para o
Plasma 5.2 que já está disponibilizado.

### Migrando para o Plasma 5.2

Conforme a Wiki para uma instalação correta do Plasma 5.2 é necessário remover
o kdebase-workspace antes de efetuar o processo. Para isso é recomendado que
você inicie o sistema em modo texto para isso na tela de login aperte
CTRL + ALT + F1. Efetue login e remova os pacotes necessários.

{{< highlight sh "linenos=table" >}}
# pacman -Rs kdebase-workspace
{{< / highlight >}}

Depois dessa remoção é só instalar o Plasma 5.2

{{< highlight sh "linenos=table" >}}
# pacman -S plasma
{{< / highlight >}}

Essa nova versão do Plasma abandonou a recomendação de usar o KDM como manager de inicialização então também é necessário a instalação do SDDM

{{< highlight sh "linenos=table" >}}
# pacman -S sddm
{{< / highlight >}}

e sua configuração:

{{< highlight sh "linenos=table" >}}
# systemctl disable kdm && systemctl enable sddm
{{< / highlight >}}

Depois de tudo isso agora é só reiniciar o sistema e cruzar os dedos.
Infelizmente tive alguns problemas depois do procedimento um deles foi a
utilização de mais de um monitor e para corrigir isso foi só instalar o
seguinte pacote:

{{< highlight sh "linenos=table" >}}
# pacman -S kscreen-frameworks
{{< / highlight >}}

### Referências

* https://bbs.archlinux.org/viewtopic.php?id=188574
* https://www.archlinux.org/news/transition-of-kde-software-to-the-kde-framework-and-qt-5/