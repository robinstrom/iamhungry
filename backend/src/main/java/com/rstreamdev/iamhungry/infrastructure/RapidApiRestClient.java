package com.rstreamdev.iamhungry.infrastructure;

import com.rstreamdev.iamhungry.domain.RecipeBasic;
import com.rstreamdev.iamhungry.domain.RecipeDetails;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Path;
import retrofit2.http.Query;

import java.util.List;

public interface RapidApiRestClient {

    @GET("recipes/findByIngredients")
    Call<List<RecipeBasic>> getRecipes(@Header("X-RapidAPI-Key") String apiKey,
                                       @Query("ingredients") String ingredients);

    @GET("/recipes/{id}/information")
    Call<RecipeDetails> getRecipeDetails(@Header("X-RapidAPI-Key") String apiKey,
                                         @Path("id") int id);

}
