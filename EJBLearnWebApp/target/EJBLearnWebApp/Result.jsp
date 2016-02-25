<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.archiev.buisness.operations.*, javax.naming.*, java.util.*, javax.ejb.*"%>

<%!

    private OperationsSessionBeanLocal ops ;
    float result = 0;

    public void jspInit() {
        try {

        final Hashtable jndiProperties = new Hashtable();
            jndiProperties.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
            jndiProperties.put("jboss.naming.client.ejb.context", true);
            InitialContext ic = new InitialContext(jndiProperties);
            
            final String appName = "";
            // This is the module name of the deployed EJBs on the server. This is typically the jar name of the
            // EJB deployment, without the .jar suffix, but can be overridden via the ejb-jar.xml
            // In this example, we have deployed the EJBs in a jboss-as-ejb-remote-app.jar, so the module name is
            // jboss-as-ejb-remote-app
            final String moduleName = "EJBLearnWebApp";
            // AS7 allows each deployment to have an (optional) distinct name. We haven't specified a distinct name for
            // our EJB deployment, so this is an empty string
            final String distinctName = "";
            // The EJB name which by default is the simple class name of the bean implementation class
            final String beanName = OperationsSessionBean.class.getSimpleName();
            // the remote view fully qualified class name
            final String viewClassName = OperationsSessionBeanLocal.class.getName();
            // let's do the lookup (notice the ?stateful string as the last part of the jndi name for stateful bean lookup)
            String lookupNameFromExample = new String("/" + moduleName + "/" + distinctName + "/" + beanName + "!" + viewClassName);
            
            ops = (OperationsSessionBeanLocal)ic.lookup("java:global/EJBLearnWebApp/OperationsSessionBean!com.archiev.buisness.operations.OperationsSessionBeanLocal"); 
            
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