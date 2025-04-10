/****************************************************************************
 *
 * (c) 2009-2020 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>
 *
 * QGroundControl is licensed according to the terms in the file
 * COPYING.md in the root of the source code directory.
 *
 ****************************************************************************/

import QGroundControl               1.0
import QGroundControl.FlightDisplay 1.0
import QGroundControl.Vehicle       1.0

GuidedToolStripAction {
    text:       customController.autoDetectionTitle
    iconSource: "/res/takeoff.svg"
    visible:    true
    enabled:    activeVehicle && activeVehicle.checkListState === Vehicle.CheckListPassed && !activeVehicle.flying
    actionID:   customController.actionAutoDetection

    property var customController: _guidedController._customController
    property var activeVehicle:    QGroundControl.multiVehicleManager.activeVehicle
}
