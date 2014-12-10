#Translations
Scripts now automatically choose language (at this moment only English and
Czech) Its decision is based on contents of file TOOLS\_PATH/.lang or LANGUAGE
environment variable.

##How to force language
If you want to use different language for system and different for those
scripts, then you have to run

    $ toolbox --set-language LANG

where LANG is cs\_CZ for Czech or en\_US for English.

If you want to reset your language settings and use system language, then run

    $ toolbox --reset-language

to test system language on every start or

    $ toolbox --set-language $LANGUAGE

to force actual system language.

##Help
You can help me by commit new translation (if you have any basics on shell
scripts, then you know how to add new language).
