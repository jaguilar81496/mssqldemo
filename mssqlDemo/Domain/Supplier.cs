using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;


namespace Domain
{
    class Supplier
    {
        public Supplier(int id, string businessName, string address, string phoneNumber)
        {
            Id = id;
            BusinessName = businessName;
            Address = address;
            PhoneNumber = phoneNumber;

        }

        public Supplier(SqlDataReader dataReader)
        {
            // Check if reader hasnumber of columns that are expected
            if (dataReader.FieldCount != 4)
            {
                throw new ArgumentException("Expected field count of 4");
            }

            Id = dataReader.GetInt32(dataReader.GetOrdinal("Id"));
            
        }

        public int Id { get; set; }
        public string BusinessName { get; set; }
        public string Address { get; set; }
        public string PhoneNumber { get; set; }




    }
}
