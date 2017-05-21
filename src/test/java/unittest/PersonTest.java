/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package unittest;

import com.sqeteam.recruitresource.datacontroller.LoginDataController;
import com.sqeteam.recruitresource.datacontroller.PersonDataController;
import com.sqeteam.recruitresource.model.Login;
import com.sqeteam.recruitresource.model.Persons;
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
public class PersonTest {

    public PersonTest() {
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
    public void addJobSeeker() {
        try {
            String email = "gbdinushkauser@gmail.com";
            String password = "12345678";
            PersonDataController ldc = new PersonDataController();
            int userId = ldc.addPerson(new Persons(new Login(email, password), "Gayan", "Dinushka", "user"));

            assertEquals("Person not added", (0 - userId), 0);
        } catch (Exception e) {
            assertFalse("Exception occured", true);
        }
    }

    @Test
    public void addJobCompany() {
        try {
            String email = "gbdinushkacompany@gmail.com";
            String password = "12345678";
            PersonDataController ldc = new PersonDataController();
            int userId = ldc.addPerson(new Persons(new Login(email, password), "Gayan", "Dinushka", "company"));

            assertEquals("Company not added", (0 - userId), 0);
        } catch (Exception e) {
            assertFalse("Exception occured", true);
        }
    }

    @Test
    public void getPerson() {
        try {
            String email = "gbdinushkacompany@gmail.com";
            PersonDataController ldc = new PersonDataController();
            Persons person = ldc.getPerson(email);
            boolean isNull=person==null;

            assertEquals("Company not added", isNull, false);
        } catch (Exception e) {
            assertFalse("Exception occured", true);
        }
    }
}
