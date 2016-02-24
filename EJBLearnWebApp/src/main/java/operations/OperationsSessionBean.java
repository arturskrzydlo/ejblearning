package operations;

import javax.ejb.Stateless;

/**
 * Session Bean implementation class OperationsSessionBean
 */
@Stateless
public class OperationsSessionBean implements OperationsSessionBeanRemote, OperationsSessionBeanLocal {

	@Override
	public float add(float x, float y) {
		return x + y;
	}

	@Override
	public float substract(float x, float y) {
		return x - y;
	}

	@Override
	public float multiply(float x, float y) {
		return x * y;
	}

	@Override
	public float divide(float x, float y) {
		return x / y;
	}


    
    

}
