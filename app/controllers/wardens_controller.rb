class WardensController < ApplicationController
  def index
    @wardens = Warden.all

    render("wardens/index.html.erb")
  end

  def show
    @warden = Warden.find(params[:id])

    render("wardens/show.html.erb")
  end

  def new
    @warden = Warden.new
    @roles = ["EW", "AW1", "AW2", "AW3", "AW4", "AW5", "AW6", "AW7", "AW8", "AW9", 'AW10']

    render("wardens/new.html.erb")
  end

  def create
    @warden = Warden.new

    @warden.role = params[:role]
    @warden.acknowledged = params[:acknowledged]
    @warden.office_id = params[:office_id]
    @warden.staff_member_id = params[:staff_member_id]

    save_status = @warden.save

    if save_status == true
      redirect_to("/wardens/#{@warden.id}", :notice => "Warden created successfully.")
    else
      render("wardens/new.html.erb")
    end
  end

  def edit
    @warden = Warden.find(params[:id])

    render("wardens/edit.html.erb")
  end

  def update
    @warden = Warden.find(params[:id])

    @warden.role = params[:role]
    @warden.acknowledged = params[:acknowledged]
    @warden.office_id = params[:office_id]
    @warden.staff_member_id = params[:staff_member_id]

    save_status = @warden.save

    if save_status == true
      redirect_to("/wardens/#{@warden.id}", :notice => "Warden updated successfully.")
    else
      render("wardens/edit.html.erb")
    end
  end

  def destroy
    @warden = Warden.find(params[:id])

    @warden.destroy

    if URI(request.referer).path == "/wardens/#{@warden.id}"
      redirect_to("/", :notice => "Warden deleted.")
    else
      redirect_to(:back, :notice => "Warden deleted.")
    end
  end
end
