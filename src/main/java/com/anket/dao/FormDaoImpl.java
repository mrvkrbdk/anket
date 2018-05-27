package com.anket.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.anket.model.FormEntity;


public class FormDaoImpl implements FormDao{
	@Autowired
	DataSource dataSource;
	@Autowired
	JdbcTemplate jdbcTemplate;
	public void addvalues(FormEntity fe){
		String sql="insert into bilgiler values(?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[]{fe.getAd(),fe.getTc(),fe.getTel(),fe.getAdres(),fe.getEmail(),fe.getDt(),fe.isPerakende(),fe.getTercih(),fe.getIlilcesemt(),fe.getMiktar(),fe.getEk()});
	}
	
	class FormMapper implements RowMapper<FormEntity>{
		public FormEntity mapRow(ResultSet rs,int arg1) throws SQLException{
			FormEntity fe=new FormEntity();
			fe.setAd(rs.getString("name"));
			fe.setTc(rs.getInt("tc"));
			fe.setTel(rs.getInt("tel"));
			fe.setAdres(rs.getString("adres"));
			fe.setEmail(rs.getString("email"));
			fe.setDt(rs.getDate("dt"));
			fe.setPerakende(rs.getBoolean("lperakende"));
			fe.setTercih(rs.getString("tercih"));
			fe.setIlilcesemt(rs.getString("il"+"ilce"+"semt"));
			fe.setMiktar(rs.getInt("miktar"));
			fe.setEk(rs.getString("ek"));
			return fe;
		}
	}

}
