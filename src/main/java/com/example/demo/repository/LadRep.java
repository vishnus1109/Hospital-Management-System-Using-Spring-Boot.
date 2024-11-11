package com.example.demo.repository;




import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Ladies;

@Repository
public interface LadRep extends JpaRepository<Ladies,Integer> {

}
