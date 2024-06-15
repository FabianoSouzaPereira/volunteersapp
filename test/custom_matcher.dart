import 'package:test/test.dart';

Matcher isTypeWithMessage<T>(String successMessage) {
  return _TypeMatcherWithMessage<T>(successMessage);
}

class _TypeMatcherWithMessage<T> extends Matcher {
  final String successMessage;

  _TypeMatcherWithMessage(this.successMessage);

  @override
  bool matches(item, Map matchState) {
    final isMatch = item is T;
    if (isMatch) {
      print(successMessage);
    }
    return isMatch;
  }

  @override
  Description describe(Description description) {
    return description.add('is a $T');
  }

  @override
  Description describeMismatch(item, Description mismatchDescription, Map matchState, bool verbose) {
    return mismatchDescription.add('is not a $T');
  }
}
