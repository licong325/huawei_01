@Entry
@Component
struct Index_02 {
  build() {
    //   华为登录页面练习
    Column({
      space: 20
    }) {
      Image($r("app.media.huawei_logo")).width(100).height(100)
      TextInput({
        placeholder: "请输入用户名",
      })
      TextInput({
        placeholder: "请输入密码"
      }).type(InputType.Password)
      Button("登录").width("100%").onClick(() => {
        console.log("登录测试成功")
      })
      Row({
        space: 12
      }) {
        Text("前往注册").onClick(() => {
          console.log("前往注册账号")
        })
        Text("忘记密码").onClick(() => {
          console.log("忘记密码了")
        })
      }
    }.width("100%").padding(20)
  }
}