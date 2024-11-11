package com.example.demo.service;

import java.io.IOException;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.example.demo.entity.OP;
import com.example.demo.repository.OutRep;

import jakarta.servlet.http.HttpServletResponse;

@Service
public class ExcelExportService {

    @Autowired
    OutRep or;

    public void exportToExcel(HttpServletResponse res) throws IOException {
        List<OP> patients = or.findAll();
        Workbook wb = new XSSFWorkbook();
        Sheet sheet = wb.createSheet("OP");

        // Create header row
        Row header = sheet.createRow(0);
        header.createCell(0).setCellValue("Name");
        header.createCell(1).setCellValue("Gender");
        header.createCell(2).setCellValue("Age");
        header.createCell(3).setCellValue("DateOfBirth");
        header.createCell(4).setCellValue("BloodGroup");
        header.createCell(5).setCellValue("MobileNumber");
        header.createCell(6).setCellValue("Issue");

        int rowNum = 1;
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");  // Change the format if needed

        for (OP patient : patients) {
            Row row = sheet.createRow(rowNum++);
            row.createCell(0).setCellValue(patient.getName());
            row.createCell(1).setCellValue(patient.getGender());
            row.createCell(2).setCellValue(patient.getAge());

            // Format the date if it's a LocalDate or Date
            if (patient.getDateofbirth() != null) {
                String formattedDate = patient.getDateofbirth().formatted(dateFormatter);
                row.createCell(3).setCellValue(formattedDate);
            } else {
                row.createCell(3).setCellValue("N/A");
            }

            row.createCell(4).setCellValue(patient.getBloodgroup());
            row.createCell(5).setCellValue(patient.getMobilenumber());
            row.createCell(6).setCellValue(patient.getIssue());
        }

        // Set content type and headers for the response
        res.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        res.setHeader("Content-Disposition", "attachment;filename=patients.xlsx");

        // Write the workbook to the output stream
        wb.write(res.getOutputStream());

        // Close the workbook to avoid resource leaks
        wb.close();
    }
}
