/**
* find all public methods that are called by tests
*/
import javascript

from Method method, Function test, CallExpr call
where method.getAnAccess().isPublic() and
      test.hasAnnotation("test") and
      call.getTarget().getAFunction() = method and
      call.getAnEnclosingFunction() = test
select method, test