

# Dynamo Primer

## Dynamo v2.0

Dynamo v1.3 Primer の手引きは[こちら](http://primer.dynamobim.org/en/Appendix/DynamoPrimer-Print1_3.pdf)からダウンロードできます。

![Dynamo ロゴ](images/dynamo_logo_dark-trim.jpg)

> Dynamo は、設計者向けのオープン ソースのビジュアル プログラミング プラットフォームです。

### ようこそ

この Dynamo Primer は、Autodesk Dynamo Studio を使用したビジュアル プログラミングの総合ガイドです。この手引は、ビジュアル プログラミングの基本情報を共有することを目的としており、継続的に更新されています。この手引きには、ジオメトリの計算設計、規則に基づく設計のベストプラティクス、複数の専門分野をまたがるプログラミングの応用方法など、Dynamo プラットフォームに関するさまざまな情報が記載されています。

Dynamo は、広範囲にわたる設計関連ワークフローにおいてその真価を発揮します。Dynamo は、さまざまな方法で使用することができます。

* ビジュアル プログラミングをはじめて**体験する**
* さまざまなソフトウェアのワークフローを**接続する**
* さまざまなユーザや開発者が積極的に意見を交換するコミュニティに**参加する**
* 継続的な改善を目指してオープンソースのプラットフォームを**開発する**

こうして Dynamo の開発を続けていくうちに、適切な資料が必要になりました。その過程で作成されたのが、この Dynamo Primer です。

この手引きは、Mode Lab で開発された各章から構成されています。各章では、Dynamo を使用してビジュアル プログラミング開発を行うために必要な基本的知識と、その知識を応用するための重要な情報を紹介しています。この手引には、次のトピックが記載されています。

* **コンテキスト** - ビジュアル プログラミングの定義と、Dynamo を使用するために理解しておく必要がある概念
* **作業の開始** - Dynamo の入手方法と、最初のプログラムの作成方法
* **プログラムの内容** - Dynamo の各部の機能とその使用方法
* **構成要素** - データの定義と、プログラムで使用できる基本的なタイプ
* **ジオメトリによる設計** - Dynamo でジオメトリ要素を操作する方法
* **リストの使用方法** - データ構造の管理方法と調整方法
* **ノード内のコード** - 独自のコードを使用して Dynamo を拡張する方法
* **計算に基づく BIM** - Dynamo と Revit モデルを組み合わせて使用する方法
* **カスタム ノード** - 独自のノードを作成する方法
* **パッケージ** - 自作のツールをコミュニティで共有する方法

この手引で Dynamo について学習し、実際に使用して、開発プロジェクトに参加してください。

---

### オープン ソース

Dynamo Primer は、オープン ソース プロジェクトです。高品質なコンテンツを提供するには、ユーザの皆様からのフィードバックが必要です。問題を発見した場合は、GitHub のバグ レポート ページに投稿してください。[https://github.com/DynamoDS/DynamoPrimer/issues](https://github.com/DynamoDS/DynamoPrimer/issues)

この Dynamo Primer に新しいセクションを追加する場合や、既存の内容を編集する場合は、GitHub のリポジトリにアクセスしてください。[https://github.com/DynamoDS/DynamoPrimer](https://github.com/DynamoDS/DynamoPrimer)

---

### Dynamo Primer プロジェクトの概要

Dynamo Primer は、オートデスクの Matt Jezyk 氏と Dynamo 開発チームによって開始されたオープン ソース プロジェクトです。

Dynamo Primer の初版は、**Mode Lab** によって作成されました。 このような貴重なリソースの確立に取り組んでいただいたすべての方に感謝いたします。

[![](images/MODELAB_Logo.png)](http://modelab.is)

この手引きは、Dynamo 2.0 の改訂を反映するため、**Parallax Team の John Pierson 氏**によって更新されました。

[![](images/PRLX_Logo.jpg)](http://www.parallaxteam.com/)

### 謝辞

Dynamo プロジェクトの創立と指揮に携わった Ian Keough 氏に、深く感謝いたします。

さまざまな Dynamo プロジェクトで積極的に協力していただいた Matt Jezyk 氏、Ian Keough 氏、Zach Kron 氏、Racel Williams 氏、Colin McCrone 氏にも感謝を申し上げます。

### ソフトウェアとリソース

**Dynamo**: 現在の公式リリース* のバージョンは 2.1.0 です。

[http://dynamobim.com/download/](http://dynamobim.com/download/)、または [http://dynamobuilds.com](http://dynamobuilds.com) (英語)

*注: Revit 2020 以降、Dynamo は Revit リリースにバンドルされているため、手動でインストールする必要はありません。詳細については、この[ブログの投稿](https://dynamobim.org/dynamo-core-2-1-release/)をご覧ください。

**DynamoBIM**: 追加情報、ラーニング コンテンツ、フォーラムについては、DynamoBIM の Web サイトを参照してください。

[http://dynamobim.org](http://dynamobim.org) (英語)

**Dynamo GitHub**: Dynamo は、GitHub 上で開発されたオープン ソース プロジェクトです。DynamoDS を確認して、開発プロジェクトに参加してください。

[https://github.com/DynamoDS/Dynamo](https://github.com/DynamoDS/Dynamo) (英語)

**お問い合わせ先**: このドキュメントに関する問題については、次の窓口にご連絡ください。

Dynamo@autodesk.com

### License

Copyright 2019 Autodesk

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License.You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.See the License for the specific language governing permissions and limitations under the License.

