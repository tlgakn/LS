family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

immediate_family_members =  family.select { |k, v| (k == :sisters) || (k == :brothers) }

new_array = immediate_family_members.values.flatten

p new_array