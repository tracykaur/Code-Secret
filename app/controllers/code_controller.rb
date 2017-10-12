require "date"
class CodeController < ApplicationController

  def secrets
    full_code = DateTime.now.strftime("%d%m%Y%H").to_i.to_s(14)

    if current_user.has_role? :president
      @secret_code = full_code[0..3]
    end

    if current_user.has_role? :defence
      @secret_code = full_code[4..8]
    end

    if current_user.has_role? :russia
      @secret_code = full_code
    end
  end
end
