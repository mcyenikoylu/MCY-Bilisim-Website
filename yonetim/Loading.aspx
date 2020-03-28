<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loading.aspx.cs" Inherits="yonetim_Loading" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
        function Yukle() 
            {
                location.href = "<%= url %>";
            }
    </script>
</head>
<body onload="javascript:Yukle();">
    <form id="form1" runat="server">
    <div>
        Lütfen Bekleyin! <br />
        Sayfa Yükleniyor...
    </div>
    </form>
</body>
</html>
