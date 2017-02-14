import QtQuick 2.0
import StratifyLabs.UI 2.0


//SPane {
   // property alias source: code.source;

    SWell {
        id: code;
        property string source;

        style: "text-sm";

        Component.onCompleted: {
            var doc = new XMLHttpRequest;
            doc.onreadystatechange = function() {
                if( doc.readyState === XMLHttpRequest.DONE ){
                    code.text = doc.responseText;
                }
            }
            doc.open("GET", source + ".qml");
            doc.send();

        }
    }
//}