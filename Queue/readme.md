# Queue

Queue can be implemented using an Array, Stack or Linked List. The easiest way of implementing a queue is by using an Array.

Initially the head(FRONT) and the tail(REAR) of the queue points at the first index of the array (starting the index of array from 0). As we add elements to the queue, the tail keeps on moving ahead, always pointing to the position where the next element will be inserted, while the head remains at the first index.

<image src="https://user-images.githubusercontent.com/23179810/38057927-b777ccda-32e9-11e8-9cff-3b1f8ea27588.png"/>

When we remove an element from Queue, we can follow two possible approaches (mentioned [A] and [B] in above diagram). In [A] approach, we remove the element at head position, and then one by one shift all the other elements in forward position.

In approach [B] we remove the element from head position and then move head to the next position.

In approach [A] there is an overhead of shifting the elements one position forward every time we remove the first element.

In approach [B] there is no such overhead, but whenever we move head one position ahead, after removal of first element, the size on Queue is reduced by one space each time.


<image src="https://user-images.githubusercontent.com/23179810/38057693-e664c5a8-32e8-11e8-9feb-ea2ab0c04ac9.gif"/>

# Types of Queue
* Simple typed queue
* Circular typed queue
* Priority queue

# Basic features of Queue

* Like stack, queue is also an ordered list of elements of similar data types.
* Queue is a FIFO( First in First Out ) structure.
* Once a new element is inserted into the Queue, all the elements inserted before the new element in the queue must be removed, to remove the new element.
* peek( ) function is oftenly used to return the value of first element without dequeuing it.


# Complexity Analysis of Queue Operations
Just like Stack, in case of a Queue too, we know exactly, on which position new element will be added and from where an element will be removed, hence both these operations requires a single step.

* insert: O(1)
* remove: O(1)
* size: O(1)
