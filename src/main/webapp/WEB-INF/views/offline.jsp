<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <jsp:include page="modules/head.jsp">
        <jsp:param name="name" value="value" />
    </jsp:include>
    <title>분리수GO!</title>

</head>

<body><style>
    body {
      padding: 50px;
    }
    
    #container {
      background-color: #FFF;
      text-align: center;
    }
    
    #burger {
      animation: bobble 2s infinite;
      font-size: 60px;
      margin-top: 0;
    }
    
    @keyframes bobble {
      0% {
          transform: translateY(10px);
      }
      50% {
          transform: translateY(40px);
      }
      100% {
          transform: translateY(10px);
      }
    }
    p {
      font-family: "Helvetica Neue", Helvetica, Arial, "sans-serif";
      text-align: center;
      font-size: 20px;
      color: #CCC;
      line-height: 1.5;
    }
    p span {
      font-weight: bold;
      font-size: 24px;
      color: #222;
    }
    a {
      text-decoration: none;
    }
  </style>
 
<div id="container">
  <p id="burger">🍔</p>
  </div>
<p><span>Your connection is currently offline!</span><br/>Watch this burger bouncing in the meantime.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
  
  
<p><a href="https://www.kirupa.com">🗺️</a></p>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/service-worker.js"></script>
</body>

</html>