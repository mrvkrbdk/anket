<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>bayilik form</title>
<style>
*{
    box-sizing: border-box;
}
h3 {
     font-family: Georgia;
    text-align: center;
}
input[type=text], textarea,[type=date] {
outline:black;
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
 select {
 outline:none;
    width: 33%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

button {
outline:none;
    float:right;
    width: 50%;
    background-color: black;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: gray;
}

.container {
margin-top: 100px;
    margin-bottom: 100px;
    margin-right: 150px;
    margin-left: 80px;
    border-radius: 10px;
    background-color: #f2f2f2;
    padding: 100px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
</head>
<body>



<div class="container">
<h3>BAYILIK ON BASVURU FORMU</h3>
  <form:form method="post" modelAttribute="FormEntity" action="FormProcess">
    <div class="row">
      <div class="col-25">
        <form:label path="name" for="lname">ISIM SOYISIM:</form:label>
      </div>
      <div class="col-75">
        <form:input path="name" type="text" id="lname" name="name" value=""/>
      </div>															
    </div>
    <div class="row">
      <div class="col-25">
        <form:label path="tc" for="ltc">TC KIMLIK: </form:label>
      </div>
      <div class="col-75">
        <form:input path="tc" type="text" id="ltc" name="tc" value=""/>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <form:label path="adres" for="lname">ADRES:  </form:label>
      </div>
      <div class="col-75">
        <form:input path="adres" type="text" id="lname" name="adres" value="" />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
       <form:label path="tel" for="ltel">TELEFON: </form:label>
      </div>
      <div class="col-75">
        <form:input path="tel" type="text" id="ltel" name="tel" placeholder="or:05555555555" value=""/>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <form:label path="email" for="lemail">E- POSTA: </form:label>
      </div>
      <div class="col-75">
        <form:input path="email" type="text" id="lemail" name="email" value=""/>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <form:label path="dt" for="ldt">DOGUM TARIHI: </form:label>
      </div>
      <div class="col-75">
        <form:input path="dt" type="date" id="ldt" name="dt" value="" />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <form:label path="lperakende" for="lperakende">PERAKENDE TICARETI ILE UGRASTINIZ MI? </form:label>
      </div>
      <div class="col-75">
        <form:input path="lperakende" type="checkbox" name="lperakende" value="1" /> Evet
        <form:input path="lperakende" type="checkbox" name="lperakende" value="0"/> Hayir
      </div>
    </div>
    <div class="row">
      <div class="col-25">
         <form:label path="tercih" for="ltercih">LOKUMCU BABA'YI TERCIH ETMENIZIN SEBEBI NEDIR?</form:label>
      </div>
      <div class="col-75">
        <form:select path="tercih" id="ltercih" name="tercih">
      <option value="t1">tercih1</option>
      <option value="t2">tercih2</option>
      <option value="t3">tercih3</option>
    </form:select>
        </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <form:label path="il" for="lil">HANGI IL/ILCE/SEMT ICIN LOKUMCU BABA ISLETMECILIGI DUSUNUYORSUNUZ? </form:label>
      </div>
      <div class="col-75">
        <form:select path="il"  id="lil" name="il" >
    <option >il
      <option value="i1">il1</option>
      <option value="i2">il2</option>
      <option value="i3">il3</option>
    </form:select>
    <form:select path="ilce" id="lilce" name="ilce" >
    <option >ilce
      <option value="i1">il1</option>
      <option value="i2">il2</option>
      <option value="i3">il3</option>
    </form:select>
    <form:select path="semt" id="lsemt" name="semt" >
    <option >semt
      <option value="i1">il1</option>
      <option value="i2">il2</option>
      <option value="i3">il3</option>
    </form:select>
      </div>
    </div>
    
     <div class="row">
      <div class="col-25">
        <form:label path="miktar" for="lmiktar">YATIRIM MIKTARINIZ NEDIR?  </form:label>
      </div>
      <div class="col-75">
         <form:input path="miktar" type="text" id="lmiktar" name="miktar" value="" />
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <form:label path="ek" for="lek">EKLEMEK ISTEDIKLERINIZ: </form:label>
      </div>
      <div class="col-75">
        <form:textarea path="ek" id="lek" name="ek" placeholder="Ek.." style="height:100px"></form:textarea>
      </div>
    </div>
    <div class="row">
      <form:button type="submit" value="Kaydet"/>
    </div>
  </form:form>
</div>


</body>
</html>