import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Darkpage extends StatefulWidget {
  const Darkpage({super.key});

  @override
  State<Darkpage> createState() => _DarkpageState();
}

class _DarkpageState extends State<Darkpage> {
  dynamic displaytxt = 20;`
  Widget CalcBtn(String BtnTxt,Color BtnColor,Color TxtColor){
     return Padding(
         padding: EdgeInsets.all(4),
       child: TextButton(
          onPressed: () { calculation(BtnTxt) ;}, child: Text(BtnTxt,style: TextStyle(fontSize: 35,color: TxtColor),),
           style:TextButton.styleFrom(backgroundColor: BtnColor,
             shape: CircleBorder(),
             padding: EdgeInsets.all(20),
       )

       ),

     );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(14),
        child:ListView(children: [ Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("$text",style: TextStyle(color: Colors.white,fontSize: 100,fontWeight: FontWeight.bold),),
            Row(
              children: [
                CalcBtn("AC",  Colors.grey,  Colors.black),
                CalcBtn("+/-",  Colors.grey,  Colors.black),
                CalcBtn("%",  Colors.grey,  Colors.black),
                CalcBtn("/",  Colors.amber,  Colors.black),

              ],
            ),
            Row(
              children: [
                CalcBtn("7",  Colors.white,  Colors.black),
                CalcBtn("8",  Colors.white,  Colors.black),
                CalcBtn("9",  Colors.white,  Colors.black),
                CalcBtn("X",  Colors.white,  Colors.black),

              ],
            ),
            Row(
              children: [
                CalcBtn("4",  Colors.white,  Colors.black),
                CalcBtn("5",  Colors.white,  Colors.black),
                CalcBtn("6",  Colors.white,  Colors.black),
                CalcBtn("-",  Colors.white,  Colors.black),

              ],
            ),
            Row(
              children: [
                CalcBtn("1",  Colors.white,  Colors.black),
                CalcBtn("2",  Colors.white,  Colors.black),
                CalcBtn("3",  Colors.white,  Colors.black),
                CalcBtn("+",  Colors.white,  Colors.black),

              ],
            ),
            Row(

              children: [
                Center(
                  child: Container(
                    height: 80,
                    width: 200,

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(50)
                          ,
                    ),

                    child: TextButton(
                        onPressed: () { calculation('0') ;}, child: Text('0',style: TextStyle(fontSize: 35,color: Colors.white),),
                        style:TextButton.styleFrom(backgroundColor: Colors.grey[850],
                          shape: StadiumBorder(),
                          padding: EdgeInsets.all(20),
                        )

                    ),

                  ),
                ) ,
                CalcBtn(".",  Colors.white,  Colors.black),
                CalcBtn("=",  Colors.white,  Colors.black),

              ],
            ),


          ],
        ),],)

      )
    );
  }


  dynamic text ='0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {


    if(btnText  == 'AC') {
      text ='0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';

    } else if( opr == '=' && btnText == '=') {

      if(preOpr == '+') {
        finalResult = add();
      } else if( preOpr == '-') {
        finalResult = sub();
      } else if( preOpr == 'x') {
        finalResult = mul();
      } else if( preOpr == '/') {
        finalResult = div();
      }

    } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {

      if(numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if(opr == '+') {
        finalResult = add();
      } else if( opr == '-') {
        finalResult = sub();
      } else if( opr == 'x') {
        finalResult = mul();
      } else if( opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    }
    else if(btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if(btnText == '.') {
      if(!result.toString().contains('.')) {
        result = result.toString()+'.';
      }
      finalResult = result;
    }

    else if(btnText == '+/-') {
      result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();
      finalResult = result;

    }

    else {
      result = result + btnText;
      finalResult = result;
    }


    setState(() {
      text = finalResult;
    });

  }


  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }
  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }
  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }


  String doesContainDecimal(dynamic result) {

    if(result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if(!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }

}



