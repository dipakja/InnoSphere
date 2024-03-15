<%@page import="com.tech.entities.Posts" %>
<%@page import="com.tech.entities.User" %>
<%@page import="com.tech.dao.Postdao" %>
<%@page import="com.tech.dao.LikeDao" %>
<%@page import="com.tech.helper.ConnectionProvider" %>
<%@page import="java.util.List" %>

<div class="row">
<%
    User uu = (User) session.getAttribute("currentUser");
    Thread.sleep(1000);
    Postdao d = new Postdao(ConnectionProvider.getConnection());
    int cid = Integer.parseInt(request.getParameter("cid"));
    List<Posts> posts = (cid == 0) ? d.getAllPost() : d.getPostByCatId(cid);

    if (posts.size() == 0) {
        out.println("<h3 class='display-3 text-center'>No post blogs in this category!</h3>");
        return;
    }

    for (Posts p : posts) {
%>
<div class="col-md-12 mt-3">
    <div class="card rounded" style="background-color: #1B1F23; color: #3b82f6;">
        <img class="card-img-top" style="width: 100%; height: 400px; object-fit: cover;" src="blog_Pics/<%= p.getpPic()%>" alt="Card image cap">
        <div class="card-body" style="min-height: 250px;">
            <h5 class="card-title"><%= p.getpTitle()%></h5>
            <p class="card-text" style="display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden;">
                <%=p.getpContent()%>
            </p>
        </div>
        <div class="card-footer text-muted text-center">
            <%
                LikeDao l = new LikeDao(ConnectionProvider.getConnection());
            %>
            <a href="show_blog_post.jsp?post_id=<%= p.getpId() %>" style="color: #F9A26C;" class="btn btn-sm">Read more..</a>
            <a href="#" onclick="doLike(<%= p.getpId()%> , <%= uu.getId()%>)" style="color: #F9A26C;" class="btn btn-sm">
                <i class="fa fa-thumbs-o-up"></i>
                <span class="like-counter"><%= l.countLikeOnPost(p.getpId())%></span>
            </a>
        </div>
    </div>
</div>
<%
    }
%>
</div>
