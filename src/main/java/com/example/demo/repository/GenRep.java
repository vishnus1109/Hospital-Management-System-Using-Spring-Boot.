package com.example.demo.repository;




import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.example.demo.entity.Gents;

@Repository
public interface GenRep extends JpaRepository<Gents,Integer> {
}