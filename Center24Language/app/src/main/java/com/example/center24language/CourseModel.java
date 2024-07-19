package com.example.center24language;

public class CourseModel {
    private String name;
    private String teacher;
    private String price;
    private int slot;
    private int time;

    public CourseModel(String name, String teacher, String price, int slot, int time) {
        this.name = name;
        this.teacher = teacher;
        this.price = price;
        this.slot = slot;
        this.time = time;
    }

    public String getName() {
        return name;
    }

    public String getTeacher() {
        return teacher;
    }

    public String getPrice() {
        return price;
    }

    public int getSlot() {
        return slot;
    }

    public int getTime() {
        return time;
    }
}
