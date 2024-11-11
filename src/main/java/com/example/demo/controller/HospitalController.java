package com.example.demo.controller;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.entity.Admins;
import com.example.demo.entity.Children;
import com.example.demo.entity.Gents;
import com.example.demo.entity.Ladies;
import com.example.demo.entity.Nurse;
import com.example.demo.entity.OP;
import com.example.demo.repository.AdminRep;
import com.example.demo.repository.ChildRep;
import com.example.demo.repository.GenRep;
import com.example.demo.repository.LadRep;
import com.example.demo.repository.NurseRep;
import com.example.demo.repository.OutRep;
import com.example.demo.service.HospitalService;
import jakarta.servlet.http.HttpServletRequest;

@RestController
public class HospitalController {
	
	
	
	@Autowired 
	Admins a1;
    
	@Autowired 
	AdminRep ar;
	
	@Autowired
	HospitalService hs;
	
	@Autowired 
	OP o1;
	
	@Autowired
	OutRep or;
	
	@Autowired
	Gents g1;
	
	@Autowired
	GenRep gr;
	
	@Autowired
	Ladies l1;
	
	@Autowired
	LadRep lr;
	
	@Autowired
	Children c1;
	
	@Autowired 
	ChildRep cr;
	
	@Autowired
	NurseRep nr;
	
	@RequestMapping("/")
	public ModelAndView m1() {
		return new ModelAndView("home");
	}
	
	@RequestMapping("/home")
	public ModelAndView m11 () {
		return new ModelAndView("home");
	}
	@RequestMapping("/adminlogin")
	public ModelAndView dolog() {
		return new ModelAndView("adminlogin");
	}
	
  @RequestMapping(value = "addadmin", method = RequestMethod.POST)
	    public ModelAndView addAdmin(HttpServletRequest req) {
	        ModelAndView mv = new ModelAndView();
	        
	        String email = req.getParameter("email");
	        String mobilenumber = req.getParameter("mobilenumber");
	        String department = req.getParameter("department");
	        String experience = req.getParameter("experience");
	        String category = req.getParameter("category");
	        String shift = req.getParameter("shift");
	        String password = req.getParameter("password");
	        String user=req.getParameter("usertype");
	        String name=req.getParameter("name");

	        if (ar.existsByEmail(email)) {
	            mv.setViewName("adminlogin"); // Return to the JSP page
	            mv.addObject("errorMessage", "This email already exists.");
	            return mv;
	        }

	        try {
	            Admins admin = new Admins(); // Create Admin instance
	            admin.setEmail(email);
	            admin.setMobilenumber(mobilenumber);
	            admin.setDepartment(department);
	            admin.setExperience(experience);
	            admin.setCategory(category);
	            admin.setShift(shift);
	            admin.setPassword(password);
	            admin.setUsertype(user);
	            admin.setName(name);

	            ar.save(admin);
	            mv.setViewName("databook"); // Redirect to success page
	            mv.addObject("successMessage", "Admin added successfully!");
	        } catch (Exception e) {
	            mv.setViewName("error1");
	            mv.addObject("errorMessage", "There was an error: " + e.getMessage());
	        }

	        return mv;
	    }
	

	
	@RequestMapping("/login")
	public ModelAndView log() {
		return new ModelAndView("login");
	}
	
	@RequestMapping("chkusr")
	public ModelAndView chkusr(HttpServletRequest req, @RequestParam String email, @RequestParam String password ) {
		ModelAndView mv=new ModelAndView("login");
		boolean a=hs.checkUser(email,password);
		if(a) {   //checks given email(primary key)
				mv=new ModelAndView("databook");
			}
			else {
				mv=new ModelAndView("home");
			}
		return mv;
	}
	
	@RequestMapping("/outpatient")
	public ModelAndView oplog() {
		return new ModelAndView("outpatient");
	}
	
	@RequestMapping("/addpatients")
	public ModelAndView opadd() {
		return new ModelAndView("addpatients");
	}
	
