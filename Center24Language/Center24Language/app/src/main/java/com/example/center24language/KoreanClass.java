package com.example.center24language;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.example.center24language.R;

public class KoreanClass extends AppCompatActivity {
    TextView tv;
    @SuppressLint("SetTextI18n")
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.korean_class);

        tv = findViewById(R.id.textView);
        tv.setText("Day la lop tieng han");

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

//        View backButton = findViewById(R.id.button);
//        backButton.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                finish();
//            }
//        });
    }
}
