package definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class AnnaVStepDefs {
    @Given("AnnaV launch {string}")
    public void annavLaunch(String sApplicationName) {

        switch (sApplicationName) {
            case "MedicenterV2":
                //getDriver().get("https://medicenter-qa2.vercel.app/");
                getDriver().get(xPathLibrary.sMedicenterURLV2);
                break;
            case "MedicenterV1":
                getDriver().get(xPathLibrary.sMedicenterURLV1);
                break;
            case "Google":
                getDriver().get(xPathLibrary.Google);
                break;
            case "Target":
                getDriver().get(xPathLibrary.Target);
                break;
            default: System.out.println("No URL is found for this particular name");
        }

    }

    @Then("AnnaV page title is {string}")
    public void annavPageTitleIs(String sPageTitle) {
        assertThat(getDriver().getTitle().contains(sPageTitle));
    }

    @Then("AnnaV type {string} into {string} textfield")
    public void annavTypeIntoTextfield(String sText, String sTextFieldName) {
        switch(sTextFieldName){
            case "Email" :
                    getDriver().findElement(By.xpath(xPathLibrary.sEmailTextField)).sendKeys(sText);
                    break;
            case "Password":
                getDriver().findElement(By.xpath(xPathLibrary.sEmailPasswordField)).sendKeys(sText);
                break;
            default:
                System.out.println("There is not such element on the page");
        }
    }

    @Then("AnnaV click Sign in button")
    public void annavClickSignInButton() {
        getDriver().findElement(By.xpath(xPathLibrary.sSignInButton)).click();
    }

    @Then("AnnaV click on {string} button")
    public void annavClickOnButton(String sButtonName) {
        switch(sButtonName) {
            case "Login":
                getDriver().findElement(By.xpath(xPathLibrary.sLoginButton)).click();
                break;
            case "Sign in":
                getDriver().findElement(By.xpath(xPathLibrary.sSignInButton)).click();
                break;
            default:
                System.out.println("There is no such button on this page");
        }

    }
}
