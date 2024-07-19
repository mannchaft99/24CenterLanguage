package com.example.center24language;

public class GiangVien {
    private String ten;
    private String gioiTinh;
    private String lopGiangDay;
    private String email;
    private String hinhAnh;

    public GiangVien(String ten, String gioiTinh, String lopGiangDay, String email, String hinhAnh) {
        this.ten = ten;
        this.gioiTinh = gioiTinh;
        this.lopGiangDay = lopGiangDay;
        this.email = email;
        this.hinhAnh = hinhAnh;
    }

    public String getTen() {
        return ten;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public String getLopGiangDay() {
        return lopGiangDay;
    }

    public String getEmail() {
        return email;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }
}
