package com.example.center24language.ui.courseFragments;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.center24language.EnglishClass;
import com.example.center24language.R;
import com.example.center24language.ScheduleAdapter;
import com.example.center24language.databinding.CourseFragmentProfileBinding;
import com.example.center24language.databinding.CourseFragmentScheduleBinding;

import java.util.ArrayList;

public class CourseScheduleFragment extends Fragment {
    private CourseFragmentScheduleBinding binding;
    private RecyclerView recyclerView;
    private ScheduleAdapter adapter;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.course_fragment_schedule, container, false);
        binding = CourseFragmentScheduleBinding.bind(root);

        recyclerView = binding.scheduleRecyclerView;
        setRecyclerView();
        requireActivity().setTitle("Lịch học");

        setHasOptionsMenu(true);

        return root;
    }

    private void setRecyclerView() {
        DividerItemDecoration dividerItemDecoration = new DividerItemDecoration(requireContext(), DividerItemDecoration.VERTICAL);
        recyclerView.addItemDecoration(dividerItemDecoration);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        adapter = new ScheduleAdapter(requireContext(), new ArrayList<>());
        recyclerView.setAdapter(adapter);
    }

    @Override
    public void onCreateOptionsMenu(@NonNull Menu menu, @NonNull MenuInflater inflater) {
        inflater.inflate(R.menu.fragment_menu, menu);
        super.onCreateOptionsMenu(menu, inflater);
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        if (item.getItemId() == R.id.action_back) {
            Intent intent = new Intent(requireContext(), EnglishClass.class);
            startActivity(intent);
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }
}
