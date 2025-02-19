import 'some_file.dart' show ClassName, ClassName2;
import 'some_file.dart' show ClassName;
import 'some_file.dart' hide FunctionName;
import 'file.dart' show A, B, C, D hide E,F,G,H;
import 'dart:io' if (dart.library.html) 'dart:html';

import 'src/hw_none.dart'
    if (dart.library.io) 'src/hw_io.dart'
    if (dart.library.js_interop) 'src/hw_web.dart'
    show foo;
