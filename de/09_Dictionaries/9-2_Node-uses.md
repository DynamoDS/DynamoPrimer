

# Wörterbuch-Blöcke

Dynamo 2.0 stellt eine Reihe von Wörterbuch-Blöcken für die Verwendung bereit. Dies umfasst die Blöcke *create, action und query*.

![BILD](images/9-2/9-2_dictionaryNodes.png)

* ```Dictionary.ByKeysValues``` erstellt ein Wörterbuch mit den bereitgestellten Werten und Schlüsseln. *(Die Anzahl der Einträge entspricht der Länge der kürzesten Liste.)*
* ```Dictionary.Components``` erstellt die Komponenten des Eingabe-Wörterbuchs. *(Dieser Vorgang ist die Umkehrung der Block-Erstellung.)*
* ```Dictionary.RemoveKeys``` erzeugt ein neues Wörterbuch-Objekt und entfernt die Eingabe-Schlüssel.
* ```Dictionary.SetValueAtKeys``` erzeugt ein neues Wörterbuch anhand der eingegebenen Schlüssel und Werte und ersetzt den aktuellen Wert in den entsprechenden Schlüsseln.
* ```Dictionary.ValueAtKey``` gibt den Wert am Eingabeschlüssel zurück.
* ```Dictionary.Count``` gibt an, wie viele Schlüssel-Wert-Paare sich im Wörterbuch befinden.
* ```Dictionary.Keys``` gibt auch zurück, welche Schlüssel derzeit im Wörterbuch gespeichert sind.
* ```Dictionary.Values``` gibt zurück, welche Werte derzeit im Wörterbuch gespeichert sind.

##### Die Möglichkeit, Daten allgemein mit Wörterbücher in Beziehung zu setzen, ist eine großartige Alternative zur vorherigen Verwendung von Indizen und Listen.

