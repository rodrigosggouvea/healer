# Healer

This is a health platform designed to serve as portfolio for Rodrigo Gouvea (@rodrigosggouvea).

### Application goals:
  - make organization manage patients and professionals;
  - manage appointments between a patient and a professional (medical appointments, or exams), with observations and attachments (prescriptions, or test results);
  - enable patients and doctors to manage medications (and notify patients);
  - enable patients to report symptoms to professionals (and notify them);
  - enable professionals to resolve patient symptom reports;
  - Real time Chat between Patients and Professionals;
 

## This project uses these tools:
  - Ruby 2.7.4;
  - Rails 7;
  - NextJS for the front end;
  - GraphQL requests;
  - RSpec for tests;
  - OAuth2 with Facebook and Google;
  - RuboCop for Ruby code styling;
  - ESLint for JS code styling;
 
## Database structure (WIP)

### User:
```
full_name
email
password
birthdate
personal_regist ration # SSN (US)/CPF (BR)
professional_registration # professional registration number
organization # FK to Organization
role # string enum, with values being `Patient`, `Professional`
```

### Organization:
```
name
```

### OAuthData:
```
user # FK to User
provider # string enum, can be `facebook` or `google`
uid
```

### Appointment:
```
patient # FK to User (Patient role)
professional # FK to User (Professional role)
observations
attachments
```

### OrganizationUser:
```
user # FK to User
organization # FK to Organization
isAdmin
```
