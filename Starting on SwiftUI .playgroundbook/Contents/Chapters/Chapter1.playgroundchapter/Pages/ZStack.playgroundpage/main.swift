/*:
 
 # ZStack

Well, using our brick analogy and our knowledge of VStack and HStack, we can already build a wall like this one below:

![Wall](myImages/Wall.png)

But what if we want to put something in front of that wall, like a layer of paint to make it look pretty?

For this we will use ZStack, which allows us to overlay one view over another, giving us depth control on our screens.
 
In the case of our wall we would put a layer of paint in front of it using ZStack, and the result would look like this:

![Layer Of Paint](myImages/LayerOfPaint.png)

In the case of the paint layer, we cover the entire wall and can no longer see the bricks.
 
Let's make out wall look prettier by hanging some pictures; it'll look like this:
 
![Wall With Frames](myImages/WallWithFrames.png)
 
Notice that we put three pictures, next to each other, and in front of our painted wall.

So the pictures are like our Views and we used HStack to place one picture next to each other; next we used ZStack to place those pictures over the painted wall,
 which was already on front of the brick wall.

![Sequence ZStack](myImages/SequenceZStack.png)
 
The code:
    
    ZStack {
 
        BrickWall() // 🧱 most on back
 
        LayerOfPaint() // in front of BrinkWall()
 
        // our 3 pictures 🌌🌌🌌 :
        HStack {  // in front of LayerOfPaint()
            Picture() // 🌌 leftmost
            Picture()
            Picture() // 🌌 rightmost
        }
 
    }
    

Finally we already know the concepts of VStack to stack our Views vertically, of HStack to stack our Views horizontally and the concept of ZStack to stack our Views in depth.
 
[Next Page -> Let's Practice](@next)
 
 */
