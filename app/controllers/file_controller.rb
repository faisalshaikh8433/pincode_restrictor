# frozen_string_literal: true

class FileController < ActionController::Base
  protect_from_forgery except: :restricter
  
  def restricter
    respond_to do |format|
      format.js{
        render plain: File.read(File.join(Rails.root, 'restricter.js'))
      }
    end
  end

end
