# @param {String} s
# @return {Integer}
def num_decodings(s)
  return 0 if s.nil? or s.empty? or s[0] == '0'
  dp = Array.new(s.length + 1, 0)
  dp[0], dp[1] = 1, 1
  (2..s.length).each do |i|
    dp[i] += dp[i - 1] if s[i - 1].to_i > 0
    dp[i] += dp[i - 2] if s[i - 2.. i - 1].to_i >= 10 and s[i - 2.. i - 1].to_i <= 26
  end
  dp[s.length]
end
