// The API isBadVersion is defined for you.
// bool isBadVersion(int version);

int firstBadVersion(int n) {
    long long low=1;
    long long high=n;
    long long mid;
    while (low <= high) {
        mid = (low + high)/2;
        if (isBadVersion(mid)) {
            if (isBadVersion(mid-1)) {
                high = mid - 1;
            } else {
                return mid;
            }
        } else {
            low = mid + 1;
        }
    }
    return 0;
}