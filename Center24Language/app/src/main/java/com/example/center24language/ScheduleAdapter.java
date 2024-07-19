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

public class ScheduleAdapter extends RecyclerView.Adapter<ScheduleAdapter.ViewHolder> {
    private final Context context;
    private final List<ScheduleModel> scheduleList;

    public ScheduleAdapter(Context context, List<ScheduleModel> scheduleList) {
        this.context = context;
        this.scheduleList = scheduleList;
        fetchDataFromAPI();
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(context).inflate(R.layout.schedule_layout, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        ScheduleModel model = scheduleList.get(position);
        holder.mon.setText(model.getMonday());
        holder.tue.setText(model.getTuesday());
        holder.wed.setText(model.getWednesday());
        holder.thu.setText(model.getThursday());
        holder.fri.setText(model.getFriday());
        holder.sat.setText(model.getSaturday());
        holder.sun.setText(model.getSunday());
    }


    @Override
    public int getItemCount() {
        return scheduleList.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView mon, tue, wed, thu, fri, sat, sun;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            mon = itemView.findViewById(R.id.monday);
            tue = itemView.findViewById(R.id.tuesday);
            wed = itemView.findViewById(R.id.wednesday);
            thu = itemView.findViewById(R.id.thursday);
            fri = itemView.findViewById(R.id.friday);
            sat = itemView.findViewById(R.id.saturday);
            sun = itemView.findViewById(R.id.sunday);
        }
    }

    private void fetchDataFromAPI() {
        new FetchData().execute();
    }

    class FetchData extends AsyncTask<Void, Void, List<ScheduleModel>> {
        @Override
        protected List<ScheduleModel> doInBackground(Void... voids) {
            List<ScheduleModel> scheduleModels = new ArrayList<>();

            try {
                String anyClass = SharedData.getInstance().getWhatClass();
                String link = "http://192.168.1.12/android_db_pool/get_schedule/get_schedule_" + anyClass  + ".php";
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
                    String monday = jsonObject.getString("monday");
                    String tuesday = jsonObject.getString("tuesday");
                    String wednesday = jsonObject.getString("wednesday");
                    String thursday = jsonObject.getString("thursday");
                    String friday = jsonObject.getString("friday");
                    String saturday = jsonObject.getString("saturday");
                    String sunday = jsonObject.getString("sunday");

                    ScheduleModel schedule = new ScheduleModel(monday, tuesday, wednesday, thursday, friday, saturday, sunday);
                    scheduleModels.add(schedule);
                }

                reader.close();
                connection.disconnect();
            } catch (IOException | JSONException e) {
                e.printStackTrace();
            }

            return scheduleModels;
        }

        @Override
        protected void onPostExecute(List<ScheduleModel> scheduleModels) {
            super.onPostExecute(scheduleModels);
            scheduleList.clear();
            scheduleList.addAll(scheduleModels);
            notifyDataSetChanged();
        }

    }
}
