/*
 *   Copyright 2019 Marco Martin <mart@kde.org>
 *   Copyright 2019 David Edmundson <davidedmundson@kde.org>
 *   Copyright 2019 Arjen Hiemstra <ahiemstra@heimr.nl>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.9
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.2
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.quickcharts 1.0 as Charts

import org.kde.ksysguard.sensors 1.0 as Sensors
import org.kde.ksysguard.faces 1.0 as Faces

import org.kde.kirigami 2.8 as Kirigami

Control {
    id: chartFace
    Layout.fillWidth: contentItem ? contentItem.Layout.fillWidth : false
    Layout.fillHeight: contentItem ? contentItem.Layout.fillHeight : false

    Layout.minimumWidth: contentItem ? contentItem.Layout.minimumWidth : 0
    Layout.minimumHeight: contentItem ? contentItem.Layout.minimumHeight : 0

    Layout.preferredWidth: contentItem ? contentItem.Layout.preferredWidth : 0
    Layout.preferredHeight: contentItem ? contentItem.Layout.preferredHeight : 0

    Layout.maximumWidth: contentItem ? contentItem.Layout.maximumWidth : 0
    Layout.maximumHeight: contentItem ? contentItem.Layout.maximumHeight : 0

    Kirigami.Theme.textColor: PlasmaCore.ColorScope.textColor

    anchors.fill: parent
    contentItem: plasmoid.nativeInterface.faceController.compactRepresentation

    MouseArea {
        parent: chartFace
        anchors.fill: parent
        onClicked: plasmoid.expanded = !plasmoid.expanded
    }
}