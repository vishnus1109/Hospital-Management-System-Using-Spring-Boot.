package com.example.demo.repository;






import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Admins;


@Repository
public interface AdminRep extends JpaRepository<Admins,String> {

	boolean existsByEmail(String email1);

	Admins findByMobilenumber(String mobilenumber);




 
 

}
