using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ConnectionTools
/// </summary>
public class ConnectionTools
{
      //public static SqlConnection ConnDB = new SqlConnection("Data Source=MCY-LAPTOP;uid=sa;pwd=123;Initial Catalog=MCYBT");
      public static SqlConnection ConnDB = new SqlConnection(@"Server=85.95.238.207;Database=MCYBT;User ID=MCYBilisim;Password=MCY2011Bil;");
      public static SqlConnection MCYConnDB = new SqlConnection(@"Server=85.95.238.207;Database=MCYBT;User ID=MCYBilisim;Password=MCY2011Bil;");
}