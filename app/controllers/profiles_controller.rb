#before_action :find_profile, only: [:show, :edit, :update, :destroy]
#before_action :authenticate_user!, except: [:index, :show]

# def index
#   @profile = Profile.all
# end

# def show
#   @profile = Profile.find(profile_params)
# end


# def edit
#   @profile = Profile.find(params[:id])
# end

# def update
#   @profile = Profile.find(params[:id])
#   @profile.update(profile_params)
# end

# private

# def find_profile
#   @profile = Profile.find(params[:id])
# end

# def profile_params
#   params.require(:profile).permit(:id, :name, :summary, :birthday, :user_id)
# end
