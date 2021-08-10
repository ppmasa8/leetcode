int searchMin(int* nums, int low, int high) {
    int mid = (low+high)/2;
    if (high == low) {
       return nums[low];
    } else {
         if (nums[mid] > nums[high]) {
            return searchMin(nums, mid+1, high);
        } else {
            return searchMin(nums, low, mid);
        }
    }
}

int findMin(int* nums, int numsSize){
    return searchMin(nums, 0, numsSize-1);
}