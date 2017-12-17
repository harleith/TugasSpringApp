<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Berhasil dimasukan ke keranjang belanjaan anda</h1>
    </body>
    jumlah keranjang anda : ${user.carts.size()} </br>
    ${product.productname},${msg}
   
    <a href="/TugasSpringApp/product"> kembali ke halaman product</a> </br>
</html>
