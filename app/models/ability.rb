# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
     user ||= AdminUser.new # guest user (not logged in)
# sectoristas 21,22,23,29
  case user.categoria # a_variable is the variable we want to compare
     when 1,0
          can :manage, :all
     when 2 #quinonez, andres
        can [:read,:update],  [AdminUser]
        can :read, ActiveAdmin::Page, :name =>"Dashboard"
        can [:create,:read,:update,:destroy], [Citizen]
       

      
     else
     
      can :read, ActiveAdmin::Page, :name =>"Dashboard"
   
    end
  
  end
end
