

## Vektoren, Ebenen und Koordinatensysteme

Vektoren, Ebenen und Koordinatensysteme bilden die primäre Gruppe der abstrakten Geometrietypen. Sie helfen uns dabei, die Position und Ausrichtung sowie den räumlichen Kontext für andere Geometrien zu definieren, die Formen beschreiben. Wenn Sie sagen, dass Sie sich in New York City an der Kreuzung zwischen der 42nd Street und dem Broadway (Koordinatensystem) auf Straßenniveau (Ebene) befinden und nach Norden (Vektor) blicken, habe Sie gerade diese "Helfer" verwendet, um zu definieren, wo Sie stehen. Dasselbe gilt für das Gehäuse eines Telefons oder einen Wolkenkratzer – Sie benötigen diesen Kontext für die Entwicklung eines Modells.

![Vektoren, Ebenen und Koordinaten](images/5-2/VectorsPlanesCoodinates.png)

### Was ist ein Vektor?

Ein Vektor ist eine geometrische Größe, die die Richtung und den Betrag beschreibt. Vektoren sind abstrakt, d. h., dass Sie eine Größe darstellen, kein geometrisches Element. Vektoren können leicht mit Punkten verwechselt werden, da beide aus Wertelisten bestehen. Es gibt jedoch einen wesentlichen Unterschied: Punkte beschreiben eine Position in einem bestimmten Koordinatensystem, während Vektoren einen relativen Positionsunterschied beschreiben, also die "Richtung".

![Vektordetails](images/5-2/Vector-Detailed.png)

Wenn Ihnen die Idee des relativen Unterschieds verwirrend erscheint, stellen Sie sich einen Vektor AB folgendermaßen vor: Sie stehen an Punkt A und sehen zu Punkt B. Die Richtung von A zu B entspricht Ihrem Vektor.

Aufgliedern von Vektoren in Ihre Bestandteile mit derselben AB-Notation:

![Vektor](images/5-2/Vector.png)

> 1. Der **Startpunkt** von Vektoren wird als **Basis** bezeichnet.
2. Der **Endpunkt ** von Vektoren wird als **Spitze** oder **Ausrichtung** bezeichnet.
3. Vektor AB entspricht nicht Vektor BA, der in die entgegengesetzte Richtung weist.

Wenn Sie in Bezug auf Vektoren (und ihrer abstrakten Definition) jemals einer komischen Entlastung bedürfen, sehen Sie sich die klassische Komödie "Die unglaubliche Reise in einem verrückten Flugzeug" an und hören auf die häufig zitierte, humorvolle Aussage:

> *Roger, Roger. Was ist unser Vektor, Viktor?*

Vektoren stellen eine wichtige Komponente für Modelle in Dynamo dar. Beachten Sie, dass Sie zur abstrakten Kategorie der "Helfer" gehören. Wenn Sie also einen Vektor erstellen, wird nichts in der Hintergrundvorschau angezeigt.

![Vektoren in Dynamo](images/5-2/Dynamo-Vector.png)

> 1. Sie können eine Linie zur Darstellung einer Vektorvorschau verwenden.
> Laden Sie die Beispieldatei für dieses Bild herunter (durch Rechtsklicken und Wahl von "Save Link As..."): [Geometry for Computational Design - Vectors.dyn](datasets/5-2/Geometry for Computational Design - Vectors.dyn). Eine vollständige Liste der Beispieldateien finden Sie im Anhang.

### Was ist eine Ebene?

Ebenen sind zweidimensionale abstrakte "Helfer". Genauer gesagt sind Ebenen konzeptuell gesehen "flach" und erstrecken sich unendlich in zwei Richtungen. In der Regel werden sie als ein kleineres Rechteck in der Nähe ihres Ursprungs gerendert.

![Ebene](images/5-2/Plane.png)

Sie denken möglicherweise: "Stopp! Ursprung? Das klingt nach einem Koordinatensystem, das ich auch zum Modellieren in meiner CAD-Software verwende!"

Und Sie haben recht! In Modellierungssoftware werden häufig Konstruktionsebenen verwendet, um einen lokalen, zweidimensionalen Kontext zu definieren, in dem Entwürfe erstellt werden können. XY-, XZ-, YZ- bzw. Nord- oder Südostebene klingen möglicherweise vertrauter. Dies sind alles Ebenen, die einen unendlichen "flachen" Kontext definieren. Ebenen weisen keine Tiefe auf, unterstützen uns jedoch bei der Beschreibung einer Richtung – jede Ebene weist einen Ursprung, eine X-Richtung, eine Y-Richtung und eine Z-Richtung (nach oben) auf.

![Ebenen in Dynamo](images/5-2/Dynamo-Plane.png)

> 1. Ebenen sind zwar abstrakt, verfügen aber über eine Ursprungsposition, damit sie im Raum lokalisiert werden können.
2. In Dynamo werden Ebenen in der Hintergrundvorschau gerendert.
> Laden Sie die Beispieldatei für dieses Bild herunter (durch Rechtsklicken und Wahl von "Save Link As..."): [Geometry for Computational Design - Planes.dyn](datasets/5-2/Geometry for Computational Design - Plane.dyn). Eine vollständige Liste der Beispieldateien finden Sie im Anhang.

### Was ist ein Koordinatensystem?

Sobald Sie mit Ebenen vertraut sind, ist es nur noch ein kleiner Schritt hin zu Koordinatensystemen. Eine Ebene weist dieselben Bestandteile wie ein Koordinatensystem auf, solange es sich um ein "euklidisches" oder "XYZ"-Koordinatensystem handelt.

Darüber hinaus gibt es jedoch auch alternative Koordinatensysteme wie Zylinder- oder Kugelkoordinatensysteme. Wie Sie in späteren Abschnitten sehen werden, können Koordinatensysteme auch auf andere Geometrietypen angewendet werden, um eine Position in der Geometrie zu definieren.

![Koordinatensystem](images/5-2/CoordinateSystem.png)

> Hinzufügen alternativer Koordinatensysteme – Zylinder- oder Kugelkoordinatensystem

![Ebenen in Dynamo](images/5-2/Dynamo-CoordinateSystem.png)

> 1. Koordinatensysteme sind zwar abstrakt, verfügen aber über eine Ursprungsposition, damit sie im Raum lokalisiert werden können.
2. In Dynamo werden Koordinatensysteme in der Hintergrundvorschau als Punkt (Ursprung) und Linien gerendert, die die Achsen definieren (gemäß folgender Konvention: X ist rot, Y ist grün und Z ist blau).
> Laden Sie die Beispieldatei für dieses Bild herunter (durch Rechtsklicken und Wahl von "Save Link As..."): [Geometry for Computational Design - Coordinate System.dyn](datasets/5-2/Geometry for Computational Design - Coordinate System.dyn). Eine vollständige Liste der Beispieldateien finden Sie im Anhang.

