@Entry
@Component
@Preview
struct Detail {
  scroll: Scroller = new Scroller();
@State value : number = 1;
  rating_value : number = 4.3;
  build() {
    Column() {
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Image($r("app.media.back")).width(30).height(30).backgroundColor($r("app.color.off_white")).borderRadius(7)
        Text('Details').fontSize(24).padding({top: 10}).fontWeight(FontWeight.Bold)
        Image($r("app.media.menu")).width(30).height(30)
      }.padding({bottom: 20})
      Stack({alignContent: Alignment.BottomEnd}) {
        Image($r("app.media.shoes5")).width(320).height(200).borderRadius(15)
        Column() {
          Rating({ rating: this.rating_value }).stars(5).width(80).height(16)
          Text('202 Reviews').padding({ bottom: 5 }).fontSize(12)
        }.backgroundColor("#A850A6F1").borderRadius(10).padding(10)
      }.padding({bottom: 10})
      Text("Running Unix Shoes").fontSize(24).width('90%').fontWeight(FontWeight.Bold).fontColor($r("app.color.cool_black")).padding({bottom: 10})
      Text('₹ 1499').fontSize(16).width('80%').padding({bottom: 10})
      Column(){
        Text('A pair of round-toe white sneakers, has regular styling, lace-up detail').fontSize(18).opacity(0.6).width('100%')
        Text('Canvas upper').fontSize(16).opacity(0.6).width('100%')
        Text('Cushioned footbed').fontSize(16).opacity(0.6).width('100%')
        Text('Read more...').fontSize(18).opacity(0.8).width('100%')
      }.backgroundColor($r("app.color.off_white")).borderRadius(10).width('100%').padding(10)
      Flex({justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center}) {
        Text('Color').fontColor($r("app.color.sky_blue")).fontSize(20)
        Column() {
          Radio({group: "Color", value: "red"}).backgroundColor($r("app.color.red")).borderRadius(50).width(10).height(10)
        }
        Column() {
          Radio({group: "Color", value: "orange"}).backgroundColor($r("app.color.orange")).borderRadius(50).width(10).height(10)
        }
        Column() {
          Radio({group: "Color", value: "blue"}).backgroundColor($r("app.color.blue")).borderRadius(50).width(10).height(10)
        }
        Counter() {
          Text(this.value.toString()).fontSize(14).fontWeight(FontWeight.Bold)
        }.onInc(() => this.value++)
        .onDec(() => {
          if (this.value != 1) {
            this.value--
          }
        })

      }.padding({top: 20, bottom: 20, left: 10, right: 10})

      Text('Available Sizes').fontSize(20).width('95%').padding({bottom: 10})
      Scroll(this.scroll) {
        Row({space: 10}) {
          Button('7', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0x317aff).width(80)
          Button('8', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.button_off")).width(80).fontColor(0x000000)
          Button('9', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.button_off")).width(80).fontColor(0x000000)
          Button('10', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.button_off")).width(80).fontColor(0x000000)
        }
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On)
      .margin({bottom: 25})

      Row(){
        Image($r("app.media.wishlist")).width(120).height(50).objectFit(ImageFit.ScaleDown)
        Flex({alignItems: ItemAlign.Center}){
          Text('Add to cart').fontColor($r("app.color.off_white")).fontSize(22).padding({left: 20, right : 20})
          Image($r("app.media.cart")).width(30).height(30)
        }.backgroundColor($r("app.color.sky_blue")).height(60).borderRadius(15).width(200)
      }

    }.padding(20)
  }
}