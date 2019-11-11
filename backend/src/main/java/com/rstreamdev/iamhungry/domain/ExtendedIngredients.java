package com.rstreamdev.iamhungry.domain;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.ArrayList;

public class ExtendedIngredients implements Serializable {

    private int id;
    private String aisle;
    private String image;
    private String name;
    private double amount;
    private String unit;
    private String unitShort;
    private String unitLong;
    private String originalString;
    private ArrayList<String> metaInformation;

    @JsonCreator
    public ExtendedIngredients(@JsonProperty("id") int id,
                               @JsonProperty("aisle") String aisle,
                               @JsonProperty("image") String image,
                               @JsonProperty("name") String name,
                               @JsonProperty("amount") double amount,
                               @JsonProperty("unit") String unit,
                               @JsonProperty("unitShort") String unitShort,
                               @JsonProperty("unitLong") String unitLong,
                               @JsonProperty("originalString") String originalString,
                               @JsonProperty("metaInformation") ArrayList<String> metaInformation) {
        this.id = id;
        this.aisle = aisle;
        this.image = image;
        this.name = name;
        this.amount = amount;
        this.unit = unit;
        this.unitShort = unitShort;
        this.unitLong = unitLong;
        this.originalString = originalString;
        this.metaInformation = metaInformation;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAisle() {
        return aisle;
    }

    public void setAisle(String aisle) {
        this.aisle = aisle;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getUnitShort() {
        return unitShort;
    }

    public void setUnitShort(String unitShort) {
        this.unitShort = unitShort;
    }

    public String getUnitLong() {
        return unitLong;
    }

    public void setUnitLong(String unitLong) {
        this.unitLong = unitLong;
    }

    public String getOriginalString() {
        return originalString;
    }

    public void setOriginalString(String originalString) {
        this.originalString = originalString;
    }

    public ArrayList<String> getMetaInformation() {
        return metaInformation;
    }

    public void setMetaInformation(ArrayList<String> metaInformation) {
        this.metaInformation = metaInformation;
    }
}
