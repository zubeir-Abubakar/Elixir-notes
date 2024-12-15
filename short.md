 ## Elixir short commands for beginners

1- There are different types of ways to create files:

    ``.exs`` -> it is used for interpreted codes
   ``.ex`` -> Is used for compiled code

2- To create a new directory use `Mix`

``mix new "directory_name`` 

3- To run a new project , you first need to complile it . use :

 `` mix compile``

4- To load your project from the terminal elixir and make it interactive use :

`` iex -S mix``
or you can use: 
`` mix run -e "module name : function name" `` -> this returns the value 

 - You will realise running the second code doesn't work on the interactive terminal unless you add the functionality code to recideve the response :

 ``IO.puts (response)`` -> this prints the value


5- You can run mix directly and it will compile for us :
``mix run``

6- We can also define at our application level which module is to be executed by default and the file is : 

``mix.exs``

- To do this we will extend our required module in the ``def application do `` section and add ``mod: {module_name , []} , ``

7- For any parameters that your not using you can add the ``_`` to mute it 
for example ``def start(_type,_args) do`` we are not using the type and the args in our functions.

8- To add Hex to your project run 

``mix local.hex  ``

9- Then to add a dependacy copied from hex you can add it in the mix.exs file then run in the terminal 

`` mix deps.get`` to install it to your working enviroment

10- To import an external package to your file use 
``alias (package name)``

11-  To add a constant function in elixir that should not be changed , we can use an ``@`` sign below the module name for instance ``@x=5`` no matter where we call x it will return 5 and incase we try to rename the x we get an error .

 ### Enum

 1-  There are several comands in the enum module to create an allogarithm of enumerables as list or more for instance 
   - To create a list we can use ``Enum.to_list 1....10`` this will create a list from 1 to 10 

2- There is also ``all`` function  to make sure all the items in the list are matching and giving back a value true response 
  - E.g ``Enum.all?(list, fn x-> rem(x, 2)== 0 end)`` The list is the list we created above. The function is an annonimous function x that we will be passing the list through and check if the reminder of the list divided by 2 is equal to zero then end the enum function.This will return true or false 

3- There is als0 ``any`` function this will check if there is any possibility in the list to return the remender value given and incase there is any chance it will return true ``Enum.any?(list, fn x -> rem(x,2) == 0 end)``

4- There is also a ``each`` function this will be iterating through the entire list and executing the function thats provided as the second parameter and print our each one of the list separately E.g ``Enum.each(list , fn x -> IO.puts x end)`` this will print out all the list and give one ``OK``

5- There is also the ``map`` function. what is does is that it executes all the functions in the list within the list . E.g ``Enum.map(list ,  fn x -> IO.puts x end)``  this will execute and give ``ok`` for each of the outputs at the bottom

6- We also have the `square` function this will square the list and display the list in a squared manner ``square = Enum.map(list , fn x -> (x*x)) end`` this will return us a whole function of multiplied list to square form.

7- There is also a ``filter`` function and this is used to filter the values in the list according to the second parameter provided for example i want to take out all the odd numbers and put it in a list called ``odd``. then i will create a function for that by ``Odd = Enum.filter(list , fn -> x rem( x , 2) == 1 end)``

8 - Incase the list is too long , we can use the `count` function to count the outcome and give us a number for instance we can say `Enum.count odd` To give us the amount of odds returned.

9 -  There is also the `sort` function that is used to sort the parameters according to your requirements and that is by `ascending order ` or `decending order ` E.g lets create a random list in our IEX :   `ul [123,511,133,421]` and click on enter 
  - Once created we can go ahead and sort it out by running the command `Enum.sort ul` this will return ordered list of the ul function 

## TO READ MORE ABOUT Enum you can use this link [https://hexdocs.pm/elixir/Enum.html#content] 
 