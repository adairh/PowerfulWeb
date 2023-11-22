package me.sjihh.hihonweb.chap.seven.one.data;

import me.sjihh.hihonweb.chap.seven.one.business.User;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.*;


public class UserIO {

    public static boolean add(User user, String filepath) {
        try {
            Path path = Path.of(filepath);
            String userString = user.getEmail() + "|" + user.getFirstName() + "|" + user.getLastName() + System.lineSeparator();
            Files.write(path, userString.getBytes(), StandardOpenOption.CREATE, StandardOpenOption.APPEND);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static User getUser(String email, String filepath) {
        try {
            Path path = Path.of(filepath);
            BufferedReader in = Files.newBufferedReader(path);
            User user = new User();
            String line;

            while ((line = in.readLine()) != null) {
                StringTokenizer t = new StringTokenizer(line, "|");

                if (t.countTokens() >= 3) {
                    String token = t.nextToken();
                    if (token.equalsIgnoreCase(email)) {
                        String firstName = t.nextToken();
                        String lastName = t.nextToken();
                        user.setEmail(email);
                        user.setFirstName(firstName);
                        user.setLastName(lastName);
                        return user;
                    }
                }
            }

            // If the email is not found or the line format is incorrect
            return new User("", "", "");
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
