class SupportPreconditions {
  static T checkNotNull<T extends Object>(T reference, {Object? message}) {
    return reference;
  }

  static String checkNotEmpty(String string, {Object? message}) {
    if (string.length == 0) {
      throw ArgumentError(
          _resolveMessage(message, "Given String is empty or null."));
    }
    return string;
  }

  static void checkArgument(bool expression, {Object? message}) {
    if (!expression) {
      throw ArgumentError(_resolveMessage(message, ''));
    }
  }

  static int checkElementIndex(int index, int size, {Object? desc}) {
    if (index < 0 || index >= size) {
      throw RangeError(_resolveMessage(
          desc, "Index $index out of the bounds for List of size $size"));
    }
    return index;
  }

  static void checkState(bool expression, {String? message}) {
    if (!expression) {
      throw new StateError(_resolveMessage(message, 'failed precondition'));
    }
  }

  static String _resolveMessage(message, String defaultMessage) {
    if (message is Function) message = message();
    if (message == null) return defaultMessage;
    return message.toString();
  }
}
