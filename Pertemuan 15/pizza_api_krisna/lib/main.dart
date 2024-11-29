import 'package:flutter/material.dart';
import 'package:pizza_api_krisna/httphelper.dart';
import 'package:pizza_api_krisna/pizza.dart';
import 'package:pizza_api_krisna/pizza_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Pizza>> callPizzas() async {
    print('called');
    Httphelper helper = Httphelper();
    List<Pizza> pizzas = await helper.getPizzaList();
    print(pizzas);
    return pizzas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json'),
      ),
      body: FutureBuilder(
          future: callPizzas(),
          builder: (context, AsyncSnapshot<List<Pizza>> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something Went Wrong');
            }

            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }

            return ListView.builder(
                itemCount: (snapshot.data == null) ? 0 : snapshot.data!.length,
                itemBuilder: (context, position) {
                  final pizza = snapshot.data![position];
                  return Dismissible(
                    key: Key(position.toString()),
                    onDismissed: (item) {
                      Httphelper helper = Httphelper();
                      snapshot.data!.removeWhere((element) =>
                          element.id == snapshot.data![position].id);

                      helper.deletePizza(pizza.id);
                      print("Pizza dengan Id : " +
                          pizza.id.toString() +
                          " deleted");
                    },
                    child: ListTile(
                      title: Text(pizza.pizzaName),
                      subtitle: Text(
                          pizza.description + '- Rp' + pizza.price.toString()),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PizzaDetaiScreen(
                                    pizza: pizza, isNew: false)));
                      },
                    ),
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PizzaDetaiScreen(
                        pizza: null,
                        isNew: true,
                      )));
        },
      ),
    );
  }
}
