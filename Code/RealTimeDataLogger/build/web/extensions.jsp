<%@page import="tease.bean.DataLog" %>
<%@page import="tease.dao.DataLogDAO" %>

<%! String s,s1;
int x,j,i=0;
DataLog dl;
DataLogDAO dla;
float newt;
%>

<%
//Connection con=lnk3.getConnection();
dl= new DataLog(); 
dla=new DataLogDAO();
dl=dla.getDataLogHumidity();
//td1=tda1.getStudent();
//x=request.getParameterId("fname1");
%>
<!doctype>
<head>
	<link type="text/css" rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css">
	<link type="text/css" rel="stylesheet" href="src/css/graph.css">
	<link type="text/css" rel="stylesheet" href="src/css/detail.css">
	<link type="text/css" rel="stylesheet" href="src/css/legend.css">
	<link type="text/css" rel="stylesheet" href="css/extensions.css">

	<script src="vendor/d3.v3.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.15/jquery-ui.min.js"></script>

	<script src="src/js/Rickshaw.js"></script>
	<script src="src/js/Rickshaw.Class.js"></script>
	<script src="src/js/Rickshaw.Compat.ClassList.js"></script>
	<script src="src/js/Rickshaw.Graph.js"></script>
	<script src="src/js/Rickshaw.Graph.Renderer.js"></script>
	<script src="src/js/Rickshaw.Graph.Renderer.Area.js"></script>
	<script src="src/js/Rickshaw.Graph.Renderer.Line.js"></script>
	<script src="src/js/Rickshaw.Graph.Renderer.Bar.js"></script>
	<script src="src/js/Rickshaw.Graph.Renderer.ScatterPlot.js"></script>
	<script src="src/js/Rickshaw.Graph.RangeSlider.js"></script>
	<script src="src/js/Rickshaw.Graph.HoverDetail.js"></script>
	<script src="src/js/Rickshaw.Graph.Annotate.js"></script>
	<script src="src/js/Rickshaw.Graph.Legend.js"></script>
	<script src="src/js/Rickshaw.Graph.Axis.Time.js"></script>
	<script src="src/js/Rickshaw.Graph.Behavior.Series.Toggle.js"></script>
	<script src="src/js/Rickshaw.Graph.Behavior.Series.Order.js"></script>
	<script src="src/js/Rickshaw.Graph.Behavior.Series.Highlight.js"></script>
	<script src="src/js/Rickshaw.Graph.Smoother.js"></script>
	<script src="src/js/Rickshaw.Graph.Unstacker.js"></script>
	<script src="src/js/Rickshaw.Fixtures.Time.js"></script>
	<script src="src/js/Rickshaw.Fixtures.Time.Local.js"></script>
	<script src="src/js/Rickshaw.Fixtures.Number.js"></script>
	<script src="src/js/Rickshaw.Fixtures.RandomData.js"></script>
	<script src="src/js/Rickshaw.Fixtures.Color.js"></script>
	<script src="src/js/Rickshaw.Color.Palette.js"></script>
	<script src="src/js/Rickshaw.Graph.Axis.Y.js"></script>

	<script src="js/extensions.js"></script>
</head><body>

