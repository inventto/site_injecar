class EnviarEmail < ActionMailer::Base
  default from: "miguelcaregnatto@gmail.com"

  def emitir_email(remetente, conteudo, assunto)
      mail(to: remetente, body: conteudo, subject: assunto)
  end

end
