import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../navbar.dart';
import '../providers/authentication.dart';
import 'colors.dart';

class UserAppbar extends StatelessWidget {
  const UserAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Authentication>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
              child: Text("Hello!",
                  style: TextStyle(
                      color: warnaUngu,
                      fontSize: 19,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700)),
            ),
            Text(
              user.dispName ?? "UserName", //userinfo.detail[0].firstName,
              style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 32,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: const CircleBorder(),
            elevation: 0,
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage:
                NetworkImage(user.userPhoto ?? "https://picsum.photos/130/130"),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Navbar(4)),
            );
          },
        ),
      ],
    );
  }
}
