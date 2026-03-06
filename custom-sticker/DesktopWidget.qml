import QtQuick
import QtQuick.Layouts
import QtQuick.Effects
import Quickshell
import qs.Commons
import qs.Modules.DesktopWidgets
import qs.Widgets
import qs.Services.System

DraggableDesktopWidget {
    id: root
    property var pluginApi: null

    readonly property string widgetImage:   widgetData?.image   || ""
    readonly property real   widgetOpacity: widgetData?.opacity || 1.0

    implicitWidth:  Math.round((widgetImage == "" ? 50 : sticker.sourceSize.width)  * widgetScale)
    implicitHeight: Math.round((widgetImage == "" ? 50 : sticker.sourceSize.height) * widgetScale)
    width:  implicitWidth
    height: implicitHeight
    minScale: 0.1

    Image {
        id: sticker

        anchors.fill: parent
        opacity: root.widgetOpacity
        source: Qt.resolvedUrl(root.widgetImage)
    }
}
