public class Pen {
	String penBrand;
    String penColor;
    Integer penPrice;
    Static Integer penCount = 0;
    
    public Pen() {
        penCount++;
    }
    
    Public void penCountNumber() {
        System.debug(penCount);
    }
    
    Public void Write1() {
     System.debug('This is Write1 Method 1');   
    }
    
    Public void Write2() {
     System.debug('This is Write2 Method 2');   
    }
}