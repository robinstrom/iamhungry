package com.rstreamdev.iamhungry.domain;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.ArrayList;

public class AnalyzedInstructions implements Serializable {

    private String name;
    private ArrayList<Steps> steps;

    @JsonCreator
    public AnalyzedInstructions(@JsonProperty String name,
                                @JsonProperty ArrayList<Steps> steps) {
        this.name = name;
        this.steps = steps;
    }

    class Steps implements Serializable {
        private int number;
        private String step;
        private ArrayList<Ingredient> ingredients;
        private ArrayList<Equipment> equipment;

        @JsonCreator
        public Steps(@JsonProperty("number") int number,
                     @JsonProperty("step") String step,
                     @JsonProperty("ingredients") ArrayList<Ingredient> ingredients,
                     @JsonProperty("equipment") ArrayList<Equipment> equipment) {
            this.number = number;
            this.step = step;
            this.ingredients = ingredients;
            this.equipment = equipment;
        }

        public int getNumber() {
            return number;
        }

        public void setNumber(int number) {
            this.number = number;
        }

        public String getStep() {
            return step;
        }

        public void setStep(String step) {
            this.step = step;
        }

        public ArrayList<Ingredient> getIngredients() {
            return ingredients;
        }

        public void setIngredients(ArrayList<Ingredient> ingredients) {
            this.ingredients = ingredients;
        }

        public ArrayList<Equipment> getEquipment() {
            return equipment;
        }

        public void setEquipment(ArrayList<Equipment> equipment) {
            this.equipment = equipment;
        }

        class Ingredient implements Serializable {
            private int id;
            private String name;
            private String image;

            @JsonCreator
            public Ingredient(@JsonProperty("id") int id,
                              @JsonProperty("name") String name,
                              @JsonProperty("image") String image) {
                this.id = id;
                this.name = name;
                this.image = image;
            }

            public int getId() {
                return id;
            }

            public void setId(int id) {
                this.id = id;
            }

            public String getName() {
                return name;
            }

            public void setName(String name) {
                this.name = name;
            }

            public String getImage() {
                return image;
            }

            public void setImage(String image) {
                this.image = image;
            }
        }

        class Equipment implements Serializable {
            private int id;
            private String name;
            private String image;

            @JsonCreator
            public Equipment(@JsonProperty int id,
                             @JsonProperty String name,
                             @JsonProperty String image) {
                this.id = id;
                this.name = name;
                this.image = image;
            }

            public int getId() {
                return id;
            }

            public void setId(int id) {
                this.id = id;
            }

            public String getName() {
                return name;
            }

            public void setName(String name) {
                this.name = name;
            }

            public String getImage() {
                return image;
            }

            public void setImage(String image) {
                this.image = image;
            }
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ArrayList<Steps> getSteps() {
        return steps;
    }

    public void setSteps(ArrayList<Steps> steps) {
        this.steps = steps;
    }
}
