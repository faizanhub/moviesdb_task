import 'package:flutter/material.dart';
import 'package:moviesdb_task/core/constants/app_colors.dart';
import 'package:moviesdb_task/core/constants/screen_utils.dart';
import 'package:moviesdb_task/ui/screens/main_screen/bottom_tabs/watch/movie_detail/components/custom_chip.dart';
import 'package:moviesdb_task/ui/widgets/default_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MovieDetailScreen extends StatelessWidget {
  static const String routeName = '/movie_detail_screen';

  const MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // kHeight(5.h),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  "https://www.shutterstock.com/shutterstock/photos/2179958927/display_1500/stock-photo-friends-choosing-a-movie-to-watch-together-at-home-video-on-demand-concept-2179958927.jpg",
                  height: 55.h,
                  width: 55.h,
                  fit: BoxFit.cover,
                ),
                ///Black Shadow to image bottom
                Container(
                  height: 55.h,
                  width: 55.h,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        // Colors.transparent,
        
                        Color(0xCC000000), // Dark color at the bottom
                      ],
                    ),
                    // borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                Positioned(
                  top: 30.sp,
                  left: 17.sp,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                      ),
                      kWidth(5.w),
                      Text(
                        "Watch",
                        style: textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "In Theaters December 22, 2021",
                        style: textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      kHeight(2.h),
                      DefaultButton(
                        width: 60.w,
                        buttonColor: AppColors.appPrimary,
                        onPress: () {},
                        title: "Get Tickets",
                      ),
                      kHeight(1.h),
                      DefaultButton(
                        width: 60.w,
                        buttonColor: Colors.transparent,
                        onPress: () {},
                        title: "Watch Trailer",
                        border: Border.all(
                          color: AppColors.appPrimary, // You can set the color of the border
                          width: 2.0,         // You can set the width of the border
                        ),
        
                      ),
                      kHeight(3.h),
                    ],
                  ),
                )
              ],
            ),
            kHeight(2.h),
        
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 22.sp,vertical: 2.0),
        
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Genres',
                    style: textTheme.headlineMedium,
                  ),
                  kHeight(2.h),
                  Row(
                    children: [
                      const CustomChip(color: AppColors.appPrimary ,text: "Action"),
                      kWidth(1.w),
                      const CustomChip(color: AppColors.appPink ,text: "Thriller"),
                      kWidth(1.w),
        
                      const CustomChip(color: AppColors.appPurple ,text: "Science"),
                      kWidth(1.w),
        
                      const CustomChip(color: AppColors.appYellow ,text: "Fiction"),
                    ],
                  ),
        
                  kHeight(4.h),
        
                  Text(
                    'Overview',
                    style: textTheme.headlineMedium,
                  ),
                  kHeight(2.h),
        
                  SizedBox(
                    height: 20.h,
                    // color: Colors.red,
                    child: Text(
                      "As a collection of history's worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them. Discover the origins of the very first independent intelligence agency in The King's Man. The Comic Book “The Secret Service” by Mark Millar and Dave Gibbons.",
                      style: textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.justify,
                      // overflow: TextOverflow.ellipsis,
                      // maxLines: 7,
                    ),
                  ),

        
        
        
        
        
        
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


