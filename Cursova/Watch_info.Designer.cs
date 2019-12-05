namespace Cursova
{
    partial class Watch_info
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
            this.components = new System.ComponentModel.Container();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.filmsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.participantsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.button1 = new System.Windows.Forms.Button();
            this.idDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nameFilmDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.placeOfMovieDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.budgetDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.numberOfParticipantsDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.theDateOfTheBeginningDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.timeOfMovieDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.theDurationOfTheMovieDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.genreFKDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ageRatingFKDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ratingFKtwoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.genreDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ratingFDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ageRatingDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.idDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.firstNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lastNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.surNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.filmFKDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.eDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.roleFKDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.roleDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.filmsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.participantsBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.BackgroundColor = System.Drawing.Color.White;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idDataGridViewTextBoxColumn,
            this.nameFilmDataGridViewTextBoxColumn,
            this.placeOfMovieDataGridViewTextBoxColumn,
            this.budgetDataGridViewTextBoxColumn,
            this.numberOfParticipantsDataGridViewTextBoxColumn,
            this.theDateOfTheBeginningDataGridViewTextBoxColumn,
            this.timeOfMovieDataGridViewTextBoxColumn,
            this.theDurationOfTheMovieDataGridViewTextBoxColumn,
            this.genreFKDataGridViewTextBoxColumn,
            this.ageRatingFKDataGridViewTextBoxColumn,
            this.ratingFKtwoDataGridViewTextBoxColumn,
            this.genreDataGridViewTextBoxColumn,
            this.ratingFDataGridViewTextBoxColumn,
            this.ageRatingDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.filmsBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(18, 17);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(4);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(585, 521);
            this.dataGridView1.TabIndex = 0;
            // 
            // filmsBindingSource
            // 
            this.filmsBindingSource.DataSource = typeof(HotelLibrary.Films);
            // 
            // dataGridView2
            // 
            this.dataGridView2.AllowUserToOrderColumns = true;
            this.dataGridView2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridView2.AutoGenerateColumns = false;
            this.dataGridView2.BackgroundColor = System.Drawing.Color.White;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idDataGridViewTextBoxColumn1,
            this.firstNameDataGridViewTextBoxColumn,
            this.lastNameDataGridViewTextBoxColumn,
            this.surNameDataGridViewTextBoxColumn,
            this.filmFKDataGridViewTextBoxColumn,
            this.eDataGridViewTextBoxColumn,
            this.roleFKDataGridViewTextBoxColumn,
            this.roleDataGridViewTextBoxColumn,
            this.nameDataGridViewTextBoxColumn});
            this.dataGridView2.DataSource = this.participantsBindingSource;
            this.dataGridView2.Location = new System.Drawing.Point(611, 17);
            this.dataGridView2.Margin = new System.Windows.Forms.Padding(4);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.Size = new System.Drawing.Size(571, 521);
            this.dataGridView2.TabIndex = 1;
            // 
            // participantsBindingSource
            // 
            this.participantsBindingSource.DataSource = typeof(HotelLibrary.Participants);
            // 
            // button1
            // 
            this.button1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.button1.Location = new System.Drawing.Point(18, 546);
            this.button1.Margin = new System.Windows.Forms.Padding(4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(230, 61);
            this.button1.TabIndex = 2;
            this.button1.Text = "EXit";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // idDataGridViewTextBoxColumn
            // 
            this.idDataGridViewTextBoxColumn.DataPropertyName = "id";
            this.idDataGridViewTextBoxColumn.HeaderText = "id";
            this.idDataGridViewTextBoxColumn.Name = "idDataGridViewTextBoxColumn";
            // 
            // nameFilmDataGridViewTextBoxColumn
            // 
            this.nameFilmDataGridViewTextBoxColumn.DataPropertyName = "NameFilm";
            this.nameFilmDataGridViewTextBoxColumn.HeaderText = "NameFilm";
            this.nameFilmDataGridViewTextBoxColumn.Name = "nameFilmDataGridViewTextBoxColumn";
            // 
            // placeOfMovieDataGridViewTextBoxColumn
            // 
            this.placeOfMovieDataGridViewTextBoxColumn.DataPropertyName = "Place_Of_Movie";
            this.placeOfMovieDataGridViewTextBoxColumn.HeaderText = "Place_Of_Movie";
            this.placeOfMovieDataGridViewTextBoxColumn.Name = "placeOfMovieDataGridViewTextBoxColumn";
            // 
            // budgetDataGridViewTextBoxColumn
            // 
            this.budgetDataGridViewTextBoxColumn.DataPropertyName = "Budget";
            this.budgetDataGridViewTextBoxColumn.HeaderText = "Budget";
            this.budgetDataGridViewTextBoxColumn.Name = "budgetDataGridViewTextBoxColumn";
            // 
            // numberOfParticipantsDataGridViewTextBoxColumn
            // 
            this.numberOfParticipantsDataGridViewTextBoxColumn.DataPropertyName = "Number_Of_Participants";
            this.numberOfParticipantsDataGridViewTextBoxColumn.HeaderText = "Number_Of_Participants";
            this.numberOfParticipantsDataGridViewTextBoxColumn.Name = "numberOfParticipantsDataGridViewTextBoxColumn";
            // 
            // theDateOfTheBeginningDataGridViewTextBoxColumn
            // 
            this.theDateOfTheBeginningDataGridViewTextBoxColumn.DataPropertyName = "The_Date_Of_The_Beginning";
            this.theDateOfTheBeginningDataGridViewTextBoxColumn.HeaderText = "The_Date_Of_The_Beginning";
            this.theDateOfTheBeginningDataGridViewTextBoxColumn.Name = "theDateOfTheBeginningDataGridViewTextBoxColumn";
            // 
            // timeOfMovieDataGridViewTextBoxColumn
            // 
            this.timeOfMovieDataGridViewTextBoxColumn.DataPropertyName = "Time_Of_Movie";
            this.timeOfMovieDataGridViewTextBoxColumn.HeaderText = "Time_Of_Movie";
            this.timeOfMovieDataGridViewTextBoxColumn.Name = "timeOfMovieDataGridViewTextBoxColumn";
            // 
            // theDurationOfTheMovieDataGridViewTextBoxColumn
            // 
            this.theDurationOfTheMovieDataGridViewTextBoxColumn.DataPropertyName = "The_Duration_Of_The_Movie";
            this.theDurationOfTheMovieDataGridViewTextBoxColumn.HeaderText = "The_Duration_Of_The_Movie";
            this.theDurationOfTheMovieDataGridViewTextBoxColumn.Name = "theDurationOfTheMovieDataGridViewTextBoxColumn";
            // 
            // genreFKDataGridViewTextBoxColumn
            // 
            this.genreFKDataGridViewTextBoxColumn.DataPropertyName = "Genre_FK";
            this.genreFKDataGridViewTextBoxColumn.HeaderText = "Genre_FK";
            this.genreFKDataGridViewTextBoxColumn.Name = "genreFKDataGridViewTextBoxColumn";
            this.genreFKDataGridViewTextBoxColumn.Visible = false;
            // 
            // ageRatingFKDataGridViewTextBoxColumn
            // 
            this.ageRatingFKDataGridViewTextBoxColumn.DataPropertyName = "Age_Rating_FK";
            this.ageRatingFKDataGridViewTextBoxColumn.HeaderText = "Age_Rating_FK";
            this.ageRatingFKDataGridViewTextBoxColumn.Name = "ageRatingFKDataGridViewTextBoxColumn";
            this.ageRatingFKDataGridViewTextBoxColumn.Visible = false;
            // 
            // ratingFKtwoDataGridViewTextBoxColumn
            // 
            this.ratingFKtwoDataGridViewTextBoxColumn.DataPropertyName = "Rating_FK_two";
            this.ratingFKtwoDataGridViewTextBoxColumn.HeaderText = "Rating_FK_two";
            this.ratingFKtwoDataGridViewTextBoxColumn.Name = "ratingFKtwoDataGridViewTextBoxColumn";
            this.ratingFKtwoDataGridViewTextBoxColumn.Visible = false;
            // 
            // genreDataGridViewTextBoxColumn
            // 
            this.genreDataGridViewTextBoxColumn.DataPropertyName = "Genre";
            this.genreDataGridViewTextBoxColumn.HeaderText = "Genre";
            this.genreDataGridViewTextBoxColumn.Name = "genreDataGridViewTextBoxColumn";
            // 
            // ratingFDataGridViewTextBoxColumn
            // 
            this.ratingFDataGridViewTextBoxColumn.DataPropertyName = "Rating_F";
            this.ratingFDataGridViewTextBoxColumn.HeaderText = "Rating_F";
            this.ratingFDataGridViewTextBoxColumn.Name = "ratingFDataGridViewTextBoxColumn";
            // 
            // ageRatingDataGridViewTextBoxColumn
            // 
            this.ageRatingDataGridViewTextBoxColumn.DataPropertyName = "Age_Rating";
            this.ageRatingDataGridViewTextBoxColumn.HeaderText = "Age_Rating";
            this.ageRatingDataGridViewTextBoxColumn.Name = "ageRatingDataGridViewTextBoxColumn";
            // 
            // idDataGridViewTextBoxColumn1
            // 
            this.idDataGridViewTextBoxColumn1.DataPropertyName = "id";
            this.idDataGridViewTextBoxColumn1.HeaderText = "id";
            this.idDataGridViewTextBoxColumn1.Name = "idDataGridViewTextBoxColumn1";
            // 
            // firstNameDataGridViewTextBoxColumn
            // 
            this.firstNameDataGridViewTextBoxColumn.DataPropertyName = "FirstName";
            this.firstNameDataGridViewTextBoxColumn.HeaderText = "FirstName";
            this.firstNameDataGridViewTextBoxColumn.Name = "firstNameDataGridViewTextBoxColumn";
            // 
            // lastNameDataGridViewTextBoxColumn
            // 
            this.lastNameDataGridViewTextBoxColumn.DataPropertyName = "LastName";
            this.lastNameDataGridViewTextBoxColumn.HeaderText = "LastName";
            this.lastNameDataGridViewTextBoxColumn.Name = "lastNameDataGridViewTextBoxColumn";
            // 
            // surNameDataGridViewTextBoxColumn
            // 
            this.surNameDataGridViewTextBoxColumn.DataPropertyName = "SurName";
            this.surNameDataGridViewTextBoxColumn.HeaderText = "SurName";
            this.surNameDataGridViewTextBoxColumn.Name = "surNameDataGridViewTextBoxColumn";
            // 
            // filmFKDataGridViewTextBoxColumn
            // 
            this.filmFKDataGridViewTextBoxColumn.DataPropertyName = "Film_FK";
            this.filmFKDataGridViewTextBoxColumn.HeaderText = "Film_FK";
            this.filmFKDataGridViewTextBoxColumn.Name = "filmFKDataGridViewTextBoxColumn";
            this.filmFKDataGridViewTextBoxColumn.Visible = false;
            // 
            // eDataGridViewTextBoxColumn
            // 
            this.eDataGridViewTextBoxColumn.DataPropertyName = "E";
            this.eDataGridViewTextBoxColumn.HeaderText = "E";
            this.eDataGridViewTextBoxColumn.Name = "eDataGridViewTextBoxColumn";
            this.eDataGridViewTextBoxColumn.Visible = false;
            // 
            // roleFKDataGridViewTextBoxColumn
            // 
            this.roleFKDataGridViewTextBoxColumn.DataPropertyName = "Role_FK";
            this.roleFKDataGridViewTextBoxColumn.HeaderText = "Role_FK";
            this.roleFKDataGridViewTextBoxColumn.Name = "roleFKDataGridViewTextBoxColumn";
            this.roleFKDataGridViewTextBoxColumn.Visible = false;
            // 
            // roleDataGridViewTextBoxColumn
            // 
            this.roleDataGridViewTextBoxColumn.DataPropertyName = "Role";
            this.roleDataGridViewTextBoxColumn.HeaderText = "Role";
            this.roleDataGridViewTextBoxColumn.Name = "roleDataGridViewTextBoxColumn";
            // 
            // nameDataGridViewTextBoxColumn
            // 
            this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
            this.nameDataGridViewTextBoxColumn.HeaderText = "Name";
            this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
            // 
            // Watch_info
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1200, 623);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dataGridView2);
            this.Controls.Add(this.dataGridView1);
            this.Font = new System.Drawing.Font("Courier New", 11F, System.Drawing.FontStyle.Italic);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Watch_info";
            this.Text = "Watch_info";
            this.Load += new System.EventHandler(this.Watch_info_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.filmsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.participantsBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.BindingSource filmsBindingSource;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.BindingSource participantsBindingSource;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataGridViewTextBoxColumn idDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameFilmDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn placeOfMovieDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn budgetDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn numberOfParticipantsDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn theDateOfTheBeginningDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn timeOfMovieDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn theDurationOfTheMovieDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn genreFKDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ageRatingFKDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ratingFKtwoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn genreDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ratingFDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ageRatingDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn idDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn firstNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn lastNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn surNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn filmFKDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn eDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn roleFKDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn roleDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
    }
}