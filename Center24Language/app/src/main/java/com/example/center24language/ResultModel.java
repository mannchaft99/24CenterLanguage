package com.example.center24language;

public class ResultModel {
    String id;
    String student_name;
    String ktra_1;
    String ktra_2;
    String ktra_3;
    String test_1;
    String test_2;

    public ResultModel(String id, String student_name, String ktra_1, String ktra_2, String ktra_3, String test_1, String test_2) {
        this.id = id;
        this.student_name = student_name;
        this.ktra_1 = ktra_1;
        this.ktra_2 = ktra_2;
        this.ktra_3 = ktra_3;
        this.test_1 = test_1;
        this.test_2 = test_2;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return student_name;
    }

    public void setName(String name) {
        this.student_name = student_name;
    }

    public String getKtra_1() {
        return ktra_1;
    }

    public void setKtra_1(String ktra_1) {
        this.ktra_1 = ktra_1;
    }

    public String getKtra_2() {
        return ktra_2;
    }

    public void setKtra_2(String ktra_2) {
        this.ktra_2 = ktra_2;
    }

    public String getKtra_3() {
        return ktra_3;
    }

    public void setKtra_3(String ktra_3) {
        this.ktra_3 = ktra_3;
    }

    public String getTest_1() {
        return test_1;
    }

    public void setTest_1(String test_1) {
        this.test_1 = test_1;
    }

    public String getTest_2() {
        return test_2;
    }

    public void setTest_2(String test_2) {
        this.test_2 = test_2;
    }
}
