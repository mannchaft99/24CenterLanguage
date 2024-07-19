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
    import java.io.InputStreamReader;
    import java.net.HttpURLConnection;
    import java.net.URL;

    public class logIn extends AppCompatActivity {
        private static final String apiurl = "http://192.168.0.100/android_db_pool/login_maker_test.php";
        EditText user, pass;
        TextView tv;

        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.login_layout);

            checklogoutmsg(tv);

            Button linkbutton = findViewById(R.id.button_signup);
            linkbutton.setOnClickListener(view -> goLink("https://docs.google.com/forms/d/e/1FAIpQLSdjRMko9mnvy0V3aBi3kl8CTmkuVEnyXS6izqXmjoYtuUaxYw/viewform?usp=pp_url"));
        }

        public void login_process(View view) {
            user = findViewById(R.id.user);
            pass = findViewById(R.id.pass);
            tv = findViewById(R.id.tv);

            String username = user.getText().toString().trim();
            String password = pass.getText().toString().trim();

            if (username.isEmpty() || password.isEmpty()) {
                showToast("Tài khoản, mật khẩu không được trống");
                return;
            }

            String qry = "?user=" + username + "&pass=" + password;

            class DbProcess extends AsyncTask<String, Void, String> {
                @Override
                protected void onPostExecute(String data) {
                    if (data.equals("not found")) {
                        user.setText("");
                        pass.setText("");
                        //tv.setTextColor(Color.parseColor("#8B0000"));
                        //tv.setText(data);
                        String logMessage = getString(R.string.login_unsuccess_message);
                        showToast(logMessage);
                    } else {
                        try {
                            JSONObject jsonObject = new JSONObject(data);
                            SharedPreferences sp = getSharedPreferences("credentials", MODE_PRIVATE);
                            SharedPreferences.Editor editor = sp.edit();

                            String username = jsonObject.getString("username");
                            String email = jsonObject.getString("email");
                            String name = jsonObject.getString("name");
                            String title = jsonObject.getString("title");

                            editor.putString("uname", username);
                            editor.putString("name", name);
                            editor.putString("title", title);
                            editor.putString("mail", email);


                            editor.apply();

                            showToast(getString(R.string.login_success_message));
                            startActivity(new Intent(getApplicationContext(), MainActivity.class));
                        } catch (JSONException e) {
                            e.printStackTrace();
                            showToast("Error parsing JSON");
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

                        return br.readLine();

                    } catch (Exception ex) {
                        return ex.getMessage();
                    }
                }
            }

            DbProcess obj = new DbProcess();
            obj.execute(apiurl + qry);

        }

        public void checklogoutmsg(View view) {
            tv = (TextView) findViewById(R.id.tv);

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

        private void goLink(String s) {
            Uri uri = Uri.parse(s);
            startActivity(new Intent(Intent.ACTION_VIEW, uri));
        }
    }
