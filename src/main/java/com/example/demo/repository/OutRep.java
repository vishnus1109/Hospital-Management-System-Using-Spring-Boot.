package com.example.demo.repository;




import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.OP;

@Repository
public interface OutRep extends JpaRepository<OP,Integer> {

	boolean existsByName(String name);

	List<OP> findByName(String name);

	

}
