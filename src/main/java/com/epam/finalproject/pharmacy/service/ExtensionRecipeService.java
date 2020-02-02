package com.epam.finalproject.pharmacy.service;

import com.epam.finalproject.pharmacy.dao.DaoHelper;
import com.epam.finalproject.pharmacy.dao.DaoHelperFactory;
import com.epam.finalproject.pharmacy.dao.recipe.RecipeDao;
import com.epam.finalproject.pharmacy.dao.request.RequestDao;
import com.epam.finalproject.pharmacy.entity.Recipe;
import com.epam.finalproject.pharmacy.entity.Request;
import com.epam.finalproject.pharmacy.entity.RequestStatus;
import com.epam.finalproject.pharmacy.exception.DaoException;
import com.epam.finalproject.pharmacy.exception.ServerException;

import java.time.LocalDate;
import java.util.Optional;

public class ExtensionRecipeService {

    private RecipeDao recipeDao;
    private RequestDao requestDao;

    public ExtensionRecipeService(DaoHelperFactory daoHelperFactory) throws ServerException {
        try (DaoHelper daoHelper = daoHelperFactory.create()) {
            recipeDao = daoHelper.createRecipeDao();
            requestDao = daoHelper.createRequestDao();
        } catch (DaoException e) {
            throw new ServerException(e);
        }
    }

    public void approveRequest(Long requestId) throws ServerException {
        try {
            Optional<Request> optionalRequest = requestDao.findById(requestId);
            if(optionalRequest.isPresent()) {
                Request request = optionalRequest.get();
                Optional<Recipe> optionalRecipe = recipeDao.findById(request.getRecipeId());
                if(optionalRecipe.isPresent()) {
                    Recipe recipe = optionalRecipe.get();
                    Integer requestedPeriod = request.getRequestedPeriod();
                    LocalDate newExpDate = recipe.getExpDate().plusMonths(requestedPeriod);
                    recipe.setExpDate(newExpDate);
                    recipeDao.save(recipe);
                }
                request.setStatus(RequestStatus.CLOSED);
                requestDao.save(request);
            }
        } catch (DaoException e) {
            throw new ServerException(e);
        }
    }
}