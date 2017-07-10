

## Die Dynamo-Benutzeroberfläche

Die Benutzeroberfläche (UI) von Dynamo weist fünf Hauptbereiche auf, von denen der größte der Arbeitsbereich ist, in dem Sie Ihre visuellen Programme erstellen.

![Bereiche der Benutzeroberfläche](images/2-2/01-UI-Regions.jpg)

> 1. Menüs
2. Werkzeugkasten
3. Bibliothek
4. Arbeitsbereich
5. Ausführungsleiste

Machen Sie sich genauer mit der Benutzeroberfläche vertraut, und untersuchen Sie die Funktionalität der einzelnen Bereiche.

#### Menüs

In den Dropdown-Menüs können Sie einige der grundlegenden Funktionen der Dynamo-Anwendung aufrufen. Wie in fast jeder anderen Windows-Software finden Sie die Aktionen zum Verwalten von Dateien und Operationen zum Auswählen und Bearbeiten von Inhalten in den ersten beiden Menüs. Die übrigen Menüs sind für Dynamo spezifisch.

![Dropdown-Menüs](images/2-2/02-Menus.jpg)

> 1. Datei
2. Bearbeiten
3. Ansicht
4. Pakete
5. Einstellungen
6. Hilfe

#### Werkzeugkasten

Der Dynamo Werkzeugkasten enthält eine Reihe von Schaltflächen für den Schnellzugriff zum Arbeiten mit Dateien sowie die Befehle Rückgängig [Ctrl + Z] und Wiederholen [Ctrl + Y]. Ganz rechts befindet sich eine weitere Schaltfläche, über die Sie einen Snapshot des Arbeitsbereichs exportieren können. Dies ist für die Dokumentation und die gemeinsame Bearbeitung mit anderen äußerst nützlich.

![Aktualisierung erforderlich – geteilte Position des Werkzeugkastens](images/2-2/03-Toolbar.jpg)

> 1. Neu: Neue .dyn-Datei erstellen
2. Öffnen: Vorhandene .dyn-Datei (Arbeitsbereich) oder .dyf-Datei (benutzerdefinierter Block) öffnen
3. Speichern/Speichern unter: Aktive .dyn- oder .dyf-Datei speichern
4. Rückgängig: Die letzte Aktion rückgängig machen
5. Wiederholen: Die nächste Aktion wiederherstellen
6. Arbeitsbereich als Bild exportieren: Den angezeigten Arbeitsbereich als PNG-Datei exportieren

#### Bibliothek

Die Bibliothek enthält alle geladenen Blöcke, einschließlich der standardmäßigen Blöcke, die zum Lieferumfang gehört haben, sowie der zusätzlich geladenen benutzerdefinierten Blöcke und Pakete. Die Blöcke in der Bibliothek sind in Abhängigkeit davon, ob die Blöcke Daten **erstellen**, eine **Aktion** ausführen oder Daten **abfragen**, hierarchisch in Bibliotheken, Kategorien und ggf. Unterkategorien geordnet.

##### Durchsuchen

Standardmäßig enthält die **Bibliothek** acht Kategorien von Blöcken. Am besten untersuchen Sie zunächst die Kategorien **Core** und **Geometrie**, da sie die größte Anzahl an Blöcken enthalten. Das Durchsuchen dieser Kategorien stellt die schnellste Möglichkeit dar, um die Hierarchie dessen zu verstehen, was Sie zu Ihrem Arbeitsbereich hinzufügen können, und um neue Blöcke zu entdecken, die Sie niemals zuvor verwendet haben.

> Konzentrieren Sie sich zunächst auf die Standardsammlung an Blöcken. Beachten Sie, dass Sie diese Bibliothek später um benutzerdefinierte Blöcke, zusätzliche Bibliotheken und den Package Manager erweitern werden.

![AKTUALISIERUNG ERFORDERLICH - vollständige Breite - Bibliothekskategorien](images/2-2/04-LibraryCategories.jpg)

> 1. Analysieren
2. Integrierte Funktionen
3. Core
4. Geometrie
5. Migration
6. Office
7. Operatoren

Durchsuchen Sie die Bibliothek, indem Sie sich durch die Menüs klicken. Klicken Sie auf Geometry > Circle. Beachten Sie den neuen Abschnitt des Menüs, der eingeblendet wird, insbesondere die Bezeichnungen **Erstellen** und **Abfrage**.

![AKTUALISIERUNG ERFORDERLICH - vollständige Breite nutzen - Durchsuchen der Bibliothek](images/2-2/05-LibraryBrowsing.jpg)

