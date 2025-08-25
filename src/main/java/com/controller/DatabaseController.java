package com.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.model.Student;
import com.model.User;
import com.service.StudentService;
import com.service.UserService;

@Controller
public class DatabaseController {
	
	
	@Autowired
	StudentService studentService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(path="/login", method=RequestMethod.POST)
	public String  home(@RequestParam("email")String email, @RequestParam("password")
	String password,
	@RequestParam("role")String role, 
	Model model){
		if(role.equals("Admin")){
			if(email.equals("admin@gmail.com") && password.equals("admin")){
				this.userService.getStudent(email, password);
				return "home";
			}
		}
		else if(role.equals("Student")){
			if(email.equals(email) && password.equals(password)){
		       User user= userService.getStudent(email, password) ;
		       if(user!=null){
			   return "studentView";
		     }
			else{
				model.addAttribute("msg","This is Error");
				return "success";
			}}
		}
		return "";
	}
	
	@RequestMapping(path="/addstudent",method=RequestMethod.POST)
	public String addStudent(@ModelAttribute Student student, Model model){
	      this.studentService.createStudent(student);
	      return "addstudentsuccess";
	}
	
/*	@RequestMapping(path="/update" , method=RequestMethod.POST)
	public String updateStudent(@ModelAttribute Student student , Model model){
		this.studentService.update(student);
		return "update";
	}*/
	
				// New mapping to show the update form with existing data
						@RequestMapping(value = "/showUpdateStudentForm", method = RequestMethod.GET)
						public String showUpdateStudentForm(@RequestParam("id") int id, Model model) {
							Student student = studentService.getStudentByRollNumber(id);
							if (student != null) {
								model.addAttribute("student", student);
								return "updateStudent"; // JSP page to display the update form
							} else {
								model.addAttribute("message", "Student with Roll Number " + id + " not found for update.");
								return "studentNotFound"; // Redirect to a not found page
							}
						}
						
						// New mapping to handle the actual update submission
						@RequestMapping(value = "/updateStudentDetails", method = RequestMethod.POST)
						public String updateStudent(@ModelAttribute Student student, Model model) {
							// First, get the existing student to retain the 'id' which is @Id and auto-generated
							Student existingStudent = studentService.getStudentByRollNumber(student.getId());
			
							if (existingStudent != null) {
								// Update the mutable fields from the form submission to the existing student
								existingStudent.setName(student.getName());
								existingStudent.setHindi(student.getHindi());
								existingStudent.setEnglish(student.getEnglish());
								existingStudent.setMaths(student.getMaths());
								existingStudent.setComputer(student.getComputer());
								
								studentService.updateStudent(existingStudent); // Pass the updated existing student
								model.addAttribute("message", "Student details updated successfully for Roll Number: " + student.getId());
								return "updateStudentSuccess"; // JSP for success message
							} else {
								model.addAttribute("message", "Student with Roll Number " + student.getId() + " not found for update.");
								return "studentNotFound"; // JSP for not found message
							}
						}
				
	@RequestMapping(path="/delete", method=RequestMethod.POST)
	public String deleteStudent(@ModelAttribute Student student, Model model){
		this.studentService.delete(student);
		return "delete";
	}
	
	@RequestMapping(path="/search", method=RequestMethod.POST)
	public String searchById(@RequestParam("id") int studentId ,Model model){
		
		Student student=studentService.getStudentById(studentId);
		model.addAttribute("student1", student);
		return "searchById";
	}
	
	
	//Student Search
	@RequestMapping(path="/searchStudent", method=RequestMethod.POST)
	public String studentSearchById(@RequestParam("id") int studentId ,Model model){
		
		Student student=studentService.getStudentById(studentId);
		model.addAttribute("student1", student);
		return "StudentResult";
	}
	
@RequestMapping(path="/allStudent")
	public String getAllStudent(Model model){
		 List<Student> student= studentService.getAllStudent();
		 model.addAttribute("students", student);
		 return "allStudent";
	}


		// New method to download student report as Excel
		@RequestMapping("/downloadStudentReportExcel")
		public void downloadStudentReportExcel(@RequestParam("id") int studentRollNumber, HttpServletResponse response) throws IOException {
			Student student = studentService.getStudentById(studentRollNumber);
		
			if (student == null) {
				// Handle case where student is not found
				response.setStatus(HttpServletResponse.SC_NOT_FOUND);
				response.getWriter().write("Student with Roll Number " + studentRollNumber + " not found.");
				return;
			}
		
			// Create a new Excel workbook
			Workbook workbook = new XSSFWorkbook();
			Sheet sheet = workbook.createSheet("Student Report");
		
			// Create header row
			Row headerRow = sheet.createRow(0);
			String[] headers = {"Field", "Value"};
			for (int i = 0; i < headers.length; i++) {
				Cell cell = headerRow.createCell(i);
				cell.setCellValue(headers[i]);
			}
		
			
			
			
			// Populate data rows
			int rowNum = 1;
			createCell(sheet.createRow(rowNum++), "Student ID", String.valueOf(student.getId()));
			createCell(sheet.createRow(rowNum++), "Student Name", student.getName());
		
			// Marks
			rowNum++; // Empty row for separation
			createCell(sheet.createRow(rowNum++), "Subject", "Marks"); // Sub-header
			createCell(sheet.createRow(rowNum++), "Hindi", String.valueOf(student.getHindi()));
			createCell(sheet.createRow(rowNum++), "English", String.valueOf(student.getEnglish()));
			createCell(sheet.createRow(rowNum++), "Maths", String.valueOf(student.getMaths()));
			createCell(sheet.createRow(rowNum++), "Computer", String.valueOf(student.getComputer()));
		
			// Total and Percentage
			int totalMarks = student.getHindi() + student.getEnglish() + student.getMaths() + student.getComputer();
			double maxMarks = 500.0; // Assuming 5 subjects * 100 marks each
			double percentage = (totalMarks / maxMarks) * 100;
		
			rowNum++; // Empty row for separation
			createCell(sheet.createRow(rowNum++), "Total Marks", String.valueOf(totalMarks));
			createCell(sheet.createRow(rowNum++), "Percentage", String.format("%.2f%%", percentage));
		
		
			// Auto-size columns
			for (int i = 0; i < headers.length; i++) {
				sheet.autoSizeColumn(i);
			}
		
			// Set response headers for file download
			response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
			response.setHeader("Content-Disposition", "attachment; filename=\"StudentReport_" + student.getId() + ".xlsx\"");
		
			// Write the workbook to the response output stream
			workbook.write(response.getOutputStream());
			workbook.close();
		}
		
		// Helper method to create cells for the Excel report
		private void createCell(Row row, String header, String value) {
			row.createCell(0).setCellValue(header);
			row.createCell(1).setCellValue(value);
		}

	

}
