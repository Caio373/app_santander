import 'package:app_santander/views/login.dart';
import 'package:flutter/material.dart';

class BotaoPreLogin extends StatelessWidget {
  IconData icon;
  String text;

  BotaoPreLogin(this.icon, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login()));
      },
      child: Card(
        child: Container(
          // padding: EdgeInsets.all(30),
          width: MediaQuery.of(context).size.width * 0.3,
          height: 100,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: const Color.fromARGB(255, 236, 9, 0),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