<div id="content">

	<form id="side_panel">
		<h1>Random Data in the Future</h1>
		<section><div id="legend"></div></section>
		<!--<section>
			<div id="renderer_form" class="toggler">
				<input type="radio" name="renderer" id="area" value="area" checked>
				<label for="area">area</label>
				<input type="radio" name="renderer" id="bar" value="bar">
				<label for="bar">bar</label>
				<input type="radio" name="renderer" id="line" value="line">
				<label for="line">line</label>
				<input type="radio" name="renderer" id="scatter" value="scatterplot">
				<label for="scatter">scatter</label>
			</div>
		</section>
		<section>
			<div id="offset_form">
				<label for="stack">
					<input type="radio" name="offset" id="stack" value="zero" checked>
					<span>stack</span>
				</label>
				<label for="stream">
					<input type="radio" name="offset" id="stream" value="wiggle">
					<span>stream</span>
				</label>
				<label for="pct">
					<input type="radio" name="offset" id="pct" value="expand">
					<span>pct</span>
				</label>
				<label for="value">
					<input type="radio" name="offset" id="value" value="value">
					<span>value</span>
				</label>
			</div>
			<div id="interpolation_form">
				<label for="cardinal">
					<input type="radio" name="interpolation" id="cardinal" value="cardinal" checked>
					<span>cardinal</span>
				</label>
				<label for="linear">
					<input type="radio" name="interpolation" id="linear" value="linear">
					<span>linear</span>
				</label>
				<label for="step">
					<input type="radio" name="interpolation" id="step" value="step-after">
					<span>step</span>
				</label>
			</div>
		</section>-->
		<section>
			<h6>Smoothing</h6>
			<div id="smoother"></div>
		</section>
		<section></section>
	</form>

	<div id="chart_container">
		<div id="chart"></div>
		<div id="timeline"></div>
		<div id="slider"></div>
	</div>

</div>

<script>

// set up our data series with 150 random data points

var seriesData = [ [{ x: 0, y: 40 }, { x: 1, y: 49 }, { x: 2, y: 17 }, { x: 3, y: 42 }, { x: 4, y: 40 }, { x: 5, y: 49 }, { x: 6, y: 17 }, { x: 7, y: 42 }], 
    [{ x: 0, y: 30 }, { x: 1, y: 49 }, { x: 2, y: 17 }, { x: 3, y: 42 }, { x: 4, y: 40 }, { x: 5, y: 49 }, { x: 6, y: 17 }, { x: 7, y: 42 }], 
    [{ x: 0, y: 20 }, { x: 1, y: 49 }, { x: 2, y: 17 }, { x: 3, y: 42 }, { x: 4, y: 40 }, { x: 5, y: 49 }, { x: 6, y: 17 }, { x: 7, y: 42 }], 
    [{ x: 0, y: 20 }, { x: 1, y: 49 }, { x: 2, y: 17 }, { x: 3, y: 42 }, { x: 4, y: 40 }, { x: 5, y: 49 }, { x: 6, y: 17 }, { x: 7, y: 42 }]];
//var random = new Rickshaw.Fixtures.RandomData(150);

//for (var i = 0; i < 150; i++) {
//	random.addData(seriesData);
//}

var palette = new Rickshaw.Color.Palette( { scheme: 'spectrum14' } );

//var data1= [{ x: 0, y: 40 }, { x: 1, y: 49 }, { x: 2, y: 17 }, { x: 3, y: 42 }];
//var data2= [{ x: 0, y: 30 }, { x: 1, y: 49 }, { x: 2, y: 17 }, { x: 3, y: 42 }];
//var data3= [{ x: 0, y: 20 }, { x: 1, y: 49 }, { x: 2, y: 17 }, { x: 3, y: 42 }];
//var data4= [{ x: 0, y: 10 }, { x: 1, y: 49 }, { x: 2, y: 17 }, { x: 3, y: 42 }];
//seriesData.push(data4);
//seriesData.push(data3);
//seriesData.push(data2);
//seriesData.push(data1);
// instantiate our graph!

var graph = new Rickshaw.Graph( {
	element: document.getElementById("chart"),
	width: 900,
	height: 500,
	renderer: 'line',
	stroke: true,
	preserve: true,
	series: [
		{
			color: palette.color(),
			data: seriesData[0],
                //        data: data1,
			name: 'Temperature'
		}, {
			color: palette.color(),
			data: seriesData[1],
                        //               data: data2,
			name: 'Pressure'
		}, {
			color: palette.color(),
			data: seriesData[2],
                        //               data: data3,
			name: 'Humidity'
		}, {
			color: palette.color(),
			data: seriesData[3],
                        //               data: data4,
			name: 'Luminosity'
		}
	]
} );

graph.render();

var slider = new Rickshaw.Graph.RangeSlider( {
	graph: graph,
	element: $('#slider')
} );

