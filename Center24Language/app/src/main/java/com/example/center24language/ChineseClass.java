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

public class ChineseClass extends AppCompatActivity {
    private SharedData sharedData;

    @SuppressLint("SetTextI18n")
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.chinese_class);

        sharedData = SharedData.getInstance();

        Objects.requireNonNull(getSupportActionBar()).setDisplayHomeAsUpEnabled(true);

        addChineseListenerOnButton();
    }

    public void addChineseListenerOnButton() {
        ImageButton chinese_button_0, chinese_button_1, chinese_button_2, chinese_button_3, chinese_button_4;
        chinese_button_0 = findViewById(R.id.chinese_button_0);
        chinese_button_1 = findViewById(R.id.chinese_button_1);
        chinese_button_2 = findViewById(R.id.chinese_button_2);
        chinese_button_3 = findViewById(R.id.chinese_button_3);
        chinese_button_4 = findViewById(R.id.chinese_button_4);

        chinese_button_0.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("HSK3");
            }
        });

        chinese_button_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("HSK4");
            }
        });

        chinese_button_2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("HSK5");
            }
        });

        chinese_button_3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("0-HSK4");
            }
        });

        chinese_button_4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("0-HSK5");
            }
        });
    }
}
