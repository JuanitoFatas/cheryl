This is my Ruby translation to Peter Norvig's [solution to When is Cheryl's Birthday problem][norvig-cheryl-py].

# When is Cheryl's Birthday?

1. Albert and Bernard just became friends with Cheryl, and they want to know when her birthday is. Cheryl gave them a list of 10 possible dates:

    ```
        May 15     May 16     May 19
       June 17    June 18
       July 14    July 16
     August 14  August 15  August 17
    ```

2. Cheryl then tells Albert and Bernard separately the month and the day of the birthday respectively.
3. Albert: I don't know when Cheryl's birthday is, but I know that Bernard does not know too.
4. Bernard: At first I don't know when Cheryl's birthday is, but I know now.
5. Albert: Then I also know when Cheryl's birthday is.
6. So when is Cheryl's birthday?

View Peter Norvig's solution translate in Ruby:

- [Create abstraction for cheryl's possible dates](https://github.com/JuanitoFatas/cheryl/commit/5979188)
- [Cheryl tells part of birthday](https://github.com/JuanitoFatas/cheryl/commit/32f1943)
- [Person knows birthday if possible date only one](https://github.com/JuanitoFatas/cheryl/commit/34e3e2d)
- [Statement 3 - Albert: I don't know when Cheryl's birthday is, but I know that Bernard does not know too](https://github.com/JuanitoFatas/cheryl/commit/78382b7)
- [Statement 4 - Bernard: At first I don't know when Cheryl's birthday is, but I know now](https://github.com/JuanitoFatas/cheryl/commit/8289a1c)
- [Statement 5 - Albert: Then I also know when Cheryl's birthday is](https://github.com/JuanitoFatas/cheryl/commit/7057899)
- [So when is Cheryl's birthday?](https://github.com/JuanitoFatas/cheryl/commit/5240c10)

## Credits

See [norvig/pytudes - Python programs to practice or demonstrate skills][pytudes], it's gold.

[norvig-cheryl-py]: https://github.com/norvig/pytudes/blob/master/ipynb/Cheryl.ipynb
[pytudes]: https://github.com/norvig/pytudes
