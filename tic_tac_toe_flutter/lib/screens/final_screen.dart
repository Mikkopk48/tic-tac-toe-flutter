import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalScreen extends StatelessWidget {
  final String winnerText;

  // Constructor para recibir el texto del ganador
  FinalScreen({required this.winnerText});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child:Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                offset:Offset( 3,  2),
                color:Colors.black,
                blurRadius:2,
                spreadRadius:1.5 )],
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent
              ),
              child: Center(
                child:Text(
                      
                      winnerText,
                      style: GoogleFonts.nunito(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      
                    ),),
              ),
            ),
            IconButton(
              iconSize:200 ,
              color:Colors.black,
              onPressed: () {
              // Devolver true para indicar que el juego debe reiniciarse
              Navigator.pop(context, true);
            }, icon: Icon(Icons.restart_alt_rounded),
            )
          ],
        )
      ),
    );
  }
}