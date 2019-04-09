package ConexionDatabase;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Alumnos;
import Utils.Conexion;

public class CRUD_Alumno {
	
	public Alumnos  SearchAlumno(int id) {
		Connection con= null;
		CallableStatement calls=null;
		ResultSet rs=null;
		Alumnos alu=null;
		try {
			con=new Conexion().getConexion();
			String sp="{ call ls_id(?); }";
			calls=con.prepareCall(sp);
			calls.setInt(1, id);
			calls.execute();
			while (rs.next()) {
				alu  = new Alumnos();
				alu.setId(rs.getInt("ID"));
				alu.setEdad(rs.getInt("Edad"));
				alu.setNombre(rs.getString("Nombre"));
				alu.setApellido(rs.getString("Apellidos"));
			}
		}catch (Exception e) {
			// TODO: handle exception
			
		}finally {
			try {
				con.close();
				calls.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return alu;
		
		
	}

}
