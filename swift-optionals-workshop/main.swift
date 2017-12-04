//
//  main.swift
//  swift-optionals-workshop
//
//   Created by Devan Allara on 08/27/17
//  Copyright © 2017 Devan Allara. All rights reserved.
//

import Foundation

/*  1. Optionals
 Sometimes when we create a variable we don't know what the value of the variable is going to
 be. When we need to create a variable where we dont know the value we create was is called an
 optional. Let's look at this code below. Below we ask the user for their name and then
 store it in a variable, but we create the variable before we know the users name.*/
var name: String?
print("What is your name?")
name = readLine()
print("Hello \(name!)")

/* 2. Creating an optional
 So how did we do that? First 2e create an optional just like any other variable, but instead
 using the equal sign to show that it has value we use the colon to give it a type. When
 creating an optional you must always specify what type that optional will be. We then follow
 the type with a question mark. The question mark is a way of telling Swift that this optional
 does not have value now and might have value later. It is a way to protect agiainst
 trying to accesss (also called unwrapping) an optional with no value. Since we used the
 question mark when creating the optional when we call it later we must use the exclamtion
 point so that we say that this optional now has value and it is safe to access it. Trying
 to unwrap an optional with no value will cause your app to crash so you need to be extremely
 careful when creating an optional*/

/* 3. When to use an optional
 Knowing when to use an optional is important. The most common place you will use an optional
 is when you're creating a class. Let's create a class called book.*/
class book {
    var title: String?
    var author: String?
    
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}
/* As you can see above when we create an instance of the book class we dont know what the
 title or author of the book is going to be, but by using optionals we can say that we don't
 know what these values are going to be but when we create an instance of the book class we
 are going to have values. */
