import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 365,
          decoration: BoxDecoration(
            color: Colors.blue.shade100, // Set the background color to grey
            borderRadius: BorderRadius.circular(15), // Set border radius
            // Add green border
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Container(
                      height: 135,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        borderRadius:
                            BorderRadius.circular(3), 
                        border: Border.all(
                            color: Colors.green, width: 1), 
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Adrian Tahan,"),
                            Text("12 y.o,"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CE1-2nd grad,"),
                            Text("campus A"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Text("Blood type: B+,"),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text("Allergies:"),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.black,
                            height: 30,
                            width: 70,
                            child: const Center(
                                child: Text(
                              "Insect",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.black,
                            height: 30,
                            width: 65,
                            child: const Center(
                                child: Text(
                              "Drug",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.black,
                            height: 30,
                            width: 50,
                            child: const Center(
                                child: Text(
                              "Pet",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.account_tree_sharp,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Student has Asthma')
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [Text("Vaccinated on 2021.10.07 got 2 dose")],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white,
                        height: 35,
                        width: 190,
                        child: const Center(
                            child: Text(
                          "TestCovidTahan.pdf",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 2,
          color: Colors.grey,
        ),
      ],
    );
  }
}
