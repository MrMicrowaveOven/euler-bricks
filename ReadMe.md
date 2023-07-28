# Euler Bricks

An Euler Brick is a rectangular prism such that all 3 edges are integers, and all 3 diagonals of the faces are integers.

```
             __________________________________________________ 
            /\                                                /|
           /    \                                            / |
          /        \                                        /  |
         /            \                                    /   |
        /                \                                /    |
       /                    \                            /     |
      /                        \ z                      /c     |
     /                            \                    /       |
    /                                \                /        |
   /                                    \            /         |
  /                                        \        /          |
 /                                            \    /           |
/________________________________________________\/            |
|\                      a                        |\            |
|   \                                            |    \  y     |
|      \                                         |        \    |
|         \                                      |            \|
|            \                                   |            /
|               \                                |           /
|                  \                             |          /
|                     \  x                       | b       /
|                        \                       |        /
|                           \                    |       /
|                              \                 |      /
|                                 \              |     /
|                                    \           |    /
|                                       \        |   /
|                                          \     |  /
|                                             \  | /
|_______________________________________________\|/

```
So mathematically, this means the following:

a<sup>2</sup> + b<sup>2</sup> = x<sup>2</sup>, where x is an integer
b<sup>2</sup> + c<sup>2</sup> = y<sup>2</sup>, where y is an integer
a<sup>2</sup> + c<sup>2</sup> = z<sup>2</sup>, where z is an integer

Similarly, if we want to remove three variables:

```math

\sqrt{a^2 + b^2}, \sqrt{b^2 + c^2}, \sqrt{a^2 + c^2}
```
are all integers.

So let's write a quick script to find some Euler Bricks!

`ruby run.rb` to run!