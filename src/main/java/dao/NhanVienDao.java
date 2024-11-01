package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.NhanVien;

public class NhanVienDao {
    private Connection connection;

    public NhanVienDao(Connection connection) {
        this.connection = connection;
    }

    public List<NhanVien> getAllNhanVien() {
        List<NhanVien> listNhanVien = new ArrayList<>();
        String sqlSelect = "SELECT nv.MaNV, nv.HoTenNV, nv.NgaySinh, nv.GioiTinh, nv.DiaChi, nv.SoDT, nv.Email, pb.TenPB, cv.TenCV " +
                           "FROM tblnhanvien nv " +
                           "JOIN tblchucvu cv ON nv.MaCV = cv.MaCV " +
                           "JOIN tblphongban pb ON nv.MaPB = pb.MaPB";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sqlSelect);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                int maNV = resultSet.getInt("MaNV");
                String hoTen = resultSet.getString("HoTenNV");
                String ngaySinh = resultSet.getString("NgaySinh");
                String gioiTinh = resultSet.getString("GioiTinh");
                String diaChi = resultSet.getString("DiaChi");
                String soDT = resultSet.getString("SoDT");
                String email = resultSet.getString("Email");
                String phongBan = resultSet.getString("TenPB");
                String chucVu = resultSet.getString("TenCV");

                // Tạo đối tượng NhanVien
                NhanVien nhanVien = new NhanVien(maNV, hoTen, ngaySinh, gioiTinh, diaChi, soDT, email, phongBan, chucVu);
                // Thêm vào danh sách
                listNhanVien.add(nhanVien);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listNhanVien;
    }
    public void deleteNhanVien(int maNV) {
        String sqlDelete = "DELETE FROM tblnhanvien WHERE MaNV = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sqlDelete)) {
            preparedStatement.setInt(1, maNV);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
