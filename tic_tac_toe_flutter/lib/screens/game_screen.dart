import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe_flutter/screens/final_screen.dart';

class HomeScreen extends StatefulWidget {
 
  const HomeScreen({super.key});

  @override
  
  State<HomeScreen> createState() => _HomeScreenState();
  
}
 
class _HomeScreenState extends State<HomeScreen> {
  String _containerText1 = "";
  String _containerText2 = "";
  String _containerText3 = "";
  String _containerText4 = "";
  String _containerText5 = "";
  String _containerText6 = "";
  String _containerText7 = "";
  String _containerText8 = "";
  String _containerText9 = "";

  int turn = 1;

void _navega(String win) {
  // Pasa el mensaje del ganador a la pantalla FinalScreen
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => FinalScreen(winnerText: "El ganador es $win"), // Pasar el texto
    ),
  );
}
void _resetGame() {
  setState(() {
    _containerText1 = '';
    _containerText2 = '';
    _containerText3 = '';
    _containerText4 = '';
    _containerText5 = '';
    _containerText6 = '';
    _containerText7 = '';
    _containerText8 = '';
    _containerText9 = '';
    turn = 1;
  });
}
  void _changeText(int index) {
    setState(() {
      if (turn == 1) {
        switch (index) {
          case 1:
            _containerText1 = "X";
            break;
          case 2:
            _containerText2 = "X";
            break;
          case 3:
            _containerText3 = "X";
            break;
          case 4:
            _containerText4 = "X";
            break;
          case 5:
            _containerText5 = "X";
            break;
          case 6:
            _containerText6 = "X";
            break;
          case 7:
            _containerText7 = "X";
            break;
          case 8:
            _containerText8 = "X";
            break;
          case 9:
            _containerText9 = "X";
            break;
        }
        turn = 2;
      } else {
        switch (index) {
          case 1:
            _containerText1 = "O";
            break;
          case 2:
            _containerText2 = "O";
            break;
          case 3:
            _containerText3 = "O";
            break;
          case 4:
            _containerText4 = "O";
            break;
          case 5:
            _containerText5 = "O";
            break;
          case 6:
            _containerText6 = "O";
            break;
          case 7:
            _containerText7 = "O";
            break;
          case 8:
            _containerText8 = "O";
            break;
          case 9:
            _containerText9 = "O";
            break;
        }
        turn = 1;
      }
    });
  }

  void _isWin() {
    if (_containerText1 == "X" &&
        _containerText2 == "X" &&
        _containerText3 == "X") {
      _navega("X");
      _resetGame();
      
    }
    if (_containerText1 == "X" &&
        _containerText4 == "X" &&
        _containerText7 == "X") {
      _navega("X");
       _resetGame();
    }
    if (_containerText2 == "X" &&
        _containerText5 == "X" &&
        _containerText8 == "X") {
      _navega("X");
       _resetGame();
    }if (_containerText3 == "X" &&
        _containerText6 == "X" &&
        _containerText9 == "X") {
      _navega("X");
       _resetGame();
    }if (_containerText4 == "X" &&
        _containerText5 == "X" &&
        _containerText6 == "X") {
      _navega("X");
       _resetGame();
    }if (_containerText7 == "X" &&
        _containerText8 == "X" &&
        _containerText9 == "X") {
      _navega("X");
       _resetGame();
    }if (_containerText1 == "X" &&
        _containerText5 == "X" &&
        _containerText9 == "X") {
      _navega("X");
       _resetGame();
    }if (_containerText3 == "X" &&
        _containerText5 == "X" &&
        _containerText7 == "X") {
      _navega("X"); 
      _resetGame();
    }
    
     if (_containerText1 == "O" &&
        _containerText2 == "O" &&
        _containerText3 == "O") {
      _navega("O");
       _resetGame();
    }
    if (_containerText1 == "O" &&
        _containerText4 == "O" &&
        _containerText7 == "O") {
      _navega("O");
       _resetGame();
    }
    if (_containerText2 == "O" &&
        _containerText5 == "O" &&
        _containerText8 == "O") {
      _navega("O");
       _resetGame();
    }if (_containerText3 == "O" &&
        _containerText6 == "O" &&
        _containerText9 == "O") {
      _navega("O");
       _resetGame();
    }if (_containerText4 == "O" &&
        _containerText5 == "O" &&
        _containerText6 == "O") {
      _navega("O");
       _resetGame();
    }if (_containerText7 == "O" &&
        _containerText8 == "O" &&
        _containerText9 == "O") {
      _navega("O");
       _resetGame();
    }if (_containerText1 == "O" &&
        _containerText5 == "O" &&
        _containerText9 == "O") {
      _navega("O");
       _resetGame();
    }if (_containerText3 == "O" &&
        _containerText5 == "O" &&
        _containerText7 == "O") {
      _navega("O");
       _resetGame();
    }
     else {
      //NADA
    }
  }

  @override
  Widget build(BuildContext context) {
    String turnOf;
    switch (turn) {
      case 1:
        turnOf = "Turn of: X";
        break;
      case 2:
        turnOf = "Turn of: O";
        break;
      default:
        turnOf = "Turn of: X";
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          FloatingActionButton(onPressed: (){
            _resetGame();},
            backgroundColor: Colors.white,
            child: Icon(Icons.restart_alt_rounded,size: 40,),
            )
        ],
       title: Text('Tic Tac Toe',
              style: GoogleFonts.nunito(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
            backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                _container(1, _containerText1),
                _container(2, _containerText2),
                _container(3, _containerText3),
              ],
            ),
            Row(
              children: [
                _container(4, _containerText4),
                _container(5, _containerText5),
                _container(6, _containerText6),
              ],
            ),
            Row(
              children: [
                _container(7, _containerText7),
                _container(8, _containerText8),
                _container(9, _containerText9),
              ],
            ),
            _turnView(turnOf),
          ],
        ),
      ),
    );
  }

  Widget _turnView(String turnOf) {
    return Center(
        child: Container(
          color: Colors.black,
          height: 100,
          width: double.infinity,
          child: Center(
            child: Text(
              turnOf,
              style: GoogleFonts.nunito(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
    );
  }

  Widget _container(int index, String text) {
    return GestureDetector(
        onTap: () {
          if (text == "") {
            _changeText(index);
          } else {
            //NADA
          }
          _isWin();
        },
        child: Container(
            margin: EdgeInsets.all(8),
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.nunito(
                  fontSize: 75,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )));
  }
}