	@RequestMapping(value="addingop",method=RequestMethod.POST)
	public ModelAndView addingop(HttpServletRequest req) {
		ModelAndView mv=null;
		String name=req.getParameter("name");
		String gender=req.getParameter("gender");
		String age=req.getParameter("age");
		String dob=req.getParameter("dateofbirth");
		String bloodgroup=req.getParameter("bloodgroup");
		String mobilenumber=req.getParameter("mobileNumber");
		String issue=req.getParameter("issue");
		String date=req.getParameter("date");
		
		OP o1=new OP(0,name,gender,age,dob,bloodgroup,mobilenumber,issue,"OP",date);
		or.save(o1);
		try {
			mv=new ModelAndView("oplist");
			List<OP> li=hs.getOp();
			mv.addObject("ops", li);
			return mv;
		}
		catch(Exception e) {
			mv=new ModelAndView("error1");
		}
		return mv;
	}
	
	@RequestMapping("/oplist")    //to view movies(retrieve)
	public ModelAndView oplist() {
		ModelAndView mv=new ModelAndView("oplist");
		List<OP> li=hs.getOp();
		//System.out.println(li);
		mv.addObject("ops", li);
		return mv;
	}
	@RequestMapping("/inpatient")
	public ModelAndView iplog() {
		return new ModelAndView("inpatient");
	}
	
	@RequestMapping("/gents")
	public ModelAndView glog() {
		return new ModelAndView("gents");
	}
	
	@RequestMapping(value="ingents",method=RequestMethod.POST)
	public ModelAndView ingents(HttpServletRequest req) {
		ModelAndView mv=null;
		String name=req.getParameter("name");
		String age=req.getParameter("age");
		String dateofbirth=req.getParameter("dateofbirth");
		String bloodgroup=req.getParameter("bloodgroup");
		String mobilenumber=req.getParameter("mobilenumber");
		String address=req.getParameter("address");
		String guardian = req.getParameter("guardian");	
		String aadhaarnumber=req.getParameter("aadhaarnumber");
		String problem=req.getParameter("problem");
		String admitedin=req.getParameter("admitin");
		String admitdate=req.getParameter("admiton");
		String dischargedate=req.getParameter("discharge");
		
		
		Gents g1=new Gents(0,name,age,dateofbirth,bloodgroup,mobilenumber,address,guardian,aadhaarnumber,problem,admitedin,admitdate,dischargedate,"Gents");
		gr.save(g1);
		try {
			List<Gents>li=hs.ingen();
			ModelAndView mv1=new ModelAndView("viewgen");
			mv1.addObject("gen",li);
			return mv1;
		}
		catch(Exception e) {
			mv=new ModelAndView("error1");
			}
		return mv;
	}
   
	@RequestMapping("/ladies")
	public ModelAndView llog() {
		return new ModelAndView("ladies");
	}
	
	@RequestMapping(value="inlads",method=RequestMethod.POST)
	public ModelAndView inlads(HttpServletRequest req) {
		ModelAndView mv=null;
		String name=req.getParameter("name");
		String age=req.getParameter("age");
		String dateofbirth=req.getParameter("dateofbirth");
		String bloodgroup=req.getParameter("bloodgroup");
		String mobilenumber=req.getParameter("mobilenumber");
		String address=req.getParameter("address");
		String guardian = req.getParameter("guardian");
		String aadhaarnumber=req.getParameter("aadhaarnumber");
		String problem=req.getParameter("problem");
		String admitedin=req.getParameter("admitin");
		String admitdate=req.getParameter("admiton");
		String dischargedate=req.getParameter("discharge");
		
		
		Ladies l1=new Ladies(0,name,age,dateofbirth,bloodgroup,mobilenumber,address,guardian,aadhaarnumber,problem,admitedin,admitdate,dischargedate,"Ladies");
		lr.save(l1);
		try {
			List<Ladies>li=hs.inlad();
			ModelAndView mv1=new ModelAndView("viewlad");
			mv1.addObject("lad",li);
			return mv1;
		}
		catch(Exception e) {
			mv=new ModelAndView("error1");
			}
		return mv;
	}

	@RequestMapping("/children")
	public ModelAndView clog() {
		return new ModelAndView("children");
	}
	
