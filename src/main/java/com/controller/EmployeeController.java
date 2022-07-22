package com.controller;

import java.util.List;

import javax.naming.Binding;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.EmployeeBean;
import com.dao.EmployeeDao;

@Controller
//@RequestMapping("employee")
public class EmployeeController {
	
	@RequestMapping("/dashboard")
	public String home() {
		return "redirect:newdashboard";
	}
	@RequestMapping("/newdashboard")
	public String newDashBoard() {
		System.out.println("new Dashboard");
		return "home";
	}
	 
	
	@RequestMapping("addEmployee")
	public String addEmployee(Model model) {
		//addemployee  form
		EmployeeBean employeeBean = new EmployeeBean();
		model.addAttribute("employeeBean",employeeBean);
		return "addEmployee";
	}
	//get post put delete badhi j aply thai che 
//	@RequestMapping("insertemployee")
//	@RequestMapping(value = "/insertemployee",method = RequestMethod.get)
//	@PostMapping(value = "insertemployee")
	/*public String insertEmployee(
			@RequestParam("employeeName") String name,
			@RequestParam("employeeAge") String age) {
		System.out.println(name);
		System.out.println(age);
		System.out.println("insert Called");
		return "home";
	}*/
	@Autowired
	EmployeeDao employeeDao;
	
	@PostMapping(value = "/insertemployee")
	public String insertEmployee(@Valid @ModelAttribute("employeeBean") EmployeeBean employeeBean,BindingResult br,HttpSession session) {
		if(br.hasErrors()) {
				return "addEmployee";
		}
		System.out.println(employeeBean.getEmployeeName());
		System.out.println(employeeBean.getEmployeeAge());
		int res = employeeDao.addEmployee(employeeBean); 
		
		if(res>0) {
			System.out.println("Data Inserted");
			session.setAttribute("employeeBean", employeeBean);

			return "redirect:viewemployees";
		}
		return "redirect:viewemployees";
		
	}
	@GetMapping(value = "/viewemployees")
	public  String employeeList(Model model){
		List<EmployeeBean> list = employeeDao.gellAllEmployees();
		model.addAttribute("list",list);
		return "employeeList";
		
	}

	/*
	 * @RequestMapping(value = "/deleteemployee/{ename}") public String
	 * deleteEmployee(@PathVariable("ename") String eName) {
	 * System.out.println("deleted Employee "+eName); return "home"; }
	 */
	@RequestMapping(value = "/deleteemployee/{eid}")
	public String deleteEmployee(@PathVariable("eid") int eId) {
//		int eId = Integer.parseInt(id);
		System.out.println("deleted Employee "+eId);
		employeeDao.deleteEmployee(eId);
		return "redirect:/employee/viewemployees";
	}
	@RequestMapping(value = "/editemployee/{eid}")
	public String editEmployee(@PathVariable("eid") int eId,Model model) {
		EmployeeBean employeeBean = employeeDao.getEmployeeById(eId);
		model.addAttribute("employeeBean",employeeBean);
		
		return "editEmployee";

	}
	@RequestMapping(value = "/updateemployee")
	public String updateEmployee(EmployeeBean employeeBean) {
		System.out.println("Update Method called");
		employeeDao.updateEmployee(employeeBean);
		return "redirect:/employee/viewemployees";
		
	}
	
	@PostMapping("/employeelogin")
	public String employeeLogin(@RequestParam("txtEmployeeEmail") String email,
			@RequestParam("txtEmployeePassword") String password,HttpSession session) {
			EmployeeBean employeeBean = employeeDao.loginEmployee(email, password);
		if(employeeBean!=null) {
			System.out.println("EmployeeBean not null");
			session.setAttribute("employeeBean", employeeBean);
			return "redirect:/viewemployees";
		}
		System.out.println("EmployeeBean  null");

				return "login";
		
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
}
