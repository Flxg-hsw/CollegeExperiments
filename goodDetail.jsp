<%@ page language="java" contentType="text/html; charset=utf-8"
  import="dao.GoodDao,po.Goods" %>
  <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <style type="text/css">
	   div{
	      float:left;
	      margin-left: 30px;
	      margin-right:30px;
	      margin-top: 5px;
	      margin-bottom: 5px;
	   }
	   div dd{
	      margin:0px;
	      font-size:10pt;
	   }
	   div dd.dd_name
	   {
	      color:blue;
	   }
	   div dd.dd_city
	   {
	      color:#000;
	   }
	</style>
</head>
<body>
 <h1>商品详情</h1>
    <hr>
    <center>
      <table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
        <tr>
          <!-- 商品详情 -->
          <% 
             GoodDao itemDao = new GoodDao();
             List<Goods> goods = itemDao.find(Integer.parseInt(request.getParameter("id")),null,null);
             if(goods.size()==1)
             {
	              Goods item=goods.get(0);
	                 
         %>   
          <td width="70%" valign="top">
             <table>
               <tr>
                 <td rowspan="4"><img src="images/<%=item.getPicture()%>" width="200" height="160"/></td>
               </tr>
               <tr>
                 <td><B><%=item.getName() %></B></td> 
               </tr>
               <tr>
                 <td>产地：<%=item.getCity()%></td>
               </tr>
               <tr>
                 <td>价格：<%=item.getPrice() %>￥</td>
               </tr> 
             </table>
          </td>
          <% 
            }
          %>
          <% 
             
              //从客户端获得Cookies集合 
              
              //遍历这个Cookies集合"ListViewCookie"
             
              //加上刚刚浏览的这个商品的id
              
              //如果浏览记录超过100条，清零.
              
             //写回到cookie中
                
          
          %>
          <!-- 浏览过的商品 -->
          <td width="30%" bgcolor="#EEE" align="center">
             <br>
             <b>您浏览过的商品</b><br>
             <!-- 循环开始 -->
             <% 
                
                         
             %>
             <div>
             <dl>
               <dt>
                 <a href=""><img src="" width="120" height="90" border="1"/></a>
               </dt>
               <dd class="dd_name"></dd> 
               <dd class="dd_city">产地:&nbsp;&nbsp;价格: ￥ </dd> 
             </dl>
             </div>
             <% 
                   }
                }
             %>
             <!-- 循环结束 -->
          </td>
        </tr>
      </table>
    </center>

</body>
</html>