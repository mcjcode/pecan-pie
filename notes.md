-- The four types of judgments

EXP is a TYPE.

EXP is the same TYPE as EXP.

TYPE is a type.

TYPE and TYPE are the same type.

-- Some commands to remember

`raco pkg install pie`

`racket -l pie -i`

`racket --load filename.pie`

`grep '^(claim [a-z]' plus_is_commutative.raw | egrep -v "base|step|mot|part1"`

# H2 Wishlist

I wish that invoking racket from the command line had an
option that would display the TODO information.

Aha!  It does.  I had been running

`racket --load file.pie`

When I should have just been running

`racket file.pie`

-- 'sameness' vs 'equality' for functions.

It seems like this is the difference Church makes when discussion
'extensionality' and 'intensionality'.  Two functions are
'extensionally' the same if they always give the same result (whether
intended or not.)  Two functions are 'intensionally' the same if they
do the same operations (i.e. they have been defined to do the same
things, i.e. intentionally, or on purpose)

-- motives

A motive tells us what we want to get out of something.  Like, your
motive for taking this class is what you want to get out of this
class.

A motive for a Nat, or a List, or a Vec, or an Either tells us what
type of thing we wish to get out of the Nat, the List, etc.

## Chapter 12

I implemented the even and odd predicates w/o capitalizing them
and noticed that Pie did not complain.  Then I noticed later in
chapter 13 that the book capitalized them.   Aha, they return types,
so they should be capitalized.  But the capitalization of
types seems like a convention and not an enforced rule.

## Ackermann

Odd that the definition of `repeat` uses the expression

```scheme
(lambda (x) (f x))
```

where of course just `f` would do.

## Diacritics

Lots of the text uses Danish words with diacritical marks.  We
can eneter these into our source code by changing the input mode
(`Ctrl-\`) in emacs to something like `latin-1-prefix` then whenever
we type a `'"`-like character it prompts us for the character to
which we want it to apply.


