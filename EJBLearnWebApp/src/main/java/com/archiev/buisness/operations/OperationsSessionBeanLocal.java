package com.archiev.buisness.operations;

import javax.ejb.Local;


@Local 
public interface OperationsSessionBeanLocal {

	
	public float add(float x, float y);
	
	public float substract(float x, float y);
	
	public float multiply(float x, float y);
	
	public float divide(float x, float y);
	
}
