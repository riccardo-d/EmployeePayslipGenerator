using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace EmployeePayslipGenerator.Library {
	public static class FileProcessor {
		public static String ProcessFile(Stream fileStream) {
			using (StreamReader streamReader = new StreamReader(fileStream)) {
				String line;
				while (streamReader.ReadLine() != null) {
				}
			}

			return null;
		}
	}
}
