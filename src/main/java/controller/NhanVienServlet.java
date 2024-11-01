package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.NhanVien;
import util.KetNoi;
import jakarta.servlet.RequestDispatcher;
import java.util.List;
import dao.NhanVienDao;

@WebServlet("/nhanvien")
public class NhanVienServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        try {
            connection = KetNoi.getConnection();
            NhanVienDao nhanVienDao = new NhanVienDao(connection);
            
            String deleteId = request.getParameter("deleteId");
            if (deleteId != null) {
                nhanVienDao.deleteNhanVien(Integer.parseInt(deleteId));
            }
            List<NhanVien> listNhanVien = nhanVienDao.getAllNhanVien();
            request.setAttribute("listNhanVien", listNhanVien);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("DanhSachNV.jsp");
        dispatcher.forward(request, response);
    }
}
