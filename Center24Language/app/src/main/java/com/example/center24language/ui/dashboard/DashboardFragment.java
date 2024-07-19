package com.example.center24language.ui.dashboard;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import com.example.center24language.R;
import com.example.center24language.databinding.FragmentDashboardBinding;
import com.example.center24language.logIn;

public class DashboardFragment extends Fragment {

    private FragmentDashboardBinding binding;

    @SuppressLint("SetTextI18n")
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        DashboardViewModel dashboardViewModel =
                new ViewModelProvider(this).get(DashboardViewModel.class);

        binding = FragmentDashboardBinding.inflate(inflater, container, false);
        View root = binding.getRoot();

        final TextView textView = binding.textDashboard;
        dashboardViewModel.getText().observe(getViewLifecycleOwner(), textView::setText);

        TextView textViewID = binding.id;
        TextView textViewUser = binding.user;
        TextView textViewName = binding.name;
        TextView textViewTitle = binding.title;
        TextView textViewMail = binding.mail;

        SharedPreferences sharedPreferences = requireActivity().getSharedPreferences("credentials", Context.MODE_PRIVATE);
        String ID = sharedPreferences.getString("id", "");
        String Username = sharedPreferences.getString("uname", "");
        String Name = sharedPreferences.getString("name", "");
        String Title = sharedPreferences.getString("title", "");
        String Mail = sharedPreferences.getString("mail", "");

        textViewID.setText(ID);
        textViewUser.setText(Username);
        textViewName.setText(Name);
        textViewTitle.setText(Title);
        textViewMail.setText(Mail);

        TextView textView0 = binding.textView0;
        textView0.setText("ID:");
        TextView textView1 = binding.textView1;
        textView1.setText("Username:");
        TextView textView2 = binding.textView2;
        textView2.setText("Họ và tên:");
        TextView textView3 = binding.textView3;
        textView3.setText("Chức vụ:");
        TextView textView4 = binding.textView4;
        textView4.setText("Email:");

        Button buttonLogout = binding.button;
        buttonLogout.setOnClickListener(v -> logout_process());

        return root;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }

    private void showToast(String message) {
        Toast.makeText(getActivity(), message, Toast.LENGTH_SHORT).show();
    }

    public void logout_process() {
        SharedPreferences sharedPreferences = requireActivity().getSharedPreferences("credentials", Context.MODE_PRIVATE);
        if (sharedPreferences.contains("uname")) {
            @SuppressLint("CommitPrefEdits") SharedPreferences.Editor editor = sharedPreferences.edit();
            editor.remove("uname");

            String logMessage = getString(R.string.logout_success_message);
            showToast(logMessage);

            Intent intent = new Intent(getActivity(), logIn.class);
            startActivity(intent);
        }
    }
}