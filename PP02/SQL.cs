using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PP02
{
    internal class SQL
    {
        public static string Connection = @"Data Source=LAPTOP-TI67Q6CF\SQLEXPRESS;Initial Catalog=PP02;Integrated Security=True";

        public static string Querry(string QuerryText)
        {
            SqlConnection CurrentConnection = new SqlConnection(Connection);
            CurrentConnection.Open();
            SqlCommand CurrentCommand = CurrentConnection.CreateCommand();
            CurrentCommand.CommandText = ($@"{QuerryText}");

            if (CurrentCommand.ExecuteScalar() == null)
            {
                string BadOutput = ($@"!beam");
                CurrentConnection.Close();
                return BadOutput;
            }
            else
            {
                string Output = CurrentCommand.ExecuteScalar().ToString();
                CurrentConnection.Close();
                return Output;
            }
        }

        public static string QuerryInsert(string QuerryText)
        {
            try
            {
                SqlConnection CurrentConnection = new SqlConnection(Connection);
                CurrentConnection.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(QuerryText, Connection);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                return "Данные добавлены";
            }
            catch
            {
                return "Что-то пошло не так";
            }
        }

        public static string[] ExitColumn(string table, string column)
        {
            List<string> columns = new List<string>();

            SqlConnection sqlConnection = new SqlConnection(Connection);
            sqlConnection.Open();
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandText = $"select {column} as 'n' from {table}";
            SqlDataReader sqlDataReaderreader = sqlCommand.ExecuteReader();
            while (sqlDataReaderreader.Read())
            {
                columns.Add("" + sqlDataReaderreader["n"]);
            }

            string[] arr = new string[columns.Count];

            for (int i = 0; i < arr.Length; i++)
            {
                arr[i] = columns[i];
            }
            return arr;
        }

        public static DataSet QuerryForTable(string InputQuerry)
        {
            SqlConnection CurrentConnection = new SqlConnection(SQL.Connection);
            SqlDataAdapter Adapter;
            DataSet DataSet;
            CurrentConnection.Open();
            Adapter = new SqlDataAdapter(InputQuerry, CurrentConnection);
            DataSet = new DataSet();
            Adapter.Fill(DataSet);
            return DataSet;
        }

        public static bool admin=false;
    }
}
