package definitions;

public class xPathLibrary {
    public static String sMedicenterURLV1 = "https://medicenter-qa1.vercel.app/";
    public static String sMedicenterURLV2 = "https://medicenter-qa2.vercel.app/";
    public static String Google = "https://www.google.com/";
    public static String Target = "https://www.target.com/";
    public static String sEmailTextField = "//input[@id='email']";
    public static String sEmailPasswordField = "//input[@id='password']";
    public static String sSignInButton = "//button[contains(text(),'Sign in')]";
    public static String sLoginButton = "//button[contains(text(),'Login')]";
    public static String sAddSpecialist = "//button[starts-with(text(),'Add')]";
    public static String sAddAppointment = "//button[starts-with(text(),'Add')][contains(text(),'appointment')]";
    public static String sSaveSpecialist = "//*[@role='dialog']//*[@type='submit']";
    public static String sSaveAppointment = "//*[@role='dialog']//*[@type='submit']";
    public static String sAppointmentTab = "//button[.='Appointments']";
}
