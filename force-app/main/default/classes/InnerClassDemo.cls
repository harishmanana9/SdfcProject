public virtual class InnerClassDemo {
	private Integer no;
    
    public class InnerClass {
        public Integer add100 () {
           	InnerClassDemo obj = new InnerClassDemo();
            return obj.no+100;
        }
    }
}