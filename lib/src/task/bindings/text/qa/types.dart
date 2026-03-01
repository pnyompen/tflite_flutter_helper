import 'dart:ffi';

import 'package:ffi/ffi.dart';

final class TfLiteBertQuestionAnswerer extends Opaque {}

final class TfLiteQaAnswer extends Struct {
  @Int32()
  external int start;
  @Int32()
  external int end;
  @Double()
  external double logit;

  external Pointer<Utf8> text;
}

final class TfLiteQaAnswers extends Struct {
  @Int32()
  external int size;

  external Pointer<TfLiteQaAnswer> answers;
}