> 1. Bibliothek
2. Kategorie
3. Unterkategorie: Erstellen/Aktionen/Abfrage
4. Block
5. Blockbeschreibung und -eigenschaften: Wird angezeigt, wenn Sie den Cursor auf das Blocksymbol bewegen.

Bewegen Sie den Cursor im Menü Kreis auf **ByCenterPointRadius**. Das daraufhin angezeigte Fenster enthält über den Namen und das Symbol hinaus noch weitere detaillierte Informationen zu dem Block. Dadurch können Sie schnell nachvollziehen, welche Aktion der Block ausführt, welche Eingaben erforderlich sind und was von dem Block ausgegeben wird.

![Popup-Fenster für Blöcke](images/2-2/06-NodePopup.jpg)

> 1. Beschreibung: Kurze Beschreibung des Blocks
2. Symbol: Größere Version des Symbols im Menü Bibliothek
3. Eingabe(n): Name, Datentyp und Datenstruktur
4. Ausgabe(n): Datentyp und Struktur

##### Suchen

Wenn Sie relativ genau wissen, welchen Block Sie zu Ihrem Arbeitsbereich hinzufügen möchten, können Sie das Feld **Suchen** verwenden. Solange Sie keine Einstellungen bearbeiten oder Werte im Arbeitsbereich angeben, befindet sich der Cursor in diesem Feld. Sobald Sie etwas in das Feld eingeben, werden in der Dynamo-Bibliothek die beste Übereinstimmung (mit Breadcrumbs dafür, wo der Suchbegriff in den Blockkategorien gefunden werden kann) und eine Liste alternativer Übereinstimmungen der Suche angezeigt. Wenn Sie die Eingabetaste drücken oder im eingeschränkten Browser auf das Element klicken, wird der hervorgehobene Block in der Mitte des Arbeitsbereichs hinzugefügt.

![Durchsuchen der Bibliothek](images/2-2/07-LibrarySearching.jpg)

> 1. Suchfeld
2. Am besten übereinstimmendes Ergebnis/Ausgewählt
3. Alternative Übereinstimmungen

### Einstellungen

Im Menü **Einstellungen** sind sowohl geometrische als auch Benutzereinstellungen verfügbar. Hier können Sie auch die Freigabe Ihrer Benutzerdaten zur Verbesserung von Dynamo aktivieren bzw. deaktivieren sowie die Anzahl an Dezimalstellen und die Renderqualität der Geometrie definieren.

> Hinweis: Die Einheiten in Dynamo sind generisch.

![Menü anzeigen](images/2-2/08-Settings.jpg)

> 1. Berichte aktivieren: Optionen zur Weitergabe von Benutzerdaten für die Verbesserung von Dynamo.
2. Optionen für das Zahlenformat: Ändern der Dokumenteinstellungen für Dezimalstellen.
3. Rendergenauigkeit: Einstellen einer höheren oder niedrigen Renderqualität.
4. Geometriekanten anzeigen/ausblenden: Ein- oder Ausblenden von 3D-Geometriekanten.
5. Vorschaufenster anzeigen/ausblenden: Ein- oder Ausblenden der Datenvorschaufenster.
6. Pfade für Blöcke und Pakete verwalten: Verwalten der Dateipfade, damit Blöcke und Pakete in der Bibliothek angezeigt werden.
7. Experimentelle Funktionen aktivieren: Verwenden neuer Beta-Funktionen in Dynamo.

### Hilfe

Wenn Sie nicht weiterkommen, verwenden Sie das Menü **Hilfe**. Hier finden Sie die Beispieldateien, die zum Lieferumfang Ihrer Installation gehört haben, und können in Ihrem Internet-Browser auf eine der Referenz-Websites von Dynamo zugreifen. Falls erforderlich, können Sie über die Option **Info** überprüfen, welche Version von Dynamo installiert ist und ob sie aktuell ist.

![Menü anzeigen](images/2-2/09-Help.jpg)

> 1. Erste Schritte: eine kurze Einführung in die Verwendung von Dynamo.
2. Beispiele: Beispieldateien als Referenz.
3. Fehler melden: Sie können Probleme auf GitHub melden.
4. Wechseln zu Projekt-Website: Zeigen Sie das Dynamo-Projekt auf GitHub an.
5. Zu Projekt-Wiki wechseln: Im Wiki erhalten Sie Informationen zur Entwicklung mithilfe der Dynamo-API, zu unterstützenden Bibliotheken und Tools.
6. Startseite anzeigen: Kehren Sie von einem Dokument aus zur Dynamo-Startseite zurück.
7. Info: Angaben zur Version von Dynamo.

