using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace mssqlDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World");
            using (SqlConnection connection = new SqlConnection())
            {
                connection.ConnectionString = "Data Source=localhost;Initial Catalog=my_playground;Integrated Security=True";

                connection.Open();
                Console.WriteLine("Succesfully Connected to Database!!! IM NOT DUMB");
                SqlCommand command = new SqlCommand("SELECT * FROM Products", connection);
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    // while there is another record present
                    while (reader.Read())
                    {
                        Console.WriteLine(string.Format("There are {0} columns", reader.FieldCount));    
                        Console.WriteLine(String.Format("{0} \t | {1} \t | {2} \t | {3} \t", reader[0], reader[1], reader[2], reader[3]));
                    }
                }
                connection.Close();
            }
            Console.WriteLine("Press any key to continue...");
            Console.ReadLine();
        }
    }
}
