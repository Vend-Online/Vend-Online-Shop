﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class DB
{
    public SqlConnection DBCon = new SqlConnection("Data Source='.\';Initial Catalog=Vending;Integrated Security=True");    
    public SqlCommand SQLcmd;

    public void DBMethod(string s)
    {
        SQLcmd = new SqlCommand(s, DBCon);
    }
}