var hoverDetail = new Rickshaw.Graph.HoverDetail( {
	graph: graph,
	xFormatter: function(x) {
		return new Date(x * 1000).toString();
	}
} );

var annotator = new Rickshaw.Graph.Annotate( {
	graph: graph,
	element: document.getElementById('timeline')
} );

var legend = new Rickshaw.Graph.Legend( {
	graph: graph,
	element: document.getElementById('legend')

} );

var shelving = new Rickshaw.Graph.Behavior.Series.Toggle( {
	graph: graph,
	legend: legend
} );

var order = new Rickshaw.Graph.Behavior.Series.Order( {
	graph: graph,
	legend: legend
} );

var highlighter = new Rickshaw.Graph.Behavior.Series.Highlight( {
	graph: graph,
	legend: legend
} );

var smoother = new Rickshaw.Graph.Smoother( {
	graph: graph,
	element: $('#smoother')
} );

var ticksTreatment = 'glow';

var xAxis = new Rickshaw.Graph.Axis.Time( {
	graph: graph,
	ticksTreatment: ticksTreatment,
	timeFixture: new Rickshaw.Fixtures.Time.Local()
} );

xAxis.render();

var yAxis = new Rickshaw.Graph.Axis.Y( {
	graph: graph,
	tickFormat: Rickshaw.Fixtures.Number.formatKMBT,
	ticksTreatment: ticksTreatment
} );

yAxis.render();


var controls = new RenderControls( {
	element: document.querySelector('form'),
	graph: graph
} );

// add some data every so often

var messages = [
	"Changed home page welcome message",
	"Minified JS and CSS",
	"Changed button color from blue to green",
	"Refactored SQL query to use indexed columns",
	"Added additional logging for debugging",
	"Fixed typo",
	"Rewrite conditional logic for clarity",
	"Added documentation for new methods"
];

//setInterval( function() {
//	random.removeData(seriesData);
//	random.addData(seriesData);
//	graph.update();

//}, 3000 );
var time=8;

     
    
setInterval( function() {
        //random.addData(seriesData);        
            time++;
        
        //String time_ini = dl.getTime_stamp();
          //String time_ini2 = time_ini.substr(11,2);
        //int time_ini3 = 100*Integer.parseInt(time_ini.substring (14,2));
        //int time_ini4 = Integer.parseInt(time_ini.substring (17,2));
        //int time_ini5 = time_ini2 + time_ini3 + time_ini4;
         //System.out.print(time_ini2);%><% //dl=dla.getDataLogHumidity(); %>HumidityVal.top()
         
            
        //for (i=0; i < seriesData.length; i++){             
            var Temperature = {x:time, y: <%=dl.getTemperature()%>};                       
            seriesData[0].shift();
            seriesData[0].push(Temperature);
            var Pressure = {x:time, y: <%=dl.getPressure()/1000%>};                       
            seriesData[1].shift();
            seriesData[1].push(Pressure);            
            var Humidity = {x:time, y: <%=dl.getHumidity()%>};                                   
            seriesData[2].shift();
            seriesData[2].push(Humidity);            
            var Luminosity = {x:time, y: <%=dl.getLuminosity()/100%>};                                   
            seriesData[3].shift();
            seriesData[3].push(Luminosity);
       //}
       <% newt=dl.getTemperature(); %>
                          <%System.out.print(newt);%>
                                     <% newt=dl.getPressure(); %>
                          <%System.out.print(newt);%>       
    <% newt=dl.getHumidity(); %>
                          <%System.out.print(newt);%>
                                     <% newt=dl.getLuminosity(); %>
                          <%System.out.print(newt);%>
       <% dl=dla.getDataLogHumidity();%> 
       
       graph.update();
       }, 9000 );

function addAnnotation(force) {
	if (messages.length > 0 && (force || Math.random() >= 0.95)) {
		annotator.add(seriesData[2][seriesData[2].length-1].x, messages.shift());
	}
}

addAnnotation(true);
//setTimeout( function() { setInterval( addAnnotation, 6000 ) }, 6000 );

</script>

</body>
