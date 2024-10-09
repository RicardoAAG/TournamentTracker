using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Mail;

namespace TrackerLibrary
{
    public static class EmailLogic
    {
        public static void SendEmail(string to, string subject, string body)
        {
            SendEmail(new List<string> { to }, new List<string>(),subject,body);
        }

        public static void SendEmail(List<string> to, List<string> bcc, string subject, string body)
        {

            SmtpClient client = ClientInfo();

            MailAddress fromMailAdress = new MailAddress(GlobalConfig.AppKeyLookup("senderEmail"),GlobalConfig.AppKeyLookup("senderDisplayName"));

            MailMessage mail = new MailMessage();

            foreach (string email in to)
            {
                mail.To.Add(email);
            }
            foreach (string email in bcc)
            {
                mail.Bcc.Add(email);
            }

            mail.From = fromMailAdress;
            mail.Subject = subject;
            mail.Body = body;
            mail.IsBodyHtml = true;

            client.Send(mail);
        }

        private static SmtpClient ClientInfo()
        {
            SmtpClient client = new SmtpClient("127.0.0.1")
            {
                Port = 25,
                Credentials = new NetworkCredential("user", "password"),
                EnableSsl = false,
            };

            return client;
        }
    }
}
