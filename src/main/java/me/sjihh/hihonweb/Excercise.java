package me.sjihh.hihonweb;

import java.util.Arrays;
import java.util.List;

public enum Excercise {
    C4E1("img/41.png", "c4e1", "Modify a web page", "View and modify a web page for a survey."),
    C5E1("img/51.png", "c5e1", "Modify the servlet for the Email<br>" +
            "List application", "Modify the servlet that’s used by the email application" +
            "that’s presented in this chapter."),
    C5E2("img/52.png", "c5e2", "Create a new servlet", "Modify the HTML document for the Email List application, and create a new servlet that responds to the HTML document."),
    C6E1("img/61.png", "c6e1", "Modify the JSPs for the Email List application",
            "Modify the JSPs that are used by the email application" +
            "that’s presented in this chapter."),
    C6E2("img/62.png", "c6e2", "Create a new JSP", "Modify the HTML document for the Email List application, and you’ll create a new servlet that responds to the HTML document"),
    C7E1("img/71.png", "c7e1", "Use a cookie", "Exercise for practicing using cookie"),
    C7E2("img/72.png", "c7e2", "Use a session attribute", "Exercise for practicing using session"),
    C7E3("img/73.png", "c7e3", "Use URL rewriting instead\n" +
            "of hidden fields", "Exercise for learning use URL rewriting"),
    C8E1("img/81.png", "c8e1", "Modify the Email List application", "Enhance the Email List application so it uses EL to\n" +
            "display attributes"),
    C9E1("img/91.png", "c9e1", "Use JSTL in the Download\n" +
            "application", "Use JSTL in the Download application that you were\n" +
            "introduced to in the last chapter.\n"),
    C9E2("img/92.png", "c9e2", "Use JSTL in the Cart application", "Use JSTL to loop through an array list of Product objects.\n"),
    NULL("", "", "", "");

    String imageURL;
    String exerciseURL;
    String title;
    String description;

    Excercise(String imageURL, String exerciseURL, String title, String description) {
        this.imageURL = imageURL;
        this.exerciseURL = exerciseURL;
        this.title = title;
        this.description = description;
    }

    public static List<Excercise> getAllExercises() {
        return Arrays.asList(values());
    }

    public String getDescription() {
        return description;
    }

    public String getExerciseURL() {
        return exerciseURL;
    }

    public String getImageURL() {
        return imageURL;
    }

    public String getTitle() {
        return title;
    }
}
