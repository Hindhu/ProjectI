/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.library.model;

/**
 *
 * @author Jerron
 */
public class Book {
    String BookId,Title,Author,MainClassification,SubClassification,PublishedYear,LastPrinted,ISBNNumber,NumberOfPages;

    public String getBookId() {
        return BookId;
    }

    public void setBookId(String BookId) {
        this.BookId = BookId;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String Author) {
        this.Author = Author;
    }

    public String getMainClassification() {
        return MainClassification;
    }

    public void setMainClassification(String MainClassification) {
        this.MainClassification = MainClassification;
    }

    public String getSubClassification() {
        return SubClassification;
    }

    public void setSubClassification(String SubClassification) {
        this.SubClassification = SubClassification;
    }

    public String getPublishedYear() {
        return PublishedYear;
    }

    public void setPublishedYear(String PublishedYear) {
        this.PublishedYear = PublishedYear;
    }

    public String getLastPrinted() {
        return LastPrinted;
    }

    public void setLastPrinted(String LastPrinted) {
        this.LastPrinted = LastPrinted;
    }

    public String getISBNNumber() {
        return ISBNNumber;
    }

    public void setISBNNumber(String ISBNNumber) {
        this.ISBNNumber = ISBNNumber;
    }

    public String getNumberOfPages() {
        return NumberOfPages;
    }

    public void setNumberOfPages(String NumberOfPages) {
        this.NumberOfPages = NumberOfPages;
    }
    
}
