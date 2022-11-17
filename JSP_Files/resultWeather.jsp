<%@ page import = "com.grossmont.ws.WeatherServiceManager, 
                com.grossmont.ws.Weather, 
                com.grossmont.ws.Weather_main" 
%>

<html>
    <head>
        <style>
            body {
                background: linear-gradient(-45deg, #00FF9D, #D91AFF, #23a6d5, #23d5ab);
                background-size: 400% 400%;
                animation: gradient 12s ease infinite;
                height: 100vh;
            }

            @keyframes gradient {
                0% {background-position: 0% 50%; }
                50% {background-position: 100% 50%; }
                100% {background-position: 0% 50%; }
            }

            tr {
                height: 20px;
            }
            
        </style>
        <title>CSIS-295 WEATHER_APP</title>
    </head>
    <body>
        <%
            String sCity = request.getParameter("city");

            WeatherServiceManager oCity = new WeatherServiceManager();
            
            //get JSON from weather api and store in oCity.m_oWeather
            String trunc_sCity = sCity.replaceAll(" ", "%20");
            oCity.callWeatherWebService(trunc_sCity);

            //get current temp, high , low
            String sName = oCity.getCityName();
            float fCurrTemp = oCity.getCurrentTemp();
            float fHighTemp = oCity.getHighTemp();
            float fLowTemp = oCity.getLowTemp();
            
            //thermometer
            String iconTherm = "&#127777";
            //degree Farenheight
            String degF = "&#8457";
        
        %>
        <br>
        <button 
            style="
                border: 3px outset; 
                border-radius: 5px;
                cursor: pointer;
                font-weight: bold;" 
            onclick = "window.location.href='reqWeather.jsp';" 
            type="button" 
            ><-Back to Request Weather</button>
        <br>
        <h2 
            style="
                text-align:center;
                background: rgb(255, 255, 255);
                color: rgb(0, 0, 0);
                height: 20px;
                width: 100%;
            "
        ></h2>
        <div style ="
                color: white;
                text-align:center;
                font-size: 60px;
                text-shadow: -3px 3px 5px black;    
            "
        ><%=sName.toUpperCase()%> <br>WEATHER</div>
        <br><br>
        <table style="
                color: white;
                border: 2px solid white;
                border-radius: 50%;
                margin: auto;
                font-size: x-large;
                padding: 5%;
                background: rgb(0,0,0,.3);
                text-shadow: -3px 3px 5px black;
            "        
        >
            <tr>
                <td>Current temp: </td><td> <%=fCurrTemp%></td><td style="color:red;padding: 0 0 3px;"><%=degF%><%=iconTherm%></td>
            </tr>
            <tr>
                <td>High Temp:</td><td><%=fHighTemp%></td><td style="color:red;padding: 0 0 3px;"><%=degF%><%=iconTherm%></td>
            </tr>
            <tr>
                <td>Low Temp:</td><td><%=fLowTemp%></td><td style="color:red;padding: 0 0 3px;"><%=degF%><%=iconTherm%></td>
            </tr>
        </table>




    </body>
</html>