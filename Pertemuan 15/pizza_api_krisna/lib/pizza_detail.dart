import 'package:flutter/material.dart';
import 'pizza.dart';
import 'httphelper.dart';

class PizzaDetaiScreen extends StatefulWidget {
  const PizzaDetaiScreen({super.key, required this.pizza, required this.isNew});
  final bool isNew;
  final Pizza? pizza;
  @override
  State<PizzaDetaiScreen> createState() => _PizzaDetaiScreenState();
}

class _PizzaDetaiScreenState extends State<PizzaDetaiScreen> {
  final TextEditingController txtId = TextEditingController();
  final TextEditingController txtName = TextEditingController();
  final TextEditingController txtDescription = TextEditingController();
  final TextEditingController txtPrice = TextEditingController();
  final TextEditingController txtImageUrl = TextEditingController();
  String operationResult = '';

  Future postPizza() async {
    Httphelper helper = Httphelper();
    Pizza pizza = Pizza(
        id: int.tryParse(txtId.text)!,
        pizzaName: txtName.text,
        price: double.tryParse(txtPrice.text)!,
        imageUrl: txtImageUrl.text,
        description: txtDescription.text);
    final result =
        await (widget.isNew ? helper.postPizza(pizza) : helper.putPizza(pizza));
    setState(() {
      operationResult = result;
    });
  }

  @override
  void initState() {
    if (!widget.isNew) {
      txtId.text = widget.pizza!.id.toString();
      txtName.text = widget.pizza!.pizzaName;
      txtDescription.text = widget.pizza!.description;
      txtPrice.text = widget.pizza!.price.toString();
      txtImageUrl.text = widget.pizza!.imageUrl;
    }
    super.initState();
  }

  @override
  void dispose() {
    txtId.dispose();
    txtName.dispose();
    txtDescription.dispose();
    txtPrice.dispose();
    txtImageUrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                operationResult,
                style: TextStyle(
                    backgroundColor: Colors.green[200], color: Colors.black),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: txtId,
                decoration: const InputDecoration(hintText: 'Insert ID'),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: txtName,
                decoration:
                    const InputDecoration(hintText: 'Insert Pizza Name'),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: txtPrice,
                decoration: const InputDecoration(hintText: 'Insert Price'),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: txtDescription,
                decoration:
                    const InputDecoration(hintText: 'Insert Description'),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: txtImageUrl,
                decoration: const InputDecoration(hintText: 'Insert Image Url'),
              ),
              const SizedBox(
                height: 48,
              ),
              ElevatedButton(
                  onPressed: () {
                    postPizza();
                  },
                  child: Text('Send Post'))
            ],
          ),
        ),
      ),
    );
  }
}
