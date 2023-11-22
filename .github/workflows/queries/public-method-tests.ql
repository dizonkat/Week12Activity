/**
* find all public methods that are called by tests
*/
import javascript

from Method method, Function test
where method.isPublic() and
      test.hasAnnotationWithName("test") and
      method.getAsts().getAnExpr().getAFunction().getAFunctionCall().getFunction() = test
select method, test