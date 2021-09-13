import 'package:bala_indonesia/persentation/screens/cart/widgets/widgets.dart';
import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late bool isLarge;

  @override
  void initState() {
    super.initState();
    isLarge = ResponsiveLayout.isLargeScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {},
          child: Image.asset('icon/logo.png', width: 90),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Stepper(
          type: isLarge ? StepperType.horizontal : StepperType.vertical,
          controlsBuilder: (context, {onStepContinue, onStepCancel}) =>
              SizedBox.shrink(),
          steps: List.generate(
            step.length,
            (idx) {
              return Step(
                title: Text(
                  step[idx].title!,
                  style: Theme.of(context).textTheme.headline4,
                ),
                content: idx == step.length - 1
                    ? OrderSection(orderButton: step[idx].action!)
                    : Padding(
                        padding: EdgeInsets.all(20),
                        child: ResponsiveLayout(
                          largeScreen: Row(
                            children: [
                              Spacer(),
                              Flexible(flex: 5, child: step[idx].content!),
                              Spacer(),
                              Flexible(
                                flex: 2,
                                child: ShoppingNote(
                                    shoppingButton: step[idx].action!),
                              ),
                              Spacer(),
                            ],
                          ),
                          mediumScreen: Row(
                            children: [
                              Flexible(flex: 5, child: step[idx].content!),
                              SizedBox(width: 20),
                              Flexible(
                                flex: 2,
                                child: ShoppingNote(
                                    shoppingButton: step[idx].action!),
                              ),
                            ],
                          ),
                          smallScreen: Column(
                            children: [
                              step[idx].content!,
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Material(
                                    color: Color(0xFF585858),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.receipt),
                                    ),
                                  ),
                                  step[idx].action!
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<CartStepper> get step => [
        CartStepper(
          title: 'Cart',
          content: ProductOrder(),
          action: ElevatedButton(
            onPressed: () {},
            child: Text('PROCEED TO CHECKOUT'),
          ),
        ),
        CartStepper(
          title: 'Address',
          content: AddressSection(),
          action: ElevatedButton(
            onPressed: () {},
            child: Text('CONTINUE TO SHIPPING'),
          ),
        ),
        CartStepper(
          title: 'Shipping',
          content: ShippingSection(),
          action: ElevatedButton(
            onPressed: () {},
            child: Text('PROCEED TO PAYMENT'),
          ),
        ),
        CartStepper(
          title: 'Payment',
          content: PaymentSection(),
          action: ElevatedButton(
            onPressed: () {},
            child: Text('PROCEED TO CHECKOUT'),
          ),
        ),
        CartStepper(
          title: 'Order',
          action: isLarge
              ? ElevatedButton(
                  onPressed: () {},
                  child: Text('PAY NOW'),
                )
              : ElevatedButton.icon(
                  icon: Icon(Icons.money_outlined),
                  label: Text(
                    'Rp.308.000',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  onPressed: () {},
                ),
        ),
      ];
}

class CartStepper {
  final String? title;
  final Widget? content;
  final Widget? action;

  CartStepper({this.title, this.content, this.action});
}
