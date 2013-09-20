require 'spec_helper'

describe ProjectsController do
  it "displays an error for a non existent project" do
    get :show, id: "not there"
    expect(response).to redirect_to(projects_path)

    message = "The project you were looking for could not be found."
    expect(flash[:alert]).to eql(message)
  end
end
