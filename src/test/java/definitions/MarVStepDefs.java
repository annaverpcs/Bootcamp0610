package definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class MarVStepDefs {
    @Given("MarV launch {string}")
    public void marvLaunch(String sApplicationName) {

        switch (sApplicationName) {
            case "MediCenterV2":
            getDriver().get("https://medicenter-qa2.vercel.app/");
            case "MediCenterV1":
                getDriver().get("https://medicenter-qa1.vercel.app/");
            case "Google":
                getDriver().get("https://www.google.com/");
                break;
            default: System.out.println("No URL is found for this particular name");
        }
    }

    @Then("MarV page title is {string}")
    public void marvPageTitleIs(String sPageTitle) {
        assertThat(getDriver().getTitle().contains(sPageTitle));
    }

    @Then("MarV click on the button")
    public void marvClickOnTheButton() {
        getDriver().findElement(By.xpath("//button[contains(text(),'Sign in')]")).click();
    }



    @Then("I click on {string} button")
    public void iClickOnButton(String eButtonName) {
        switch (eButtonName) {
            case "Login": getDriver().findElement(By.xpath("//button[contains(text(),'Login')]")).click();
            case "Sign In": getDriver().findElement(By.xpath("//button[contains(text(),'Sign in')]")).click();
            break;
            default:
                System.out.println("There is no such button");
        }
        }

    @Then("I type {string} into {string} textfield")
    public void iTypeIntoTextfield(String sText, String sTextFieldName) {
        switch (sTextFieldName) {
            case "Email":
                getDriver().findElement(By.xpath("//input[@id='email']")).sendKeys(sText);
            case "Password":
                getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys(sText);
                break;
            default:
                System.out.println("There is no such element on the page");
        }
    }
}
