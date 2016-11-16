###What is Visual Programming?

什麼是視覺化編程

Designing frequently involves establishing visual, systemic, or geometric relationships between the parts of a design. More times than not, these relationships are developed by workflows that gets us from concept to result by way of rules. Perhaps without knowing it, we are working algorithmically - defining a step-by-step set of actions that follow a basic logic of input, processing, and output. Programming allows us to continue to work this way but by formalizing our algorithms.

設計經常涉及視覺、系統或幾何之間的關係建立。很多情況下，這些關係是由概念至成品的工作流程中一些規則所制定。可能在未察覺的狀況下，人們一樣工作－－由輸入、計算到輸出一步一步所組成的一系列動作。編程允許我們改以形式化這些算法的方法持續這些工作。

###Algorithms in Hand

掌握的運算法則

While offering some powerful opportunities, the term **Algorithm** can carry some misconceptions with it. Algorithms can generate unexpected, wild, or cool things, but they are not magic. In fact, they are pretty plain, in and of themselves. Let's use a tangible example like an origami crane. We start with a square piece of paper (input), follow a series of folding steps (processing actions), and result in a crane (output).

在許多時候, 運算法則這個詞往往會迷惑好多人，它們可以生成一些很酷炫的事情，但他們不是魔法。事實上，他們相當簡單。我們來舉個紙鶴例子。首先我們有張方形紙(input)，然後進行一系列的摺疊操作(processing actions )，然後完成一個千紙鶴(output).

So where is the Algorithm? It is the abstract set of steps, which we can represent in a couple of ways - either textually or graphically.

那麼，運算是在哪裡產生的？他被抽象成許多步驟，並可用兩種方式呈現：文字描述或圖形描述。

**Textual Instructions:**
紙上教程

1.	Start with a square piece of paper, colored side up. Fold in half and open. Then fold in half the other way.
拿一張正方形的紙，為其中一面上色，折半並再次張開，對另一邊執行相同動作。
2.	Turn the paper over to the white side. Fold the paper in half, crease well and open, and then fold again in the other direction.
翻轉到未上色的一面，折半並留下摺痕，對另一邊執行相同動作。
（以下太不重要故省略）
3.	Using the creases you have made, Bring the top 3 corners of the model down to the bottom corner. Flatten model.
4.	Fold top triangular flaps into the center and unfold.
5.	Fold top of model downwards, crease well and unfold.
6. Open the uppermost flap of the model, bringing it upwards and pressing the sides of the model inwards at the same time. Flatten down, creasing well.
7. Turn model over and repeat Steps 4-6 on the other side.
8. Fold top flaps into the center.
9. Repeat on other side.
10. Fold both ‘legs’ of model up, crease very well, then unfold.
11. Inside Reverse Fold the “legs” along the creases you just made.
12. Inside Reverse Fold one side to make a head, then fold down the wings.
13. You now have a crane.

**Graphical Instructions:**

![Needs Update- Origami Crane](images/1-1/01-OrigamiCraneInstructions.png)

###Programming Defined

編程的定義

Using either of these sets of instructions should result in a crane, and if you followed along yourself, you've applied an algorithm. The only difference is the way in which we read the formalization of that set of instructions and that leads us to **Programming**. Programming, frequently shortened from *Computer Programming*, is the act of formalizing the processing of a series of actions into an executable program. If we turned the above instructions for a creating crane into a format our computer can read and execute, we are Programming.

無論使用何種方式都可以得到千紙鶴，且在這樣的過程中，你便能得到一個算法。唯一的差別是讀取上面的步驟的方式，這就是編程。編程，計算機編輯程式的縮寫，是構建一個可執行程序的一系列行為方式的過程。若我們將之前摺紙鶴的過程轉變成電腦可以識別的應用程序，那麼這個過程就是編程。

The key to and first hurdle we will find in Programming, is that we have to rely on some form of abstraction to communicate effectively with our computer. That takes the form of any number of Programming Languages, such as Javascript, Python, or C. If we can write out a repeatable set of instructions, like for the origami crane, we only need to translate it for the computer. We are on our way to having the computer be able to make a crane or even a multitude of different cranes where each one varies slightly. This is the power of Programming - the computer will repeatedly execute whatever task, or set of tasks, we assign to it, without delay and without human error.

編程的關鍵，也是它的第一個障礙，就是我們必須依賴某種抽象的形式來與電腦溝通。這就需要一種編程語言，比如Java, Python, 或者C。如果我們能寫出一組重複的指令，比如摺紙鶴，我們只需要將它翻譯成電腦可以識別的語言。我們可以讓電腦來製作一個紙鶴，甚至可以做出許多稍有變化的紙鶴。這就是編程的力量所在：電腦會重複地執行我們指定給他的一個或著一系列的任務，並不會產生耽擱與人為錯誤。


####Visual Programming Defined
可視化編程定義

>Download the example file that accompanies this exercise (Right click and "Save Link As..."): [Visual Programming - Circle Through Point.dyn](datasets/1-1/Visual Programming - Circle Through Point.dyn). A full list of example files can be found in the Appendix.

下載本練習的範例文件（右鍵另存為……）
完整的案例文件列於附錄中。

If you were tasked with writing instructions for folding an origami crane, how would you go about it? Would you make them with graphics, text, or some combination of the two?

如果你被要求寫一個摺紙鶴的教程，你會怎麼做？使用文字說明、圖形說明，還是結合兩者？


If your answer contained graphics, then **Visual Programming** is definitely for you. The process is essentially the same for both Programming and Visual Programming. They utilize the same framework of formalization; however, we define the instructions and relationships of our program through a graphical (or "Visual") user interface. Instead of typing text bound by syntax, we connect pre-packaged nodes together. Here's a comparison of the same algorithm - "draw a circle through a point" - programmed with nodes versus code:

可視化編程為圖形說明很好的呈現方式。編成與可視化編程的過程本質上是相同的：運用同樣的形式框架；然而，我們通過圖形（或其他視覺化）用戶介面來定義方法及關連。我們連結各個節點而非使用輸入代碼的方式。以下為一範例──『畫一個通過指定點的圓』──使用節點／代碼。


**Visual Program:**

![Basic Visual Program ](images/1-1/03-BasicVisualProgram.png)

**Textual Program:**
```
myPoint = Point.ByCoordinates(0.0,0.0,0.0);
x = 5.6;
y = 11.5;
attractorPoint = Point.ByCoordinates(x,y,0.0);
dist = myPoint.DistanceTo(attractorPoint);
myCircle = Circle.ByCenterPointRadius(myPoint,dist);
```
The results of our algorithm:

![Circle Through Point ](images/1-1/04-CircleThroughPoint.png)

The visual characteristic to programming in such a way lowers the barrier to entry and frequently speaks to designers. Dynamo falls in the Visual Programming paradigm, but as we will see later, we can still use textual programming in the application as well.

編程的可視化特徵是用這種方法來降低設計師與編程之間頻繁接觸的難度。 Dynamo主要是可視化編程，然而後面我們同樣可以用代碼的形式來編寫需要的功能。