	@RequestMapping(value="inchild",method=RequestMethod.POST)
	public ModelAndView inchild(HttpServletRequest req) {
		ModelAndView mv=null;
		String name=req.getParameter("name");
		String age=req.getParameter("age");
		String dateofbirth=req.getParameter("dateofbirth");
		String bloodgroup=req.getParameter("bloodgroup");
		String mobilenumber=req.getParameter("mobilenumber");
		String address=req.getParameter("address");
		String father=req.getParameter("father");
		String mother=req.getParameter("mother");
		String aadhaarnumber=req.getParameter("aadhaarnumber");
		String problem=req.getParameter("problem");
		String admitedin=req.getParameter("admitin");
		String admitdate=req.getParameter("admiton");
		String dischargedate=req.getParameter("discharge");
		
		
		Children c1=new Children(0,name,age,dateofbirth,bloodgroup,mobilenumber,address,father,mother,aadhaarnumber,problem,admitedin,admitdate,dischargedate,"Children");
		cr.save(c1);
		try {
			List<Children>li=hs.inchild();
			ModelAndView mv1=new ModelAndView("viewchild");
			mv1.addObject("child",li);
			return mv1;
		}
		catch(Exception e) {
			mv=new ModelAndView("error1");
			}
		return mv;
	}
	
	@RequestMapping("/viewgen")
		public  ModelAndView ingen() {
			List<Gents>li=hs.ingen();
			ModelAndView mv=new ModelAndView("viewgen");
			mv.addObject("gen",li);
			return mv;
		}
	@RequestMapping("/viewlad")
	public  ModelAndView inlad() {
		List<Ladies>li=hs.inlad();
		ModelAndView mv=new ModelAndView("viewlad");
		mv.addObject("lad",li);
		return mv;
	}
	
	@RequestMapping("/viewchild")
	public  ModelAndView inchild() {
		List<Children>li=hs.inchild();
		ModelAndView mv=new ModelAndView("viewchild");
		mv.addObject("child",li);
		return mv;
	}
	


	    @RequestMapping("/viewadmin")
		public  ModelAndView viewadmin() {
			List<Admins>li=hs.viewadmin();
			ModelAndView mv=new ModelAndView("viewadmin");
			mv.addObject("admins",li);
			return mv;
		}
	    
	    @RequestMapping("/updateadmin")
	    public ModelAndView updateadmin(HttpServletRequest req,@RequestParam String email) {
	    	ModelAndView mv=new ModelAndView("updateadmin");
	    	Admins a1=hs.getById(email);
	    	mv.addObject("admins",a1);
	    	return mv;
	    }
	    	
	    @RequestMapping(value="updateadmindetails",method=RequestMethod.POST)
	    public ModelAndView updatead(HttpServletRequest req) {
	    	ModelAndView mv= null;
	    	String email = req.getParameter("email");
	    	//String password=req.getParameter("password");
	        String department = req.getParameter("department");
	        String experience = req.getParameter("experience");
	        String shift = req.getParameter("shift");
	        String mobilenumber = req.getParameter("mobilenumber");
	        String category = req.getParameter("category");
	        String password = req.getParameter("password");
	        String name=req.getParameter("name");
	        String usertype=req.getParameter("usertype");
            Admins a1=new Admins(email,name,department,experience,shift,mobilenumber,category,usertype,password);
            try {
        	   ar.save(a1);
        	   List<Admins>li=hs.viewadmin();
   			ModelAndView mv1=new ModelAndView("viewadmin");
   			mv1.addObject("admins",li);
   			return mv1; 
	          }
	       catch(Exception e) {
	       mv=new ModelAndView("error1");
	           }
	       return mv;
	    }
	    
	    @RequestMapping(value="deleteadmin",method=RequestMethod.GET)
	    public ModelAndView deleteadmin(HttpServletRequest req) {
	    	ModelAndView mv=null;
	    	String email=req.getParameter("email");
	    	try {
	    		hs.deleteAdmin(email);
	    		List<Admins>li=hs.viewadmin();
				ModelAndView mv1=new ModelAndView("viewadmin");
				mv1.addObject("admins",li);
				return mv1;  	}
	    	catch(Exception e) {
	    		mv=new ModelAndView("error");
	    	}
	    	return mv;
	    }
	    
	    @RequestMapping("/allRecords")
	    public ModelAndView getAllRecords() {
	    	List<Gents>li=hs.ingents();
	    	List<Ladies>li1=hs.lady();
	    	ModelAndView mv=new ModelAndView("allRecords");
	    	mv.addObject("gents",li);
	    	mv.addObject("ladies",li1);
	    	return mv;
	    }
	    
