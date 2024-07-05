@Entry
@Component
struct Index_01 {

  // 基础组件练习

  @State message: string = 'Hello World';

  build() {
    Column({ space: 20 }) {
      Text('space: 20').fontSize(35).fontColor(Color.Gray).width('90%')
      Row() {
        // 文本溢出省略
        Text("这是第一行超长超长超长超长超长超长")
          .fontSize(30)
          .fontWeight(100)
          .fontColor(Color.Blue)
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })
          .maxLines(1)
      }.width('90%').height(50).backgroundColor(0xF5DEB3)

      // 加载图片-两种方式
      Image("https://www.pp3.cn/uploads/200715/14-200G51202061Z.jpg").width(100).height(100)
      Image($r("app.media.startIcon")).width(100).height(100)

      //   输入框
      Row() {
        Column({space:20}) {
          TextInput({
            placeholder: "请输入用户名"
          }).width("90%")

          TextInput({
            placeholder: "请输入用密码"
          }).width("90%").type(InputType.Password)

          Button("点击提交")
        }
      }.width("90%").borderWidth(1).borderColor(Color.Red).padding(10)
    }.width('100%')
  }
}