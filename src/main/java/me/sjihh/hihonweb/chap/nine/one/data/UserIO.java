package me.sjihh.hihonweb.chap.nine.one.data;

import me.sjihh.hihonweb.chap.nine.one.business.User;

import java.io.*;
import java.util.*;


public class UserIO {
    public static boolean add(User user, String filepath) {
        try (PrintWriter out = new PrintWriter(new FileWriter(filepath, true))) {
            out.println(user.getEmail() + "|" + user.getFirstName() + "|" + user.getLastName());
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static User getUser(String email, String filepath) {
        try (BufferedReader in = new BufferedReader(new FileReader(filepath))) {
            User user = new User();
            String line;

            while ((line = in.readLine()) != null) {
                String[] tokens = line.split("\\|");

                if (tokens.length >= 3) {
                    String token = tokens[0];
                    if (token.equalsIgnoreCase(email)) {
                        String firstName = tokens[1];
                        String lastName = tokens[2];
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