## Night Writer by Seth and Josh

We worked on [Night Writer](http://backend.turing.io/module1/projects/night_writer) over the last week. Josh wrote a terrible first draft and started from scratch 36 hours ago. Seth's attentive help got him up to speed


### Project Evaluation


**Fundamental Ruby & Style**

We refactored the snot out of this, because my first version was terrible. I learned TONS about TDD.

**Test-Driven Development**

All functionality is tested, both within classes and between classes. Both read/write tests file IO, in addition to functionality inside of the class. All functionality was driven by testing.

**Encapsulation / Breaking Logic into Components**

Every method does just one small thing.

**Functional Expectations**

I (Josh) didn't add line wrapping at 80 characters, but we have support for numbers, capitalization,



All of the base interaction model works.

Example:

```
ruby lib/night_write.rb ./test/example_text/ah.txt ./test/example_text/OUTPUT.txt
```

### General Learnings

- Learned lots about file IO, ARGV usage, etc.
- Josh feels 100x more comfortable with TDD, and if he were to repeat this project would do it very differently.
- Feeling better with Git. Had a few hefty merge conflicts along the way that took just a few seconds to resolve. :satisfied_smile:
- This time I spent too much time writing tiny incremental tests. The things I learned working through NightWriter compliment what I'm reading in Practical Object Oriented Design in Ruby (POODR)
- I (Josh) really enjoyed working with Seth. When he started helping me after I started over the night_writer portion, we ping-ponged on writing/passing tests, and everything I wrote was 10x better.
- First pair project I've done, and it went really well. I think I'll work on being much more collaborative from the get-go next time.
