import QtQuick
import QtQuick.Window
import QtCharts
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ChartView")

    //    Button {
    //        x: 500
    //        width: 100
    //        height: 100
    //        onClicked: {
    //            var slice = pieSeries.append('mySlice', 50)
    //            slice.labelVisible = true
    //            slice.borderColor = 'transparent'
    //            slice.borderWidth = 0
    //        }
    //    }

    //    ChartView {
    //        // 图表桌布
    //        width: 400
    //        height: 300
    //        theme: ChartView.ChartThemeBrownSand
    //        antialiasing: true //抗锯齿

    //        PieSeries {
    //            // 饼状图控件
    //            id: pieSeries
    //            PieSlice {
    //                // 线条
    //                label: "eaten"
    //                labelVisible: true
    //                value: 100 // value为总和占比
    //                borderColor: 'transparent'
    //                borderWidth: 0
    //                // exploded: true
    //                // explodeDistanceFactor: 0.2
    //            }
    //            PieSlice {
    //                label: "not yet eaten"
    //                labelVisible: true
    //                value: 50
    //                borderColor: 'transparent'
    //                borderWidth: 0
    //            }
    //        }
    //    }

    // property var linePoints: [Qt.point(10, 10), Qt.point(20, 20)]
    //    property var linePoints: [10, 10, 20, 20]
    //    property var linePoints: [[0, 0, 10, 10, 20, 20, 30, 30, 40, 40], [0, 0, 10, 20, 20, 40, 30, 60]]
    //    ChartView {
    //        id: chartView
    //        title: "Line"
    //        anchors.fill: parent
    //        antialiasing: true

    //        ValuesAxis {
    //            id: xAxis
    //            min: 0
    //            max: 50
    //        }
    //        ValuesAxis {
    //            id: yAxis
    //            min: 0
    //            max: 40
    //            minorTickCount: 5
    //            tickCount: 3
    //        }
    //    }

    //    Button {
    //        x: 500
    //        width: 50
    //        height: 50
    //        onClicked: {

    //            //            绘制饼图
    //            //            var pie = chartView.createSeries(ChartView.SeriesTypePie, "MyPie")
    //            //            pie.append("pie", 50)
    //            //            pie.append("pie2", 100)

    //            //    折线图
    //            // var line = chartView.createSeries(ChartView.SeriesTypeLine,"MyLine", xAxis, yAxis)
    //            //            line.append(10, 10)
    //            //            line.append(20, 20)
    //            //            for (var i = 0; i < linePoints.length; i++) {
    //            //                line.append(linePoints[i].x, linePoints[i].y)
    //            //            }
    //            //            for (var i = 0; i < linePoints.length; i += 2) {
    //            //                console.log(i)
    //            //                line.append(linePoints[i], linePoints[i + 1])
    //            //            }

    //            //            for (var i = 0; i < linePoints.length; i++) {
    //            //                var line = chartView.createSeries(ChartView.SeriesTypeLine,
    //            //                                                  "MyLine", xAxis, yAxis)
    //            //                if (i == 0) {
    //            //                    // 改变线条样式
    //            //                    line.style = Qt.DashLine
    //            //                }
    //            //                var points = linePoints[i]
    //            //                for (var j = 0; j < points.length; j += 2) {
    //            //                    line.append(points[j], points[j + 1])
    //            //                }
    //            //            }

    //            // 曲线图
    //            //            var line = chartView.createSeries(ChartView.SeriesTypeSpline,
    //            //                                              "MyLine", xAxis, yAxis)
    //            //            for (var i = 0; i < 20; i += 2) {
    //            //                line.append(i, i ** 2)
    //            //            }
    //        }
    //    }

    // 填充
    //    ChartView {
    //        id: chartView
    //        title: "chartView"
    //        anchors.fill: parent
    //        antialiasing: true
    //        LineSeries {
    //            id: l1
    //            color: 'red'
    //            name: "LineSeries1"
    //            XYPoint {
    //                x: 0
    //                y: 0
    //            }
    //            XYPoint {
    //                x: 1.1
    //                y: 2.1
    //            }
    //            XYPoint {
    //                x: 1.9
    //                y: 3.3
    //            }
    //            XYPoint {
    //                x: 2.1
    //                y: 2.1
    //            }
    //            XYPoint {
    //                x: 2.9
    //                y: 4.9
    //            }
    //            XYPoint {
    //                x: 3.4
    //                y: 3.0
    //            }
    //            XYPoint {
    //                x: 4.1
    //                y: 3.3
    //            }
    //        }
    //        LineSeries {
    //            id: l2
    //            color: 'red'
    //            name: "LineSeries2"
    //            XYPoint {
    //                x: 0
    //                y: 0
    //            }
    //            XYPoint {
    //                x: 1.1
    //                y: 1.1
    //            }
    //            XYPoint {
    //                x: 1.9
    //                y: 2.3
    //            }
    //            XYPoint {
    //                x: 2.1
    //                y: 1.1
    //            }
    //            XYPoint {
    //                x: 2.9
    //                y: 3.9
    //            }
    //            XYPoint {
    //                x: 3.4
    //                y: 2.0
    //            }
    //            XYPoint {
    //                x: 4.1
    //                y: 2.3
    //            }
    //        }
    //        Component.onCompleted: {
    //            var areaseries = chartView.createSeries(ChartView.SeriesTypeArea,
    //                                                    'myarea')
    //            areaseries.upperSeries = l1
    //            areaseries.lowerSeries = l2
    //            areaseries.opacity = 0.3
    //            areaseries.color = 'lightblue'
    //        }
    //    }

    // 柱状图
    ChartView {
        id: chartbar
        title: "Bar series"
        anchors.fill: parent
        legend.alignment: Qt.AlignBottom
        antialiasing: true
        BarCategoryAxis {
            id: axisX
            categories: ["2007", "2008", "2009", "2010", "2011", "2012"]
        }

        ValuesAxis {
            id: axisY
            min: 0
            max: 20
        }

        //        BarSeries {
        //            id: mySeries
        //            axisX: BarCategoryAxis {
        //                categories: ["2007", "2008", "2009", "2010", "2011", "2012"]
        //            }
        //            BarSet {
        //                label: "Bob"
        //                values: [2, 2, 3, 4, 5, 6]
        //            }
        //            BarSet {
        //                label: "Susan"
        //                values: [5, 1, 2, 4, 1, 7]
        //            }
        //            BarSet {
        //                label: "James"
        //                values: [3, 5, 8, 13, 5, 8]
        //            }
        //        }
        Component.onCompleted: {
            var barseries = chartbar.createSeries(ChartView.SeriesTypeBar,
                                                  'mybar', axisX, axisY)
            barseries.append("mybar1", [2, 2, 3, 4, 5, 6])
        }
    }
}
