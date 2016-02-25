<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.archiev.buisness.operations.*, javax.naming.*, java.util.*, javax.ejb.*"%>

<%!

    private OperationsSessionBeanLocal ops ;
    float result = 0;

    public void jspInit() {
        try {

            InitialContext ic = new InitialContext();
            ops = (OperationsSessionBeanLocal)ic.lookup("java:global/EJBLearnWebApp/OperationsSessionBean"); 
            
            System.out.println("Loaded Calculator Bean");



        } catch (Exception ex) {
            System.out.println("Error:"
                    + ex.getMessage());
        }
    }

    public void jspDestroy() {
        ops = null;
    }
%>


<%

    try {
        String s1 = request.getParameter("num1");
        String s2 = request.getParameter("num2");
        String s3 = request.getParameter("group1");

        System.out.println(s3);

        if (s1 != null && s2 != null) {
            Float num1 = new Float(s1);
            Float num2 = new Float(s2);

            if (s3.equals("add")) {
                result = ops.add(num1.floatValue(), num2.floatValue());
            } else if (s3.equals("sub")) {
                result = ops.substract(num1.floatValue(), num2.floatValue());
            } else if (s3.equals("multi")) {
                result = ops.multiply(num1.floatValue(), num2.floatValue());
            } else {
                result = ops.divide(num1.floatValue(), num2.floatValue());
            }

%>
<p>
    <b>The result is:</b> <%= result%>
<p>

    <%
            }
        }// end of try
        catch (Exception e) {
            e.printStackTrace();
            //result = "Not valid";
        }
    %>