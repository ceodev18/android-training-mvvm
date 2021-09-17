package com.ceodev18.mvvmexample.ui.viewmodel

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.ceodev18.mvvmexample.data.model.QuoteModel
import com.ceodev18.mvvmexample.data.model.QuoteProvider
import com.ceodev18.mvvmexample.domain.GetQuotesUseCase
import com.ceodev18.mvvmexample.domain.GetRandomQuoteUseCase
import kotlinx.coroutines.launch

class QuoteViewModel : ViewModel() {

    val quoteModel = MutableLiveData<QuoteModel>()
    val isLoading = MutableLiveData<Boolean>()
    val getQuotesUseCase = GetQuotesUseCase()
    val getRandomQuotesUseCase = GetRandomQuoteUseCase()
    fun onCreate() {
        viewModelScope.launch {
            isLoading.postValue(true)
            val result = getQuotesUseCase()
            if (!result.isNullOrEmpty()) {
                quoteModel.postValue(result[0])
                isLoading.postValue(false)

            }
        }
    }

    fun getRandom() {
        isLoading.postValue(true)
        val quote = getRandomQuotesUseCase()
        if (quote != null) {
            quoteModel.postValue(quote)
        }
        isLoading.postValue(false)
    }
}