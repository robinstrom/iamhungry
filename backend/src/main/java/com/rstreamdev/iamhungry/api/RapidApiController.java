package com.rstreamdev.iamhungry.api;

import com.rstreamdev.iamhungry.application.RapidApiService;
import com.rstreamdev.iamhungry.domain.Ingredients;
import com.rstreamdev.iamhungry.domain.RecipeBasic;
import com.rstreamdev.iamhungry.domain.RecipeDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;


@RestController
public class RapidApiController {

    @Autowired
    public RapidApiService rapidApiService;

    @RequestMapping(value = "/recipes", method = RequestMethod.POST)
    public List<RecipeBasic> ingredients(@RequestBody Ingredients ingredients) throws IOException {
        return rapidApiService.getRecipes(ingredients.getIngredients());
    }

    @RequestMapping(value = "/recipe-details", method = RequestMethod.POST)
    public RecipeDetails recipeDetails(@RequestBody RecipeBasic recipeBasic) throws IOException {

        return rapidApiService.getRecipeDetails(recipeBasic.getId());

    }
}
