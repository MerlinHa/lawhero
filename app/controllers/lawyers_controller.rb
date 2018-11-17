class LawyersController < ApplicationController
  def index
    @lawyers = Lawyer.all
       if params.key?("law_field")
      law_field = params[:law_field]
      language = params[:language]
      # @lawyers = Lawyer.joins(:lawyer_properties).joins(:law_fields).where("law_fields.content = ?", law_field).or(Lawyer.joins(:lawyer_properties).joins(:languages).where("languages.content = ?", language))
      @lawyers = Lawyer.joins(:lawyer_properties).joins(:law_fields).joins(:languages).where("law_fields.content = ? AND languages.content = ?", law_field, language).uniq
      # law_field = params[:law_field]
      # @lawyers = Lawyer.joins(:lawyer_properties).joins(:law_fields).where("law_fields.content = ?", law_field)
      # @lawyers = @lawyers.uniq
      # language = params[:language]
      # @lawyers = @lawyers.joins(:lawyer_properties).joins(:languages).where("languages.content = ?", language)
      # @lawyers = @lawyers.uniq
    end
  end

  def show
    @lawyer = Lawyer.find(params[:id])
  end

  def new
    @lawyer = Lawyer.new
  end

  def create
    @lawyer = Lawyer.new(params[:lawyer])
    @lawyer.save
  end
end
