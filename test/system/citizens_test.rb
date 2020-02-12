require "application_system_test_case"

class CitizensTest < ApplicationSystemTestCase
  setup do
    @citizen = citizens(:one)
  end

  test "visiting the index" do
    visit citizens_url
    assert_selector "h1", text: "Citizens"
  end

  test "creating a Citizen" do
    visit citizens_url
    click_on "New Citizen"

    fill_in "Dni", with: @citizen.dni
    fill_in "Estado civil", with: @citizen.estado_civil
    fill_in "Foto", with: @citizen.foto
    fill_in "Nacimiento", with: @citizen.nacimiento
    fill_in "Prenombres", with: @citizen.prenombres
    fill_in "Primer apellido", with: @citizen.primer_apellido
    fill_in "Segundo apellido", with: @citizen.segundo_apellido
    fill_in "Sele1", with: @citizen.sele1
    fill_in "Sele2", with: @citizen.sele2
    fill_in "Sele3", with: @citizen.sele3
    fill_in "Sele4", with: @citizen.sele4
    fill_in "Sexo", with: @citizen.sexo
    click_on "Create Citizen"

    assert_text "Citizen was successfully created"
    click_on "Back"
  end

  test "updating a Citizen" do
    visit citizens_url
    click_on "Edit", match: :first

    fill_in "Dni", with: @citizen.dni
    fill_in "Estado civil", with: @citizen.estado_civil
    fill_in "Foto", with: @citizen.foto
    fill_in "Nacimiento", with: @citizen.nacimiento
    fill_in "Prenombres", with: @citizen.prenombres
    fill_in "Primer apellido", with: @citizen.primer_apellido
    fill_in "Segundo apellido", with: @citizen.segundo_apellido
    fill_in "Sele1", with: @citizen.sele1
    fill_in "Sele2", with: @citizen.sele2
    fill_in "Sele3", with: @citizen.sele3
    fill_in "Sele4", with: @citizen.sele4
    fill_in "Sexo", with: @citizen.sexo
    click_on "Update Citizen"

    assert_text "Citizen was successfully updated"
    click_on "Back"
  end

  test "destroying a Citizen" do
    visit citizens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Citizen was successfully destroyed"
  end
end
