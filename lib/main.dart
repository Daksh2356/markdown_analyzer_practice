import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const _markdownText = """  
# Minimal Markdown Test

 This is a simple Markdown test. Provide a text string with Markdown tags
 to the Markdown widget and it will display the formatted output in a
 scrollable widget.

 ## Section 1
 Maecenas eget **arcu egestas**, mollis ex vitae, posuere magna. Nunc eget
 aliquam tortor. Vestibulum porta sodales efficitur. Mauris interdum turpis
 eget est condimentum, vitae porttitor diam ornare.

 ### Subsection A
 Sed et massa finibus, blandit massa vel, vulputate velit. Vestibulum vitae
 venenatis libero. **__Curabitur sem lectus, feugiat eu justo in, eleifend
 accumsan ante.__** Sed a fermentum elit. Curabitur sodales metus id mi
 ornare, in ullamcorper magna congue.
 
int _counter = 0;

void _incrementCounter() {
setState(() {
     _counter++;
  });
}

## analyzer:
    exclude:
    # - "**/model.dart"
    errors:
     avoid_print: info
     camel_case_types: warning
     unused_import: ignore
     library_private_types_in_public_api: error
     empty_constructor_bodies: warning
     avoid_renaming_method_parameters: info
     prefer_const_constructors: info

## linter:
    rules:
     avoid_print: true
     prefer_single_quotes: false
     camel_case_types: true
     empty_constructor_bodies: true

""";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {

  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Markdown Practice'),
      ),
      body: Markdown(
        data: _markdownText,
      ),
    );
  }
}
