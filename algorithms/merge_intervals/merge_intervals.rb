# Definition for an interval.
# class Interval
#     attr_accessor :start, :end
#     def initialize(s=0, e=0)
#         @start = s
#         @end = e
#     end
# end

# @param {Interval[]} intervals
# @return {Interval[]}
def merge(intervals)
  intervals.sort! { |a, b| a.start <=> b.start }
  merged = []
  intervals.each do |interval|
    if merged.length == 0 or merged[-1].end < interval.start
      merged.push interval
    else
      merged[-1].end = [merged[-1].end, interval.end].max
    end
  end
  merged
end
