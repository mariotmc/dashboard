stages = [{ status: 'active', row_order: 0 }, { status: 'paused', row_order: 1 }, { status: 'backlog', row_order: 2 }]

stages.each do |stage|
  Stage.find_or_create_by(status: stage[:status], row_order: stage[:row_order])
end
