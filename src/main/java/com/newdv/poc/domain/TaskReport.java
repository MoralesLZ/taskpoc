package com.newdv.poc.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class TaskReport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String uuid;

    @ManyToOne
    @JoinColumn(name = "task_uuid" , columnDefinition = "VARCHAR")
    private Task task;

}
