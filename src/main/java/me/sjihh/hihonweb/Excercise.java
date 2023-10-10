package me.sjihh.hihonweb;

import java.util.Arrays;
import java.util.List;

public enum Excercise {
    MURACH("img/cat.png", "", "Murach form survey", "Exercise form survey<br>Week 6 Exercises"),
    MURACH2("img/cat.png", "", "Murach form survey", "Exercise form survey<br>Week 6 Exercises"),
    MURACH3("img/cat.png", "", "Murach form survey", "Exercise form survey<br>Week 6 Exercises"),
    MURACH4("img/cat.png", "", "Murach form survey", "Exercise form survey<br>Week 6 Exercises"),
    MURACH5("img/cat.png", "", "Murach form survey", "Exercise form survey<br>Week 6 Exercises"),
    MURACH6("img/cat.png", "", "Murach form survey", "Exercise form survey<br>Week 6 Exercises"),
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
