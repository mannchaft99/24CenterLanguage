package com.example.center24language;

import android.os.AsyncTask;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.squareup.picasso.Picasso;

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

public class TeacherClass extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.teacher_info_layout);

        Objects.requireNonNull(getSupportActionBar()).setDisplayHomeAsUpEnabled(true);

        fetchDataFromAPI();
    }

    private void fetchDataFromAPI() {
        new FetchData().execute();
    }

    class FetchData extends AsyncTask<Void, Void, List<GiangVien>> {
        @Override
        protected List<GiangVien> doInBackground(Void... voids) {
            List<GiangVien> giangViens = new ArrayList<>();
            try {
                String link = "http://192.168.1.12/android_db_pool/teacher.php";
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
                    String gender = jsonObject.getString("gender");
                    String tClass = jsonObject.getString("class");
                    String mail = jsonObject.getString("mail");
                    String image = jsonObject.getString("image");
                    GiangVien giangvien = new GiangVien(name, gender, tClass, mail, image);
                    giangViens.add(giangvien);
                }
                reader.close();
                connection.disconnect();
            } catch (IOException | JSONException e) {
                e.printStackTrace();
            }
            return giangViens;
        }

        @Override
        protected void onPostExecute(List<GiangVien> giangViens) {
            super.onPostExecute(giangViens);
            if (giangViens != null && !giangViens.isEmpty()) {
                int[] textViewIds = {R.id.name1, R.id.name2, R.id.name3, R.id.name4};
                int[] genderViewIds = {R.id.gender1, R.id.gender2, R.id.gender3, R.id.gender4};
                int[] classViewIds = {R.id.class_teach1, R.id.class_teach2, R.id.class_teach3, R.id.class_teach4};
                int[] mailViewIds = {R.id.mail1, R.id.mail2, R.id.mail3, R.id.mail4};
                int[] imageViewIds = {R.id.imageTeacher1, R.id.imageTeacher2, R.id.imageTeacher3, R.id.imageTeacher4};

                for (int i = 0; i < Math.min(giangViens.size(), textViewIds.length); i++) {
                    GiangVien giangVien = giangViens.get(i);
                    TextView textViewName = findViewById(textViewIds[i]);
                    TextView textViewGender = findViewById(genderViewIds[i]);
                    TextView textViewClass = findViewById(classViewIds[i]);
                    TextView textViewMail = findViewById(mailViewIds[i]);
                    ImageView imageView = findViewById(imageViewIds[i]);

                    textViewName.setText(giangVien.getTen());
                    textViewGender.setText(giangVien.getGioiTinh());
                    textViewClass.setText(giangVien.getLopGiangDay());
                    textViewMail.setText(giangVien.getEmail());

                    Picasso.get().load(giangVien.getHinhAnh()).into(imageView);
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
