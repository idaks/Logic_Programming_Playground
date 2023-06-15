# Logic_Programming_Playground

For individuals with an interest in Logic Programming, this repository serves as an easy-to-use playground, eliminating the hassle of complex environment setup.

To utilize this repository, please use the GitHub Codespace feature. 
While the initial setup may take a few minutes, subsequent uses will bypass the setup process, making it quicker and more convenient.

At present, this playground incorporates four different logic programming packages.
- Clingo [[Website](https://potassco.org/clingo/)]
- Prolog [[Website](https://www.swi-prolog.org/)]
- DLV [[Website](https://www.dlvsystem.it/dlvsite/dlv/)]
- Logica [[Website](https://logica.dev/)]

# Example
Within the `examples` directory, we've provided four separate files that you can utilize to get a taste for the four logic programming packages.

## Clingo
To execute Clingo, you can employ the command `clingo win_move.lp`. Alternatively, you can use `clingo win_move.lp 0`, which will provide you with all the potential solution sets or "possible worlds".

## Prolog
To begin, you'll need to launch the Prolog interpreter by entering `swipl` into your terminal. Next, you should load the `family.pl` file into the interpreter with the command `consult('family.pl').` Once that's done, you can discover who John's grandchildren are by executing `grandparent(john,X).` After receiving the first answer, you can continue hitting `;` to reveal additional answers until there are none left. You can exit the Prolog interpreter by typing `halt.` and pressing Enter.

## DLV
Just like with Clingo, you can easily execute scripts in DLV by using the command `dlv win_move.dlv`. Additionally, by incorporating the `-wf` option, you can utilize the well-founded model within DLV.

## Logica
Contrasting with the other three packages, Logica uniquely offers support for both command line operations and an Interactive Programming Interface, such as Jupyter Notebook. Here, we only instroduce the command line version, you can use `logica hello.l run Greeting`