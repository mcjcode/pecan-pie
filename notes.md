-- The four types of judgments

EXP is a TYPE.

EXP is the same TYPE as EXP.

TYPE is a type.

TYPE and TYPE are the same type.

-- Some commands to remember

raco pkg install pie

racket -l pie -i

racket --load filename.pie

-- 'sameness' vs 'equality' for functions.

It seems like this is the difference Church makes when discussion
'extensionality' and 'intensionality'.  Two functions are
'extensionally' the same if they always give the same result (whether
intended or not.)  Two functions are 'intensionally' the same if they
do the same operations (i.e. they have been defined to do the same
things, i.e. intentionally, or on purpose)



