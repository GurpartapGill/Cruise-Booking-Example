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
    [ServiceContract]
    public interface IService1
    {

        [OperationContract]
        double add(int a);

        [OperationContract]
        int CalculateTotalGuest(int a, int b, int c);

        [OperationContract]
        string GuestToString(int a, int b, int c);

        [OperationContract]
        string RoomToString(int a, int b);

        [OperationContract]
        double CalculateDiscount(int a, int b);

        [OperationContract]
        double CalculateRoomPrice(int a, int b, double c);

        [OperationContract]
        bool DisplayMsg(int a, int b, int c);

    }
}
