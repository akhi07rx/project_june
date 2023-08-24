import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main()
{
  runApp(MaterialApp(home: ReadMore(),));
}
class ReadMore extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read More Read Less'),
      ),
      body: Column(
        children: [
          ReadMoreText('Flutter is a portable UI toolkit. In other words, it’s a comprehensive app Software Development toolkit (SDK) that comes complete with widgets and tools. Flutter is a free and open-source tool to develop mobile, desktop, web applications. Flutter is a cross-platform development tool. This means that with the same code, we can create both ios and android apps. This is the best way to save time and resources in our entire process. In this, hot reload is gaining traction among mobile developers. Allows us to quickly see the changes implemented in the code with hot reload',
            trimLines: 2,
            preDataText: 'Flutter',
            preDataTextStyle: TextStyle(fontWeight: FontWeight.w800),
            style: TextStyle(color: Colors.deepOrange),
            colorClickableText: Colors.green,
            trimMode: TrimMode.Line,
            trimCollapsedText: '.....Collapse',
            trimExpandedText: '.....Expand',
          ),
        ],
      ),
    );
  }
}