package model;

public class NhanVien {
    private int maNV;
    private String hoTen;
    private String ngaySinh;
    private String gioiTinh;
    private String diaChi;
    private String soDT;
    private String email;
    private String phongBan;
    private String chucVu;

    public NhanVien(int maNV, String hoTen, String ngaySinh, String gioiTinh,
                    String diaChi, String soDT, String email, String phongBan, String chucVu) {
        this.maNV = maNV;
        this.hoTen = hoTen;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.soDT = soDT;
        this.email = email;
        this.phongBan = phongBan;
        this.chucVu = chucVu;
    }

    // Getters
    public int getMaNV() { return maNV; }
    public String getHoTen() { return hoTen; }
    public String getNgaySinh() { return ngaySinh; }
    public String getGioiTinh() { return gioiTinh; }
    public String getDiaChi() { return diaChi; }
    public String getSoDT() { return soDT; }
    public String getEmail() { return email; }
    public String getPhongBan() { return phongBan; }
    public String getChucVu() { return chucVu; }
}
