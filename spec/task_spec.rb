require 'spec_helper'

describe Task do
  #   it 'can return the not done tasks' do
  #     not_done_tasks = (1..2).to_a.map do  |number| Task.create(:name => "task #{number}", :done => false)
  #     end
  #     done_task = Task.create(:name => 'done task', :done => true)
  #     Task.not_done.should eq not_done_tasks
  #   end

  #   it "belongs to a list" do
  #     list = List.create({:name => "list"})
  #     task = Task.create({:name => "task", :list_id => list.id})
  #     task.list.should eq list
  #   end
  # end

  it "validates presence of name" do
    task = Task.new({:name => ''})
    task.save.should eq false
  end

  it "ensures the length of name is at most 50 characters" do
    task = Task.new({:name => 'a' * 51})
    task.save.should eq false

  end

end
