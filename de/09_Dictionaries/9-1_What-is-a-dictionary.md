

# Wörterbücher

Dynamo 2.0 führt das Konzept der Trennung des Datentyps Wörterbuch und des Datentyps Liste ein. Diese Neuerung bewirkt einige wichtige Änderungen hinsichtlich der Art und Weise, wie Sie Daten erstellen und in Ihren Arbeitsabläufen verwenden. Vor Version 2.0 waren Wörterbücher und Listen ein kombinierter Datentyp. Kurz gesagt: Listen waren eigentlich Wörterbücher mit ganzzahligen Schlüsseln.

* #### Was ist ein Wörterbuch?

Bei einem Wörterbuch handelt es sich um einen Datentyp, der aus einer Sammlung von Schlüssel-Wert-Paaren besteht. Jeder Schlüssel in einer Sammlung ist eindeutig. In einem Wörterbuch gibt es keine Reihenfolge. Im Prinzip "schlagen Sie Dinge nach", indem Sie einen Schlüssel anstelle eines Indexwerts in einer Liste verwenden. *In Dynamo 2.0 können Schlüssel nur Zeichenfolgen sein.*

* #### Was ist eine Liste?

Bei einer Liste handelt es sich um einen Datentyp, der aus einer Sammlung von sortierten Werten besteht. In Dynamo verwenden Listen Ganzzahlen als Indexwerte.

* #### Warum wurde diese Änderung vorgenommen und warum ist sie wichtig für mich?

Durch die Trennung von Wörterbüchern und Listen werden Wörterbücher zu wichtigen Datentypen, mit denen Sie schnell und einfach Werte speichern und nachschlagen können, ohne die Indexwerte kennen oder eine exakte Listenstruktur durch Ihre Arbeitsabläufe beibehalten zu müssen. Während der Benutzertests sahen wir eine erhebliche Reduzierung der Diagrammgröße, wenn Wörterbüchern anstatt mehrerer ```GetItemAtIndex```-Blöcke verwendet wurden.

* #### Welche Änderungen wurden vorgenommen?

* Es wurden Änderungen an der *Syntax* vorgenommen. Die Initialisierung und Verwendung von Wörterbüchern und Listen in Codeblöcken funktioniert jetzt anders.
* Wörterbücher verwenden die folgende Syntax: ```{schlüssel:wert}```
* Listen verwenden die folgende Syntax: ```[wert,wert,wert]```

* Es wurden *neue Blöcke* in der Bibliothek eingeführt, mit denen Sie einfacher Wörterbücher erstellen, ändern und abfragen können.
* Listen, die in 1.x-Codeblöcken erstellt wurden, werden automatisch beim Laden des Skripts zur neuen Syntax migriert, die eckige ```[ ]``` anstelle von geschweiften Klammern ```{ }``` verwendet. ![BILD](images/9-1/DYN20_dictionary.png)

* #### Warum ist dies wichtig für mich? Wie würde ich diese Dateitypen verwenden?

In der Computerwissenschaft handelt es sich bei Wörterbüchern – wie bei Listen – um Sammlungen von Objekten. Während Listen jedoch in einer bestimmten Reihenfolge erstellt werden, sind die Sammlungen in Wörterbücher *nicht sortiert*. Es sind keine Nummernsequenzen (Indizes) erforderlich. Stattdessen werden *Schlüssel* verwendet.

In der folgenden Abbildung sehen Sie eine mögliche Verwendung eines Wörterbuchs. Wörterbücher werden häufig genutzt, um zwei Teile von Daten zu verbinden, die vielleicht keine direkte Beziehung zueinander aufweisen. In unserem Fall verbinden wir die spanische Version eines Worts mit der englischen Version, so dass wir das Wort später nachschlagen können. ![BILD](images/9-1/9-1_dictionaryExample.png)

