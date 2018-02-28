# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  i, j = 0, 0
  while i < n
    while j < m and nums1[j] <=   nums2[i]
      j += 1
    end
    k = m
    while k > j
      nums1[k] = nums1[k - 1]
      k -= 1
    end
    nums1[j] = nums2[i]
    j += 1
    m += 1
    i += 1
  end
end
