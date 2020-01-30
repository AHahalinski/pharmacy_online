<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    .login-page {
        width: 360px;
        padding: 8% 0 0;
        margin: auto;
    }

    .form {
        position: relative;
        z-index: 1;
        background: #FFFFFF;
        max-width: 360px;
        margin: 0 auto 100px;
        padding: 45px;
        text-align: center;
        box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
    }

    .form input {
        font-family: "Roboto", sans-serif;
        outline: 0;
        background: #f2f2f2;
        width: 100%;
        border: 0;
        margin: 0 0 15px;
        padding: 15px;
        box-sizing: border-box;
        font-size: 14px;
    }

    .form button {
        font-family: "Roboto", sans-serif;
        text-transform: uppercase;
        outline: 0;
        background: #4CAF50;
        width: 100%;
        border: 0;
        padding: 15px;
        color: #FFFFFF;
        font-size: 14px;
        /*-webkit-transition: all 0.3 ease;*/
        /*transition: all 0.3 ease;*/
        cursor: pointer;
    }

    .form button:hover, .form button:active, .form button:focus {
        background: #43A047;
    }

    .form .message {
        margin: 15px 0 0;
        color: #b3b3b3;
        font-size: 12px;
    }

    .form .message a {
        color: #4CAF50;
        text-decoration: none;
    }

    .container .info h1 {
        margin: 0 0 15px;
        padding: 0;
        font-size: 36px;
        font-weight: 300;
        color: #1a1a1a;
    }

    .container .info span {
        color: #4d4d4d;
        font-size: 12px;
    }

    .container .info span a {
        color: #000000;
        text-decoration: none;
    }

    .locale {
        float: right;
        margin-top: 20px;
        margin-right: 5px;
    }

    .logout-form {
        color: red;
    }

    body {
        background: #76b852; /* fallback for old browsers */
        background: -webkit-linear-gradient(right, #76b852, #8DC26F);
        background: -moz-linear-gradient(right, #76b852, #8DC26F);
        background: -o-linear-gradient(right, #76b852, #8DC26F);
        background: linear-gradient(to left, #76b852, #8DC26F);
        font-family: "Roboto", sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }
</style>

<html>
<body>
<div class="locale">
    <a href="#">EN</a> | <a href="#">RU</a> | <a href="#">BLR</a>
</div>

<div class="login-page">
    <div class="form">
        <c:if test="${sessionScope.user == null}">
            <form class="login-form" action="login" method="post">
                <input type="text" name="login" placeholder="login"/>
                <input type="password" name="password" placeholder="password"/>
                <input type="hidden" name="command" value="login"/>
                <button type="submit" value="sign in">Login</button>
                <p class="message">Not registered? <a href="controller?command=registerNewPatient">Create an account</a>
                    <h4>${requestScope.messageToPage}</h4>
                </p>
            </form>
        </c:if>
        <c:if test="${sessionScope.user != null}">
            <form class="logout-form" action="signOut" method="get"
                  style="display: inline-block; margin: 0;">
                <input type="hidden" name="command" value="logout"/>
                <a href="controller?command=logout">Sign Out</a>
            </form>
        </c:if>
    </div>
</div>


</body>
</html>