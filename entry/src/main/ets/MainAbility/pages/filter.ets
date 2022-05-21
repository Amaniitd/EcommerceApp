@Entry
@Component
@Preview
struct Filter {
  @State price: number = 1000
  scroll: Scroller = new Scroller();
  categories: SelectOption[] = [
    {value: "Select"},
    {value: "shoes"},
    {value: "Tech"},
    {value: "Bag"},
    {value: "Sofa"}
  ];
  brands: SelectOption[] = [
    {value: "Select"},
    {value: "Puma"},
    {value: "Nike"},
    {value: "Adidas"},
    {value: "UCB"}
  ];
  build() {
    Column(){
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Image($r("app.media.back")).width(30).height(30).backgroundColor($r("app.color.off_white")).borderRadius(7)
        Text('Filter').fontSize(24).padding({top: 10}).fontWeight(FontWeight.Bold)
        Image($r("app.media.menu")).width(30).height(30)
      }.padding({bottom: 20})
      Text('Gender').fontSize(22).fontWeight(FontWeight.Bold).width('90%').padding({bottom: 10})
      Row({space: 10}) {
        Button('Male', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0x317aff).width(90)
        Button('Female', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.button_off")).width(90).fontColor(0x000000)
        Button('Both', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.button_off")).width(90).fontColor(0x000000)
      }.padding({bottom: 20})
      Text('Category').fontSize(22).fontWeight(FontWeight.Bold).width('90%').padding({bottom: 10})
      Select(this.categories).width(300).height(50).backgroundColor($r("app.color.off_white")).borderRadius(20).selected(0)
      Text('Brand').fontSize(22).fontWeight(FontWeight.Bold).width('90%').padding({bottom: 10, top: 20})
      Select(this.brands).width(300).height(50).backgroundColor($r("app.color.off_white")).borderRadius(20).selected(0)

      Text('Price').fontSize(22).fontWeight(FontWeight.Bold).width('90%').padding({bottom: 10, top: 20})
      Text("Rs " + this.price.toString()).fontSize(18).fontWeight(FontWeight.Bold)
      Row() {
        (Slider({
          value: this.price,
          min: 0,
          max: 10000,
          step: 100,
          style: SliderStyle.OutSet
        }))
          .blockColor(Color.Blue)
          .trackColor(Color.Gray)
          .selectedColor(Color.Blue)
          .showSteps(true)
          .showTips(true)
          .onChange((value: number, mode: SliderChangeMode) => {
            this.price = value
          })
      }
      .padding({ top: 20 })
      .width('80%')
      .width('80%')
      Text('Sizes').fontSize(20).width('90%').padding({top: 20}).fontWeight(FontWeight.Bold)
      Scroll(this.scroll) {
        Row({space: 10}) {
          Button('7', { type: ButtonType.Normal }).borderRadius(10).backgroundColor(0x317aff).width(80)
          Button('8', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.button_off")).width(80).fontColor(0x000000)
          Button('9', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.button_off")).width(80).fontColor(0x000000)
          Button('10', { type: ButtonType.Normal }).borderRadius(10).backgroundColor($r("app.color.button_off")).width(80).fontColor(0x000000)
        }
      }.scrollable(ScrollDirection.Horizontal).scrollBar(BarState.On).padding(10)

      Row({space: 20}){
        Button('Clear all', { type: ButtonType.Normal }).borderRadius(15).backgroundColor($r("app.color.button_off")).width(150).fontColor(0x000000).height(55)
        Button('Filter', { type: ButtonType.Normal }).borderRadius(15).backgroundColor(0x317aff).width(150).height(55)
      }.padding({top: 30})

    }.padding(20)
  }
}