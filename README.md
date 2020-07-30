## FreeDoc - Réserve ton docteur

### Le pitch

Allez, on va implémenter pour de vrai ce concurrent de Doctolib dont on te parle à longueur de ressource ! À toi d'être chirurgical 👩‍⚕️

### Les models

Pour ce premier exercice, nous allons t'aider et te donner les models à créer :

- un model **Doctor**, qui a comme attributs :
  - un **first_name**, qui est un _string_
  - un **last_name**, qui est un _string_
  - un **specialty**, qui est un _string_
  - un **zip_code**, qui est un _string_
- un model **Patient**, qui a comme attributs :
  - un **first_name**, qui est un _string_
  - un **last_name**, qui est un _string_
- un model **Appointment**, qui a comme attributs :
  - un **date**, qui est un _datetime_

Une fois les attributs fixés, on s'attaque aux relations :

- Un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment.
- Un appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment.
- Un doctor peut avoir plusieurs patient, au travers des appointments, et vice versa.

### Les modifications

Ta startup de docteurs marche à merveille, tellement que tu aimerais ajouter plusieurs tables :

- **city**. Chaque docteur, patient, et rendez-vous est lié à une **city**.
  Une city peut avoir plusieurs docteurs, patients, et rendez-vous.

- tu voudrais virer la ligne **specialty** de ta table **doctor** et la remplacer par un model à part entière
- tu vas donc créer un model **specialty**. Un docteur aurait plusieurs specialty (DEAL_WITH_IT), et une **specialty** pourrait concerner plusieurs doctor.

Et voilà pour FreeDoc ! Doctolib est en PLS.
