import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Colors.pink,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.purple),
        ),
      ),
      initialRoute: '/5',
      routes: <String,WidgetBuilder> {
        '/1': (context) => FirstPage(),
        '/2': (context) => SecondPage(),
        '/3': (context) => ThirdPage(),
        '/4': (context) => FourthPage(),
        '/5':(context) => Fifthpage(),
        '/6':(context) => SixthPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Image cat1 = Image.asset('assets/popcat1.png',width : 120);
  Image cat2 = Image.asset('assets/popcat2.png',width : 120);

  Image catOnShow = Image.asset('assets/popcat1.png',width: 120);

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200.0,
              width: 200.0,
              margin: EdgeInsets.only(bottom: 50.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: 
                  Colors.blue.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(4.0),
              ),
              child: catOnShow,
              ),
            Text(
              'กดไรนักหนา',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      catOnShow = cat1;
                      _counter--;
                    });
                  }, 
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      catOnShow = cat2;
                      _counter++;
                    });
                  } , 
                  child: Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.fire_hydrant),
      ),
    );
  }
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        actions: [
          IconButton(
          icon: Icon(Icons.fire_hydrant),
          tooltip: 'Button1',
          onPressed: () {},
          ),
          IconButton(
          icon: Icon(Icons.fireplace),
          tooltip: 'Button2',
          onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Text('First Page'),
        ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        ),
        body: Center(
          child: Table(
            children: [
              TableRow(
                children:[
                  Container(
                    margin: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade300,
                    ),
                    child : Text('ID'),
                  ),
                  Container(
                    margin: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade300,
                    ),
                    child : Text('Name'),
                  ),
                  Container(
                    margin: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade300,
                    ),
                    child : Text('Gender'),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Text('1'),
                  Text('Moss'),
                  Text('M'),
                ],
              ),
              TableRow(
                children: [
                  Text('2'),
                  Text('Winai'),
                  Text('M'),
                ],
              ),
              TableRow(
                children: [
                  Text('3'),
                  Text('JC'),
                  Text('F'),
                ],
              ),
            ],
          ),
        ),
      
    );
  }  
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController( 
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
          bottom: TabBar(
            tabs:[
              Tab(
                icon: Icon(Icons.cabin),
                 ),
              Tab(
                icon: Icon(Icons.cloud),
                ),
              Tab(
                icon: Icon(Icons.shower),
                ),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Cabin'),
            ),
            Center(
              child: Text('Cloud'),
            ),
            Center(
              child: Text('Rainy'),
            ),
          ],
        ),
      ),
    );
  }  
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A','B','C','D','E','F','G','H','I','J','K'];
    final List <int> colorCodes = <int>[600, 500, 100];

    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Page'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8.0),
        itemCount: entries.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100.0,
            color: Colors.amber[colorCodes[index % 3]],
            child: Center(
              child: Text('Entry ${entries[index]}'),
            ),
          );
        },
        separatorBuilder: (context, int) => Divider(),
      ),
    );
  }  
}

class Fifthpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: 
          List.generate(6, (index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/${index+1}');
              },
              child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Item ${index+1}',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            );
          }),
      ),
    );
  }
}

class SixthPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form...'),
      ),
      body: MyCustomForm(),
      );
   }
}

class MyCustomForm extends StatefulWidget{
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Your First Name',
              labelText: 'First Name'
            ),
            validator: (value) {
              if (value == null || value.isEmpty){
                return 'Please Enter first name.';
            }
          },
        ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.family_restroom),
              hintText: 'Your Last Name',
              labelText: 'Last Name'
            ),
            validator: (value) {
              if (value == null || value.isEmpty){
                return 'Please Enter Last name.';
            }
          },
        ),
        TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.dangerous),
              hintText: 'Your Age',
              labelText: 'Ages'
            ),
            validator: (value) {
              if (value == null || value.isEmpty){
                return 'Please Enter your ages.';
            }
            try {
              if (int.parse(value) < 15 || int.parse(value) > 100 ){
                return 'plaese enter valid age ==> 15-100';
              }
            } catch (e) {
              return 'please enter number only';
            }
          },
        ),
        TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.star),
              hintText: 'Student ID',
              labelText: 'Student ID'
            ),
            validator: (value) {
              if (value == null || value.isEmpty){
                return 'Please Enter Student ID.';
            }
          },
        ),
        ElevatedButton(
          onPressed: (){
            if  (_formKey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Processing'),
              ));
            }
          },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}