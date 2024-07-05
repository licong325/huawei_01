@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
   Column({
     space:10
   }){
     Image($r("app.media.huawei_logo")).width(200).borderWidth(1).borderColor(Color.Red).borderRadius(50)
     Text("这是个很牛逼的人").fontSize(18).fontWeight(700)
     Button("QQ登录").onClick(() => {
       console.log("调取qq登录")
     }).width("100%").margin({ top:26 })
     Button("微信登录").onClick((event: ClickEvent) => {
       console.log(event.toString())
       console.log("微信登录")
     }).width("100%").backgroundColor(Color.Gray)
   }.width("100%").padding(20)
  }
}