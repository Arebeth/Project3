class PetsController < ApplicationController
  
  def index
    @user = User.find(params[:user_id])
    @pets = @user.pets
  end

  def new
    @user = User.find(params[:user_id])
    @pet = Pet.new
  end

  def create
    @user = User.find_by_id(params[:user_id])
    @pet = Pet.new pet_params 
    @user.pets << @pet
    @pet.user_id = @user.id
    @pet.save
    redirect_to user_pets_path @user
  end

  def show
    @user = User.find_by_id(params[:user_id])
    @pets = @user.pets
  end

  def edit
  end

  private
  def pet_params
    params.require(:pet).permit(:id, :name, :type, :breed, 
      :birthday, :gender, :weight, :color, :microchip_company, 
      :microchip_company_website, :microchip_company_phone, 
      :microchip_registration_number, :county_registration_number, 
      :county_registration_contact, :county_registration_expiration, 
      :rabies_vaccination_number, :rabies_expiration, :care_instructions, 
      :special_needs, :historical_information)


  end
end
