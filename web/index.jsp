<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>E-Billing System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <p><center><h1>WELCOME TO E-BILLING</h1></center></p>
    <center>
        <form method="get" action="jsp_upload.jsp">
        Table No:<input type="number" name="tno" max="15" min="1"><br><br>
        <fieldset style="width: 190px;">
            <legend>Select Bread</legend>
            Bread:<input style="width: 28px;" type="number" name="b1" value="0"><br><br>
        Chapati:<input style="width: 28px;" type="number" name="b2" value="0"><br><br>
        Butter Chapati:<input style="width: 28px;" type="number" name="b3" value="0"><br><br>
        Tandoori Roti:<input style="width: 28px;" type="number" name="b4" value="0"><br><br>
        </fieldset>
        <fieldset style="width: 190px;">
            <legend>Select Main Course</legend>
        Cheese Butter Masala:<input style="width: 28px;" type="number" name="v1" value="0"><br><br>
        Panner Rajwadi:<input style="width: 28px;" type="number" name="v2" value="0"><br><br>
        Veg Handi:<input style="width: 28px;" type="number" name="v3" value="0"><br><br>
        Bhindi Masala:<input style="width: 28px;" type="number" name="v4" value="0"><br><br>
        Paneer Kadai:<input style="width: 28px;" type="number" name="v5" value="0"><br><br>
        Kaju Paneer:<input style="width: 28px;" type="number" name="v6" value="0"><br><br>
        </fieldset>
        <fieldset style="width: 190px;">
            <legend>Select Drinks</legend>
        Butter Milk:<input style="width: 28px;" type="number" name="d1" value="0"><br><br>
        Coca Cola:<input style="width: 28px;" type="number" name="d2" value="0"><br><br>
        Sprite:<input style="width: 28px;" type="number" name="d3" value="0"><br><br>
        Pepsi:<input style="width: 28px;" type="number" name="d4" value="0"><br><br>
        Mazza:<input style="width: 28px;" type="number" name="d5" value="0"><br><br>
        </fieldset><br><br>
        <a href="/OneServlet" name="go">GO</a><br><br>
        <center>OR</center><br>
        <input type="submit" name="bill" value="MAKE BILL">
    </form>
    </center>
    </body>
</html>
