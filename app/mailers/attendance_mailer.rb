class AttendanceMailer < ApplicationMailer
	def new_email(attendance)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
       @admin = attendance.evenement.user
       @participant = attendance.user
       @event = attendance.evenement

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @admin.email, subject:'#{@participant.first_name} a rejoint votre evenement #{@event.title}')
  end
end
