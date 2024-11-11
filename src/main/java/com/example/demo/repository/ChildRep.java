package com.example.demo.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Children;

@Repository
public interface ChildRep extends JpaRepository<Children,Integer>{

}
