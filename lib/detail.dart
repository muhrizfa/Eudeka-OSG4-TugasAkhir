import 'package:flutter/material.dart';
import 'package:yugioh/main.dart';
import 'package:yugioh/model.dart';

class DetailPage extends StatefulWidget {
  final Cardinfo cardinfo;

  DetailPage({Key key, @required this.cardinfo}) : super(key: key);

  final DetailPageState state = new DetailPageState();

  @override
  DetailPageState createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  TabController tabController;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => _scaffoldKey
        .currentState
        .showSnackBar(SnackBar(content: Text('Detail Page'))));
  }

  @override
  Widget build(BuildContext context) {
    var basicInfo = Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Type ',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Race ',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Archtype ',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.cardinfo.name,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    widget.cardinfo.race,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    widget.cardinfo.archetype,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Attack ',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Deff ',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Attribute ',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${widget.cardinfo.atk}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      "${widget.cardinfo.def}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      "${widget.cardinfo.attribute}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Description ',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "${widget.cardinfo.desc}",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

    var marketInfo = Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Card Market Price ',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'TCG Player Price ',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Ebay Price ',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Amazon Price ',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.cardinfo.cardPrices.cardmarketPrice,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    widget.cardinfo.cardPrices.tcgplayerPrice,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    widget.cardinfo.cardPrices.ebayPrice,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    widget.cardinfo.cardPrices.amazonPrice,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Attack ',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Deff ',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Attribute ',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${widget.cardinfo.cardPrices.cardmarketPrice}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      "${widget.cardinfo.def}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      "${widget.cardinfo.attribute}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Description ',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "${widget.cardinfo.desc}",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFF3B4254),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 500.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(widget.cardinfo.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      widget.cardinfo.cardImages[0].imageUrl,
                      fit: BoxFit.cover,
                    )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white30,
                    tabs: [
                      Tab(icon: Icon(Icons.info)),
                      Tab(icon: Icon(Icons.data_usage)),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: new TabBarView(
            controller: tabController,
            children: [
              basicInfo,
              marketInfo,
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
