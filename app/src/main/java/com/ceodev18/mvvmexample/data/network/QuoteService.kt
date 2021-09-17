package com.ceodev18.mvvmexample.data.network

import com.ceodev18.mvvmexample.core.RetrofitHelper
import com.ceodev18.mvvmexample.data.model.QuoteModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

class QuoteService {
    private val retrofit = RetrofitHelper.getRetrofit()
    suspend fun getAllQuotes():List<QuoteModel>{
        return withContext(Dispatchers.IO){
            val response = retrofit.create(QuoteApiClient::class.java).getAllQuotes()
            response.body()?: emptyList()
        }


    }
}