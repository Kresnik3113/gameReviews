class UpdateUsers < ActiveRecord::Migration[4.2]
  user=User.create!(:email=>'admin@email.ie',:password=>'password')
  def change
    @u = User.find_by( email: 'admin@email.ie' )
    @u.update_attribute :admin, true
  end
end
  