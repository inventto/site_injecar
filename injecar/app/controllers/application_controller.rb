#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  def mandar_email_contato
    begin
    EnviarEmail.emitir_email(params["email"], params["conteudo"], params["assunto"]).deliver
    flash[:notice] = "E-mail enviado, com sucesso!"
    rescue
    flash[:error] = "E-mail, inválido!"
    end
    redirect_to "/contato"
  end

  def mandar_email_agendamento
    begin
    EnviarEmail.emitir_email(params["email"], params["conteudo"], params["assunto"]).deliver
    flash[:notice] = "E-mail enviado, com sucesso!"
    rescue
    flash[:error] = "E-mail, inválido!"
    end
    redirect_to "/agendamento"
  end

end
