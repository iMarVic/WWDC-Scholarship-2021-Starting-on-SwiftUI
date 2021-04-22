/*:
 
 # VStack
 To introduce the concepts of VStack, HStack and ZStack, let's make an analogy with bricks 🧱 and the construction of a wall.
 
 When we place one brick above the other (as in the image) we are aligning them in a vertical stack correct?
 
 Hence the name VStack (Vertical Stack).

 ![VStack](myImages/VStack.png)
 
 But in SwiftUI we don't build walls, right 😅 we build screens, and we don't use bricks, we use Views.
 
 So, in our analogy, combining bricks to build a wall is equivalent to combining Views to build our screens.

 Views can be images, texts and even other stacks (VStack, HStack and ZStack) for exemple and we can go on combining them to build our screens.
  
 The code:
    
    VStack {
        Brick() // 🧱 brick on top
        Brick()
        Brick()
        Brick()
        Brick()
        Brick() // 🧱 brick on bottom
    }
    

 [Next Page -> HStack](@next)
 
 */
