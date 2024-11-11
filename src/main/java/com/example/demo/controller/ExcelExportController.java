package com.example.demo.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.service.ExcelExportService;

import jakarta.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("api/excel")
public class ExcelExportController {

	@Autowired
	ExcelExportService ees;
	
	@RequestMapping("/export")
	public void exportToExcel(HttpServletResponse response)throws IOException{
		ees.exportToExcel(response);
	}
}
