def is_balanced(root)
  $balance = true
  balanced?(root)
  $balance
end

def balanced?(root)
  return -1 if root.nil? 

  left = 1 + balanced?(root.left)
  right = 1 + balanced?(root.right)
  $balance = false if (left - right).abs > 1

  left > right ? left : right
end