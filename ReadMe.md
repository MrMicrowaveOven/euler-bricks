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

## Things I've learned about speed

Given the n<sup>3</sup> time complexity, and given that I'm going to be looking for Euler Bricks with dimensions up to 1000, I've learned some fun things that have made the script run faster.

1. Squaring numbers takes time.  Postponing squaring the third dimension unless we know it is necessary saved some time.
2. For some reason, a*a calculates a bit faster than a<sup>2</sup> (using `a**2`).
3. Square rooting takes a surprising amount of time.  Creating a Set of all perfect squares of 1-1000, then checking to see if a<sup>2</sup> + b<sup>2</sup> is in that set is much faster than getting the square root every time.