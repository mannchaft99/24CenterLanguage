package com.example.center24language;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.Toast;

import com.example.center24language.databinding.ActivityCourseBinding;
import com.google.android.material.bottomnavigation.BottomNavigationView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

public class CourseDashboard extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        ActivityCourseBinding binding = ActivityCourseBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        BottomNavigationView courseNavView = findViewById(R.id.course_nav_view);
        // Passing each menu ID as a set of Ids because each
        // menu should be considered as top level destinations.
        AppBarConfiguration appBarConfiguration = new AppBarConfiguration.Builder(
                R.id.course_profile, R.id.course_schedule, R.id.course_result)
                .build();
        NavController navController = Navigation.findNavController(this, R.id.course_host_main);
        NavigationUI.setupActionBarWithNavController(this, navController, appBarConfiguration);
        NavigationUI.setupWithNavController(courseNavView, navController);

        courseNavView.setOnNavigationItemSelectedListener(item -> {
            if (item.getItemId() == R.id.course_result) {
                SharedPreferences sharedPreferences = getSharedPreferences("credentials", Context.MODE_PRIVATE);
                String title = sharedPreferences.getString("title", "");
                if (title.equals("Học viên")) {
                    Toast.makeText(CourseDashboard.this, "Chỉ quản lý và giáo viên mới có quyền truy cập", Toast.LENGTH_SHORT).show();
                    return false;
                }
            }
            return NavigationUI.onNavDestinationSelected(item, navController);
        });
    }
}
