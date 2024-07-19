package com.example.center24language;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class logIn extends AppCompatActivity {
    private static final String apiurl = "http://192.168.1.12/android_db_pool/login_maker.php";
    EditText user, pass;
    TextView tv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login_layout);

        // Khởi tạo các thành phần
        user = findViewById(R.id.user);
        pass = findViewById(R.id.pass);
        tv = findViewById(R.id.tv);

        Button linkbutton = findViewById(R.id.button_signup);
        linkbutton.setOnClickListener(view -> goLink());
    }

    public void login_process(View view) {
        String username = user.getText().toString().trim();
        String password = pass.getText().toString().trim();

        if (username.isEmpty() || password.isEmpty()) {
            showToast("Tài khoản, mật khẩu không được trống");
            return;
        }

        String qry = "?user=" + username + "&pass=" + password;

        // Thực thi yêu cầu đăng nhập
        new DbProcess().execute(apiurl + qry);
    }

    private class DbProcess extends AsyncTask<String, Void, String> {
        @Override
        protected void onPostExecute(String data) {
            if (data == null) {
                showToast("Không nhận được dữ liệu từ máy chủ");
                return;
            }

            if (data.equals("not found")) {
                user.setText("");
                pass.setText("");
                showToast(getString(R.string.login_unsuccess_message));
            } else {
                try {
                    JSONObject jsonObject = new JSONObject(data);
                    saveCredentials(jsonObject);
                    showToast(getString(R.string.login_success_message));
                    startActivity(new Intent(getApplicationContext(), MainActivity.class));
                } catch (JSONException e) {
                    e.printStackTrace();
                    showToast("Lỗi khi phân tích JSON");
                }
            }
        }

        @Override
        protected String doInBackground(String... params) {
            String furl = params[0];

            try {
                URL url = new URL(furl);
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                StringBuilder response = new StringBuilder();
                String line;
                while ((line = br.readLine()) != null) {
                    response.append(line);
                }
                return response.toString();
            } catch (IOException ex) {
                ex.printStackTrace();
                return null;
            }
        }
    }

    private void saveCredentials(JSONObject jsonObject) {
        SharedPreferences sp = getSharedPreferences("credentials", MODE_PRIVATE);
        SharedPreferences.Editor editor = sp.edit();

        try {
            String id = jsonObject.getString("ID");
            String username = jsonObject.getString("username");
            String email = jsonObject.getString("email");
            String name = jsonObject.getString("name");
            String title = jsonObject.getString("title");

            editor.putString("id", id)
                    .putString("uname", username)
                    .putString("name", name)
                    .putString("title", title)
                    .putString("mail", email)
                    .apply();
        } catch (JSONException e) {
            e.printStackTrace();
            showToast("Lỗi khi lưu thông tin đăng nhập");
        }
    }

    public void checklogoutmsg(View view) {
        SharedPreferences sp = getSharedPreferences("credentials", MODE_PRIVATE);
        if (sp.contains("msg")) {
            tv.setText(sp.getString("msg", ""));
            SharedPreferences.Editor ed = sp.edit();
            ed.remove("msg");
            ed.apply();
        }
    }

    private void showToast(String message) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show();
    }

    private void goLink() {
        Uri uri = Uri.parse("https://docs.google.com/forms/d/e/1FAIpQLSdjRMko9mnvy0V3aBi3kl8CTmkuVEnyXS6izqXmjoYtuUaxYw/viewform?usp=pp_url");
        startActivity(new Intent(Intent.ACTION_VIEW, uri));
    }
}
