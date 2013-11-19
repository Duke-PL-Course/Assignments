Implement a function that queries a collection of Duke class data using a set of criteria passed into the function.

```ruby
def queryClasses(data, criteria)
  # ...
end
```

`data` is an *array* of *hashes*. Each element in the courses array is a *hash* of course information in the form of `:field => values` where `:field` can be any arbitrary *symbol*.

`criteria` is a *hash* containing anywhere from **zero up to three** distinct operations as *keys*. The operations are:

* `:filter => { :key => {:operator => :operand}, ... }`: the associated value is a *hash* of clauses. Each clause is a pairing of a `:symbol`, corresponding to a *data field*, to a *hash of logic operations*. The *logic operations* for each clause are combined using **logical and**. All clauses are combined using **logical and** as well to construct the filter. Only elements that satisfy **ALL** of the filter clauses should be included in the output. If the filter hash is empty or this operation is not included in `criteria`, leave all input elements. If a field for a course does not exist but a filter is specified, that course should not be included in the output (unless you're expliciting using the `:exists` filter. All the possible *logic operations* are listed below:

    * `{ :gt => value }`: greater than `value`
    * `{ :gte => value }`: greater than or equal to `value`
    * `{ :lt => value }`: less than `value`
    * `{ :lte => value }`: less than or equal to `value`
    * `{ :eq => value }`: equal to `value`
    * `{ :neq => value }`: not equal to `value`
    * `{ :exists => value }`: exists(if value = `true`) or doesn't exist (if value = `false`)

* `:select => [ ... ]`: the associated value is an *array* of symbols. Each element in the output must only contain fields specified in this list and nothing more. If this array is empty, or this operation is not included in `criteria`, output all fields. If a particular field in a course does not exist, simply omit that key-value pair from the output for that course.
* `:sort_by => :field`: the associated value is an symbol corresponding by a field to sort by. The order of the *output elements* should be determined by comparing the field specified *in order*. If this operation is not included in `criteria`, use the input order. If any courses in the data set do not have the given field, then move them to the end of the output, but maintain stability (i.e. even though they've moved to the end, maintain their original, relative order).
* `:limit => n`: the associated value is a nonnegative, integer number, `n`. Limit the *output* to contain up to the first `n` elements. If `n` is `0`, or this operations is not included in `criteria`, don't limit the output.


Example Test:

```ruby
data = [{
  :department => 'CS',
  :number => 101,
  :name => 'Intro to Computer Science',
  :credits => 1.00
}, {
  :department => 'CS',
  :number => 82,
  :name => 'The Internet Seminar',
  :credits => 0.5
}, {
  :department => 'ECE',
  :number => 52,
  :name => 'Intro to Digital Logic'
  # Note that the :credits key-value pair is missing
}]
criteria = {
  :filter => {
    :number => {
      :gt => 80
    },
    :credits => {
      :gte => 0.5
    }
  },
  :select => [:number, :name],
  :sort_by => :number
}

queryClasses(data, criteria)
```

Expected Output:

```ruby
[{
  :number => 82,
  :name => 'The Internet Seminar'
}, {
  :number => 101,
  :name => 'Intro to Computer Science'
}]
```

*Note*: The order of the keys within the each course do not matter

### Hint
* the suggested order of operations is `:filter` > `:sort_by` > `:limit` > `:select`
* the actual structure of the data elements don't matter. the function should work as long as the data and queries are both valid and the corresponding fields are of the same type, which we guarantee to be true
* definitely consider using enumerable methods with blocks. Otherwise, your solution maybe unnecessarily verbose and complex
* make use of the `<=>` operator for comparisions

### Note
We created this problem as a more ambitious and challenging problem to exercise the collection and functional parts of the Ruby language. This will prepare you for many of the languages to come.

The query format we have selected here is very similar to that of [Mongodb][], which is a very popular [NoSQL][] database system for storing flexible [JSON][] documents. You should feel good after completing this problem, as you have just created the core of a simple yet powerful querying engine.

---
