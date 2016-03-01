package com.archiev.buisness.encrypt.example;

public interface EncryptCommonBuisness {

	String encrypt(String inpu) throws IllegalArgumentException;
	
	String decrypt(String input) throws IllegalArgumentException;
	
	String hash(String input) throws IllegalArgumentException;
	
	boolean compare (String hash, String input) throws IllegalArgumentException;
	
}
