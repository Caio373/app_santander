// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  bool cardAberto=false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height:cardAberto
                ? MediaQuery.of(context).size.height*0.49
                : MediaQuery.of(context).size.height*0.36,
                child: Stack(
                  children: [
                    Image.asset('Fundo_dashboard.png'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "teste3.png",
                          width: 150,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Row(
                            children: const [
                              Icon(Icons.search_outlined, color: Colors.white),
                              SizedBox(width: 8),
                              Icon(Icons.message_outlined, color: Colors.white),
                              SizedBox(width: 8),
                              Icon(Icons.notifications_outlined, color: Colors.white),
                            ],
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      top: 145,
                      left: 12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Olá, Caio Fagundes',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            'ag 4321 Cc 049442-8',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          // Agora o Positioned está DENTRO do Stack
          Positioned(
            top: MediaQuery.of(context).size.height * 0.26,
            left: 12,
            right: 12,
            child: Card(color: Colors.white,
            elevation: 30,
              child: Container(

                width: MediaQuery.of(context).size.width * 0.93,
                height: cardAberto ? null:null,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.monetization_on),
                            SizedBox(width:10),
                            Text("Saldo da conta"),
                          ],
                        ),
                        IconButton(onPressed:(){
                          setState(() {
                            cardAberto=!cardAberto;
                          });
                        },icon:Icon(Icons.keyboard_arrow_down),
              )
                      ],
                    ),
                    cardAberto
    ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'R\$ 100.000.000,00',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Saldo + Limite R\$143,34',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Entenda seu limiti',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      )
    : Container()

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
