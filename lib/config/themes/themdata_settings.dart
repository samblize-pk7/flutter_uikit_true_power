import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData neomorphs = ThemeData.light().copyWith(
    primaryColor: Colors.pink,
    scaffoldBackgroundColor: Color(0xffE3EDF7),
    appBarTheme: AppBarTheme(color: Colors.indigo[900]),
    colorScheme: ColorScheme.light().copyWith(primary: Colors.pink[400]),
    textTheme: GoogleFonts.mulishTextTheme());
