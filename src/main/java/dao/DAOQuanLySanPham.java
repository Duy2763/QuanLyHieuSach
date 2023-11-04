package dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import connection.ConnectDB;
import models.LoaiSanPham;
import models.NhaCungCap;
import models.SanPhamCha;
import models.SanPhamCon;
import utils.TrangThaiSPEnum;

public class DAOQuanLySanPham implements Serializable {

	private void close(PreparedStatement pst) {
		if (pst != null) {
			try {
				pst.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public ArrayList<SanPhamCon> loadComboBoxByLoaiSanPham(String id) {
		ArrayList<SanPhamCon> dsSanPham = new ArrayList<SanPhamCon>();
		ConnectDB.getinstance();
		Connection con = ConnectDB.getConnection();
		PreparedStatement statement = null;
		try {
			String sql = "SELECT sp.hinhAnhSanPham, sp.idSanPham, sp.tenSanPham, lsp.tenLoaiSanPham, ncc.tenNhaCungCap, sp.kichThuoc, sp.mauSac, sp.trangThai, sp.thue, sp.soLuong, sp.giaBan "
					+ "FROM SanPham sp " + "JOIN LoaiSanPham lsp ON sp.loaiSanPham = lsp.idLoaiSanPham "
					+ "JOIN NhaCungCap ncc ON sp.nhaCungCap = ncc.idNhaCungCap " + "WHERE lsp.tenLoaiSanPham = ?";
			statement = con.prepareStatement(sql);
			statement.setString(1, id);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				SanPhamCon lsp = new SanPhamCon();
				lsp.setHinhAnhSanPham(rs.getString(1));
				lsp.setIdSanPham(rs.getString(2));
				lsp.setTenSanPham(rs.getString(3));
				lsp.setIdLoaiSanPham(new LoaiSanPham(rs.getString(4)));
				lsp.setIdNhaCungCap(new NhaCungCap(rs.getString(5)));
				lsp.setKichThuoc(rs.getDouble(6));
				lsp.setMauSac(rs.getString(7));
				int trangThai = rs.getInt(8);
				TrangThaiSPEnum trangThaiEnum = TrangThaiSPEnum.getById(trangThai);
				lsp.setTrangThai(trangThaiEnum);
				lsp.thue();
				lsp.setGiaNhap(rs.getDouble(10));
				lsp.setSoLuong(rs.getInt(11));
				lsp.giaBan();
				dsSanPham.add(lsp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dsSanPham;
	}

	public ArrayList<SanPhamCon> loadComboBoxByNhaCungCap(String id) {
		ArrayList<SanPhamCon> dsSanPham = new ArrayList<SanPhamCon>();
		ConnectDB.getinstance();
		Connection con = ConnectDB.getConnection();
		PreparedStatement statement = null;
		try {
			String sql = "SELECT sp.hinhAnhSanPham, sp.idSanPham, sp.tenSanPham, lsp.tenLoaiSanPham, ncc.tenNhaCungCap, sp.kichThuoc, sp.mauSac, sp.trangThai, sp.thue, sp.soLuong, sp.giaBan "
					+ "FROM SanPham sp " + "JOIN LoaiSanPham lsp ON sp.loaiSanPham = lsp.idLoaiSanPham "
					+ "JOIN NhaCungCap ncc ON sp.nhaCungCap = ncc.idNhaCungCap " + "WHERE ncc.tenNhaCungCap= ?";
			statement = con.prepareStatement(sql);
			statement.setString(1, id);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				SanPhamCon lsp = new SanPhamCon();
				lsp.setHinhAnhSanPham(rs.getString(1));
				lsp.setIdSanPham(rs.getString(2));
				lsp.setTenSanPham(rs.getString(3));
				lsp.setIdLoaiSanPham(new LoaiSanPham(rs.getString(4)));
				lsp.setIdNhaCungCap(new NhaCungCap(rs.getString(5)));
				lsp.setKichThuoc(rs.getDouble(6));
				lsp.setMauSac(rs.getString(7));
				int trangThai = rs.getInt(8);
				TrangThaiSPEnum trangThaiEnum = TrangThaiSPEnum.getById(trangThai);
				lsp.setTrangThai(trangThaiEnum);
				lsp.thue();
				lsp.setGiaNhap(rs.getDouble(10));
				lsp.setSoLuong(rs.getInt(11));
				lsp.giaBan();
				dsSanPham.add(lsp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dsSanPham;
	}

	public ArrayList<SanPhamCon> getAllSanPhamLoadData() {
		ArrayList<SanPhamCon> dsSanPham = new ArrayList<>();

		try {
			ConnectDB.getinstance();
			Connection con = ConnectDB.getConnection();
			String sql = "SELECT sp.hinhAnhSanPham, sp.idSanPham, sp.tenSanPham, lsp.tenLoaiSanPham, ncc.tenNhaCungCap, sp.kichThuoc, sp.mauSac, sp.trangThai, sp.thue,sp.giaNhap, sp.soLuong, sp.giaBan FROM SanPham sp JOIN LoaiSanPham lsp ON sp.loaiSanPham = lsp.idLoaiSanPham JOIN NhaCungCap ncc ON sp.nhaCungCap = ncc.idNhaCungCap";
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				SanPhamCon lsp = new SanPhamCon();
				lsp.setHinhAnhSanPham(rs.getString(1));
				lsp.setIdSanPham(rs.getString(2));
				lsp.setTenSanPham(rs.getString(3));
				lsp.setIdLoaiSanPham(new LoaiSanPham(rs.getString(4)));
				lsp.setIdNhaCungCap(new NhaCungCap(rs.getString(5)));
				lsp.setKichThuoc(rs.getDouble(6));
				lsp.setMauSac(rs.getString(7));
				int trangThai = rs.getInt(8);
				TrangThaiSPEnum trangThaiEnum = TrangThaiSPEnum.getById(trangThai);
				lsp.setTrangThai(trangThaiEnum);
				lsp.thue();
				lsp.setGiaNhap(rs.getDouble(10));
				lsp.setSoLuong(rs.getInt(11));
				lsp.giaBan();
				dsSanPham.add(lsp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dsSanPham;
	}

	public ArrayList<SanPhamCha> getAllSanPham() {
		ArrayList<SanPhamCha> dsSanPham = new ArrayList<>();
		ConnectDB.getinstance();
		Connection con = ConnectDB.getConnection();
		String sql = "SELECT * FROM SanPham";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				SanPhamCha lsp = new SanPhamCon();
				lsp.setHinhAnhSanPham(rs.getString(1));
				lsp.setIdSanPham(rs.getString(2));
				lsp.setTenSanPham(rs.getString(3));
				lsp.setIdLoaiSanPham(new LoaiSanPham(rs.getString(4)));
				lsp.setIdNhaCungCap(new NhaCungCap(rs.getString(5)));
				lsp.setKichThuoc(rs.getDouble(6));
				lsp.setMauSac(rs.getString(7));
				String trangThai = rs.getString(8);
				TrangThaiSPEnum trangThaiEnum = TrangThaiSPEnum.getByName(trangThai);
				lsp.setTrangThai(trangThaiEnum);
				dsSanPham.add(lsp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dsSanPham;
	}

	public boolean themSanPham(SanPhamCon sp) throws SQLException {
		ConnectDB.getinstance();
		Connection con = ConnectDB.getConnection();
		String sql = "INSERT INTO SanPham VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			if (con != null && !con.isClosed()) {
				ps = con.prepareStatement(sql);
				ps.setString(1, sp.getHinhAnhSanPham());
				ps.setString(2, sp.getIdSanPham());
				ps.setString(3, sp.getTenSanPham());
				ps.setString(4, sp.getIdLoaiSanPham().getIdLoaiSanPham());
				ps.setString(5, sp.getIdNhaCungCap().getIdNhaCungCap());
				ps.setDouble(6, sp.getKichThuoc());
				ps.setString(7, sp.getMauSac());
				ps.setInt(8, sp.getTrangThai().getValue());
				ps.setDouble(9, sp.thue());
				ps.setDouble(10, sp.getGiaNhap());
				ps.setInt(11, sp.getSoLuong());
				ps.setDouble(12, sp.giaBan());
				return ps.executeUpdate() > 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		con.close();
		return false;
	}

	public String getLatestProductID() throws SQLException {
		String productID = null;
		ConnectDB.getinstance();
		PreparedStatement pst = null;
		Connection con = ConnectDB.getConnection();
		try {
			String sql = ("SELECT TOP 1 idSanPham FROM SanPham ORDER BY idSanPham DESC");
			pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				productID = rs.getString("idSanPham");
			}
		} catch (SQLException exception) {
			exception.printStackTrace();
		} finally {
			close(pst);
		}
		return productID;
	}

	public boolean capNhatSanPham(SanPhamCon sp) {
		ConnectDB.getinstance();
		Connection con = ConnectDB.getConnection();
		PreparedStatement stmt = null;
		int n = 0;
		try {
			stmt = con.prepareStatement("UPDATE SanPham " +
			        "SET hinhAnhSanPham = ?, tenSanPham = ?, loaiSanPham = ?, nhaCungCap = ?, kichThuoc = ?, mauSac = ?, trangThai = ?, thue = ?, giaNhap = ?, soLuong = ? " +
			        "WHERE idSanPham = ?");
			stmt.setString(1, sp.getHinhAnhSanPham());
			stmt.setString(2, sp.getTenSanPham());
			stmt.setString(3, sp.getIdLoaiSanPham().getIdLoaiSanPham());
			stmt.setString(4, sp.getIdLoaiSanPham().getIdLoaiSanPham());
			stmt.setDouble(5, sp.getKichThuoc());
			stmt.setString(6, sp.getMauSac());
			stmt.setInt(7, sp.getTrangThai().getValue());
			stmt.setDouble(8, sp.thue());
			stmt.setDouble(9, sp.getGiaNhap());
			stmt.setInt(10, sp.getSoLuong());
			stmt.setString(11, sp.getIdSanPham());
			n = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return n > 0;
	}
}