#Tool
Tool je skript určený k uchovávání spustitelných souborů mimo proměnnou
_PATH_ v tzv. toolboxech. V tomto repozitáři je také skript toolbox, který
je určený k nastavení aktivního toolboxu.

##Nastavení
Tool používá proměnnou prostředí _TOOLS\_PATH_ k určení složky s toolboxy na
nastavením. Pokud jste tak ještě neučinili (ani v anglické verzi), podívejte se
na [Před prvním použitím](BeforeFirstUseCZ.md) a v případě zájmu podle toho také
postupujte. Po prvotním nastavení bude složka _TOOLS\_PATH_ obsahovat soubor
.config a složky pro toolboxy pojmenované _tb-JMENO\_TOOLBOXU_, kde
_JMENO\_TOOLBOXU_ je jméno toolboxu, takže složka pro toolbox _test_ se bude
jmenovat _tb-test_.

##Použití
Nejdříve zkopírujte spustitelné soubory, které chcete uchovávat mimo proměnnou
_PATH_ do složky _TOOLS\_PATH/tb-TOOLBOX\_NAME_, kde _TOOLBOX\_NAME_ je jméno
aktivního toolboxu. Potom už můžete vaše binárky a skripty spouštět pomocí

    $ tool jmeno-nastroje [parametry]

A nezapomeňte, že můžete jednoduše změnit aktivní toolbox pomocí

    $ toolbox jmeno-noveho-toolboxu

Hodně štěstí (snad ho nebudete potřebovat).

##Licence
Všechny skripty v tomto repozitáři jsou k dispozici pod licencí GNU GPL v3 (
[COPYING](../COPYING))
