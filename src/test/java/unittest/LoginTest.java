/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package unittest;

import com.sqeteam.recruitresource.datacontroller.LoginDataController;
import com.sqeteam.recruitresource.model.Login;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Dinuzhka
 */
public class LoginTest {

    public LoginTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    @Test
    public void validCredentials() {
        try {
            String email = "gbdinushka@gmail.com";
            String password = "1234567";
            LoginDataController ldc = new LoginDataController();
            boolean isValid = ldc.isValidCredentials(email, password);

            assertEquals("Correct credentials are not validated", isValid, true);
        } catch (Exception e) {
            assertFalse("Exception occured", true);
        }
    }

    @Test
    public void invalidCredentials() {
        try {
            String email = "gbdinushka@gmail.com";
            String password = "12345678";
            LoginDataController ldc = new LoginDataController();
            boolean isValid = ldc.isValidCredentials(email, password);

            assertEquals("Incorrect credentials are validated", isValid, false);
        } catch (Exception e) {
            assertFalse("Exception occured", true);
        }

    }

    @Test
    public void noSuchUser() {
        try {
            String email = "gbdinushka@gmail.com121";
            String password = "12345678";
            LoginDataController ldc = new LoginDataController();
            boolean isValid = ldc.isValidCredentials(email, password);

            assertEquals("No such user validated", isValid, false);
        } catch (Exception e) {
            assertFalse("Exception occured", true);
        }

    }
    
    @Test
    public void createLogin() {
        try {
            String email = "gbdinushka@gmail.com121";
            String password = "12345678";
            LoginDataController ldc = new LoginDataController();
            int userId=ldc.addLogin(new Login(email, password));

            assertEquals("User not added", (0-userId), 0);
        } catch (Exception e) {
            assertFalse("Exception occured", true);
        }

    }
}
