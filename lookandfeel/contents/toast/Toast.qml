/*
 * Copyright 2014 Martin Klapetek <mklapetek@kde.org>
 * Copyright 2021 Liu Bangguo <liubangguo@jingos.com>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import QtQuick.Window 2.2
import QtQml 2.12
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.extras 2.0 as PlasmaExtra
import jingos.display 1.0

PlasmaCore.Dialog {
    id: root
    location: PlasmaCore.Types.Floating
    type: PlasmaCore.Dialog.OnScreenDisplay
    backgroundHints: PlasmaCore.Dialog.NoBackground
    outputOnly: true

    property var toastContent
    property int timeout: 1000

    mainItem: ToastItem {
        rootItem: root
        implicitWidth:JDisplay.dp(80*3)
        implicitHeight: JDisplay.dp(10*3)
    }
}

