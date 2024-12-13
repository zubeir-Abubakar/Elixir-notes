// To open the elixir bash run : 

iex

// To add the first commance run :

"hello"

// To add an atom 

atom = ".."

// Creating a map function 

// In Elixir, maps are the “go-to” key-value store. Unlike keyword lists, they allow keys of any type and are un-ordered. You can define a map with the %{} syntax:

map = %{:foo => "bar", "hello" => :world}
%{:foo => "bar", "hello" => :world}
map[:foo]
"bar"
map["hello"]
:world
// As of Elixir 1.2, variables are allowed as map keys:

key = "hello"
"hello"
%{key => "world"}
%{"hello" => "world"}
// If a duplicate is added to a map, it will replace the former value:

%{:foo => "bar", :foo => "hello world"}
%{foo: "hello world"}
// As we can see from the output above, there is a special syntax to create maps containing only atom keys:

%{foo: "bar", hello: "world"}
%{foo: "bar", hello: "world"}
%{foo: "bar", hello: "world"} == %{:foo => "bar", :hello => "world"}
true
// In addition, there is a special syntax to fetch the value for atom keys:

map = %{foo: "bar", hello: "world"}
%{foo: "bar", hello: "world"}
map.hello
"world"
// Another interesting property of maps is that they provide their own syntax for updates (note: this creates a new map):

map = %{foo: "bar", hello: "world"}
%{foo: "bar", hello: "world"}
%{map | foo: "baz"}
%{foo: "baz", hello: "world"}
// Note: this syntax only works for updating a key that already exists in the map! If the key does not exist, a KeyError will be raised.

// To create a new key, instead use Map.put/3

map = %{hello: "world"}
%{hello: "world"}
%{map | foo: "baz"}
** (KeyError) key :foo not found in: %{hello: "world"}
    (stdlib) :maps.update(:foo, "baz", %{hello: "world"})
    (stdlib) erl_eval.erl:259: anonymous fn/2 in :erl_eval.expr/5
    (stdlib) lists.erl:1263: :lists.foldl/3
Map.put(map, :foo, "baz")
%{foo: "baz", hello: "world"}

map = %{key: "abu", key2: "towfiq", key3: "khan"}


// An important feature of Elixir is that any two types can be compared; this is particularly useful in sorting. We don’t need to memorize the sort order, but it is important to be aware of it:

number < atom < reference < function < port < pid < tuple < map < list < bitstring


// String Interpolation
// If you’ve used Ruby, string interpolation in Elixir will look familiar:

name = "Sean"
"Sean"
"Hello #{name}"
"Hello Sean"



// String Concatenation
// String concatenation uses the <> operator:

name = "Sean"
"Sean"
"Hello " <> name
"Hello Sean"

// Lists
// Lists are simple collections of values which may include multiple types; lists may also include non-unique values:

[3.14, :pie, "Apple"]
[3.14, :pie, "Apple"]

// Elixir implements list collections as linked lists. This means that accessing the list length is an operation that will run in linear time (O(n)). For this reason, it is typically faster to prepend than to append:

list = [3.14, :pie, "Apple"]
[3.14, :pie, "Apple"]
# Prepending (fast)
["π" | list]
["π", 3.14, :pie, "Apple"]
# Appending (slow)
list ++ ["Cherry"]
[3.14, :pie, "Apple", "Cherry"]

// N/B : To hide the list from the output remove the "" from the N and use n alone 

list = [3.14, :pie, "Apple"]
[3.14, :pie, "Apple"]
# Prepending (fast)
[ n | list]

// List Subtraction
// Support for subtraction is provided via the --/2 operator; it’s safe to subtract a missing value:

["foo", :bar, 42] -- [42, "bar"]
["foo", :bar]

// N/B mindful of duplicate values. For every element on the right, the first occurrence of it gets removed from the left:

[1,2,2,3,2,3] -- [1,2,3,2]
[2, 3]


// Note: List subtraction uses strict comparison to match the values. For example:

[2] -- [2.0]
[2]
[2.0] -- [2.0]
[]

// List Concatenation
//List concatenation uses the ++/2 operator:
// A side note about the name (++/2) format used above: In Elixir (and Erlang, upon which Elixir is built), a function or operator name has two components: the name you give it (here ++) and its arity. Arity is a core part of speaking about Elixir (and Erlang) code. It is the number of arguments a given function takes (two, in this case). Arity and the given name are combined with a slash. We’ll talk more about this later; this knowledge will help you understand the notation for now.

[1, 2] ++ [3, 4, 1]
[1, 2, 3, 4, 1]

// Lists
// Lists are simple collections of values which may include multiple types; lists may also include non-unique values:
//  Good class is by using an integer ,  Atom and a string 
[3.14, :pie, "Apple"]
[3.14, :pie, "Apple"]


// Head / Tail
// When using lists, it is common to work with a list’s head and tail. The head is the list’s first element, while the tail is a list containing the remaining elements. Elixir provides two helpful functions, hd and tl, for working with these parts:

hd [3.14, :pie, "Apple"]
3.14
tl [3.14, :pie, "Apple"]
[:pie, "Apple"]
// In addition to the aforementioned functions, you can use pattern matching and the cons operator | to split a list into head and tail. We’ll learn more about this pattern in later lessons:

[head | tail] = [3.14, :pie, "Apple"]
[3.14, :pie, "Apple"]
head
3.14
tail
[:pie, "Apple"]