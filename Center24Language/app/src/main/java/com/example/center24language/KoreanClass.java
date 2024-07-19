package com.example.center24language;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.example.center24language.R;

import java.util.Objects;

public class KoreanClass extends AppCompatActivity {
    private SharedData sharedData;

    @SuppressLint("SetTextI18n")
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.korean_class);

        sharedData = SharedData.getInstance();

        Objects.requireNonNull(getSupportActionBar()).setDisplayHomeAsUpEnabled(true);

        addKoreanListenerOnButton();
    }

    public void addKoreanListenerOnButton() {
        ImageButton korean_button_0, korean_button_1, korean_button_2, korean_button_3, korean_button_4, korean_button_5;
        korean_button_0 = findViewById(R.id.korean_button_0);
        korean_button_1 = findViewById(R.id.korean_button_1);
        korean_button_2 = findViewById(R.id.korean_button_2);
        korean_button_3 = findViewById(R.id.korean_button_3);
        korean_button_4 = findViewById(R.id.korean_button_4);
        korean_button_5 = findViewById(R.id.korean_button_5);

        korean_button_0.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("SC1");
            }
        });

        korean_button_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("SC2");
            }
        });

        korean_button_2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("TC1");
            }
        });

        korean_button_3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("TC2");
            }
        });

        korean_button_4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("CC1");
            }
        });

        korean_button_5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("CC2");
            }
        });
    }
}
