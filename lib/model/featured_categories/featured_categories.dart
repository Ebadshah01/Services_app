import 'package:flutter/material.dart';
import 'package:services_app/const/sizedbox.dart';
import 'package:services_app/themecolors/color.dart';
import 'package:services_app/view/auth/home_screen/sub_screen/featured_detail.dart';

class FeaturedCategories {
  final List<String> imageList;
  final String title;
  final String category;
  final String price;
  final String description;
  final String location;
  final String imglink;
  final String namecat;
  final String rating;
  final String review;
  final String cardimg;

  FeaturedCategories({
    required this.cardimg,
    required this.imageList,
    required this.title,
    required this.category,
    required this.price,
    required this.description,
    required this.location,
    required this.imglink,
    required this.namecat,
    required this.rating,
    required this.review,
  });
}

final List<FeaturedCategories> featuredCategorieslist = [
  FeaturedCategories(
    cardimg: "assets/image 5.png",
    imageList: [
      "assets/image 5.png",
      "assets/car wash.jpeg",
      "assets/car wash 2.jpeg",
    ],
    title: "Car Wash",
    category: "Category:Auto Services",
    price: "\$12.49",
    description:
        "Give your car the shine it deserves with our professional car wash service.\nWe use high-quality products to ensure a spotless and safe clean.\nFast, reliable, and affordable – we bring your car back to life.\nBook now for a fresh and polished ride!\n",
    location: "1234 Elm Street,Houston,TX 77002",
    imglink:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvPBmkK5oHtbJSINy3DrXJpi8RFj0QFu1doA&s",
    namecat: "Ali",
    rating: "4.5/5",
    review:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec.  ",
  ),
  FeaturedCategories(
    cardimg: "assets/image 5 (1).png",
    imageList: [
      "assets/image 5 (1).png",
      "assets/pedicure.jpeg",
      "assets/manicure.jpeg",
    ],
    title: "Manicure and Pedicure\nServices",
    category: "Category:Personal Services",
    price: "\$15.00",
    description:
        "Experience the ultimate in hand and foot care with our luxurious manicure and pedicure services. Our skilled technicians pamper your nails with precision trimming, shaping, and cuticle care. Enjoy a soothing massage and exfoliation, followed by the application of your choice of high-quality polish.",
    location: "1234 Elm Street,Houston,TX 77002",
    imglink:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiFQnkhnQlJm1T0Fk6zJNosxl7MF3h_2U-Og&s",
    namecat: "Fatima",
    rating: "2.5/5",
    review:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec.  ",
  ),
  FeaturedCategories(
    cardimg: "assets/home renovation.jpeg",
    imageList: [
      "assets/home renovation.jpeg",
      "assets/renovation.jpeg",
      "assets/renovation2.jpeg",
    ],
    title: "Home Renovation",
    category: "Category:Home Reno..",
    price: "\$25.49",
    description:
        "Transform your house into a modern, comfortable, and stylish living space with our professional home renovation services.\nWe specialize in complete makeovers including painting, flooring, kitchen and bathroom remodeling, and interior upgrades.\nOur skilled team ensures high-quality work, completed on time and within budget.\nWhether it’s a small refresh or a full-scale renovation, we tailor each project to match your vision.\nLet us bring new life to your home — beautifully, efficiently, and affordably.\n",
    location: "1234 Elm Street,Houston,TX 77002",
    imglink:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiFQnkhnQlJm1T0Fk6zJNosxl7MF3h_2U-Og&s",
    namecat: "Noor",
    rating: "4.5/5",
    review:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec.  ",
  ),
  FeaturedCategories(
    cardimg: "assets/360_F_511929539_hkrzPKGI6pEA8TwUfrwrB0g73FyEaowM.jpg",
    imageList: [
      "assets/360_F_511929539_hkrzPKGI6pEA8TwUfrwrB0g73FyEaowM.jpg",
      "assets/ac 2.jpeg",
      "assets/ac.jpeg",
    ],
    title: "Air Conditioning",
    category: "Category:Personal Services",
    price: "\$20.00",
    description:
        "Stay cool and comfortable with our expert air conditioning services.\nWe offer installation, repair, and maintenance for all AC brands.\nOur trained technicians ensure fast and reliable service at your doorstep.\nBeat the heat — book your AC service today!\n",
    location: "1234 Elm Street,Houston,TX 77002",
    imglink:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_Z3e8sH9hg-mT0Ae9gTaLALa1_FnKdcWMzA&s",
    namecat: "Basit",
    rating: "3.6/5",
    review:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec.  ",
  ),
  FeaturedCategories(
    cardimg: "assets/Car detailing.jpeg",

    imageList: [
      "assets/Car detailing.jpeg",
      "assets/acar.jpeg",
      "assets/car.jpeg",
    ],
    title: "Car Detailing",
    category: "Category:Car detailing",
    price: "\$10.49",
    description:
        "Restore your car’s showroom shine with our premium car detailing service.\nWe provide deep interior cleaning, exterior polishing, waxing, and more.\nOur experts use high-quality products for a flawless finish.\nDrive clean, feel proud — book your detailing session today!\n",
    location: "1234 Elm Street,Houston,TX 77002",
    imglink:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFgirfPfbciQDDIQJKS57sRP1YLxn0b9Pe9g&s",
    namecat: "Ebad",
    rating: "4.7/5",
    review:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec.  ",
  ),
  FeaturedCategories(
    cardimg: "assets/mobile repair.jpeg",

    imageList: [
      "assets/mobile repair.jpeg",
      "assets/Mobile images.jpeg",
      "assets/mobile.jpeg",
    ],
    title: "Phone Repair and Maintenance",
    category: "Mobile Maintenance",
    price: "\$17.49",
    description:
        "Get your phone fixed quickly and professionally with our expert mobile repairing services.\nWe handle screen replacements, battery issues, software problems, and more.\nAll repairs are done by trained technicians using quality parts.\nFast service, affordable rates — your phone is in safe hands!\n",
    location: "1234 Elm Street,Houston,TX 77002",
    imglink:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoBcCsvhzlZTxdGR0gSP0fR8I1IG1JegGqfQ&s",
    namecat: "Affan",
    rating: "1.5/5",
    review:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet pretium sit odio non. Aenean dolor, ullamcorper amet dolor donec.  ",
  ),
];

