/*************************************************************************
 *
 * Copyright (c) 2010-2019, Klaralvdalens Datakonsult AB (KDAB)
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.0

Rectangle {
    width: 400; height: 200; color: "lightblue"

    Rectangle {
        color: "red"
        width: parent.width
        height: 2
        anchors.verticalCenter: parent.verticalCenter
    }
    Image {
        id: book
        source: "../images/book.svg"
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -parent.width/4
    }
    Text {
        text: "Writing"
        font.family: "Helvetica"
        font.pointSize: parent.width/20
        anchors.left: book.right
        anchors.leftMargin: parent.width/16
        anchors.baseline: book.verticalCenter
    }
}
