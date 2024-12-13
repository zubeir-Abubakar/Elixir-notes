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

11- 