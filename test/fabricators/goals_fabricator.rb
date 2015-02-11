Fabricator(:goal) do
	category 'truc'
end

Fabricator(:goal_to_complete, class_name: :goal) do
	status false
end