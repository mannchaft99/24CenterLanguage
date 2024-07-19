package com.example.center24language.ui.logout;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.example.center24language.databinding.FragmentResultBinding;
import com.example.center24language.ui.dashboard.DashboardViewModel;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class ResultFragment extends Fragment {

    private FragmentResultBinding binding;

    @SuppressLint("SetTextI18n")
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        ResultViewModel resultViewModel =
                new ViewModelProvider(this).get(ResultViewModel.class);

        binding = FragmentResultBinding.inflate(inflater, container, false);
        View root = binding.getRoot();

        final TextView textView = binding.textResult;
        resultViewModel.getText().observe(getViewLifecycleOwner(), textView::setText);

        TextView textViewKtra1 = binding.ktra1;
        TextView textViewKtra2 = binding.ktra2;
        TextView textViewKtra3 = binding.ktra3;
        TextView textViewTest1 = binding.test1;
        TextView textViewTest2 = binding.test2;

        SharedPreferences sharedPreferences = requireActivity().getSharedPreferences("credentials", Context.MODE_PRIVATE);
        String userID = sharedPreferences.getString("id", "");

        new Thread(() -> {
            try {
                String urlString = "http://192.168.1.12/android_db_pool/get_user.php?userID=" + userID;
                URL url = new URL(urlString);

                HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                connection.setRequestMethod("GET");

                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                StringBuilder response = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }
                reader.close();
                connection.disconnect();

                String jsonResult = response.toString();
                if (!jsonResult.equals("0 results")) {
                    JSONObject jsonObject = new JSONObject(jsonResult);
                    requireActivity().runOnUiThread(() -> {
                        try {
                            textViewKtra1.setText(jsonObject.getString("ktra1"));
                            textViewKtra1.setVisibility(View.VISIBLE);
                            textViewKtra2.setText(jsonObject.getString("ktra2"));
                            textViewKtra2.setVisibility(View.VISIBLE);
                            textViewKtra3.setText(jsonObject.getString("ktra3"));
                            textViewKtra3.setVisibility(View.VISIBLE);
                            textViewTest1.setText(jsonObject.getString("test1"));
                            textViewTest1.setVisibility(View.VISIBLE);
                            textViewTest2.setText(jsonObject.getString("test2"));
                            textViewTest2.setVisibility(View.VISIBLE);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    });
                } else {
                    requireActivity().runOnUiThread(() -> textView.setText("No results found"));
                }
            } catch (IOException | JSONException e) {
                e.printStackTrace();
            }
        }).start();

        TextView textView1 = binding.textView1;
        textView1.setText("Kiểm tra 1:");
        TextView textView2 = binding.textView2;
        textView2.setText("Kiểm tra 2:");
        TextView textView3 = binding.textView3;
        textView3.setText("Kiểm tra 3:");
        TextView textView4 = binding.textView4;
        textView4.setText("Test 1:");
        TextView textView5 = binding.textView5;
        textView5.setText("Test 2");

        return root;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }
}
