package com.deepshare.hotfixdemo;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private TextView tv_hello;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        tv_hello = (TextView) findViewById(R.id.tv_hello);

        setContent();
    }

    public void setContent(){
        tv_hello.setText("我累个擦，补丁补丁啦啦啦~");

    }

}
