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
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;

import com.example.center24language.ChineseClass;
import com.example.center24language.EnglishClass;
import com.example.center24language.KoreanClass;
import com.example.center24language.R;
import com.example.center24language.databinding.FragmentHomeBinding;

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

        Button button_english = root.findViewById(R.id.button_english);
        button_english.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(), EnglishClass.class);
                startActivity(intent);
            }
        });

        Button button_korean = root.findViewById(R.id.button_korean);
        button_korean.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(), KoreanClass.class);
                startActivity(intent);
            }
        });

        Button button_chinese = root.findViewById(R.id.button_chinese);
        button_chinese.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(), ChineseClass.class);
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
