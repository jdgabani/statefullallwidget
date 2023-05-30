import 'package:flutter/material.dart';

class DataTableDemo extends StatefulWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  List<Map<String, dynamic>> Data = [
    {
      "No": "1",
      "Food": "Milk",
      "Calories": "65",
      "Protein(gms)": "3.3",
      "Fat(gms)": "4",
      "Carbohydrate\n(gms)": "5",
      "Water\n(gms)": "87",
      "Vitamins": "A, B2, Niacin",
    },
    {
      "No": "2",
      "Food": "Butter",
      "Calories": "740",
      "Protein(gms)": "-",
      "Fat(gms)": "82",
      "Carbohydrate\n(gms)": "-",
      "Water\n(gms)": "15",
      "Vitamins": "A",
    },
    {
      "No": "3",
      "Food": "Cream",
      "Calories": "210",
      "Protein(gms)": "2",
      "Fat(gms)": "21",
      "Carbohydrate\n(gms)": "3",
      "Water\n(gms)": "72",
      "Vitamins": "A",
    },
    {
      "No": "4",
      "Food": "Cheese",
      "Calories": "310",
      "Protein(gms)": "22",
      "Fat(gms)": "25",
      "Carbohydrate\n(gms)": "-",
      "Water\n(gms)": "44",
      "Vitamins": "A,B2,Niacin",
    },
    {
      "No": "5",
      "Food": "Ice Cream",
      "Calories": "170",
      "Protein(gms)": "4",
      "Fat(gms)": "7",
      "Carbohydrate\n(gms)": "25",
      "Water\n(gms)": "64",
      "Vitamins": "A,B2,Niacin",
    },
    {
      "No": "6",
      "Food": "Margarine",
      "Calories": "740",
      "Protein(gms)": "-",
      "Fat(gms)": "81",
      "Carbohydrate\n(gms)": "-",
      "Water\n(gms)": "16",
      "Vitamins": "A",
    },
    {
      "No": "7",
      "Food": "Eggs",
      "Calories": "150",
      "Protein(gms)": "12",
      "Fat(gms)": "11",
      "Carbohydrate\n(gms)": "-",
      "Water\n(gms)": "75",
      "Vitamins": "A,B1,B2,Niacin",
    },
    {
      "No": "8",
      "Food": "Pork(Grilled)",
      "Calories": "340",
      "Protein(gms)": "29",
      "Fat(gms)": "24",
      "Carbohydrate\n(gms)": "-",
      "Water\n(gms)": "36",
      "Vitamins": "B2,Niacin",
    },
    {
      "No": "9",
      "Food": "Chicken(Roast)",
      "Calories": "150",
      "Protein(gms)": "25",
      "Fat(gms)": "5",
      "Carbohydrate\n(gms)": "-",
      "Water\n(gms)": "55",
      "Vitamins": "",
    },
    {
      "No": "10",
      "Food": "Fish(eg.Cod)",
      "Calories": "220",
      "Protein(gms)": "20",
      "Fat(gms)": "10",
      "Carbohydrate\n(gms)": "8",
      "Water\n(gms)": "60",
      "Vitamins": "B1,Niacin",
    },
    {
      "No": "11",
      "Food": "Beans(Boiled)",
      "Calories": "20",
      "Protein(gms)": "2",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "3",
      "Water\n(gms)": "90",
      "Vitamins": "A",
    },
    {
      "No": "12",
      "Food": "Cabbage(Boiled)",
      "Calories": "10",
      "Protein(gms)": "1",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "1",
      "Water\n(gms)": "96",
      "Vitamins": "A,C",
    },
    {
      "No": "13",
      "Food": "Carrot(Boiled)",
      "Calories": "20",
      "Protein(gms)": "0.6",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "4",
      "Water\n(gms)": "91",
      "Vitamins": "A",
    },
    {
      "No": "14",
      "Food": "Cauliflower(Boiled)",
      "Calories": "10",
      "Protein(gms)": "1.5",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "1",
      "Water\n(gms)": "93",
      "Vitamins": "C",
    },
    {
      "No": "15",
      "Food": "Cucumber(Raw)",
      "Calories": "10",
      "Protein(gms)": "0.6",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "2",
      "Water\n(gms)": "96",
      "Vitamins": "C",
    },
    {
      "No": "16",
      "Food": "Peas(Boiled)",
      "Calories": "50",
      "Protein(gms)": "5",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "8",
      "Water\n(gms)": "80",
      "Vitamins": "A,B1,B2,Niacin,C",
    },
    {
      "No": "17",
      "Food": "Potatoes(Boiled)",
      "Calories": "80",
      "Protein(gms)": "1",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "22",
      "Water\n(gms)": "77",
      "Vitamins": "B1",
    },
    {
      "No": "18",
      "Food": "Tomatoes",
      "Calories": "15",
      "Protein(gms)": "1",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "3",
      "Water\n(gms)": "93",
      "Vitamins": "A,C",
    },
    {
      "No": "19",
      "Food": "Apples",
      "Calories": "45",
      "Protein(gms)": "0.3",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "12",
      "Water\n(gms)": "84",
      "Vitamins": "C",
    },
    {
      "No": "20",
      "Food": "Bananas",
      "Calories": "80",
      "Protein(gms)": "1",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "20",
      "Water\n(gms)": "70",
      "Vitamins": "C",
    },
    {
      "No": "21",
      "Food": "Cherries",
      "Calories": "50",
      "Protein(gms)": "0.6",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "12",
      "Water\n(gms)": "81",
      "Vitamins": "C",
    },
    {
      "No": "22",
      "Food": "Grapes",
      "Calories": "60",
      "Protein(gms)": "0.6",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "15",
      "Water\n(gms)": "80",
      "Vitamins": "C",
    },
    {
      "No": "24",
      "Food": "Pea Nuts (Roasted)",
      "Calories": "570",
      "Protein(gms)": "24",
      "Fat(gms)": "49",
      "Carbohydrate\n(gms)": "9",
      "Water\n(gms)": "4",
      "Vitamins": "B1,B2,Niacin",
    },
    {
      "No": "25",
      "Food": "Beer",
      "Calories": "30",
      "Protein(gms)": "0.3",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "2",
      "Water\n(gms)": "-",
      "Vitamins": "-",
    },
    {
      "No": "26",
      "Food": "Wine",
      "Calories": "70",
      "Protein(gms)": "-",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "-",
      "Water\n(gms)": "-",
      "Vitamins": "-",
    },
    {
      "No": "27",
      "Food": "Spirits",
      "Calories": "220",
      "Protein(gms)": "-",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "-",
      "Water\n(gms)": "-",
      "Vitamins": "-",
    },
    {
      "No": "28",
      "Food": "Coffe (Black)",
      "Calories": "-",
      "Protein(gms)": "-",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "-",
      "Water\n(gms)": "-",
      "Vitamins": "Niacin",
    },
    {
      "No": "29",
      "Food": "Bread",
      "Calories": "230",
      "Protein(gms)": "8",
      "Fat(gms)": "2",
      "Carbohydrate\n(gms)": "50",
      "Water\n(gms)": "39",
      "Vitamins": "B1,Niacin",
    },
    {
      "No": "30",
      "Food": "Rice(White Boiled)",
      "Calories": "120",
      "Protein(gms)": "2",
      "Fat(gms)": "-",
      "Carbohydrate\n(gms)": "30",
      "Water\n(gms)": "70",
      "Vitamins": "-",
    },
    {
      "No": "31",
      "Food": "Cornflakes with milk",
      "Calories": "205",
      "Protein(gms)": "6.5",
      "Fat(gms)": "4",
      "Carbohydrate\n(gms)": "34.7",
      "Water\n(gms)": "-",
      "Vitamins": "A1,B1,B2,Niacin,B",
    },
    {
      "No": "32",
      "Food": "Chocolate Biscuits",
      "Calories": "520",
      "Protein(gms)": "6",
      "Fat(gms)": "28",
      "Carbohydrate\n(gms)": "67",
      "Water\n(gms)": "2",
      "Vitamins": "B2,Niacin",
    },
    {
      "No": "33",
      "Food": "Wheat Bran",
      "Calories": "200",
      "Protein(gms)": "14",
      "Fat(gms)": "6",
      "Carbohydrate\n(gms)": "23",
      "Water\n(gms)": "8",
      "Vitamins": "B1,B2,Niacin",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var size = Data.first.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Row(
          children: [
            Text("Calories Data"),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        )),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DataTable(
                columns: List.generate(
                  size.length,
                  (index) => DataColumn(
                    label: Text(
                      "${size[index]}",
                    ),
                  ),
                ),
                rows: List.generate(
                  Data.length,
                  (index) => DataRow(
                    selected: true,
                    onLongPress: () {},
                    cells: List.generate(
                      size.length,
                      (index1) => DataCell(
                        Text(
                          "${Data[index]["${size[index1]}"]}",
                          style: TextStyle(color: Colors.blue.shade800),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Map<String, dynamic>> Data = [
    {
      "No": "1",
      "Name": "Viraj Asodariya",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": "Dayaram"
    },
    {
      "No": "2",
      "Name": "Denish Sheladiya",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Kapodra",
      "Society": "Mamta Park"
    },
    {
      "No": "3",
      "Name": "Deep Vadi",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Yogi Chowk",
      "Society": "Parmeshwar"
    },
    {
      "No": "4",
      "Name": "J.D Gabani",
      "Age": "26",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "MOta Varaccha",
      "Society": "ShivNagar"
    },
    {
      "No": "5",
      "Name": "Nikunj Munjani",
      "Age": "21",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Kapodra",
      "Society": "Santosh Nagar"
    },
    {
      "No": "6",
      "Name": "Vishal Makvana",
      "Age": "22",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": "Ayodhya"
    },
    {
      "No": "7",
      "Name": "Yash",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Vraj Chowk",
      "Society": "Manya"
    },
    {
      "No": "8",
      "Name": "Mahesh",
      "Age": "28",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Sarthana",
      "Society": "Sant Devidas"
    },
    {
      "No": "9",
      "Name": "Nevil Vaghasiya",
      "Age": "24",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Jakatnaka",
      "Society": "MeghMalhar"
    },
    {
      "No": "10",
      "Name": "Jenish Vaghasiya",
      "Age": "22",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Jakatnak",
      "Society": "Meghmalhar"
    },
    {
      "No": "11",
      "Name": "Milind Sardhara",
      "Age": "21",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": " ",
    },
    {
      "No": "12",
      "Name": "Denish Sheladiya",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Kapodra",
      "Society": "Mamta Park"
    },
    {
      "No": "13",
      "Name": "Laxshit Kotadiya",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "Puna Gam",
      "Society": ""
    },
    {
      "No": "14",
      "Name": "Milan Nakrani",
      "Age": "23",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "",
      "Society": ""
    },
    {
      "No": "15",
      "Name": "Nikunj Nakrani",
      "Age": "23",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "-",
      "Society": "-",
    },
    {
      "No": "16",
      "Name": "Krushil Goti",
      "Age": "23",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "",
      "Society": ""
    },
    {
      "No": "17",
      "Name": "Ghori",
      "Age": "20",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "-",
      "Society": "-"
    },
    {
      "No": "18",
      "Name": "Manav",
      "Age": "22",
      "State": "Gujarat",
      "City": "Surat",
      "Area": "",
      "Society": ""
    },
  ];
  @override
  Widget build(BuildContext context) {
    var size = Data.first.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Student Data Sheet")),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DataTable(
                columns: List.generate(
                  size.length,
                  (index) => DataColumn(
                    label: Text(
                      "${size[index]}",
                    ),
                  ),
                ),
                rows: List.generate(
                  Data.length,
                  (index) => DataRow(
                    selected: true,
                    onLongPress: () {},
                    cells: List.generate(
                      size.length,
                      (index1) => DataCell(
                        Text(
                          "${Data[index]["${size[index1]}"]}",
                          style: TextStyle(color: Colors.blue.shade800),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
