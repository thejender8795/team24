
public class Category implements Serializable{

	private static final long serialVersionUID = -9165225869649765082L;
	private int id;// Primary key
	private String name;// name
	private Set<CategorySecond> seconds = new HashSet<CategorySecond>();
	private List<CategorySecond> secondsList = null;
	
	public Category() {
		super();
	}
	public Category(int id) {
		super();
		this.id = id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<CategorySecond> getSeconds() {
		return seconds;
	}
	public void setSeconds(Set<CategorySecond> seconds) {
		this.seconds = seconds;
	}
	public String getList() {
		if (seconds.size() == 0){
			return null;
		}
		StringBuffer buffer = new StringBuffer("(");
		for (CategorySecond c : seconds) {
			buffer.append(c.getId());
			buffer.append(",");
		}
		buffer.deleteCharAt(buffer.length()-1);  
		buffer.append(")");
		return buffer.toString();
	}
	public List<CategorySecond> getSecondsList() {
		secondsList = new ArrayList<CategorySecond>();
		secondsList.addAll(seconds);
		Collections.sort(secondsList, new IdComparator());
		return secondsList;
	}
	public void setSecondsList(List<CategorySecond> secondsList) {
		this.secondsList = secondsList;
	}
	// Custom Comparators: Sort by category id 
    static class IdComparator implements Comparator<CategorySecond> {  
        public int compare(CategorySecond o1, CategorySecond o2) {// 实现接口中的方法  
            return o1.getId() - o2.getId();  
        }  
    } 
}