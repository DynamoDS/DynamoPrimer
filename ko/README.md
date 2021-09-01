# Dynamo Primer

## Dynamo v2.0
[여기에서 Dynamo v1.3 Primer](http://primer.dynamobim.org/en/Appendix/DynamoPrimer-Print1_3.pdf) 다운로드

![Dynamo 로고](images/dynamo_logo_dark-trim.jpg)

> Dynamo는 설계자를 위한 오픈 소스 시각적 프로그래밍 플랫폼입니다.

### 환영 메시지
Autodesk Dynamo의 시각적 프로그래밍을 위한 포괄적인 안내서인 Dynamo Primer를 여셨습니다. 이 입문서는 프로그래밍의 기본 사항을 공유하기 위한 지속적인 프로젝트입니다. 다루는 주제로는 계산 형상 작업, 규칙 기반 설계를 위한 모범 사례, 분야 간 프로그래밍 응용프로그램 등이 있으며, Dynamo 플랫폼과 관련된 다른 주제도 다룹니다.

Dynamo의 강력한 기능은 다양한 설계 관련 활동에서 확인할 수 있습니다. Dynamo를 사용하면 쉽게 활용 가능한 방법의 광범위한 목록을 바탕으로 다음을 시작할 수 있습니다.
* **탐색**: 시각적 프로그래밍을 처음으로 탐색
* **연결**: 다양한 소프트웨어의 워크플로우를 연결
* **참여**: 사용자, 기여자, 개발자로 구성된 활발한 커뮤니티에 참여
* **개발**: 지속적인 향상을 위해 오픈 소스 플랫폼 개발

이러한 활동을 진행하고 Dynamo를 사용할 수 있는 흥미로운 기회를 제공하는 과정에서 Dynamo Primer가 필요합니다.

Dynamo Primer에는 Mode Lab과 함께 작성한 장의 내용이 포함되어 있습니다. 이러한 장에서는 Dynamo를 사용하여 자체 시각적 프로그램을 개발하고 실행하는 데 필요한 필수 요건과, Dynamo를 더욱 활용하는 방법에 대한 핵심적인 통찰력에 대해 집중적으로 설명합니다. 본 입문서에서 배울 수 있는 내용은 다음과 같습니다.

* **컨텍스트** - “시각적 프로그래밍”이란 정확히 무엇이며, Dynamo를 깊이 있게 알기 위해 이해해야 할 개념은 무엇입니까?
* **시작하기** - Dynamo를 다운로드하고 첫 번째 프로그램을 작성하려면 어떻게 해야 합니까?
* **프로그램의 기능** - Dynamo에는 어떤 기능이 있으며 이를 어떻게 사용합니까?
* **빌딩 블록** - “데이터”란 무엇이며, 프로그램에서 사용할 수 있는 기본 유형으로는 무엇이 있습니까?
* **설계를 위한 형상** - Dynamo에서 기하학적 요소를 작업하려면 어떻게 해야 합니까?
* **리스트, 리스트, 리스트** - 데이터 구조를 관리하고 조정하려면 어떻게 해야 합니까?
* **노드의 코드** - 자체 코드로 Dynamo를 확장하려면 어떻게 해야 합니까?
* **계산 방식 BIM** - Dynamo를 Revit 모델에서 사용하려면 어떻게 해야 합니까?
* **사용자 노드** - 자체 노드를 만들려면 어떻게 해야 합니까?
* **패키지** - 커뮤니티에서 내 도구를 공유하려면 어떻게 해야 합니까?

이 입문서를 통해 재미있게 Dynamo에 대해 배우고, Dynamo로 작업하고, Dynamo를 위해 개발할 수 있습니다. 이제 시작하겠습니다!

---

### 원본 열기
Dynamo Primer 프로젝트는 오픈 소스입니다. Autodesk는 고품질 컨텐츠를 제공하기 위해 노력하고 있으며 여러분이 제공하는 피드백을 소중하게 생각하고 있습니다. 문제를 보고하려는 경우 GitHub 문제 페이지(https://github.com/DynamoDS/DynamoPrimer/issues)에 게시해 주십시오.

새 섹션, 편집 또는 이 프로젝트의 다른 내용에 기여하고 싶은 경우 GitHub 리포지토리를 확인해 보십시오(https://github.com/DynamoDS/DynamoPrimer).

---
### Dynamo Primer 프로젝트
Dynamo Primer는 Matt Jezyk 및 Autodesk의 Dynamo 개발 팀에서 시작한 오픈 소스 프로젝트입니다.

**Mode Lab**은 본 입문서의 초판을 작성하는 책임을 맡았습니다. 이러한 소중한 리소스를 마련하는 데 들인 모든 노고에 감사드립니다.

[<img src="images/MODELAB_Logo.png">](http://modelab.is)

**Parallax 팀의 John Pierson**은 Dynamo 2.0 개정 내용을 포함하도록 입문서를 업데이트하는 업무를 맡았습니다.

[<img src="images/PRLX_Logo.jpg">](http://www.parallaxteam.com/)
### 감사의 인사

Dynamo 프로젝트를 시작하도록 도와주시고 지침을 주신 Ian Keough 님께 감사드립니다.

적극적인 협력과 광범위한 Dynamo 프로젝트에 참여할 수 있는 기회를 주신 Matt Jezyk, Ian Keough, Zach Kron, Kerel Williams 및 Colin McCrone 님께도 감사드립니다.

### 소프트웨어 및 리소스
**Dynamo** 현재 안정적인* Dynamo 릴리즈 버전은 2.1.0입니다.

http://dynamobim.com/download/ 또는 http://dynamobuilds.com

*참고: Revit 2020부터 Dynamo는 Revit 릴리스와 함께 번들로 제공되므로 수동 설치가 필요하지 않습니다. 자세한 내용은 이 [블로그 게시물](https://dynamobim.org/dynamo-core-2-1-release/)에서 확인할 수 있습니다.

**DynamoBIM** 추가 정보, 학습 컨텐츠 및 포럼을 확인할 수 있는 최고의 출처는 DynamoBIM 웹 사이트입니다.

http://dynamobim.org

**Dynamo GitHub** Dynamo는 GitHub의 오픈 소스 개발 프로젝트입니다. 참여하려면 DynamoDS를 확인해 주십시오.

https://github.com/DynamoDS/Dynamo

**문의하기** 이 문서에 문제가 있으면 알려주십시오.

Dynamo@autodesk.com

### 라이센스
Copyright 2019 Autodesk

Apache License, 버전 2.0(이하 "라이센스")에 따라 라이센스가 부여되었으며, 라이센스를 준수하지 않을 경우 이 파일을 사용할 수 없습니다. 라이센스 사본은 다음에서 구할 수 있습니다.

http://www.apache.org/licenses/LICENSE-2.0

준거법에서 요구하거나 서면으로 동의하지 않는 한 본 라이센스에 따라 배포된 소프트웨어는 어떠한 종류의 명시적 또는 암시적 보증 또는 조건 없이 "있는 그대로" 배포됩니다. 라이센스에 따라 권한 및 제한을 규제하는 특정 언어의 라이센스를 확인하십시오.
