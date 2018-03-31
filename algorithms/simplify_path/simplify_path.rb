# @param {String} path
# @return {String}
def simplify_path(path)
  names = path.split("/")
  stack = Array.new
  names.each do |name|
    if name == ".."
      stack.pop
    elsif name == "." or name.size == 0
      next
    else
      stack.push name
    end
  end
  return "/" + stack.join("/")
end
