

# Wörterbücher – Revit-Anwendungsfälle

Wollten Sie jemals etwas in Revit anhand eines Datenelements nachschlagen?

#### Wahrscheinlich haben Sie dazu etwa die folgenden Schritte ausgeführt:

![BILD](images/9-4/9-4_roomLookupByIndex.png)

> In der Abbildung oben gezeigt, sammeln wir aller Räume im Revit-Modell, rufen den Index des gewünschten Raum (nach Raumnummer) ab, und erhalten schließlich die Indexnummer des Raums.

### Lassen Sie uns das nun mit Wörterbüchern probieren.

> Laden Sie die zu dieser Übungslektion gehörige Beispieldatei herunter (durch Rechtsklicken und Wahl der Option "Save Link As"): [RoomDictionary.dyn](datasets/9-4_roomDictionary.dyn). Eine vollständige Liste der Beispieldateien finden Sie im Anhang.

![BILD](images/9-4/9-4_roomDictionary-01.png) Zuerst müssen wir alle Räume in das Revit-Modell sammeln.

> * Wir wählen wir die Revit-Kategorie, die wir verwendenden möchten (in diesem Fall Räume).
* Wir weisen Dynamo an, alle diese Elemente zu sammeln.

![BILD](images/9-4/9-4_roomDictionary-02.png) als Nächstes müssen wir entscheiden, welche Schlüssel wir verwenden, um diese Daten zu suchen. (Informationen zu Schlüsseln finden Sie im Abschnitt [9-1 Was ist ein Wörterbuch?](9-1_What-is-a-dictionary,md)).

> * Die Daten, die wir verenden, ist die Raumnummer.

![BILD](images/9-4/9-4_roomDictionary-03.png) Jetzt erstellen wir das Wörterbuch mit den angegebenen Schlüsseln und Elementen.

> * Der Block ```Dictionary.ByKeysValues``` erstellt ein Wörterbuch anhand der entsprechenden Eingaben.
* Bei ```Schlüsseln``` muss es sich um eine Zeichenfolge handelt, aber ```Werte``` können verschiedene Objekttype sein.

![BILD](images/9-4/9-4_roomDictionary-04.png) Jetzt können wir einen Raum aus dem Wörterbuch über seine Raumnummer abrufen.

> * ```Zeichenfolge``` ist der Schlüssel, den wir verwenden, um ein Objekt im Wörterbuch nachzuschlagen.
* ```Dictionary.ValueAtKey``` ruft das Objekt aus dem Wörterbuch ab.

---

### Mit derselben Wörterbuch-Logik können wir auch Wörterbücher mit gruppierten Objekten erstellen. Wenn wir zum Beispiel alle Räume auf einer bestimmten Ebene nachschlagen möchten, können das obige Diagramm folgendermaßen verändern.

![BILD](images/9-4/9-4_roomDictionary-05.png)

> * Anstatt die Zimmernummer als Schlüssel zu nutzen, können wir nun einen Parameterwert verwenden (in diesem Fall Ebene).

![BILD](images/9-4/9-4_roomDictionary-06.png)

> * Jetzt können wir die Räume mach der Ebene gruppieren, auf der sie sich befinden.

![BILD](images/9-4/9-4_roomDictionary-07.png)

> * Wir haben die Elemente nach Ebene gruppiert. Jetzt können wir die gemeinsam verwendeten Schlüssel (eindeutige Schlüssel) als unsere eindeutigen Schlüssel für das Wörterbuch und die Listen der Räume als die Elemente verwenden.

![BILD](images/9-4/9-4_roomDictionary-08.png)

> * Letztendlich können wird wie Ebenen im Revit-Modell nutzen, um zu ermitteln, welche Räume sich auf dieser Ebene im Wörterbuch befinden. ```Dictionary.ValueAtKey``` nimmt den Ebenennamen und gibt die Raumobjekte auf dieser Ebene wieder.

Mit dem Wörterbuch stehen uns praktisch unbeschränkte Möglichkeiten zur Verfügung. Die Möglichkeit, eine Beziehung zwischen Ihren BIM-Daten in Revit und dem eigentlichen Element herzustellen, ermöglicht zahlreiche Anwendungsfälle.

