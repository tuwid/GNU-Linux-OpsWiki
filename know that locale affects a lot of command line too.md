Know that locale affects a lot of command line tools in subtle ways, including sorting order (collation) and performance. 
Most Linux installations will set `LANG` or other locale variables to a local setting like US English. 
But be aware sorting will change if you change locale. And know i18n routines can make sort or other commands run many times slower. In some situations (such as the set operations or uniqueness operations below) you can safely ignore slow i18n routines entirely and use traditional byte-based sort order, using  
```
export LC_ALL=C
```