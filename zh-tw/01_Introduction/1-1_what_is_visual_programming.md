###What is Visual Programming?

什麼是視覺化程式設計

Designing frequently involves establishing visual, systemic, or geometric relationships between the parts of a design. More times than not, these relationships are developed by workflows that gets us from concept to result by way of rules. Perhaps without knowing it, we are working algorithmically - defining a step-by-step set of actions that follow a basic logic of input, processing, and output. Programming allows us to continue to work this way but by formalizing our algorithms.

設計經常涉及到在視覺、系統或幾何之間建立關係，很多情況下，這些關係是由概念到成果之間的一些規則決定的。可能在不知情下，我們都在用演算法工作—由輸入到計算到輸出這樣一步一步所組成的一系列動作。程式設計允許我們這樣的工作方式，而且可以形式化這些演算法。

###Algorithms in Hand
手上的演算法

While offering some powerful opportunities, the term **Algorithm** can carry some misconceptions with it. Algorithms can generate unexpected, wild, or cool things, but they are not magic. In fact, they are pretty plain, in and of themselves. Let's use a tangible example like an origami crane. We start with a square piece of paper (input), follow a series of folding steps (processing actions), and result in a crane (output).
雖然演算法提供一些強大的創造性，可以產生出出人意料、狂野、或是很酷的玩意，但他們並不是魔法。事實上，他們非常簡單。讓我們用摺紙鶴來當作一個比較具體的例子。首先我們要有一張方型的紙(輸入)，接著進行一系列的摺紙步驟(程式設計動作)，最後得到的結果是一隻紙鶴(輸出)。
![Origami Crane](images/1-1/00-OrigamiCrane.png)

So where is the Algorithm? It is the abstract set of steps, which we can represent in a couple of ways - either textually or graphically.
所以演算法在哪呢？它簡化了許多步驟，我們可以用兩種方式去表示：文字或圖形。

**Textual Instructions:**
1. Start with a square piece of
paper, coloured side up. Fold in half and open. Then fold in half the other way.
2. Turn the paper over to the white side. Fold the paper in half, crease well and open, and then fold again in the other direction.
3. Using the creases you have made, Bring the top 3 corners of the model down to the bottom corner. Flatten model.
4. Fold top triangular flaps into the center and unfold.
5. Fold top of model downwards, crease well and unfold.
6. Open the uppermost flap of the model, bringing it upwards and pressing the sides of the model inwards at the same time. Flatten down, creasing well.
7. Turn model over and repeat Steps 4-6 on the other side.
8. Fold top flaps into the center.
9. Repeat on other side.
10. Fold both ‘legs’ of model up, crease very well, then unfold.
11. Inside Reverse Fold the “legs” along the creases you just made.
12. Inside Reverse Fold one side to make a head, then fold down the wings.
13. You now have a crane.
文字說明：
1.先從一張正方型的紙開始吧，有顏色的那一面朝上，將它對折後再打開，在另一邊對折。
2.把紙轉到白色的邊，將它對折，摺出摺痕後，在另一個方向也再做一次。
3.用你剛才的摺痕，把三個角落往下折，弄平它。
4.摺疊頂部的三角翼面進入中心後並展開。
5.把紙鶴頂部向下折，摺出折痕後展開。
6.打開紙鶴上最上面的翼面，將它往上折後並且將紙鶴的兩側向內壓平折好。
7.將模型轉到另一面重複步驟四到步驟六。
8.把上面的翼面折到中心。
9.另一邊也一樣。
10.摺出紙鶴的“雙腳”，摺好後展開。
11.沿著你剛才的折的“雙腳”反折。
12.反摺出頭部，然後把雙翼往下折。
13.你現在有一隻紙鶴了。

**Graphical Instructions:**

![Needs Update- Origami Crane](images/1-1/01-OrigamiCraneInstructions.png)

###Programming Defined
程式設計的定義

Using either of these sets of instructions should result in a crane, and if you followed along yourself, you've applied an algorithm. The only difference is the way in which we read the formalization of that set of instructions and that leads us to **Programming**. Programming, frequently shortened from *Computer Programming*, is the act of formalizing the processing of a series of actions into an executable program. If we turned the above instructions for a creating crane into a format our computer can read and execute, we are Programming.
用另一種方式也可以得到一個紙鶴，如果你自己跟著做上面的步驟，那麼你就得到了一個演算法。唯一不同的地方是我們閱讀這些步驟的形式並帶領我們進行程式設計，這就是程式設計。程式設計是電腦程式設計的簡稱，是一種將程序步驟形式化為一個可被執行的程式的行為。如果我們把摺紙鶴的說明轉變成是我們的電腦可以讀取和執行的格式，我們就是在進行程式設計。

The key to and first hurdle we will find in Programming, is that we have to rely on some form of abstraction to communicate effectively with our computer. That takes the form of any number of Programming Languages, such as Javascript, Python, or C. If we can write out a repeatable set of instructions, like for the origami crane, we only need to translate it for the computer. We are on our way to having the computer be able to make a crane or even a multitude of different cranes where each one varies slightly. This is the power of Programming - the computer will repeatedly execute whatever task, or set of tasks, we assign to it, without delay and without human error.
程式語言的關鍵和第一個障礙，就是我們必須依靠某個抽象的語言來和我們的電腦有效溝通。有許多程式語言像是Javascript,Python,或是C。如果我們可以寫出一個可被重複的指令結構，像是摺紙鶴，那我們只需要將它轉譯成電腦可閱讀的語言。我們可以用我們的方法來讓電腦去折出一個紙鶴,或是許多稍有變化的紙鶴。這就是程式語言的力量-電腦將會重複執行任何任務或是一組任務。我們指定它去執行，將沒有任何延遲或是人為錯誤。

####Visual Programming Defined
視覺化程式設計
>Download the example file that accompanies this exercise (Right click and "Save Link As..."): [Visual Programming - Circle Through Point.dyn](datasets/1-1/Visual Programming - Circle Through Point.dyn). A full list of example files can be found in the Appendix.

If you were tasked with writing instructions for folding an origami crane, how would you go about it? Would you make them with graphics, text, or some combination of the two?
如果你被指派寫一個關於摺紙鶴的教學任務。你會怎麼做?將它們變成圖形?文字?或者結合兩者?

If your answer contained graphics, then **Visual Programming** is definitely for you. The process is essentially the same for both Programming and Visual Programming. They utilize the same framework of formalization; however, we define the instructions and relationships of our program through a graphical (or "Visual") user interface. Instead of typing text bound by syntax, we connect pre-packaged nodes together. Here's a comparison of the same algorithm - "draw a circle through a point" - programmed with nodes versus code:
如果你的答案是圖形，那麼視覺化程式設計絕對是你的選擇。程式設計與視覺化程式設計在程序上基本是相同的。它們使用相同的格式框架；我們透過圖形(或視覺)的使用者介面來定義程式結構和關係，而不是輸入由語法限制的文字，我們連結已預先封裝的節點。這裡有一個相同演算法的比較-“畫一個圓通過一個點-用節點進行程式設計 VS 用文字進行程式設計。
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
演算法的視覺化特性是降低設計師與演算發之間入門的溝通門檻。Dynamo完全是視覺化程式設計的範本，但是我們仍然可以在應用程式中使用輸入文字，同樣可以很順利的進行程式設計。
