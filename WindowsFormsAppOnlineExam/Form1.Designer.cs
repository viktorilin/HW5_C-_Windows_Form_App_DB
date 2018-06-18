namespace WindowsFormsAppOnlineExam
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.createDBFromSQL = new System.Windows.Forms.Button();
            this.jsonToDB = new System.Windows.Forms.Button();
            this.deleteFromCodeHistories = new System.Windows.Forms.Button();
            this.restoreDbFromBackUp = new System.Windows.Forms.Button();
            this.insert = new System.Windows.Forms.Button();
            this.dropDb = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // createDBFromSQL
            // 
            this.createDBFromSQL.Location = new System.Drawing.Point(109, 12);
            this.createDBFromSQL.Name = "createDBFromSQL";
            this.createDBFromSQL.Size = new System.Drawing.Size(75, 96);
            this.createDBFromSQL.TabIndex = 0;
            this.createDBFromSQL.Text = "Create DB from schema from SQL";
            this.createDBFromSQL.UseVisualStyleBackColor = true;
            this.createDBFromSQL.Click += new System.EventHandler(this.createDBFromSQL_Click);
            // 
            // jsonToDB
            // 
            this.jsonToDB.Location = new System.Drawing.Point(318, 11);
            this.jsonToDB.Name = "jsonToDB";
            this.jsonToDB.Size = new System.Drawing.Size(75, 93);
            this.jsonToDB.TabIndex = 1;
            this.jsonToDB.Text = "From JSON to DB";
            this.jsonToDB.UseVisualStyleBackColor = true;
            this.jsonToDB.Click += new System.EventHandler(this.jsonToDB_Click);
            // 
            // deleteFromCodeHistories
            // 
            this.deleteFromCodeHistories.Location = new System.Drawing.Point(419, 12);
            this.deleteFromCodeHistories.Name = "deleteFromCodeHistories";
            this.deleteFromCodeHistories.Size = new System.Drawing.Size(75, 94);
            this.deleteFromCodeHistories.TabIndex = 3;
            this.deleteFromCodeHistories.Text = "Delete from codeHistories";
            this.deleteFromCodeHistories.UseVisualStyleBackColor = true;
            this.deleteFromCodeHistories.Click += new System.EventHandler(this.deleteFromCodeHistories_Click);
            // 
            // restoreDbFromBackUp
            // 
            this.restoreDbFromBackUp.Location = new System.Drawing.Point(12, 14);
            this.restoreDbFromBackUp.Name = "restoreDbFromBackUp";
            this.restoreDbFromBackUp.Size = new System.Drawing.Size(75, 92);
            this.restoreDbFromBackUp.TabIndex = 4;
            this.restoreDbFromBackUp.Text = "Restore DB from back up";
            this.restoreDbFromBackUp.UseVisualStyleBackColor = true;
            this.restoreDbFromBackUp.Click += new System.EventHandler(this.restoreDbFromBackUp_Click);
            // 
            // insert
            // 
            this.insert.Location = new System.Drawing.Point(214, 12);
            this.insert.Name = "insert";
            this.insert.Size = new System.Drawing.Size(75, 92);
            this.insert.TabIndex = 5;
            this.insert.Text = "INSERT";
            this.insert.UseVisualStyleBackColor = true;
            this.insert.Click += new System.EventHandler(this.insert_Click);
            // 
            // dropDb
            // 
            this.dropDb.Location = new System.Drawing.Point(535, 14);
            this.dropDb.Name = "dropDb";
            this.dropDb.Size = new System.Drawing.Size(75, 90);
            this.dropDb.TabIndex = 6;
            this.dropDb.Text = "DROP DB";
            this.dropDb.UseVisualStyleBackColor = true;
            this.dropDb.Click += new System.EventHandler(this.dropDb_Click);
            // 
            // Form1
            // 
            this.ClientSize = new System.Drawing.Size(976, 707);
            this.Controls.Add(this.dropDb);
            this.Controls.Add(this.insert);
            this.Controls.Add(this.restoreDbFromBackUp);
            this.Controls.Add(this.deleteFromCodeHistories);
            this.Controls.Add(this.jsonToDB);
            this.Controls.Add(this.createDBFromSQL);
            this.Name = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load_1);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button createDBFromSQL;
        private System.Windows.Forms.Button jsonToDB;
        private System.Windows.Forms.Button deleteFromCodeHistories;
        private System.Windows.Forms.Button restoreDbFromBackUp;
        private System.Windows.Forms.Button insert;
        private System.Windows.Forms.Button dropDb;
    }
}

