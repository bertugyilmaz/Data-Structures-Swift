# Stack

Stack is an abstract data type with a bounded(predefined) capacity. It is a simple data structure that allows adding and removing elements in a particular order. Every time an element is added, it goes on the top of the stack and the only element that can be removed is the element that is at the top of the stack, just like a pile of objects.

<img src="https://user-images.githubusercontent.com/23179810/38187403-21f29ab2-3660-11e8-92f3-bb63ce72556f.png"/>

# Basic features of Stack

* Stack is a LIFO(Last in First out) structure or we can say FILO(First in Last out).
* push() function is used to insert new elements into the Stack and pop() function is used to remove an element from the stack. Both insertion and removal are allowed at only one end of Stack called Top.
* Stack is said to be in Overflow state when it is completely full and is said to be in Underflow state if it is completely empty.

# Implementation of Stack Data Structure

Stack can be easily implemented using an Array or a Linked List. Arrays are quick, but are limited in size and Linked List requires overhead to allocate, link, unlink, and deallocate, but is not limited in size. Here we will implement Stack using array.

<img src="https://user-images.githubusercontent.com/23179810/38189514-49eac612-3669-11e8-9fdc-23702ca8ca90.png"/>

# Analysis of Stack Operations

Below mentioned are the time complexities for various operations that can be performed on the Stack data structure.

* Push Operation : O(1)
* Pop Operation : O(1)
* Top Operation : O(1)

The time complexities for push() and pop() functions are O(1) because we always have to insert or remove the data from the top of the stack, which is a one step process.
