part of phone_number_view;

class _PhoneNumberMobile extends StatelessWidget {
  final PhoneNumberController phoneNumberController;

  const _PhoneNumberMobile({Key? key, required this.phoneNumberController})
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
        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              AppString.enterYour,
              style: AppStyleUtil.semiBoldTextStyle(
                  context: context,
                  fontSize: 32,
              ),
            ),

            Text(
              AppString.mobileNumber,
              style: AppStyleUtil.semiBoldTextStyle(
                context: context,
                fontSize: 32,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 14,bottom: 30),
              child: Text(
                AppString.sendYouConfirmationCode,
                style: AppStyleUtil.mediumTextStyle(
                    context: context,
                    fontSize: 16,
                    color: AppColor.greyColor,
                ),
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '+91',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 32,
                    color: AppColor.darkGreyColor,
                    height: 1.2
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  width: 10,
                ),


                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: PinCodeTextField(
                          onChanged: (val) {},
                          appContext: context,
                          length: 3,
                          obscureText: false,
                          obscuringCharacter: '*',
                          animationType: AnimationType.fade,
                          mainAxisAlignment: MainAxisAlignment.start,
                          pinTheme: PinTheme(
                            fieldOuterPadding: const EdgeInsets.only(right: 6),
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(50),
                            fieldHeight: 32,
                            fieldWidth: 20,
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

                      const SizedBox(
                        width: 8,
                      ),

                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: PinCodeTextField(
                          onChanged: (val) {},
                          appContext: context,
                          length: 3,
                          obscureText: false,
                          obscuringCharacter: '*',
                          animationType: AnimationType.fade,
                          mainAxisAlignment: MainAxisAlignment.start,
                          pinTheme: PinTheme(
                            fieldOuterPadding: const EdgeInsets.only(right: 6),
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(50),
                            fieldHeight: 32,
                            fieldWidth: 20,
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

                      const SizedBox(
                        width: 8,
                      ),

                      Flexible(
                        flex: 3,
                        fit: FlexFit.loose,
                        child: PinCodeTextField(
                          onChanged: (val) {},
                          appContext: context,
                          length: 4,
                          obscureText: false,
                          obscuringCharacter: '*',
                          animationType: AnimationType.fade,
                          mainAxisAlignment: MainAxisAlignment.start,
                          pinTheme: PinTheme(
                            fieldOuterPadding: const EdgeInsets.only(right: 6),
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(50),
                            fieldHeight: 32,
                            fieldWidth: 20,
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
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 50,
            ),

            FunTradeButton(
              onPressed: (){
                Get.to(VerificationView());
              },
              label: AppString.continueStr,
            ),
          ],
        ),
      ),
    );
  }
}
