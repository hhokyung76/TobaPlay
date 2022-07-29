package com.toba.tobaplay.proc.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

import java.io.Serializable;

@Slf4j
@Setter
@Getter
@ToString
public class JobDto implements Serializable {
    private String jobId;
    private String jobName;
    private String jobDesc;
    private String cronExpr;
    private boolean inActive;


}
