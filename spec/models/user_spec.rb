require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it "password and confirm password shouls be same" do
      user=User.create(
        password: "example@123",
      password_confirmation: "example@1234"
      )
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    it "password  cound not be blank" do
      user=User.create(
        password: "",
        password_confirmation: "example@1234"
      )
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end
    
    it "confirm password  cound not be blank" do
      user=User.create(
        password: "example@1234",
        password_confirmation:""
      )
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")

    end

    it "first name lst emal email could not be blank" do
      user=User.create(
        first_name:nil,
        last_name:nil,
        email:nil
      )
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
      expect(user.errors[:last_name]).to include("can't be blank")
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'is not valid with a non-unique email (case-insensitive)' do
      User.create(
        email: 'test@example.com',
        first_name: 'John',
        last_name: 'Doe',
        password: 'password',
        password_confirmation: 'password'
      )

      user = User.new(
        email: 'TEST@example.com',
        first_name: 'Jane',
        last_name: 'Doe',
        password: 'password',
        password_confirmation: 'password'
      )

      expect(user).to_not be_valid
      expect(user.errors[:email]).to include("has already been taken")
      # puts user.errors[:email].inspect
    end

    it "password must be minimum 8 character" do
      user=User.create(
        first_name:"ramon",
        last_name:"ddj",
        email:"ramon@example.com",
        password:"12345"
      )
      user.valid?
        # puts user.errors.inspect
      expect(user.errors[:password]).to include("is too short (minimum is 1 characters)")  
    end
    
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
    it 'authenticates with leading and trailing spaces in email' do
      user = User.create(
        first_name: 'Jane',
        last_name: 'Doe',
        email: 'test@example.com',
        password: 'password'
      )

      authenticated_user = User.authenticate_with_credentials('  test@example.com  ', 'password')
      expect(authenticated_user).to eq(user)
    end

    it 'authenticates with incasesenstive search for email' do
      user = User.create(
        first_name: 'Jane',
        last_name: 'Doe',
        email: 'test@example.com',
        password: 'password'
      )

      authenticated_user = User.authenticate_with_credentials('TEST@example.com', 'password')
      expect(authenticated_user).to eq(user)
    end
  end


end


