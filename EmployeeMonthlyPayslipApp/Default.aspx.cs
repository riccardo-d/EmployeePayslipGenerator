using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmployeePayslipGenerator.Library;

namespace EmployeeMonthlyPayslipApp {
	public partial class Default : System.Web.UI.Page {
		protected void Page_Load(object sender, EventArgs e) { }

		protected void UploadButton_Click(object sender, EventArgs e) {
			try {
				if (FileUploader.HasFile) {
					using (Stream fileStream = FileUploader.PostedFile.InputStream) {
						var results = FileProcessor.ProcessFile(fileStream);
					}
				} else {
					UploadMessage.Text = "You have not specified a file.";
				}
			} catch (Exception ex) {
				UploadMessage.Text = "Error Processing File: " + ex.Message.ToString();
			}
		}
	}
}