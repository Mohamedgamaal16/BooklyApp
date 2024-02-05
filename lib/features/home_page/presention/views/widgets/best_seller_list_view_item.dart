import 'package:bookly_gemy/core/utils/app_router.dart';
import 'package:bookly_gemy/core/utils/assets.dart';
import 'package:bookly_gemy/features/home_page/presention/views/widgets/book_rating_item.dart';
import 'package:bookly_gemy/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){
      GoRouter.of(context).push(AppRouter.kBookDetailesView);
    },
      child: SizedBox(height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.4 / 4,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Colors.amberAccent,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          AssetsData.logo,
                        ))),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
                      'Harry Potter and the giblet Fine fire',
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 # ',
                        style:
                            Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                      ),const Spacer(),
                      const BookRatingItem()
                    ],
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

