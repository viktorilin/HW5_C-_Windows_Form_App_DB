using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.Entity;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Newtonsoft.Json;

namespace WindowsFormsAppOnlineExam
{
    public partial class Form1 : Form
    {
        string json;
        private List<CodeHistories> codeHistorieses;
        private readonly string _pathJson = ConfigurationManager.AppSettings["PathJSON"];
        private readonly string _pathInsert = ConfigurationManager.AppSettings["InsertPath"];
        private readonly string _pathDump = ConfigurationManager.AppSettings["DbDumpPath"];
        private readonly string _pathBackUp = ConfigurationManager.AppSettings["DbBackUpPath"];


        public Form1()
        {
            InitializeComponent();
            this.json = File.ReadAllText(_pathJson);

            this.codeHistorieses = JsonConvert.DeserializeObject<List<CodeHistories>>(json);
        }

        private void Form1_Load(object sender, EventArgs e)
        {
        }

        private void createDBFromSQL_Click(object sender, EventArgs e)
        {
            using (var ctx = new OnlineExamContext())
            {
                var sqlCommand = File.ReadAllText(_pathDump);
                ctx.Database.ExecuteSqlCommandAsync(sqlCommand);
            }
        }

        private void jsonToDB_Click(object sender, EventArgs e)
        {
            using (var ctx = new OnlineExamContext())
            {
                foreach (var code in codeHistorieses) ctx.CodeHistories.Add(code);
                ctx.SaveChanges();
            }
        }

        private void Form1_Load_1(object sender, EventArgs e)
        {
        }

        private void deleteFromCodeHistories_Click(object sender, EventArgs e)
        {
            using (var ctx = new OnlineExamContext())
            {
                foreach (var code in codeHistorieses)
                {
                    ctx.Entry(code).State = EntityState.Deleted;
                    ctx.SaveChanges();
                }
            }
        }

        private void restoreDbFromBackUp_Click(object sender, EventArgs e)
        {
            using (var ctx = new OnlineExamContext())
            {
                var command =
                    "RESTORE DATABASE TestDB  \r\n   FROM DISK = \'" + _pathBackUp + "' ;";
                ctx.Database.ExecuteSqlCommandAsync(command);
            }
        }

        private void insert_Click(object sender, EventArgs e)
        {
            using (var ctx = new OnlineExamContext())
            {
                var sqlCommand = File.ReadAllText(_pathInsert);
                ctx.Database.ExecuteSqlCommand(sqlCommand);
            }
        }

        private void dropDb_Click(object sender, EventArgs e)
        {
            using (var ctx = new OnlineExamContext())
            {
                ctx.Database.Delete();
            }
        }
    }
}