/*
* find tests that call a function called "pressActionKey" 
*/
import javascript

from FunctionCall call
where call.getTarget().getName() = "pressActionKey"
select call