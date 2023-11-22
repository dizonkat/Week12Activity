/*
* find tests that call a function called "pressActionKey" 
*/
import javascript

from Function test, CallExpr call, Function callee
where test.hasAnnotation("test") and
      call.getFunction() = callee and
      callee.getName() = "pressActionKey" and
      call.getAnEnclosingFunction() = test
select test