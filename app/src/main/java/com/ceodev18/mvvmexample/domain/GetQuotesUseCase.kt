package com.ceodev18.mvvmexample.domain

import com.ceodev18.mvvmexample.data.model.QuoteModel
import com.ceodev18.mvvmexample.data.repository.QuoteRepository

class GetQuotesUseCase {
    private val quoteRepository = QuoteRepository()
    suspend operator fun invoke(): List<QuoteModel>? = quoteRepository.getAllQuote()
}
