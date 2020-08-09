import java.util.*;

public class MultiRandom {
    public static void main(String[] args) {
        //生成50w个不重复随机数
        Random random = new Random();
        Set<Integer> nums = new HashSet<Integer>();
        while (nums.size() <= 500000) {
            nums.add(random.nextInt(Integer.MAX_VALUE));
        }
        //方便随机选取
        List<Integer> list = new ArrayList<>(nums);
        //出参数组
        List<Integer> outparameter = new ArrayList<>();
        while (outparameter.size() < 100000) {
            int cursor = random.nextInt(list.size());
            int select = list.get(cursor);
            outparameter.add(select);
            list.remove(cursor);
        }
    }
}
