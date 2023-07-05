package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import po.Goods;
import util.DButil;

public class GoodDao {
/**
 * 根据id 名称 产地等查询商品
 * @param id
 * @param name
 * @param city
 * @return
 */
	public List<Goods> find(Integer id,String name,String city){
		   Connection conn=DButil.getConn();
		   PreparedStatement pst=null;
		   ResultSet rs=null;
		   List<Goods> goods=new ArrayList<Goods>();
		   String sql="select * from items where 1=1";
		   if(id!=null)
		   {
			   sql=sql+" and id='"+id+"'";
		   }
		   if(name!=null){
			   sql=sql+" and name='"+name+"'";
		   }
		   if(city!=null){
			   sql=sql+" and city='"+city+"'";
		   }
		   System.out.println(sql);
		   try {
			   pst=conn.prepareStatement(sql);
			   	   
			   rs=pst.executeQuery();
			   //处理结果集
			   while(rs.next()){
				   Goods good=new Goods(rs.getInt("id"), rs.getString("name"), rs.getString("city"),
						   rs.getInt("price"), rs.getInt("number"), rs.getString("picture"));
				  
				   goods.add(good);
			   }
			  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DButil.closeAll(conn, pst, rs);
		}
		   return goods;
		   
	}
	/**
	 * 根据id 查询商品
	 * @param id
	 * @return
	 */
		public Goods findById(Integer id){
			   
			   
		}
	//获取最近浏览的前五条商品信息
         public List<Goods> getGoodList(String list)
		{

            }
		

}
