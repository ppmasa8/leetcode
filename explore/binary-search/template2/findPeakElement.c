int searchMax(int *nums, int low, int high) {
    int mid = (low+high)/2;
    if (low == high) {
        return low;
    } else if (nums[mid] < nums[mid+1]) {
        return searchMax(nums, mid+1, high);
    } else {
        return searchMax(nums, low, mid);
    }
}

int findPeakElement(int* nums, int numsSize){
    return searchMax(nums, 0, numsSize-1);
}