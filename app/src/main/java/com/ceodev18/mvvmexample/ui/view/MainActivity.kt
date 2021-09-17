package com.ceodev18.mvvmexample.ui.view

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.activity.viewModels
import androidx.core.view.isVisible
import androidx.lifecycle.Observer

import com.ceodev18.mvvmexample.databinding.ActivityMainBinding
import com.ceodev18.mvvmexample.ui.viewmodel.QuoteViewModel

class MainActivity : AppCompatActivity() {
    private lateinit var binding:ActivityMainBinding
    private val quoteViewModel: QuoteViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)
        quoteViewModel.onCreate()
        quoteViewModel.quoteModel.observe(this, Observer { quoteModel ->
            binding.tvAuthor.text = quoteModel.author
            binding.tvQuote.text = quoteModel.quote
        })
        quoteViewModel.isLoading.observe(this, Observer {
            binding.progress.isVisible = it
        })
         binding.viewContainer.setOnClickListener { quoteViewModel.getRandom() }
    }
}