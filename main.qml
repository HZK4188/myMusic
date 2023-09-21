import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
ApplicationWindow {
    width: 1200
    height: 800
    visible: true
    title: qsTr("Hello World")

    //列布局
    ColumnLayout{
        //工具栏
        ToolBar{
            //工具栏透明化
            background:Rectangle{
                color:"#00000000"
            }
            width:parent.width
            Layout.fillWidth: true
            RowLayout{
                anchors.fill: parent
                ToolButton{
                    icon.source:"qrc:/image/images/music"
                    width:32
                    height:32
                }
                ToolButton{
                    icon.source:"qrc:/image/images/about"
                    width:32
                    height:32
                }
                ToolButton{
                    icon.source:"qrc:/image/images/small-screen"
                    width:32
                    height:32
                }
                Item{
                    Layout.fillWidth: true
                    height:32
                    Text {
                        anchors.centerIn: parent
                        text: qsTr("Mymusic")
                        font.family: "微软雅黑"
                        font.pointSize: 15
                    }
                }
                ToolButton{
                    icon.source:"qrc:/image/images/minimize-screen"
                    width:32
                    height:32
                }
                ToolButton{
                    icon.source:"qrc:/image/images/full-screen"
                    width:32
                    height:32
                }
                ToolButton{
                    icon.source:"qrc:/image/images/power"
                    width:32
                    height:32
                }
            }
        }
        anchors.fill: parent
        spacing: 0
        //用于逻辑布局的可视化框架
        Frame{
            Layout.preferredWidth: 200
            //Layout.fillWidth: true
            Layout.fillHeight: true
            background: Rectangle{
                color:"#f0f0f0"
            }
        }
        Rectangle{
            Layout.fillWidth: true
            height:40
            color:"#00AAAA"
            RowLayout{
                anchors.fill:parent
                Item{
                    Layout.preferredWidth: parent.width/10
                    Layout.fillHeight:true
                    Layout.fillWidth: true
                }
            }
        }
    }


}
