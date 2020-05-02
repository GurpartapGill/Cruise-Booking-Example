using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalExam_GurpartapGill
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        public double add(int a)
        {
            try
            {
                int b = a + 1;
                return b;
            }
            catch (Exception ex)
            {
                throw new FaultException(new FaultReason(ex.Message));
            }
        }

        public int CalculateTotalGuest(int a, int b, int c)
        {
            try
            {
                return a + b + c;
            }
            catch (Exception ex)
            {
                throw new FaultException(new FaultReason(ex.Message));
            }
        }

        public string GuestToString(int a, int b, int c)
        {
            try
            {
                return a + " Adults, " + b + " Children," + c + " Seniors,";
            }
            catch (Exception ex)
            {
                throw new FaultException(new FaultReason(ex.Message));
            }
        }

        public string RoomToString(int a, int b)
        {
            try
            {
                string room = "";

                switch (a)
                {
                    case 1:
                        room += b + " Inside StateRooms ";
                        break;
                    case 2:
                        room += b + " Ocean View StateRooms ";
                        break;
                    case 3:
                        room += b + " Luxurious Suites ";
                        break;
                }

                return room;
            }
            catch (Exception ex)
            {
                throw new FaultException(new FaultReason(ex.Message));
            }
        }

        public double CalculateDiscount(int a, int b)
        {
            try
            {
                double disc;

                if (a > 0 || b > 0)
                {
                    disc = 0.25;
                }
                else
                {
                    disc = 0;
                }

                return disc;
            }
            catch (Exception ex)
            {
                throw new FaultException(new FaultReason(ex.Message));
            }
        }

        public double CalculateRoomPrice(int a, int b, double c)
        {
            try
            {
                double price = 0; ;

                switch (a)
                {
                    case 1:
                        price = (b * 125) - (c * (b * 125));
                        break;
                    case 2:
                        price = (b * 175) - (c * (b * 175));
                        break;
                    case 3:
                        price = (b * 295) - (c * (b * 295));
                        break;
                }

                return price;
            }
            catch (Exception ex)
            {
                throw new FaultException(new FaultReason(ex.Message));
            }
        }

        public bool DisplayMsg(int a, int b, int c)
        {
            bool msg = false;

            if ((a > 0 && b > 0))
            {
                msg = true;
            }
            if ((a > 0 && c > 0))
            {
                msg = true;
            }
            if ((b > 0 && c > 0))
            {
                msg = true;
            }
            if ((a > 0 && b > 0 && c > 0))
            {
                msg = true;
            }

            return msg;
        }

    }
}
