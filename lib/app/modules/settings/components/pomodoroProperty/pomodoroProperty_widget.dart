import 'package:flutter/material.dart';

class PomodoroPropertyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              children: <Widget>[
                SwitchListTile(
                  value: true,
                  title: Text("DarkTheme"),
                  onChanged: (value) {},
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Concentracao:",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Duracao  ",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: FlatButton(
                            child: Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Text(""),
                      Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
                        child: FlatButton(
                          child: Text(
                            "-",
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
