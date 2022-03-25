<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Customer" %>
<%--
  Created by IntelliJ IDEA.
  User: lequan
  Date: 3/25/22
  Time: 10:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style type="text/css">
  .customer_list--title{
    text-align: center;
    font-size: 20px;
    background-color: bisque;
  }
  .table_customer {
    margin: 20px;
    size: 80px;
    background-color: antiquewhite;
    border-collapse: collapse;
    width: 100%;
  }
  .tr_customer {
    border: 1px solid;
  }
  .customer_list {
    border: 1px solid;
  }
  .td_list {
   text-align: center;
  }
</style>
  <head>
    <div class="title">
      <title>Customer List: </title>
    </div>
  </head>

  <body>
  <%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("Le Minh Quan", "1997-02-08", "Ha Noi", "https://as1.ftcdn.net/v2/jpg/02/22/85/16/1000_F_222851624_jfoMGbJxwRi5AWGdPgXKSABMnzCQo9RN.jpg"));
    customerList.add(new Customer("Nguyen Van Nam","1983-08-21","Bac Giang", "https://as2.ftcdn.net/v2/jpg/01/29/43/85/1000_F_129438556_1ugKA7Fk1EiR7uar9ZGaQ3wYfaWSM25E.jpg"));
    customerList.add(new Customer("Nguyen Thai Hoa", "1983-08-22","Hai Phong", "https://as1.ftcdn.net/v2/jpg/03/18/98/88/1000_F_318988803_q7pGXM4tEYTayYvGviXDwLscwnCVyXnf.jpg" ));
    customerList.add(new Customer("Nguyen Khanh Chi", "1998-03-27", "Hai Phong", "https://as1.ftcdn.net/v2/jpg/02/26/41/72/1000_F_226417291_BjVyGtqcaRiaws1YObSWcWGPpGgIQcOR.jpg"));

    request.setAttribute("customers", customerList);
  %>

  <div class="customer_list--title">Customer List</div>
  <table class="table_customer">
    <tr class="tr_customer">
      <th >Name</th>
      <th>Date of Birth</th>
      <th>Address</th>
      <th>Image</th>
    </tr>
    <c:forEach var="customers" items="${customers}">
      <tr class = "customer_list">
        <td class ="td_list">${customers.name}</td>
        <td class = "td_list">${customers.birth}</td>
        <td class = "td_list">${customers.address}</td>
        <td class = "td_list"><img src="${customers.image}" height="100"></td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
