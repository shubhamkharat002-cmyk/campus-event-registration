<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">

    <title>Campus Event Registration Portal</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f7fb;
        }

        .header {
            background: #1d3557;
            color: white;
            text-align: center;
            padding: 30px;
        }

        .header h1 {
            margin: 0;
        }

        .header p {
            margin-top: 10px;
        }

        .container {
            width: 500px;
            max-width: 90%;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.12);
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input,
        select {
            width: 100%;
            padding: 12px;
            margin-top: 7px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        button {
            width: 100%;
            margin-top: 25px;
            padding: 13px;
            border: none;
            border-radius: 6px;
            background: #1d3557;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #457b9d;
        }

        .events {
            margin-bottom: 20px;
        }

        .events h3 {
            color: #1d3557;
        }

        .events ul {
            line-height: 1.8;
        }

    </style>

</head>

<body>

<div class="header">

    <h1>Campus Event Registration Portal</h1>

    <p>
        Register for upcoming college events
    </p>

</div>


<div class="container">

    <div class="events">

        <h3>Upcoming Events</h3>

        <ul>
            <li>Annual Hackathon</li>
            <li>Robotics Workshop</li>
            <li>Cultural Fest</li>
            <li>Guest Tech Seminar</li>
        </ul>

    </div>


    <form action="register" method="post">

        <label for="event">
            Select Event
        </label>

        <select id="event" name="event" required>

            <option value="">
                -- Select an Event --
            </option>

            <option value="Annual Hackathon">
                Annual Hackathon
            </option>

            <option value="Robotics Workshop">
                Robotics Workshop
            </option>

            <option value="Cultural Fest">
                Cultural Fest
            </option>

            <option value="Guest Tech Seminar">
                Guest Tech Seminar
            </option>

        </select>


        <label for="name">
            Name
        </label>

        <input
            type="text"
            id="name"
            name="name"
            placeholder="Enter your name"
            required
        >


        <label for="studentId">
            Student ID
        </label>

        <input
            type="text"
            id="studentId"
            name="studentId"
            placeholder="Enter your student ID"
            required
        >


        <label for="contact">
            Contact Number
        </label>

        <input
            type="tel"
            id="contact"
            name="contact"
            placeholder="Enter your contact number"
            required
        >


        <button type="submit">
            Register for Event
        </button>

    </form>

</div>

</body>
</html>
