# @param {String} s
# @return {String[]}
def restore_ip_addresses(s)
  ips = []
  ip = []
  _restore(ips, ip, s, 1)
  return ips
end

def _restore(ips, ip, s, level)
  return if s.nil? or s.empty?
  if level == 4
    p = s.to_i
    return if p > 255
    return if p.to_s != s
    ip.push(s)
    ips.push(ip.join('.'))
    ip.pop
  else
    3.times.each do |i|
      return if s.length < (i + 1)
      p = s[0..i].to_i
      return if p > 255
      return if p.to_s != s[0..i]
      ip.push(s[0..i])
      _restore(ips, ip, s[(i+1)..-1], level + 1)
      ip.pop
    end
  end
end
