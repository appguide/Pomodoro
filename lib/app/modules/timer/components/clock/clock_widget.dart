import 'package:countdown_flutter/countdown_flutter.dart';
import 'package:flutter/material.dart';

class ClockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        SizedBox(
          height: 300,
          width: 300,
          child: CircularProgressIndicator(
            value: 1,
            strokeWidth: 8,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black87),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Countdown(
                      duration: Duration(minutes: 25),
                      onFinish: () {
                        print('finished!');
                      },
                      builder: (BuildContext ctx, Duration remaining) {
                        return Column(
                          children: <Widget>[
                            Text(
                              '${remaining.inMinutes}',
                              style: TextStyle(
                                fontSize: 52,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "minutes",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
            FlatButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Icon(Icons.play_arrow),
              shape: StadiumBorder(),
              onPressed: () => () {},
            ),
          ],
        ),
      ],
    );
  }
}
