<%@ page language="java" contentType="text/html; charset=UTF-8"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="replyItem"><div class="topBar"><span class="postTime">29/01/2011 01:43</span><span class="postNumber">#1</span></div><div class="userInfoBar"><div class="columnLeft"><p class="userNameContainer"><a>acracy</a></p></div><div class="columnRight"><p class="userJoinDate"><span class="name">Thảo luận:</span> <span class="value">4</span></p></div></div>            <div class="bodyContainer"><div class="body"><div class="cf_content">Chào mọi nguời.<br>
<br>
Trong quá trình tìm hiểu và làm với hibernate3 và  struts2 và mysql em bị lỗi khi insert hay update tiếng việt bị lỗi. Em  đã search khá nhiều nhưng không tìm được cáh giải quyết.<br>
<br>
khi nhận  biến vào struts2 và show lên web để xem có bị lỗi font ko thì thấy  không bị gì cả hiển thị rất đúng. nhưng khi gọi hàm save() của hibernate  thì bị lỗi font trong csdl lên web cũng lỗi luôn.<br>
em bỏ hibernate đi và dùng kết nối bình thường như ở dưới<br>
///////////////////<br>
Connection conn = null;<br>
        String userName = "root";<br>
        String password = "";<br>
        String url = "jdbc:mysql://localhost/hgk?useUnicode=true&amp;characterEncoding=UTF-8&amp;characterSetResults=UTF-8";<br>
        Class.forName("com.mysql.jdbc.Driver").newInstance  ();<br>
        conn = (Connection) DriverManager.getConnection(url, userName, password);<br>
        CachedRowSet crs = null;<br>
        crs = new CachedRowSetImpl();<br>
        crs.setCommand(sql);<br>
        crs.execute(conn);<br>
        conn.close();<br>
/////////////////////<br>
<br>
thì không bị lỗi font trong csdl<br>
<br>
trong hibernate em cấu hình như thế này:<br>
/////////////////////<br>
&lt;hibernate-configuration&gt;<br>
  &lt;session-factory&gt;<br>
    &lt;property name="hibernate.dialect"&gt;org.hibernate.dialect.MyS  QLDialect&lt;/property&gt;<br>
    &lt;property name="hibernate.connection.driver_class"&gt;com.mysql  .jdbc.Driver&lt;/property&gt;<br>
    &lt;property name="hibernate.connection.url"&gt;jdbc:mysql://localhost/hgk&lt;/property&gt;<br>
    &lt;property name="hibernate.connection.username"&gt;root&lt;/property&gt;<br>
    &lt;property name="hibernate.connection.useUnicode"&gt;true&lt;/property&gt;<br>
    &lt;property name="hibernate.connection.charSet"&gt;UTF8&lt;/property&gt;<br>
    &lt;property name="hibernate.current_session_context_class"&gt;thr  ead&lt;/property&gt;<br>
    &lt;property name="hibernate.show_sql"&gt;true&lt;/property&gt;<br>
    &lt;mapping class="model.Category"/&gt;<br>
  &lt;/session-factory&gt;<br>
&lt;/hibernate-configuration&gt;<br>
/////////////////////<br>
<br>
thật sự là em bí thật rồi. <br>
mong nhận được sự giúp đỡ</div></div></div></div>
</body>
</html>