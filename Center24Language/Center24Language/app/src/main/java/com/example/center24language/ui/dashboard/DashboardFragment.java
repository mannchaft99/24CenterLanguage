    package com.example.center24language.ui.dashboard;

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

    import com.example.center24language.databinding.FragmentDashboardBinding;

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

            TextView textViewUser = binding.user;
            TextView textViewName = binding.name;
            TextView textViewTitle = binding.title;
            TextView textViewMail = binding.mail;

            SharedPreferences sharedPreferences = requireActivity().getSharedPreferences("credentials", Context.MODE_PRIVATE);
            String Username = sharedPreferences.getString("uname", "");
            String Name = sharedPreferences.getString("name", "");
            String Title = sharedPreferences.getString("title", "");
            String Mail = sharedPreferences.getString("mail", "");

            textViewUser.setText(Username);
            textViewName.setText(Name);
            textViewTitle.setText(Title);
            textViewMail.setText(Mail);

            TextView textView1 = binding.textView1;
            textView1.setText("Username:");
            TextView textView2 = binding.textView2;
            textView2.setText("Họ và tên:");
            TextView textView3 = binding.textView3;
            textView3.setText("Chức vụ:");
            TextView textView4 = binding.textView4;
            textView4.setText("Email:");

            return root;
        }

        @Override
        public void onDestroyView() {
            super.onDestroyView();
            binding = null;
        }
    }