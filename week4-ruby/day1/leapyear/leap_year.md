# Leap

Write a program that will take a year and report if it is a leap year. The tricky thing here is that a leap year occurs:

```plain
on every year that is evenly divisible by 4
  except every year that is evenly divisible by 100
    except every year that is evenly divisible by 400.
```

For example, 1997 is not a leap year, but 1996 is.
1900 is not a leap year, but 2000 is.

Your program should be called as follows:

```ruby
leap_year?(1990)
```

## Notes

For a delightful, four minute explanation of the whole leap year phenomenon, go watch [this youtube video](http://www.youtube.com/watch?v=xX96xng7sAE) (later!).

## Source
[JavaRanch Cattle Drive, exercise 3](http://www.javaranch.com/leap.jsp)