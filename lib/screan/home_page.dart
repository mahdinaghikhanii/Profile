import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

enum MyCountry { usa, iran, germany, canada, russian, china }
enum MyInputText { email, password }

class _ProfilePageState extends State<ProfilePage> {
  MyCountry _country = MyCountry.usa;
  MyInputText _inputText = MyInputText.email;

  void checkSelectedInputText(MyInputText inputText) {
    setState(() {
      this._inputText = inputText;
    });
  }

  void updateMyCountry(MyCountry myCountry) {
    setState(() {
      this._country = myCountry;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Profile',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: IconButton(
              icon: const Icon(CupertinoIcons.moon),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: IconButton(
              icon: Icon(CupertinoIcons.chat_bubble_text),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(18),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      'assets/images/mahdi6.jpg',
                      width: 110,
                      height: 110,
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mahdi',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        'Naghikhani',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Edit profile',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(18, 8, 18, 16),
              child: Text(
                'Mahdi  is a young but extremely talented app developer who likes to focus on Flutter He builds innovative, well-working and aesthetically pleasing apps.Friends with some of the back-end developers in our network, Mahdi is a confident developer,',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const Divider(),
            Padding(
              padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Your Country',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
            Center(
                child: Wrap(
              runSpacing: 8,
              spacing: 8,
              direction: Axis.horizontal,
              children: [
                CountryWidget(
                  imageAddres: 'assets/images/1.png',
                  countryName: 'USA',
                  isActive: _country == MyCountry.usa,
                  shadoColor: Colors.blue,
                  onTap: () {
                    updateMyCountry(MyCountry.usa);
                  },
                  type: MyCountry.usa,
                ),
                CountryWidget(
                  imageAddres: 'assets/images/2.png',
                  countryName: 'Iran',
                  isActive: _country == MyCountry.iran,
                  shadoColor: Colors.green,
                  onTap: () {
                    updateMyCountry(MyCountry.iran);
                  },
                  type: MyCountry.iran,
                ),
                CountryWidget(
                  imageAddres: 'assets/images/3.png',
                  countryName: 'Germany',
                  isActive: _country == MyCountry.germany,
                  shadoColor: Colors.yellow,
                  onTap: () {
                    updateMyCountry(MyCountry.germany);
                  },
                  type: MyCountry.germany,
                ),
                CountryWidget(
                  imageAddres: 'assets/images/4.png',
                  countryName: 'Canada',
                  isActive: _country == MyCountry.canada,
                  shadoColor: Colors.white,
                  onTap: () {
                    updateMyCountry(MyCountry.canada);
                  },
                  type: MyCountry.canada,
                ),
                CountryWidget(
                  imageAddres: 'assets/images/5.png',
                  countryName: 'Rusian',
                  isActive: _country == MyCountry.russian,
                  shadoColor: Colors.deepPurple,
                  onTap: () {
                    updateMyCountry(MyCountry.russian);
                  },
                  type: MyCountry.russian,
                ),
                CountryWidget(
                    imageAddres: 'assets/images/6.png',
                    countryName: 'China',
                    isActive: _country == MyCountry.china,
                    shadoColor: Colors.red,
                    onTap: () {
                      updateMyCountry(MyCountry.china);
                    },
                    type: MyCountry.china),
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.fromLTRB(18, 6, 18, 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your Information',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  SizedBox(height: 10),
                  InputText(
                    type: MyInputText.email,
                    isActiv: _inputText == MyInputText.email,
                    hintText: "EmailAddres",
                    icon: Icons.email,
                    onTap: () {
                      checkSelectedInputText(MyInputText.email);
                    },
                  ),
                  SizedBox(height: 10),
                  InputText(
                    type: MyInputText.password,
                    hintText: "Password",
                    icon: Icons.security,
                    isActiv: _inputText == MyInputText.password,
                    onTap: () {
                      checkSelectedInputText(MyInputText.password);
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Save'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InputText extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool isActiv;
  final Function() onTap;
  final MyInputText type;
  InputText(
      {required this.icon,
      required this.onTap,
      required this.hintText,
      required this.isActiv,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
            padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
            decoration: isActiv
                ? BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.withOpacity(
                            0.8,
                          ),
                          offset: Offset(5.0, 5.0),
                          blurRadius: 10)
                    ],
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(8),
                  )
                : null,
            child: Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                      onTap: onTap,
                      decoration: InputDecoration(
                          icon: Icon(icon, color: Colors.white70),
                          hintText: hintText,
                          hintStyle: Theme.of(context).textTheme.bodyText1)),
                )
              ],
            )));
  }
}

class CountryWidget extends StatelessWidget {
  final String countryName;
  final String imageAddres;
  final Color shadoColor;
  final bool isActive;
  final MyCountry type;
  final Function() onTap;

  CountryWidget(
      {required this.countryName,
      required this.isActive,
      required this.imageAddres,
      required this.onTap,
      required this.shadoColor,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: isActive
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).dividerColor)
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: isActive
                    ? BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: shadoColor.withOpacity(0.8), blurRadius: 20)
                      ])
                    : null,
                child: Image.asset(
                  imageAddres,
                  width: 60,
                  height: 60,
                )),
            SizedBox(
              height: 4,
            ),
            Text(
              countryName,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
