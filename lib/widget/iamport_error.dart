import 'package:flutter/material.dart';

class IamportError extends StatelessWidget {
  static final Color failureColor = Color(0xfff5222d);

  final String actionType;
  final String errorMessage;

  IamportError(this.actionType, this.errorMessage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('아임포트 $actionType 결과'),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.error,
                    color: failureColor,
                    size: 200.0,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    child: Text(
                      '아임포트 $actionType 파라메터 오류',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 50.0),
                    child: Text(
                      errorMessage,
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton.icon(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      label: Text('돌아가기', style: TextStyle(fontSize: 16.0)),
                      style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: failureColor)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
