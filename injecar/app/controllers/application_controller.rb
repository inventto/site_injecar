class ApplicationController < ActionController::Base
  protect_from_forgery

  def mandar_email
    begin
    EnviarEmail.emitir_email(params["email"], params["conteudo"], params["assunto"]).deliver
    flash[:notice] = "E-mail enviado, com sucesso!!"
    rescue
    flash[:error] = "E-mail, inválido!"
    end
    redirect_to "/contato"

  end
end
