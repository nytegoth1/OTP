<cfset username = form.username>
<cfset password = form.password>

<cfset OtpService = createObject("component", "Otp")>
<cfset result = OtpService.getOtp(username=username, password=password)>

<!DOCTYPE html>
<html lang="en">
    <style>
    .center {
        width: 220px;
        margin: 0 auto;
        text-align: center;
        padding: 10px;
    }
    <cfinclude template="./style/style.css" />
    </style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <header>
    </header>
    <main>
        <section>
            <h2></h2>
            <p></p>
        </section>
    </main>
    <footer>
<!---         <p>&copy; 2025</p> --->
    </footer>
</body>
</html>