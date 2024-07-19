package com.example.center24language.ui.home;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import com.example.center24language.ChineseClass;
import com.example.center24language.CourseClass;
import com.example.center24language.DocumentClass;
import com.example.center24language.EnglishClass;
import com.example.center24language.KoreanClass;
import com.example.center24language.R;
import com.example.center24language.TeacherClass;
import com.example.center24language.databinding.FragmentHomeBinding;
import com.example.center24language.ui.dashboard.DashboardFragment;
import com.example.center24language.ui.logout.ResultFragment;

public class HomeFragment extends Fragment {

    private FragmentHomeBinding binding;

    @SuppressLint("SetTextI18n")
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        binding = FragmentHomeBinding.inflate(inflater, container, false);
        View root = binding.getRoot();

        TextView textViewUsername = binding.text;

        SharedPreferences sharedPreferences = requireActivity().getSharedPreferences("credentials", Context.MODE_PRIVATE);
        String username = sharedPreferences.getString("name", "");

        textViewUsername.setText(username);

        TextView textHello = binding.textHello;
        textHello.setText("Xin chào, ");

        ImageButton button_english = root.findViewById(R.id.button_english);
        button_english.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(), EnglishClass.class);
                startActivity(intent);
            }
        });

        ImageButton button_korean = root.findViewById(R.id.button_korean);
        button_korean.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(), KoreanClass.class);
                startActivity(intent);
            }
        });

        ImageButton button_chinese = root.findViewById(R.id.button_chinese);
        button_chinese.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(), ChineseClass.class);
                startActivity(intent);
            }
        });

        ImageButton button_user = root.findViewById(R.id.button_user);
        button_user.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Fragment fragment = new DashboardFragment();
                FragmentManager fragmentManager = requireActivity().getSupportFragmentManager();
                FragmentTransaction transaction = fragmentManager.beginTransaction();
                transaction.add(R.id.nav_host_fragment_activity_main, fragment);
                transaction.addToBackStack(null);
                transaction.commit();
            }
        });
        ImageButton button_teacher = root.findViewById(R.id.button_teacher);
        button_teacher.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(), TeacherClass.class);
                startActivity(intent);
            }
        });
        ImageButton button_course = root.findViewById(R.id.button_course);
        button_course.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(), CourseClass.class);
                startActivity(intent);
            }
        });
        ImageButton button_document = root.findViewById(R.id.button_document);
        button_document.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(), DocumentClass.class);
                startActivity(intent);
            }
        });
        return root;

    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }


}
