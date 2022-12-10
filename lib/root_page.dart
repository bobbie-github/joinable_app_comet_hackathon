import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'core/config/theme/color.dart';
import 'features/feed/presentation/page/feed.dart';
import 'features/fovorite/presentation/page/favorite.dart';
import 'features/home/presentation/page/home.dart';
import 'features/root/presentation/cubit/root_cubit.dart';


class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageAppState();
}

class _RootPageAppState extends State<RootPage> {
  @override
  void initState() {
    _getChangeBottomNav(0);
    super.initState();
  }
  void _getChangeBottomNav(int index) {
    print(index);
    context.read<RootCubit>().onChangeTap(index);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RootCubit, RootState>(
      listener: (RootCubit, RootState){},
      builder: (context, state) {
        if(state is IndexTapState){
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -15),
                  blurRadius: 20,
                  color: Color(0xFFDADADA).withOpacity(0.3))
            ],
          ),
          child: Scaffold(
            // backgroundColor: state == 2 ? PrimaryColor : null,
            body: SafeArea(
              child: IndexedStack(
                index: state.indexTap,
                children: const [
                  HomePage(),
                  Feed(),
                  Favorite(),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Colors.grey[400],
              selectedItemColor: PrimaryColor,
              onTap: _getChangeBottomNav,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex:state.indexTap,
              type: BottomNavigationBarType.fixed,
              backgroundColor: WhiteColor,
              selectedLabelStyle: TextStyle(fontSize: 9),
              unselectedLabelStyle: TextStyle(fontSize: 9),
              elevation: 6,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    padding:  EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: state.indexTap == 0 ? PrimaryColor.withOpacity(0.05):null,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: SvgPicture.asset(
                      'assets/svg/home.svg',
                      width: 20,
                      height: 20,
                      color:  state.indexTap == 0
                          ? PrimaryColor
                          : Colors.grey[400],
                    ),
                  ),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    padding:  EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: state.indexTap == 1 ? PrimaryColor.withOpacity(0.05):null,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: SvgPicture.asset(
                      'assets/svg/feed.svg',
                      width: 17,
                      height: 17,
                      color:  state.indexTap == 1
                          ? PrimaryColor
                          : Colors.grey[400],
                    ),
                  ),
                  label: 'feed',
                ),
                BottomNavigationBarItem(
                  icon:Container(
                    padding:  EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: state.indexTap == 2 ? PrimaryColor.withOpacity(0.05):null,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: SvgPicture.asset(
                      'assets/svg/favorites.svg',
                      width: 20,
                      height: 20,
                      color: state.indexTap == 2
                          ? PrimaryColor
                          : Colors.grey[400],
                    ),
                  ),
                  label: 'favorite',
                ),
              ],
            ),
          ),
        );
        }else{
          return Container();
        }

      },
    );
  }
}

