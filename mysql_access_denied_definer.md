
When migrating schemas to another mysql server you might encounter this during import
`ERROR 1227 (42000) at line 6982: Access denied; you need (at least one of) the SUPER privilege(s) for this operation` 

And while investigating you see that there is a DEFINER line there which could be solved with the following sed: 

sed -i "s/DEFINER=\`[^\`]*\`@\`[^\`]*\`/DEFINER=\`root\`@\`%\`/g"



