﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace DAL
{
    public class Connection
    {
        private SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0JJ49UO\\SQLEXPRESS;Initial Catalog=votacionesdb;Integrated Security=True");

        public SqlConnection getConnection()
        {
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            return conn;
        }
        public SqlConnection closeConection()
        {
            if (conn.State == ConnectionState.Open)
                conn.Close();
            return conn;
        }

    }
}
