<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Product Admin</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700">

<jsp:include page="/WEB-INF/views/quantri/layout/css.jsp"></jsp:include>
</head>

<body id="reportsPage">
	<div class="" id="home">
		<jsp:include page="/WEB-INF/views/quantri/layout/menu-top.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/quantri/layout/container.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/quantri/layout/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="/WEB-INF/views/quantri/layout/js.jsp"></jsp:include>
	<script>
        Chart.defaults.global.defaultFontColor = 'white';
        let ctxLine,
            ctxBar,
            ctxPie,
            optionsLine,
            optionsBar,
            optionsPie,
            configLine,
            configBar,
            configPie,
            lineChart,
	        barChart, 
	        pieChart;
        // DOM is ready
        $(function () {
            drawLineChart(); // Line Chart
            drawBarChart(); // Bar Chart
            drawPieChart(); // Pie Chart

            $(window).resize(function () {
                updateLineChart();
                updateBarChart();                
            });
        })
    </script>
</body>

</html>