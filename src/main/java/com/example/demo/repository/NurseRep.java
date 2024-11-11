package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Nurse;

@Repository
public interface NurseRep extends JpaRepository<Nurse,String> {

}