class FeaturedGrid extends StatefulWidget {
  final int? limit;
  const FeaturedGrid({super.key, required this.limit});

  @override
  State<FeaturedGrid> createState() => _FeaturedGridState();
}

class _FeaturedGridState extends State<FeaturedGrid> {
  @override
  Widget build(BuildContext context) {
    final displayList =
        widget.limit != null
            ? featuredCategorieslist.take(widget.limit!).toList()
            : featuredCategorieslist;

    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      physics: NeverScrollableScrollPhysics(),
      itemCount: displayList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: whitethemecolor,
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                offset: Offset(1, 1),
                blurRadius: 1,
                // ignore: deprecated_member_use
                color: blackthemecolor.withOpacity(0.1),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: context.screenHeight * 0.13,
                  width: context.screenWidth * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(displayList[index].cardimg),fit: BoxFit.cover
                    ),
                  ),

                  // child: PageView.builder(
                  //   itemCount: displayList[index].imageList.length,
                  //   itemBuilder:
                  //       (context, i) => ClipRRect(
                  //         borderRadius: BorderRadius.circular(8),
                  //         child: Image.asset(
                  //           displayList[index].cardimg,
                  //           fit: BoxFit.cover,
                  //         ),
                  //       ),
                  // ),
                ),
                6.kh,
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        displayList[index].title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(Icons.star, color: amberthemecolor, size: 16),
                    Text(
                      "4.5/5",
                      style: TextStyle(fontSize: 12, color: greythemecolor),
                    ),
                  ],
                ),
                Text(
                  displayList[index].category,
                  style: TextStyle(fontSize: 10, color: greythemecolor),
                  overflow: TextOverflow.ellipsis,
                ),
                8.kh,
                Row(
                  children: [
                    Text(
                      displayList[index].price,
                      style: TextStyle(fontSize: 11, color: greenthemecolor),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => FeaturedDetailScreen(
                                  featuredCategorieslist: displayList[index],
                                ),
                          ),
                        );
                      },
                      child: Container(
                        height: context.screenHeight * 0.04,
                        width: context.screenWidth * 0.22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: greenthemecolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Book Now",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: whitethemecolor,
                              ),
                            ),
                            4.kw,
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: whitethemecolor,
                              size: 13,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
