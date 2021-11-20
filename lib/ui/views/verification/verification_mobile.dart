part of verification_view;

class _VerificationMobile extends StatelessWidget {
  final VerificationController verificationController;

  const _VerificationMobile({Key? key, required this.verificationController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        backgroundColor: AppColor.bgColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                AppString.enterCodeSentToYourNumber,
                style: AppStyleUtil.semiBoldTextStyle(
                    context: context, fontSize: 32),
              ),
            ),
            Text(
              AppString.sentToTheNumber,
              style: AppStyleUtil.mediumTextStyle(
                  context: context, fontSize: 16, color: AppColor.greyColor),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: PinCodeTextField(
                onChanged: (val) {},
                appContext: context,
                length: 6,
                obscureText: false,
                obscuringCharacter: '*',
                animationType: AnimationType.fade,
                mainAxisAlignment: MainAxisAlignment.start,
                pinTheme: PinTheme(
                  fieldOuterPadding: const EdgeInsets.only(right: 14),
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(50),
                  fieldHeight: 42,
                  fieldWidth: 32,
                  activeFillColor: Colors.transparent,
                  inactiveFillColor: Colors.transparent,
                  activeColor: AppColor.greyColor,
                  inactiveColor: AppColor.greyColor,
                  selectedColor: AppColor.greyColor,
                  selectedFillColor: Colors.transparent,
                  borderWidth: 4,
                ),
                cursorColor: Colors.black,
                textStyle: AppStyleUtil.mediumTextStyle(context: context),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                keyboardType: TextInputType.number,
                onCompleted: (v) {
                  print("Completed");
                },
                // onTap: () {
                //   print("Pressed");
                // },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),

            Obx(() {
                return Text(
                  '${AppString.resendIn} ${verificationController.start}',
                  style: AppStyleUtil.mediumTextStyle(context: context,fontSize: 16,color: AppColor.greyColor),
                );
              }
            ),

            FunTradeButton(
              onPressed: (){
                Get.offAll(HomeView());
              },
              label: AppString.continueStr,
            ),
          ],
        ),
      ),
    );
  }
}
