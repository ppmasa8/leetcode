int removeDuplicates(int* nums, int numsSize){
    if (numsSize == 0) { 
        return 0;
    }
    int cnt = 1, j = 0;
    for (int i=0; i< numsSize-1; i++)  {
        if (nums[i] != nums[i+1]) {
            cnt++;
            nums[i+1-j] = nums[i+1];
        }
        else j++;
    }
    return cnt;
}