package com.example.center24language;

import java.text.DateFormat;

public class StudentModel {
    String stt;
    String id;
    String name;
    String sex;
    String birthDay;
    String className;
    String details;

    public StudentModel(String stt, String id, String name, String sex, String birthDay, String className, String details) {
        this.stt = stt;
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.birthDay = birthDay;
        this.className = className;
        this.details = details;
    }

    public String getStt() {
        return stt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

}
