import java.util.*;

public class test {
	public static void main(String[] args){
		ArrayList<String> list = new ArrayList<String>(2);
		list.add("test");
		list.add("test");
		list.add("test");
		list.add("test");
		for ( int i = 0; i < list.size(); i++) {
		    System.out.println(list.get(i) + "を追加しました。");
		}
	}
}
