package com.example.center24language;

public class SharedData {
    private static SharedData instance;
    private String WhatClass;

    private SharedData() {
        WhatClass = "";
    }

    public static synchronized SharedData getInstance() {
        if (instance == null) {
            instance = new SharedData();
        }
        return instance;
    }

    public String getWhatClass() {
        return WhatClass;
    }

    public void setWhatClass(String isClass) {
        this.WhatClass = isClass;
    }
}