	    @RequestMapping(value = "search",method = RequestMethod.POST)
	    public ModelAndView search(HttpServletRequest req) {
	        ModelAndView mv = new ModelAndView();
	        String name = req.getParameter("search"); // Get the 'search' parameter from form

	        // Search in the database through the repository method
	        List<OP> entities = or.findByName(name);

	        if (!entities.isEmpty()) {
	            // If names are found, add the list of entities to the ModelAndView
	            mv.addObject("entities", entities); // Add the result list to the ModelAndView
	            mv.setViewName("searchResult"); // Direct to the search result page (JSP or Thymeleaf)
	        } else {
	            // If name is not found, show an error message
	            mv.addObject("errorMessage", "No results found for: " + name);
	            mv.setViewName("search"); // Stay on the search page
	        }

	        return mv;
	    }

	    @RequestMapping("/departments")
	    public ModelAndView department() {
	        return new ModelAndView("departments");
	    }
	    
	    @RequestMapping("/appointment")
	    public ModelAndView appointment() {
	    	return new ModelAndView("appointment");
	    }
	    
        @RequestMapping("/about")
        public ModelAndView about() {
        	return new ModelAndView("about");
        }
	    

@RequestMapping("/emergency")
public ModelAndView emergency() {
	return new ModelAndView("emergency");
}

@RequestMapping("/surgery")
public ModelAndView surgery() {
	return new ModelAndView("surgery");
}
@RequestMapping("/icu")
public ModelAndView icu() {
	return new ModelAndView("icu");
}

@RequestMapping("/cardiology")
public ModelAndView cardiology() {
	return new ModelAndView("cardiology");
}

@RequestMapping("/neurology")
public ModelAndView neurology() {
	return new ModelAndView("neurology");
}

@RequestMapping("/laboratory")
public ModelAndView laboratory() {
	return new ModelAndView("laboratory");
}

@RequestMapping("/psychiatry")
public ModelAndView psychiatric() {
	return new ModelAndView("psychiatry");
}

@RequestMapping("/radiology")
public ModelAndView radiology() {
	return new ModelAndView("radiology");
}

@RequestMapping("/rehabiliation")
public ModelAndView rehabiliation() {
	return new ModelAndView("rehabiliation");
}

@RequestMapping("/ent")
public ModelAndView ent() {
	return new ModelAndView("ent");
}

@RequestMapping("/geriatric")
public ModelAndView geriatric() {
	return new ModelAndView("geriatric");
}
@RequestMapping("/pregnancy")
public ModelAndView pregnancy() {
	return new ModelAndView("pregnancy");
}

@RequestMapping("/pediatric")
public ModelAndView pediatric() {
	return new ModelAndView("pediatric");
}
@RequestMapping("/privacy")
public ModelAndView priv() {
	return new ModelAndView("privacy");
}
@RequestMapping("/disclaimer")
public ModelAndView disx() {
	return new ModelAndView("disclaimer");
}
@RequestMapping("/contact")
public ModelAndView con() {
	return new ModelAndView("contact");
}
@RequestMapping("/prodet")
public ModelAndView prod() {
	return new ModelAndView("prodet");
}


@RequestMapping("/nursedetail")
public ModelAndView nurse() {
	return new ModelAndView("nursedetail");
}

@RequestMapping(value="addnurse",method=RequestMethod.POST)
public ModelAndView addnurse(HttpServletRequest req) {
	ModelAndView mv=null;
	String name=req.getParameter("name");
	String idnumber=req.getParameter("idnumber");
	String department=req.getParameter("department");
	String dateofbirth=req.getParameter("dateofbirth");
	String idproof=req.getParameter("idproof");
	String idproofnumber=req.getParameter("idproofnumber");
	String contact=req.getParameter("contact");
	String bloodgroup=req.getParameter("bloodgroup");
	String timing=req.getParameter("timing");
	
	Nurse n1=new Nurse(name,idnumber,department,dateofbirth,idproof,idproofnumber,contact,bloodgroup,timing);
	nr.save(n1);
	try {
		mv=new ModelAndView("nurselist");
		List<Nurse> li=hs.getNurse();
		mv.addObject("nur", li);
		return mv;
	}
	catch(Exception e) {
		mv=new ModelAndView("error1");
	}
	return mv;
}
@RequestMapping("/nurselist")
public  ModelAndView nu() {
	List<Nurse>li=hs.getNurse();
	ModelAndView mv=new ModelAndView("nurselist");
	mv.addObject("nur",li);
	return mv;
}
}