<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Calculator</title>
    </head>

    <body bgcolor="lightgreen">
        <h1>Basic Operations</h1>
        <hr>

        <form action="Result.jsp" method="POST">
            <p>Enter first value:
                <input type="text" name="num1" size="25"></p>
            <br>
            <p>Enter second value:
                <input type="text" name="num2" size="25"></p>
            <br>

            <b>Select your choice:</b><br>
            <input type="radio" name="group1" value ="add">Addition<br>
            <input type="radio" name="group1" value ="sub">Subtraction<br>
            <input type="radio" name="group1" value ="multi">Multiplication<br>
            <input type="radio" name="group1" value ="div">Division<br>
            <p>
                <input type="submit" value="Submit">
                <input type="reset" value="Reset">
           </p>
        </form>
    </body>
</html>     
