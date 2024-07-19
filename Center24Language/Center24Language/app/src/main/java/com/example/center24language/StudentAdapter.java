package com.example.center24language;

import android.content.Context;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

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

public class StudentAdapter extends RecyclerView.Adapter<StudentAdapter.ViewHolder> {
    private final Context context;
    private final List<StudentModel> studentList;

    public StudentAdapter(Context context, List<StudentModel> studentList) {
        this.context = context;
        this.studentList = studentList;
        fetchDataFromAPI();
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.item_layout, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        StudentModel model = studentList.get(position);
        holder.id_student.setText(model.getId());
        holder.name_student.setText(model.getName());
        holder.sex_student.setText(model.getSex());
        holder.birth_day.setText(model.getBirthDay());
        holder.class_name.setText(model.getClassName());
        holder.details_student.setText(model.getDetails());
    }

    @Override
    public int getItemCount() {
        return studentList.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView id_student, name_student, sex_student, birth_day, class_name, details_student;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            id_student = itemView.findViewById(R.id.id_student);
            name_student = itemView.findViewById(R.id.name_student);
            sex_student = itemView.findViewById(R.id.sex_student);
            birth_day = itemView.findViewById(R.id.birth_day);
            class_name = itemView.findViewById(R.id.class_name);
            details_student = itemView.findViewById(R.id.details_student);
        }
    }

    private void fetchDataFromAPI() {
        new FetchData().execute();
    }

    private class FetchData extends AsyncTask<Void, Void, List<StudentModel>> {
        @Override
        protected List<StudentModel> doInBackground(Void... voids) {
            List<StudentModel> studentModels = new ArrayList<>();

            try {
                URL url = new URL("http://192.168.0.100/android_db_pool/get_data.php");
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
                    String id = String.valueOf(i+1);
                    String name = jsonObject.getString("name");
                    String sex = jsonObject.getString("sex");
                    String birthDay = jsonObject.getString("birthday");
                    String className = jsonObject.getString("class");
                    String details = jsonObject.getString("detail");

                    StudentModel student = new StudentModel(id, name, sex, birthDay, className, details);
                    studentModels.add(student);
                }

                reader.close();
                connection.disconnect();
            } catch (IOException | JSONException e) {
                e.printStackTrace();
            }

            return studentModels;
        }

        @Override
        protected void onPostExecute(List<StudentModel> studentModels) {
            super.onPostExecute(studentModels);
            studentList.clear();
            studentList.addAll(studentModels);
            notifyDataSetChanged();
        }
    }
}
