package com.simbirsoftintensiv.intensiv.repository.countervalue;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.simbirsoftintensiv.intensiv.entity.Counter;
import com.simbirsoftintensiv.intensiv.entity.CounterValue;

public interface ValueRepository extends JpaRepository<CounterValue, Integer> {

    @Modifying
    @Transactional
    @Query("DELETE FROM CounterValue cv WHERE cv.id=:id AND cv.counter.user.id=:userId")
    int delete(@Param("id") int id, @Param("userId") int userId);

    @Query("SELECT cv FROM CounterValue cv WHERE cv.counter=:counter AND cv.dateTime="
            + "(SELECT max(cv.dateTime) FROM CounterValue cv WHERE cv.counter=:counter)")
    CounterValue getLastByCounter(@Param("counter") Counter counter);

    List<CounterValue> getByCounter(@Param("counter") Counter counter);
}