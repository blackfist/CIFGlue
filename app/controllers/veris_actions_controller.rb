class VerisActionsController < ApplicationController
    def index
        @veris_actions = VerisAction.all
    end

    def new
        @veris_action = VerisAction.new
    end

    def create
        @veris_action = VerisAction.new(params[:veris_action])

        if @veris_action.save
            redirect_to veris_actions_path, notice:"#{@veris_action.name} successfully created."
        else
            redirect_to new_veris_action_path, warning:"#{@veris_action.name}: #{@veris_action.errors.full_messages.to_sentence.split('^').last}"
        end
    end


    def edit
        @veris_action = VerisAction.find(params[:id])
    end

    def update
        @veris_action = VerisAction.find(params[:id])

        respond_to do |format|
            if @veris_action.update_attributes(params[:veris_action])
              format.html { redirect_to veris_actions_path, notice: 'Action was successfully updated.' }
              format.json { head :no_content }
            else
              format.html { render action: "edit", warning: @veris_action.errors }
              format.json { render json: @veris_action.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @veris_action = VerisAction.find(params[:id])
        @veris_action.destroy

        respond_to do |format|
            format.html { redirect_to veris_actions_path, notice:"#{@veris_action.name} deleted."}
            format.json { head :no_content}
        end
    end
end
