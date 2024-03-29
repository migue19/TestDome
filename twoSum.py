
def find_two_sum(numbers, target_sum):
    """
    :param numbers: (list of ints) The list of numbers.
    :param target_sum: (int) The required target sum.
    :returns: (a tuple of 2 ints) The indices of the two elements whose sum is equal to target_sum
    """
    taken = {}
    for i, num in enumerate(numbers):
        diff = target_sum - num
        if diff in taken:
            return i, taken[diff]
        taken[num] = i
    return None


print(find_two_sum([3, 1, 5, 7, 5, 9], 10))
