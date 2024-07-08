@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  // 背景图练习，在鸿蒙中，默认单位是vp，会自动根据设备转换为px
  /*build() {
      Row() {
      }
      .width(300)
      .height(200)
      .backgroundColor(Color.Orange)
      .backgroundImage($r("app.media.activity_gift"))  //使用固定位置或者x和y
      // 以前背景定位默认不支持vp，当前版本已经支持
      // .backgroundImagePosition({
      //   x: 10, y: 10
      // })
      .backgroundImagePosition(Alignment.Center)
      .backgroundImageSize(ImageSize.Contain)
  }*/

  // 线性布局(就是flex布局)，不知道单词时，ctrl+p 显示提示
  /*build() {
    Column() {
      Text("第一一个").width(100).height(50).backgroundColor(Color.Pink).border({width:1,style:BorderStyle.Solid})
      Text("sadas").width(100).height(50).backgroundColor(Color.Pink).border({width:1,style:BorderStyle.Solid})
      Text("as").width(100).height(50).backgroundColor(Color.Pink).border({width:1,style:BorderStyle.Solid})
    }.width("100%").height("50%").backgroundColor("#ccc")
  //   主轴对齐方式
    .justifyContent(FlexAlign.SpaceEvenly)
    // 副轴对齐方式
    .alignItems(HorizontalAlign.End)
  }*/


  // ------------------分割线-----------------------------------------
  // 自适应伸缩布局
  build() {
    Column({space:20}){
      // layoutWeight() 会减去固定尺寸的元素，然后按照剩余空间，按照份数进行分配

      Row({space:10}){
        Text("左侧").layoutWeight(1).height(100).backgroundColor(Color.Pink)
        Text("右侧").width(100).height(100).backgroundColor(Color.Green)
      }.width("100%").height(100).borderWidth(1)

      Row({space:10}){
        Text("左侧").layoutWeight(1).height(100).backgroundColor(Color.Pink)
        Text("中间").layoutWeight(2).height(100).backgroundColor(Color.Pink)
        Text("右侧").width(60).height(100).backgroundColor(Color.Green)
      }.width("100%").height(100).borderWidth(1)
    }.width("100%").height("100%").backgroundColor("#bbb").padding(10)
  }
}