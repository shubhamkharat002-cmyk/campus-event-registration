package com.campusevents;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/register")
public class EventRegistrationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String contact = request.getParameter("contact");
        String event = request.getParameter("event");

        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        out.println("""
            <!DOCTYPE html>
            <html>
            <head>
                <title>Registration Successful</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background: #f4f7fb;
                        text-align: center;
                        padding-top: 80px;
                    }

                    .container {
                        width: 500px;
                        margin: auto;
                        background: white;
                        padding: 40px;
                        border-radius: 12px;
                        box-shadow: 0 4px 15px rgba(0,0,0,0.15);
                    }

                    h1 {
                        color: #198754;
                    }

                    p {
                        font-size: 18px;
                    }

                    .details {
                        text-align: left;
                        margin-top: 25px;
                        line-height: 1.8;
                    }
                </style>
            </head>

            <body>

            <div class="container">

                <h1>Registration Successful!</h1>

                <p>
                    Registration Submitted Successfully!
                </p>

                <p>
                    See you at the event.
                </p>

                <div class="details">

                    <strong>Name:</strong>
            """);

        out.println(name);

        out.println("""
                    <br>

                    <strong>Student ID:</strong>
            """);

        out.println(studentId);

        out.println("""
                    <br>

                    <strong>Contact:</strong>
            """);

        out.println(contact);

        out.println("""
                    <br>

                    <strong>Event:</strong>
            """);

        out.println(event);

        out.println("""
                </div>

            </div>

            </body>
            </html>
            """);
    }
}
