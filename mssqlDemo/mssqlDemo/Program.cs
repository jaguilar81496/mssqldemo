using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Domain;

namespace mssqlDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("I'm gonna do database stuff");
            using (SqlConnection connection = new SqlConnection())
            {
                // TODO - In production we might go to lengths to hide our password, but this is just a learning exercise
                connection.ConnectionString = "Data Source=localhost;Initial Catalog=mssqldemo;Persist Security Info=True;User ID=csharpapp;Password=csharpapp";

                connection.Open();
                Console.WriteLine("Succesfully Connected to Database!!!");
                SqlCommand command = new SqlCommand("SELECT * FROM Suppliers", connection);
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    Console.WriteLine(string.Format("There are {0} columns", reader.FieldCount));

                    //Supplier supplier = new Supplier(reader);


                    // while there is another record present
                    int count = 0;
                    while (reader.Read())
                    {
                        Console.WriteLine(String.Format("{0} | {1} | {2} | {3}", reader[0].ToString().Trim(), reader[1].ToString().Trim(), reader[2].ToString().Trim(), reader[3].ToString().Trim()));
                        count++;
                    }
                    Console.WriteLine(String.Format("There were {0} rows",count));

                    

                }
                connection.Close();
            }
            Console.WriteLine("Press 'ENTER' to continue...");
            Console.ReadLine();
        }
    }
}
