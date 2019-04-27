package com.newdv.poc.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "uuid")
    private String uuid;

    @OneToMany(mappedBy = "task")
    private List<TaskReport> taskReports;

    @OneToMany(mappedBy = "task")
    private List<TaskStatus> taskStatuses;
}
