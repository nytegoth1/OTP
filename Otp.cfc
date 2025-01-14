<cfcomponent>
    <cfscript>

    function getOtp() {
        // Check if the form was submitted
        if (isDefined("form.username")) {
            // Step 1: Authenticate the user
            username = trim(form.username);
            password = trim(form.password);

            // Fetching user data from a database
            user = queryExecute("SELECT * FROM users WHERE username = ?", [username], {datasource="cfshopping_cart"});

            // Hash the submitted password and compare with the stored hashed password
            hashedPassword = hash(form.password, 'SHA-256');

            if (user.recordCount > 0 && hashedPassword == user.password) {

                    // Generate an OTP
                    generatedOTP = randRange(100000, 999999); // Create a random 6-digit OTP

                    userOtp = queryExecute("SELECT * FROM users WHERE username = ?", [username], {datasource="cfshopping_cart"});

                    // In a real app, send this OTP via email or SMS.
                    updateQuery = queryExecute("UPDATE users SET otp = ? WHERE username = ?", [generatedOTP, username], {datasource="cfshopping_cart"});

                    // Send OTP to user (e.g., via email)
                    // cfmail would be used to send the OTP
                    /* 
                    cfmail(to="#user.email#", subject="Your OTP", body="Your OTP is: #generatedOTP#");
                    */

                    // Store OTP in session
                    session.generatedOTP = generatedOTP;

                    WriteOutput('<div class="center">Passcode: ' & generatedOTP & '</div>');

                    WriteOutput('<div class="center"><form action="processotp.cfm" method="post"><input class="form-control form-controlx" type="text" id="otp" name="OTP" placeholder="OTP CODE" /><input type="hidden" name="username" value=' & username & ' /><input class="btn my-4 btn-primary" type="submit" value="Submit" /></form></div>');

                } else {
                    WriteOutput('<div class="center">Invalid username or password.</div>');
                }
        }
    }

    function ProcessOtp() {
        username = trim(form.username);
        user = queryExecute("SELECT * FROM users WHERE username = ?", [username], {datasource="cfshopping_cart"});
        if (form.otp == user.otp) {
            // OTP matches
            WriteOutput('<div class="center">Success</div>');
            updateQuery = queryExecute("UPDATE users SET otp = ? WHERE username = ?", ['', username], {datasource="cfshopping_cart"});
        } else {
            // OTP does not match
            WriteOutput('<div class="center">Invalid OTP</div>');
        }
    }
    
    </cfscript>
</cfcomponent>