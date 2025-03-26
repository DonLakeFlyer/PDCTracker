/****************************************************************************
 *
 *   (c) 2009-2016 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>
 *
 * QGroundControl is licensed according to the terms in the file
 * COPYING.md in the root of the source code directory.
 *
 ****************************************************************************/

import QtQuick
import QtQuick.Controls
import QtQml.Models

import QGroundControl
import QGroundControl.ScreenTools
import QGroundControl.Controls
import QGroundControl.FlightDisplay
import QGroundControl.Vehicle

Item {
    property var model: listModel
    PreFlightCheckModel {
        id:     listModel
        PreFlightCheckGroup {
            name: qsTr("Drone Setup")

            PreFlightBatteryCheck {
                failurePercent:                 40
                allowFailurePercentOverride:    false
            }

            PreFlightSensorsHealthCheck {
            }

            PreFlightGPSCheck {
                failureSatCount:        9
                allowOverrideSatCount:  true
            }

            PreFlightCheckButton {
                name:           qsTr("Landing Pad")
                manualText:     qsTr("Drone placed on open landing pad?")
            }

            PreFlightCheckButton {
                name:           qsTr("Motor Arms")
                manualText:     qsTr("Rotated and locked in upright position?")
            }

            PreFlightCheckButton {
                name:           qsTr("Motor Arms")
                manualText:     qsTr("Prop covers removed?")
            }

            PreFlightCheckButton {
                name:           qsTr("Folding Props")
                manualText:     qsTr("Props fully extended?")
            }

            PreFlightCheckButton {
                name:           qsTr("Antenna")
                manualText:     qsTr("Securely held in leg clips?")
            }

            PreFlightCheckButton {
                name:           qsTr("VHF Receiver")
                manualText:     qsTr("USB cable securely connected?")
            }
        }
    }
}

