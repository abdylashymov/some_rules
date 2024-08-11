
// import : импорт деген - көчүрүү-импорттоо сырттан бир нерсе алуу
import 'package:flutter/material.dart';



// int sanBir = 10;

// String chonTextter = "Salam";

// class MeninClassym {} 


//void: void деген - main функциясынын тиби
//main: main деген - функциянын аты
//(): main функциясынын параметри
//{}: main функциясынын денеси
//runApp: приложенияны жүргүзүү тиркемени жүргүзүү
//const: өзгөрбөйт эч качан 


void main() {
  runApp(const MyApp());
}

//class: keyword,ачкыч сөз
//myApp: класстын аты
//extends: мурас алат. MyApp <---- StatelessWidget
//StatelessWidget: Widget
class MyApp extends StatelessWidget {
  //super: child класстан parent класска өткөрүп берет.MyApp ----> StatelessWidget
  const MyApp({super.key});
//@override: parent класстагы методду же болбосо функцияны өзгөртүп жазуу.MyApp <---- StatelessWidget

  @override
  //widget: build методунун кайтаруу тиби
  //build: методдун аты
  //(BuildContext): build методунун параметри
  //{}: build методунун денеси
  Widget build(BuildContext context) {
     //return: кайтарып берет
     //MaterialApp: бул бир Widget
    return MaterialApp(
      //title: MaterialApp'tyn property'si
      title: 'Flutter Demo',
      //theme: MaterialApp'tyn property'si
      //ThemeData: бул Widget
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MaterialApp property'si
      //MyHomePage: бул бир Widget
      //title: MyHomePage'tin property'si.Өзүнө String алат.

      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//class: keyword, classtyn дартка бир түшүнүк киргизе алабыз
//MyHomePage: класстын аты
//extends: мурас алат. MyApp <---- StatefulWidget

class MyHomePage extends StatefulWidget {
//MyHomePage({}): constructor
//super: child класстан parent класска өткөрүп берет.MyApp --> StateFulWidget
//required: сөзсүз түрдө берүү керек
const MyHomePage({super.key, required this.title});
//final: өзгөрбөйт
//String: title property'sinin тиби
//title: property'нин аты

  final String title;
//@override: parent класстагы методду child класста өзгөртүп жазуу. MyApp <--- StateFulWidget

  @override
  //State: абал
  //<MyHomePage>: MyHomePage түрүн беребиз
  //creatState: методдун аты
  //_MyHomePageState:  класстын аты
  //extends: мурас алат. MyApp <-- State,MyHomePage>

  State<MyHomePage> createState() => _MyHomePageState();}
//class: keyword, classtyn дартка бир түшүнүк киргизе алабыз
//_MyHomePageState:  класстын аты
 //extends: мурас алат. MyApp <-- State,MyHomePage>

class _MyHomePageState extends State<MyHomePage> {
  //int: counter'din тиби
  //_counter: өзгөрмөнүн аты
  //0: өзгөрмөнүн мааниси
  int _counter = 0;
//void: _incrementCounter'дин тиби
//_incrementCounter: методдун аты
//():_incrementCounter'дин параметри
//{}: _incrementCounter'дин денеси

  void _incrementCounter() {
    //setState: метод
    setState(() {
      //counter: өзгөрмөнүн аты
      _counter++;
    });
  }

  @override
  //Widget: build методунун кайтаруу тиби
  //(BuildContext context): build методунун параметри

  Widget build(BuildContext context) {
    //return: кайтарып берүү
    //Scaffold: бул бир Widget,экрандын бетин чыгарып берет,экран куруп берет
    //appBar: Scaffold'дун property'si,кичинекей тамга менен жазылса проперти
    //AppBar: бул бир Widget,Тиркеменин шапкасы

    
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: AppBar'дын пропертиси
        //title: AppBar'дын пропертиси,Widget alat
        //Text: бул бир Widget
        title: Text(widget.title),
      ),
      //body: Scaffold'дун property'си. Widget алат
      //Center: body'нин Widget'и. Центрге коюп берет

      body: Center(
        //child: Center'дин пропертиси. Widget алат.
        //Column: бул Widget, Elementterdi тигинен тизип берет.

        child: Column(
          //mainAxisAlignment: Columndun property'си,элементтердин ордуларын өзгөртүп берет.
          mainAxisAlignment: MainAxisAlignment.center,
          //children: Columndun property'си,бир нече Widget'терди алат.
          //<Widget>: generic Widgetterdi бере алабыз.

          children: <Widget>[
            //const: өзгөрбөй турган нерсеге беребиз
            //Text: бул Widget.
            //"$_counter": өзгөрмөнүн аты
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              //style: Text property'си,TextStyle алат
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      //floatingActionButton: Scaffold property'си,өзүнө Widget алат
      //FloatingActionButton: бул Widget,тегерек кнопка берет
      floatingActionButton: FloatingActionButton(
        //onPressed: FloatingActionButton пропертиси,FloatingActionButton аткаруусу жазылат.

        onPressed: _incrementCounter,
        //tooltip: FloatingActionButton пропертиси,Text чыгат
      
        tooltip: 'Increment',
        //child: FloatingActionButton пропертиси,Widget алат.
        //Icon: бул Widget,Iconka алат.
        child: const Icon(Icons.add),
      ),
    );
  }
}
