package com.example.center24language;

import android.os.AsyncTask;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class CourseClass extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.course_info_layout);

        Objects.requireNonNull(getSupportActionBar()).setDisplayHomeAsUpEnabled(true);

        fetchDataFromAPI();
    }

    private void fetchDataFromAPI() {
        new FetchData().execute();
    }

    class FetchData extends AsyncTask<Void, Void, List<CourseModel>> {
        @Override
        protected List<CourseModel> doInBackground(Void... voids) {
            List<CourseModel> courseModels = new ArrayList<>();
            try {
                String link = "http://192.168.1.12/android_db_pool/course.php";
                URL url = new URL(link);
                HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                connection.setRequestMethod("GET");
                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                StringBuilder stringBuilder = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    stringBuilder.append(line);
                }
                JSONArray jsonArray = new JSONArray(stringBuilder.toString());
                for (int i = 0; i < jsonArray.length(); i++) {
                    JSONObject jsonObject = jsonArray.getJSONObject(i);
                    String name = jsonObject.getString("name");
                    String teacher = jsonObject.getString("teacher");
                    String price = jsonObject.getString("price");
                    int slot = jsonObject.getInt("slot");
                    int time = jsonObject.getInt("time");
                    CourseModel courseModel = new CourseModel(name, teacher, price, slot, time);
                    courseModels.add(courseModel);
                }
                reader.close();
                connection.disconnect();
            } catch (IOException | JSONException e) {
                e.printStackTrace();
            }
            return courseModels;
        }

        @Override
        protected void onPostExecute(List<CourseModel> courseModels) {
            super.onPostExecute(courseModels);
            if (courseModels != null && !courseModels.isEmpty()) {
                int[] textViewNames = {R.id.course_name1, R.id.course_name2, R.id.course_name3, R.id.course_name4};
                int[] teacherViewTeachers = {R.id.teacher1, R.id.teacher2, R.id.teacher3, R.id.teacher4};
                int[] classViewPrices = {R.id.price1, R.id.price2, R.id.price3, R.id.price4};
                int[] slotViewSlots = {R.id.slot1, R.id.slot2, R.id.slot3, R.id.slot4};
                int[] course_timeViewcourse_times = {R.id.course_time1, R.id.course_time2, R.id.course_time3, R.id.course_time4};

                for (int i = 0; i < Math.min(courseModels.size(), textViewNames.length); i++) {
                    CourseModel courseModel = courseModels.get(i);
                    TextView textViewName = findViewById(textViewNames[i]);
                    TextView teacherViewTeacher = findViewById(teacherViewTeachers[i]);
                    TextView classViewPrice = findViewById(classViewPrices[i]);
                    TextView slotViewSlot = findViewById(slotViewSlots[i]);
                    TextView course_timeViewcourse_time = findViewById(course_timeViewcourse_times[i]);

                    textViewName.setText(courseModel.getName());
                    teacherViewTeacher.setText(courseModel.getTeacher());
                    classViewPrice.setText(courseModel.getPrice() + " VND");
                    slotViewSlot.setText(String.valueOf(courseModel.getSlot()));
                    String time = String.valueOf(courseModel.getTime());
                    time = time + " tháng";
                    course_timeViewcourse_time.setText(time);
                }
            }

        }
    }

    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                this.finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
