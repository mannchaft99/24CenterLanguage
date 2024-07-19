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

public class ResultAdapter extends RecyclerView.Adapter<ResultAdapter.ViewHolder> {
    private final Context context;
    private final List<ResultModel> resultList;

    public ResultAdapter(Context context, List<ResultModel> resultList) {
        this.context = context;
        this.resultList = resultList;
        fetchDataFromAPI();
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.result_layout, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        ResultModel model = resultList.get(position);
        holder.id_student.setText(model.getId());
        holder.student_name.setText(model.getName());
        holder.ktra_1.setText(model.getKtra_1());
        holder.ktra_2.setText(model.getKtra_2());
        holder.ktra_3.setText(model.getKtra_3());
        holder.test_1.setText(model.getTest_1());
        holder.test_2.setText(model.getTest_2());
    }

    @Override
    public int getItemCount() {
        return resultList.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView id_student, student_name, ktra_1, ktra_2, ktra_3, test_1, test_2;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            id_student = itemView.findViewById(R.id.id_student);
            student_name = itemView.findViewById(R.id.student_name);
            ktra_1 = itemView.findViewById(R.id.ktra_1);
            ktra_2 = itemView.findViewById(R.id.ktra_2);
            ktra_3 = itemView.findViewById(R.id.ktra_3);
            test_1 = itemView.findViewById(R.id.test_1);
            test_2 = itemView.findViewById(R.id.test_2);
        }
    }

    private void fetchDataFromAPI() {
        new FetchData().execute();
    }

    private class FetchData extends AsyncTask<Void, Void, List<ResultModel>> {
        @Override
        protected List<ResultModel> doInBackground(Void... voids) {
            List<ResultModel> resultModels = new ArrayList<>();

            try {
                URL url = new URL("http://192.168.0.100/android_db_pool/get_result.php");
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
                    String id = jsonObject.getString("id");
                    String student_name = jsonObject.getString("student_name");
                    String ktra_1 = jsonObject.getString("ktra_1");
                    String ktra_2 = jsonObject.getString("ktra_2");
                    String ktra_3 = jsonObject.getString("ktra_3");
                    String test_1 = jsonObject.getString("test_1");
                    String test_2 = jsonObject.getString("test_2");

                    ResultModel result = new ResultModel(id, student_name, ktra_1, ktra_2, ktra_3, test_1, test_2);
                    resultModels.add(result);
                }

                reader.close();
                connection.disconnect();
            } catch (IOException | JSONException e) {
                e.printStackTrace();
            }

            return resultModels;
        }

        @Override
        protected void onPostExecute(List<ResultModel> resultModels) {
            super.onPostExecute(resultModels);
            resultList.clear();
            resultList.addAll(resultModels);
            notifyDataSetChanged();
        }
    }
}
