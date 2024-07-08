interface GeneratedTypeLiteralInterface_1 {
  title: string;
  subtitle: string;
}

@Entry
@Component
struct Dewu_liebiaoxiang {
  // 小练习-得物列表项
  @State items: Array<GeneratedTypeLiteralInterface_1> = [
    { title: "玩一玩", subtitle: "签到兑礼|超多大奖 超好玩" },
    { title: "参与活动", subtitle: "赢取丰厚奖励" },
    { title: "每日任务", subtitle: "完成任务，赢取积分" }
  ];

  build() {
    Column({ space: 10 }) {
      ForEach(this.items, (item: GeneratedTypeLiteralInterface_1) => {
        Row() {
          // 左侧
          Column({
            space: 10
          }) {
            Text(item.title).width("100%")
            Text(item.subtitle).width("100%")
          }
          .width(220)
          .padding({ left: 20 })
          .borderWidth(1)
          .justifyContent(FlexAlign.Center)

          // 右侧
          Row() {
            Image($r("app.media.activity_gift")).width(40).height(40)
            Text(">").height(40).lineHeight(40)
          }.width(80).borderWidth(1).justifyContent(FlexAlign.SpaceEvenly)

        }
        .width("100%")
        .height(100)
        .backgroundColor("#fff")
        .borderRadius(10)
        .justifyContent(FlexAlign.SpaceBetween)
      })

    }.width("100%").height("100%").backgroundColor("#aaa").padding(10)
  }
}