package com.exam.design;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ApplyDto {

	private int num;
	private String userName;
	private String userPhone;
	private String part;
	private String motive;
	private Timestamp regTM;
}
