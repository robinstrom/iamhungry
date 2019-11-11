package com.rstreamdev.iamhungry.application;

import com.rstreamdev.iamhungry.domain.RecipeBasic;
import com.rstreamdev.iamhungry.domain.RecipeDetails;
import com.rstreamdev.iamhungry.infrastructure.RapidApiRestClient;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

import java.io.IOException;
import java.util.List;

@Service
public class RapidApiService {

    private String apiKey;
    private static final String BASE_URL = "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/";

    private RapidApiRestClient rapidApiRestClient;

    public RapidApiService() {
        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl(BASE_URL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();

        rapidApiRestClient = retrofit.create(RapidApiRestClient.class);
        this.apiKey = "377160cdd1mshd23af262874694ap1cbb60jsne8168c2a3885";
    }

    @Cacheable(cacheNames = "recipeCache", key = "#ingredients")
    public List<RecipeBasic> getRecipes(String ingredients) throws IOException {
        Call<List<RecipeBasic>> retrofitCall = rapidApiRestClient.getRecipes(apiKey, ingredients);

        Response<List<RecipeBasic>> response = retrofitCall.execute();

        if (!response.isSuccessful()) {
            throw new IOException(response.errorBody() != null
                    ? response.errorBody().string() : "Unknown error");
        }

        return response.body();
    }

    @Cacheable(cacheNames = "recipeDetailsCache", key = "#id")
    public RecipeDetails getRecipeDetails(int id) throws IOException {
        Call<RecipeDetails> retrofitCall = rapidApiRestClient.getRecipeDetails(apiKey, id);

        Response<RecipeDetails> response = retrofitCall.execute();

        if (!response.isSuccessful()) {
            throw new IOException(response.errorBody() != null
                    ? response.errorBody().string() : "Unknown error");
        }

        return response.body();
    }
}
