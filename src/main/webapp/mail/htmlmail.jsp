<%@ page import="javax.mail.Message,javax.mail.MessagingException,javax.mail.Session" %>
<%@ page import="javax.mail.Transport,javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage,java.util.Properties" %>
<%
    String result;
    // Recipient's email ID needs to be mentioned.
    String to = "liuhuiguang1001@sina.com";

    // Sender's email ID needs to be mentioned
    String from = "mcmohd@gmail.com";

    // Assuming you are sending email from localhost
    String host = "localhost";

    // Get system properties object
    Properties properties = System.getProperties();

    // Setup mail server
    properties.setProperty("mail.smtp.host", host);

    // Get the default Session object.
    Session mailSession = Session.getDefaultInstance(properties);

    try {
        // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailSession);
        // Set From: header field of the header.
        message.setFrom(new InternetAddress(from));
        // Set To: header field of the header.
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
        // Set Subject: header field
        message.setSubject("This is the Subject Line!");

        // Send the actual HTML message, as big as you like
        message.setContent("<h1>This is actual html message </h1>",
                "text/html");
        // Send message
        Transport.send(message);
        result = "Sent message successfully....";
    } catch (MessagingException mex) {
        mex.printStackTrace();
        result = "Error: unable to send message....";
    }
%>
<html>
<head>
    <title>Send HTML Email using JSP</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Send Email using JSP</h1>
</div>
<p align="center">
    <%
        out.println("Result: " + result + "\n");
    %>
</p>
</body>
</html>