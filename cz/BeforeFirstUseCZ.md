#Před prvním použitím
Nejdříve budete muset vytvořit složku pro toolboxy a první toolbox. Takže se
rozhodněte, kde to bude (složka by měla být lehce dostupná, takže pokud možno ne
_/usr/path/to/tools/is/somewhere/near/and/you/cannot/reach/it/in/less/than/ten/seconds_
).

Otevřete soubor _~/.bashrc_ nebo _~/.bash_profile_ a přidejte do něj následující
řádek (nahraďte _/tools_ složkou, kterou chcete použít):

    export TOOLS_PATH="/tools"

Dvě poznámky
1. Nevkládejte do cesty poslední lomítko
2. Z nějakého důvodu musíte použít absolutní cestu, takže když budete chtít
   použít složku ve vaší domovské složce, takže musíte použít
   _/home/VASE\_UZIVATELSKE\_JMENO/_ místo _~/_

Nyní vytvořte složky:

    $ mkdir TOOLS_PATH
    $ mkdir TOOLS_PATH/tb-test

A spusťte

    $ toolbox test

K připravení souboru .config a nastavení aktivního toolboxu na test (ano,
používá se prefix tb-).

Nyní je tool připraven k použití.
