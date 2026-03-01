import 'dart:ffi';

import 'package:ffi/ffi.dart';

final class TfLiteNLClassifier extends Opaque {}

final class TfLiteNLClassifierOptions extends Struct {
  @Int32()
  external int inputTensorIndex;

  @Int32()
  external int outputScoreTensorIndex;

  @Int32()
  external int outputLabelTensorIndex;

  external Pointer<Utf8> inputTensorName;

  external Pointer<Utf8> outputScoreTensorName;

  external Pointer<Utf8> outputLabelTensorName;

  static Pointer<TfLiteNLClassifierOptions> allocate(
    int inputTensorIndex,
    int outputScoreTensorIndex,
    int outputLabelTensorIndex,
    String inputTensorName,
    String outputScoreTensorName,
    String outputLabelTensorName,
  ) {
    final result = calloc<TfLiteNLClassifierOptions>();
    result.ref
      ..inputTensorIndex = inputTensorIndex
      ..outputScoreTensorIndex = outputScoreTensorIndex
      ..outputLabelTensorIndex = outputLabelTensorIndex
      ..inputTensorName = inputTensorName.toNativeUtf8()
      ..outputScoreTensorName = outputScoreTensorName.toNativeUtf8()
      ..outputLabelTensorName = outputLabelTensorName.toNativeUtf8();
    return result;
  }
}

final class TfLiteCategories extends Struct {
  @Int32()
  external int size;

  external Pointer<TfLiteCategory> categories;
}

final class TfLiteCategory extends Struct {
  external Pointer<Utf8> text;

  @Double()
  external double score;
}

final class TfLiteBertNLClassifier extends Opaque {}

final class TfLiteBertNLClassifierOptions extends Struct {
  @Int32()
  external int maxSeqLen;

  static Pointer<TfLiteBertNLClassifierOptions> allocate(
    int maxSeqLen,
  ) {
    final result = calloc<TfLiteBertNLClassifierOptions>();
    result.ref.maxSeqLen = maxSeqLen;
    return result;
  }
}
