package com.example.center24language;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.example.center24language.R;

public class ChineseClass extends AppCompatActivity {
    TextView tv;
    @SuppressLint("SetTextI18n")
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.chinese_class);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        tv = findViewById(R.id.textView);
        tv.setText("Day la lop tieng trung");

        addChineseListenerOnButton();
    }

    public void addChineseListenerOnButton() {
        Button chinese_button_0, chinese_button_1, chinese_button_2, chinese_button_3, chinese_button_4;
        chinese_button_0 = (Button) findViewById(R.id.chinese_button_0);
        chinese_button_1 = (Button) findViewById(R.id.chinese_button_1);
        chinese_button_2 = (Button) findViewById(R.id.chinese_button_2);
        chinese_button_3 = (Button) findViewById(R.id.chinese_button_3);
        chinese_button_4 = (Button) findViewById(R.id.chinese_button_4);

        chinese_button_0.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });

        chinese_button_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });

        chinese_button_2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });

        chinese_button_3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });

        chinese_button_4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });
    }
}
