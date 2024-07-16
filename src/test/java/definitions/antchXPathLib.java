package definitions;

public class antchXPathLib {
    public static String sAddSpecialist = "//button[starts-with(text(),'Add')]";
    public static String sAddAppointment = "//button[starts-with(text(),'Add')][contains(text(),'appointment')]";
    public static String sSaveSpecialist = "//*[@role='dialog']//*[@type='submit']";
    public static String sSaveAppointment = "//*[@role='dialog']//*[@type='submit']";
    public static String sAppointmentTab = "//button[.='Appointments']";
}
