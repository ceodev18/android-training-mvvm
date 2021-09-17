package com.ceodev18.mvvmexample.viewmodel

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ceodev18.mvvmexample.model.QuoteModel
import com.ceodev18.mvvmexample.model.QuoteProvider

class QuoteViewModel : ViewModel() {

    val quoteModel = MutableLiveData<QuoteModel>()

    fun getRandom() = quoteModel.postValue(QuoteProvider.getRandom())

}