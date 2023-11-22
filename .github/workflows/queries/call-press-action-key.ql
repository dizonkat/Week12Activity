/*
* find tests that call a function called "pressActionKey" 
*/
import javascript

from Function test, Function callee
where test.hasAnnotation("test") and
      calls(test, callee) and
      callee.getName() = "pressActionKey"
select test