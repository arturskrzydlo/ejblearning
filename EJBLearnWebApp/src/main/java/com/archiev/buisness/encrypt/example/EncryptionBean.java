package com.archiev.buisness.encrypt.example;
import org.jboss.logging.Logger;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.ejb.Local;
import javax.ejb.Remote;
import javax.ejb.SessionContext;
import javax.ejb.Stateless;

@Stateless(name="EncryptionEJB")
public class EncryptionBean implements EncryptionLocalBuisness{

	private final static Logger log = Logger.getLogger(EncryptionBean.class);
	/**
	* Passphrase to use for the key in cipher operations; lazily initialized
	* and loaded via SessionContext.lookup
	*/
	private String ciphersPassphrase;
	/**
	* Algorithm to use in message digest (hash) operations, injected
	* via @Resource annotation
	*/
	@Resource
	private String messageDigestAlgorithm;
	
	
	@PostConstruct
	public void initialize(){
		log.info("Initializing part of "+PostConstruct.class.getName()+ " life cycle");
		// Get the passphrase for symmetric encryption
		final String passphrase = this.getCiphersPassphrase();
		// Do initialization tasks here
	}
	@Override
	public String encrypt(String inpu) throws IllegalArgumentException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String decrypt(String input) throws IllegalArgumentException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String hash(String input) throws IllegalArgumentException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean compare(String hash, String input)
			throws IllegalArgumentException {
		// TODO Auto-generated method stub
		return false;
	}
	public String getCiphersPassphrase() {
		return ciphersPassphrase;
	}
	public void setCiphersPassphrase(String ciphersPassphrase) {
		this.ciphersPassphrase = ciphersPassphrase;
	}
	public String getMessageDigestAlgorithm() {
		return messageDigestAlgorithm;
	}
	public void setMessageDigestAlgorithm(String messageDigestAlgorithm) {
		this.messageDigestAlgorithm = messageDigestAlgorithm;
	}

	
}
