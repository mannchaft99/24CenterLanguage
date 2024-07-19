package com.example.center24language;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

import androidx.appcompat.app.AppCompatActivity;

import java.util.Objects;

public class EnglishClass extends AppCompatActivity {
    private SharedData sharedData;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.english_class);

        sharedData = SharedData.getInstance();

        Objects.requireNonNull(getSupportActionBar()).setDisplayHomeAsUpEnabled(true);

        addTOEICListenerOnButton();
        addIELTSListenerOnButton();
    }

    public void addIELTSListenerOnButton() {
        ImageButton ielts_button_0, ielts_button_1, ielts_button_2, ielts_button_3;
        ielts_button_0 = (ImageButton) findViewById(R.id.ielts_button_0);
        ielts_button_1 = (ImageButton) findViewById(R.id.ielts_button_1);
        ielts_button_2 = (ImageButton) findViewById(R.id.ielts_button_2);
        ielts_button_3 = (ImageButton) findViewById(R.id.ielts_button_3);

        ielts_button_0.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("IELTS_4.5");
            }
        });

        ielts_button_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("IELTS_5.5");
            }
        });

        ielts_button_2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("IELTS_6.5");
            }
        });

        ielts_button_3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("IELTS_7.5");
            }
        });
    }

    public void addTOEICListenerOnButton() {
        ImageButton toeic_button_0, toeic_button_1, toeic_button_2, toeic_button_3;
        toeic_button_0 = (ImageButton) findViewById(R.id.toeic_button_0);
        toeic_button_1 = (ImageButton) findViewById(R.id.toeic_button_1);
        toeic_button_2 = (ImageButton) findViewById(R.id.toeic_button_2);
        toeic_button_3 = (ImageButton) findViewById(R.id.toeic_button_3);

        toeic_button_0.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("TOEIC_450");
            }
        });

        toeic_button_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("TOEIC_550");
            }
        });

        toeic_button_2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("TOEIC_650");
            }
        });

        toeic_button_3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), CourseDashboard.class));
                sharedData.setWhatClass("TOEIC_750");
            }
        });

    }


}
