

# Booleanos geométricos

*Intersect*, *Trim* e *SelectTrim* são principalmente usados na geometria bidimensional menor como Pontos, Curvas e Superfícies. A geometria sólida, por outro lado, tem um conjunto adicional de métodos para modificar a forma após sua construção, tanto subtraindo o material de uma forma similar a *Trim* e combinando elementos para formar um todo maior.

O método *Union* usa dois objetos sólidos e cria um único objeto sólido fora do espaço coberto por ambos os objetos. O espaço sobreposto entre os objetos é combinado na forma final. Este exemplo combina uma esfera e um cubóide em uma única forma sólida de cubo de esfera:

![](images/12-9/GeometricBooleans_01.png)

```
s1 = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

s2 = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(4, 0,
0), 6);

combined = s1.Union(s2);
```

O método *Difference*, como *Trim*, subtrai o conteúdo do sólido da ferramenta de entrada do sólido base. Neste exemplo, nós colocamos um pequeno recuo fora de uma esfera:

![](images/12-9/GeometricBooleans_02.png)

```
s = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(10, 0,
0), 6);

result = s.Difference(tool);
```

O método *Interesect* retorna o sólido sobreposto entre duas entradas de sólidos. No exemplo a seguir, *Difference* foi alterada para *Intersect*, e o sólido resultante é o vazio ausente inicialmente entalhado:

![](images/12-9/GeometricBooleans_03.png)

```
s = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(10, 0,
0), 6);

result = s.Intersect(tool);
```

