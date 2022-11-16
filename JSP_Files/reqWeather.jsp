<!--
	reqWeather.jsp:  Text input for a CITY and a submit button that submits to a second JSP.
	resultWeather.jsp:  calls java classes and displays results from weather api
-->

<html>
  <body style="background: linear-gradient(to right, rgb(236, 11, 199), rgb(0, 81, 255, .8));">

      <br>
      <h2 style="text-align:center;
                background-color:rgb(255, 255, 255);
                color:rgb(0, 0, 0);
                
                "
                >Enter a City to retrieve the Weather: </h2>

      <form
        style = "
          border: 6px outset;
          border-radius: 10px;
          background: lightgray;
          margin: 20px 30% 0px 30%;
          padding: 20px;
         "
        action="resultWeather.jsp"
      >
      <table style = "font-size: x-large;">
        <hr>


        <tr>
          <td>
            <strong>City Name:</strong>
          </td>
          <td>
            <input style = "border: 2px inset;" name="city" type="text">
          </td>
        </tr>

        <tr>
        </tr>

        <tr>
          <td></td>
            <td style = "float: right; margin-right: 5px;">
              <input style = "
                            cursor: pointer;
                            border: 3px outset; 
                            border-radius: 5px;
                            padding: 3px;
                            font-weight: bold;
                            " 
                          type="submit" value="Get Weather">  

            </td>
        </tr>

        <hr>
      </table>
      <hr>
    </form>

  </body>
</html>