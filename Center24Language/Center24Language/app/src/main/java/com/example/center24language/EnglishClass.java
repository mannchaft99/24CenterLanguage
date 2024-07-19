package com.example.center24language;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

import java.util.Objects;

public class EnglishClass extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.english_class);

        Objects.requireNonNull(getSupportActionBar()).setDisplayHomeAsUpEnabled(true);

        addTOEICListenerOnButton();
        addIELTSListenerOnButton();
    }

    public void addIELTSListenerOnButton() {
        Button ielts_button_0, ielts_button_1, ielts_button_2, ielts_button_3;
        ielts_button_0 = (Button) findViewById(R.id.ielts_button_0);
        ielts_button_1 = (Button) findViewById(R.id.ielts_button_1);
        ielts_button_2 = (Button) findViewById(R.id.ielts_button_2);
        ielts_button_3 = (Button) findViewById(R.id.ielts_button_3);

        ielts_button_0.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });

        ielts_button_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });

        ielts_button_2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });

        ielts_button_3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });
    }

    public void addTOEICListenerOnButton() {
        Button toeic_button_0, toeic_button_1, toeic_button_2, toeic_button_3;
        toeic_button_0 = (Button) findViewById(R.id.toeic_button_0);
        toeic_button_1 = (Button) findViewById(R.id.toeic_button_1);
        toeic_button_2 = (Button) findViewById(R.id.toeic_button_2);
        toeic_button_3 = (Button) findViewById(R.id.toeic_button_3);

        toeic_button_0.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });

        toeic_button_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });

        toeic_button_2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });

        toeic_button_3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
            }
        });

    }


}
