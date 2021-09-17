package com.ceodev18.mvvmexample.data.repository

import com.ceodev18.mvvmexample.data.model.QuoteModel
import com.ceodev18.mvvmexample.data.model.QuoteProvider
import com.ceodev18.mvvmexample.data.network.QuoteService

class QuoteRepository {
    private val api = QuoteService()
    suspend fun getAllQuote(): List<QuoteModel>{
        val response = api.getAllQuotes()
        QuoteProvider.quotes = response
        return response
    }
}