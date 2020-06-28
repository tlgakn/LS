status = ['awake', 'tired'].sample

alert = if status == 'awake'
  'Be productive!'
else
  'go to sleep'
end

puts alert

