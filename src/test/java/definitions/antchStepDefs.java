package definitions;


import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class antchStepDefs {
    @Given ("antch launch MedicenterV2")
    public void antchLaunch() {getDriver().get(xPathLibrary.sMedicenterURLV2);
    }

//    @Then("antch assert page contains {string}")
//    public void antchPageContains(String sPageContains) {
//        switch (sPageContains){
//            case
//        }
//    }

    @Then("antch click on {string} button")
    public void antchClickSmth(String sSmthName) {
        switch(sSmthName) {
            case "Login":
                getDriver().findElement(By.xpath(xPathLibrary.sLoginButton)).click();
                break;
            case "Sign In":
                getDriver().findElement(By.xpath(xPathLibrary.sSignInButton)).click();
                break;
            case "Add specialist":
                getDriver().findElement(By.xpath(antchXPathLib.sAddSpecialist)).click();
                break;
            case "Add appointment":
                getDriver().findElement(By.xpath(antchXPathLib.sAddAppointment)).click();
                break;
            case "Save specialist":
                getDriver().findElement(By.xpath(antchXPathLib.sSaveSpecialist)).click();
                break;
            case "Save appointment":
                getDriver().findElement(By.xpath(antchXPathLib.sSaveAppointment)).click();
                break;
            case "Appointment tab":
                getDriver().findElement(By.xpath(antchXPathLib.sAppointmentTab)).click();
                break;
            default:
                System.out.println("There is no such element on the webpage");
        }
    }

}


