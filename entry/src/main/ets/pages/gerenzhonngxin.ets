@Entry
@Component
// 该页面已经添加到main_pages.json中，可以直接预览
struct Gerenzhonngxin {
  // @State 用于声明一个状态变量。状态变量的改变会触发组件的重新渲染。
  @State title: string = '个人中心';

  // 综合案例，个人中心顶部导航练习
  build() {
    Column() {
      Row() {
        Image($r("app.media.back")).width(40)

        Text(this.title).width("140").height("100%").textAlign(TextAlign.Center).border({ width: 1 })

        Image($r("app.media.startIcon")).width(40)
      }
      .width("100%")
      .height("60")
      .backgroundColor("#fff")
      .border({
        width: 1
      })
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        left: 10,
        right: 10
      })
    }.width("100%").height("100%").backgroundColor("#ddd")

  }
}