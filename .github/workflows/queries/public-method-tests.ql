/**
* find all public methods that are called by tests
*/
import javascript

from FunctionLike method, FunctionLike test
where method.isPublic() and
      calls(test, method) and
      test.hasAnnotationWithName("test")
select method, test