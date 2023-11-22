package me.sjihh.hihonweb.chap.eight.one.data;

import me.sjihh.hihonweb.chap.eight.one.business.User;

import java.io.*;
import java.util.*;

public class UserIO {


    public static ArrayList<User> getUsers(String filename) throws IOException {
        ArrayList<User> users = new ArrayList<>();

        try (BufferedReader in = new BufferedReader(new FileReader(filename))) {
            String line;

            while ((line = in.readLine()) != null) {
                User user = parseUser(line);
                if (user != null) {
                    users.add(user);
                }
            }
        }

        return users;
    }

    private static User parseUser(String line) {
        try {
            StringTokenizer tokenizer = new StringTokenizer(line, "|");

            String emailAddress = getNextToken(tokenizer);
            String firstName = getNextToken(tokenizer);
            String lastName = getNextToken(tokenizer);

            return new User(firstName, lastName, emailAddress);
        } catch (NoSuchElementException | IllegalArgumentException e) {
            // Handle or log the exception if needed
            return null;
        }
    }

    private static String getNextToken(StringTokenizer tokenizer) {
        if (tokenizer.hasMoreTokens()) {
            return tokenizer.nextToken();
        } else {
            throw new IllegalArgumentException("Invalid input format");
        }
    }


}
