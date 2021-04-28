import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color backgroundColor;
  final dynamic icon;
  final TextStyle textStyle;

  RoundedButton(this.text, this.onPressed,
      {this.backgroundColor, this.icon, this.textStyle});

  @override
  Widget build(BuildContext context) {
    Widget buttonChild;
    if (this.icon == null) {
      buttonChild = Text(
        this.text,
        style: this.textStyle ??
            TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),
      );
    } else {
      buttonChild = Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            this.icon,
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                this.text,
                style: this.textStyle ??
                    TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
              ),
            )
          ]);
    }

    return ElevatedButton(
      onPressed: this.onPressed,
      child: buttonChild,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              this.backgroundColor ?? Theme.of(context).primaryColor),
          padding:
              MaterialStateProperty.all(EdgeInsets.fromLTRB(25, 10, 25, 10)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))),
    );
  }
}
