class Solution {
    public boolean containsDuplicate(int[] nums) {
        // declare a hash map 
        HashMap<Integer, Boolean> map = new HashMap<>();
        // iterate through the nums array
        for (int i = 0; i < nums.length; i++) {
            // if the num is listed in the hash, return true 
            if (map.containsKey(nums[i])) {
                return true;
            }
            map.put(nums[i],true);
            // if not, save it to the hash
        }
        return false;
    }
}