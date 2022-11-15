<!--
	reqWeather.jsp:  Text input for a CITY and a submit button that submits to a second JSP.
	resultWeather.jsp:  calls java classes and displays results form weather api
-->

<html>
  <body style="background: linear-gradient(to right, rgb(20, 20, 20), rgb(100,100,100));">

      <br/>
      <h2 style="text-align:center;
                background-color:rgb(128, 128, 128);
                color:white
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
            Area ID:
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
              <input style = "border: 2px outset; " type="submit" value="Get Weather">

            </td>
        </tr>

        <hr>
      </table>
      <hr>
    </form>

  </body>
</html>