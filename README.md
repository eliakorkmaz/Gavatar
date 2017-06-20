
# Gavatar

**Gavatar** is Avatar generator for iOS Apps , written in **Swift 3**

You can generate easily **Avatars** with using **Gavatar** , it returns **UIImage** so this image can be used everywhere in **iOS** what need to an **UIImage** like **UIImageView**

I have used **Core Image** and **Core Graphics** for playing Pixels in Image

## <i class="icon-pencil"></i> Using Gavatar

> **Tip:** You can generate **Avatars** with 3 different types


> - generate with **Number** figure 
> - generate with **Letter** figure
> - generate with **Super Heroes** figure 


## <i class="icon-pencil"></i> Create a Gavatar Object

It's easy to create an object of Gavatar 

```swift
let fAvatar = Gavatar(avatarSize: CGSize(width: imageView.frame.width, height: imageView.frame.height));
```

If you want to add a **Number** to your **Avatar** , use this :
```swift
self.imageView.image = fAvatar.generateNumber(number: 3);
```

If you want to add a **Letter** to your **Avatar** , use this :
```swift
self.imageView.image = fAvatar.generateLetter(letter: "a");
```

Also you can add **Super Heroes** figure to your **Avatar**, like this
```swift
self.imageView.image = fAvatar.generateSuperHero(hero: .Ironman);
```


# DEMO
![ ](https://github.com/eliakorkmaz/Gavatar/blob/master/demo.gif)


```
|0 |1 |2 |3 |4 |5 |

|6 |7 |8 |9 |10|11|

|12|13|14|15|16|17|

|18|19|20|21|22|23|

|24|25|26|27|28|29|

|30|31|32|33|34|35|
```


I have divided Image into **36 pieces** as above so if you want to **draw** figure **1** you can easily fill 
```
[8,14,20,26,25,27]
```
 sections.




