package operations;

import javax.ejb.Remote;

@Remote
public interface OperationsSessionBeanRemote {

	
	public float add(float x, float y);
	
	public float substract(float x, float y);
	
	public float multiply(float x, float y);
	
	public float divide(float x, float y);
	
}
