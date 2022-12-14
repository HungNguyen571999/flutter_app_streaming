import '../controller/posts_add_details_information_controller.dart';
import '../models/listclock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nguyen_manh_hung_s_application1/core/app_export.dart';
import 'package:nguyen_manh_hung_s_application1/widgets/custom_switch.dart';

// ignore: must_be_immutable
class ListclockItemWidget extends StatelessWidget {
  ListclockItemWidget(this.listclockItemModelObj);

  ListclockItemModel listclockItemModelObj;

  var controller = Get.find<PostsAddDetailsInformationController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 10.0,
          bottom: 10.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 2,
                top: 2,
                bottom: 2,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CommonImageView(
                    svgPath: ImageConstant.imgClock23X23,
                    height: getSize(
                      23.00,
                    ),
                    width: getSize(
                      23.00,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 22,
                      top: 2,
                      bottom: 2,
                    ),
                    child: Text(
                      "lbl_allow_comments".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => CustomSwitch(
                margin: getMargin(
                  left: 148,
                  top: 2,
                  bottom: 2,
                ),
                value: controller.isSelectedSwitch.value,
                onChanged: (value) {
                  controller.isSelectedSwitch.value = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
