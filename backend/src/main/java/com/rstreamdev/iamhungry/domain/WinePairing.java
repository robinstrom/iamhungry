package com.rstreamdev.iamhungry.domain;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.ArrayList;

public class WinePairing implements Serializable {

    private ArrayList<String> pairedWines;
    private String pairingText;
    private ArrayList<ProductMatch> productMatch;

    @JsonCreator
    public WinePairing(@JsonProperty("pairedWines") ArrayList<String> pairedWines,
                       @JsonProperty("pairingText") String pairingText,
                       @JsonProperty("productMatch") ArrayList<ProductMatch> productMatch) {
        this.pairedWines = pairedWines;
        this.pairingText = pairingText;
        this.productMatch = productMatch;
    }

    class ProductMatch {
        private int id;
        private String title;
        private String description;
        private String price;
        private String imageUrl;
        private float averageRating;
        private int ratingCount;
        private float score;
        private String link;

        @JsonCreator
        public ProductMatch(@JsonProperty("id") int id,
                            @JsonProperty("title") String title,
                            @JsonProperty("description") String description,
                            @JsonProperty("price") String price,
                            @JsonProperty("imageUrl") String imageUrl,
                            @JsonProperty("averageRating") float averageRating,
                            @JsonProperty("ratingCount") int ratingCount,
                            @JsonProperty("score") float score,
                            @JsonProperty("link") String link) {
            this.id = id;
            this.title = title;
            this.description = description;
            this.price = price;
            this.imageUrl = imageUrl;
            this.averageRating = averageRating;
            this.ratingCount = ratingCount;
            this.score = score;
            this.link = link;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getDescription() {
            return description;
        }

        public void setDescription(String description) {
            this.description = description;
        }

        public String getPrice() {
            return price;
        }

        public void setPrice(String price) {
            this.price = price;
        }

        public String getImageUrl() {
            return imageUrl;
        }

        public void setImageUrl(String imageUrl) {
            this.imageUrl = imageUrl;
        }

        public float getAverageRating() {
            return averageRating;
        }

        public void setAverageRating(float averageRating) {
            this.averageRating = averageRating;
        }

        public int getRatingCount() {
            return ratingCount;
        }

        public void setRatingCount(int ratingCount) {
            this.ratingCount = ratingCount;
        }

        public float getScore() {
            return score;
        }

        public void setScore(float score) {
            this.score = score;
        }

        public String getLink() {
            return link;
        }

        public void setLink(String link) {
            this.link = link;
        }
    }

    public ArrayList<String> getPairedWines() {
        return pairedWines;
    }

    public void setPairedWines(ArrayList<String> pairedWines) {
        this.pairedWines = pairedWines;
    }

    public String getPairingText() {
        return pairingText;
    }

    public void setPairingText(String pairingText) {
        this.pairingText = pairingText;
    }

    public ArrayList<ProductMatch> getProductMatch() {
        return productMatch;
    }

    public void setProductMatch(ArrayList<ProductMatch> productMatch) {
        this.productMatch = productMatch;
    }
}
