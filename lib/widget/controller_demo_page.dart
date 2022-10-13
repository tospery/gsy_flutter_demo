import 'package:flutter/material.dart';

/// 在 Flutter 中有很多内置的 Controller
/// 大部分内置控件都可以通过 Controller 设置和获取控件参数
/// 比如 TextField 的 TextEditingController
/// 比如 ListView  的 ScrollController
/// 一般想对控件做 OOXX 的事情，先找个 Controller 就对了。
class ControllerDemoPage extends StatelessWidget {
  final TextEditingController controller =
      new TextEditingController(text: "init Text");
  @override
  Widget build(BuildContext context) {
    print("Main MediaQuery padding: ${MediaQuery.of(context).padding} viewInsets.bottom: ${MediaQuery.of(context).viewInsets.bottom}");
    return Scaffold(
      appBar: AppBar(
        title: new Text("ControllerDemoPage"),
      ),
      extendBody: true,
      body: Column(
        children: [
          new Expanded(child: InkWell(onTap: (){
            FocusScope.of(context).requestFocus(FocusNode());
          })),
          ///增加 CustomWidget
          CustomWidget(),
          new Container(
            margin: EdgeInsets.all(10),
            child: new Center(
              child: new TextField(
                controller: controller,
              ),
            ),
          ),
          new Spacer(),
        ],
      ),
    );
  }
}
class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Custom MediaQuery padding: ${MediaQuery.of(context).padding} viewInsets.bottom: ${MediaQuery.of(context).viewInsets.bottom}\n  \n");
    return Container();
  }
}
