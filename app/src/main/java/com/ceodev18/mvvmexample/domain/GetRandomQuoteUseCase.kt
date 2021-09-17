package com.ceodev18.mvvmexample.domain

import com.ceodev18.mvvmexample.data.model.QuoteModel
import com.ceodev18.mvvmexample.data.model.QuoteProvider
import com.ceodev18.mvvmexample.data.repository.QuoteRepository

class GetRandomQuoteUseCase {
    private val quoteRepository = QuoteRepository()
    operator fun invoke(): QuoteModel?{
        val quotes = QuoteProvider.quotes
        if(!quotes.isNullOrEmpty()){
            return quotes[(quotes.indices).random()]
        }
        return null
    }
}