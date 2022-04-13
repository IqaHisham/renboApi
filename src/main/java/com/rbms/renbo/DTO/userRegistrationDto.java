/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.DTO;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author Syafiqah Nabilah
 */
//@FieldMatch.List({
//    @FieldMatch(first = "password", second = "confirmPassword", message = "The password fields must match"),
//    @FieldMatch(first = "email", second = "confirmEmail", message = "The email fields must match")
//})
public class userRegistrationDto {
    
    @NotEmpty(message = "First name cannot be empty.")
    private String firstName;

    @NotEmpty(message = "Last name cannot be empty.")
    private String lastName;

    @NotEmpty(message = "Password cannot be empty.")
    @Size(min=8, max=20, message ="Password must at least 8 words")
    @Pattern(regexp = "[A-Za-z0-9]+$", message="No symbol allowed")
    private String password;

//    @NotEmpty
//    private String confirmPassword;

    @Email
    @NotEmpty(message = "Email cannot be empty.")
    private String email;

//    @Email
//    @NotEmpty
//    private String confirmEmail;

    @AssertTrue
    private Boolean terms;
    
    @NotEmpty(message = "Role cannot be empty.")
    private String role;
    
//    @NotEmpty
//    private String userActive;
//    
    
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

//    public String getConfirmPassword() {
//        return confirmPassword;
//    }
//
//    public void setConfirmPassword(String confirmPassword) {
//        this.confirmPassword = confirmPassword;
//    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

//    public String getConfirmEmail() {
//        return confirmEmail;
//    }
//
//    public void setConfirmEmail(String confirmEmail) {
//        this.confirmEmail = confirmEmail;
//    }

    public Boolean getTerms() {
        return terms;
    }

    public void setTerms(Boolean terms) {
        this.terms = terms;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

//    public String getUserActive() {
//        return userActive;
//    }
//
//    public void setUserActive(String userActive) {
//        this.userActive = userActive;
//    }

    @Override
    public String toString() {
        return "userRegistrationDto{" + "firstName=" + firstName + ", lastName=" + lastName + ", password=" + password + ", email=" + email + ", terms=" + terms + ", role=" + role + '}';
    }
    
}
