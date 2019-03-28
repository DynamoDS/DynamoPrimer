

# ジオメトリのブール演算

*Intersect*、*Trim*、および *SelectTrim* は、点、曲線、サーフェスなどの低い次元のジオメトリに主に使用されます。一方、ソリッド ジオメトリには、*Trim* と同様の方法でマテリアルを取り除くことおよび要素を結合して全体を大きくすることの両方によって構築後に形状を修正するための、一連のメソッドが追加されています。

*Union* メソッドでは、2 つのソリッド オブジェクトが使用され、両方のオブジェクトによってカバーされる空間から単一のソリッド オブジェクトが作成されます。オブジェクト間で重複する空間は最終形状に結合されます。この例では、球と直方体が結合して単一のソリッドの球-立方体形状となります。

![](images/12-9/GeometricBooleans_01.png)

```
s1 = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

s2 = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(4, 0,
0), 6);

combined = s1.Union(s2);
```

*Difference* メソッドでは、*Trim* のように、ベースとなるソリッドから入力されたツールとなるソリッドの内容が取り除かれます。この例では、球から小さなくぼみが削り出されています。

![](images/12-9/GeometricBooleans_02.png)

```
s = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(10, 0,
0), 6);

result = s.Difference(tool);
```

*Intersect* メソッドでは、2 つのソリッド入力間の重複するソリッドが生成されます。次の例では、*Difference* が *Intersect* に変更され、結果として得られるソリッドは、最初に削り出されていた空間がなくなっています。

![](images/12-9/GeometricBooleans_03.png)

```
s = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin, 6);

tool = Sphere.ByCenterPointRadius(
CoordinateSystem.Identity().Origin.Translate(10, 0,
0), 6);

result = s.Intersect(tool);
```

