-- --------------------------------------CREATE HOSPITAL DATABASE-----------------------------------------
CREATE DATABASE HOSPITAL_MANAGEMENT;
USE HOSPITAL_MANAGEMENT;

-- ----------------------------------------Table 1: Hospitals----------------------------------------------------
CREATE TABLE Hospitals (
HospitalID INT PRIMARY KEY,
HospitalName VARCHAR(100),
Location VARCHAR(100),
ContactNumber VARCHAR(15),
Website VARCHAR(100),
EstablishedYear INT,
HospitalType VARCHAR(50),
EmergencyServices VARCHAR(3),
Status VARCHAR(50),
NumberOfBeds INT
);
INSERT INTO Hospitals (HospitalID, HospitalName, Location, ContactNumber, Website, EstablishedYear, HospitalType, EmergencyServices, Status, NumberOfBeds)
VALUES
(1, 'Apollo Hospital', 'Delhi, India', '011-12345678', 'www.apollo.com', 2000, 'Private', 'Yes', 'JCI Accredited', 300),
(2, 'Fortis Healthcare', 'Mumbai, India', '022-98765432', 'www.fortis.com', 1995, 'Private', 'Yes', 'NA', 200),
(3, 'AIIMS (All India Institute of Medical Sciences)', 'New Delhi, India', '011-26588500', 'www.aiims.edu', 1956, 'Government', 'Yes', 'NABH Accredited', 1000),
(4, 'Max Super Specialty Hospital', 'Noida, India', '0120-1234567', 'www.maxhospital.com', 2003, 'Private', 'Yes', 'NABH Accredited', 250),
(5, 'Kokilaben Dhirubhai Ambani Hospital', 'Mumbai, India', '022-30995000', 'www.kokilabenhospital.com', 2009, 'Private', 'Yes', 'JCI Accredited', 500),
(6, 'Medanta - The Medicity', 'Gurgaon, India', '0124-4141414', 'www.medanta.org', 2009, 'Private', 'Yes', 'NA', 800),
(7, 'Sree Chitra Tirunal Institute for Medical Sciences and Technology', 'Trivandrum, Kerala, India', '0471-2528063', 'www.sctimst.ac.in', 1973, 'Government', 'Yes', 'NABH Accredited', 350),
(8, 'Manipal Hospital', 'Bangalore, Karnataka, India', '080-22222222', 'www.manipalhospitals.com', 1991, 'Private', 'Yes', 'NA', 600),
(9, 'CMC (Christian Medical College)', 'Vellore, Tamil Nadu, India', '0416-2281000', 'www.cmch-vellore.edu', 1900, 'Private', 'Yes', 'NABH Accredited', 1200),
(10, 'Narayana Health', 'Bangalore, Karnataka, India', '080-40200100', 'www.narayanahealth.org', 2000, 'Private', 'Yes', 'NA', 500);
SELECT * FROM Hospitals;

-- ----------------------------------------Table 2: Patients----------------------------------------------------
CREATE TABLE Patients (
PatientID INT PRIMARY KEY,
FirstName VARCHAR(100),
LastName VARCHAR(100),
Gender VARCHAR(10),
DateOfBirth DATE,
Address VARCHAR(255),
Phone VARCHAR(15),
Email VARCHAR(100),
BloodGroup VARCHAR(5),
EmergencyContact VARCHAR(50)
);
INSERT INTO Patients VALUES
(1, 'Rahul', 'Sharma', 'Male', '1990-04-15', 'Mumbai, Maharashtra', '9876543210', 'rahul@gmail.com', 'B+', 'Deepak Sharma'),
(2, 'Anjali', 'Verma', 'Female', '1985-07-22', 'Delhi', '9908765432', 'anjali@yahoo.com', 'O-', 'Sushil Verma'),
(3, 'Amit', 'Kumar', 'Male', '1993-01-05', 'Bangalore, Karnataka', '9345678901', 'amit@gmail.com', 'A+', 'Rajesh Kumar'),
(4, 'Priya', 'Singh', 'Female', '1998-10-10', 'Chennai, Tamil Nadu', '9554433221', 'priya@hotmail.com', 'AB+', 'Ravi Singh'),
(5, 'Vikram', 'Reddy', 'Male', '1987-03-11', 'Hyderabad, Telangana', '9612233445', 'vikram@gmail.com', 'O+', 'Ramesh Reddy'),
(6, 'Neha', 'Patel', 'Female', '1995-08-25', 'Ahmedabad, Gujarat', '9401234567', 'neha@yahoo.com', 'B-', 'Jay Patel'),
(7, 'Deepak', 'Nair', 'Male', '1988-02-14', 'Mumbai, Maharashtra', '9922334455', 'deepak@gmail.com', 'A-', 'Vijay Nair'),
(8, 'Ritu', 'Sharma', 'Female', '1992-12-30', 'Lucknow, Uttar Pradesh', '9308765412', 'ritu@yahoo.com', 'B+', 'Naveen Sharma'),
(9, 'Manish', 'Gupta', 'Male', '1989-11-05', 'Kolkata, West Bengal', '9145678901', 'manish@gmail.com', 'O+', 'Sanjay Gupta'),
(10, 'Sonia', 'Mehta', 'Female', '1997-06-19', 'Pune, Maharashtra', '9988776655', 'sonia@hotmail.com', 'AB-', 'Arvind Mehta');
SELECT * FROM Patients;

-- ------------------------------------------ Table 3: Doctors -------------------------------------------------
CREATE TABLE Doctors (
DoctorID INT PRIMARY KEY,
FirstName VARCHAR(100),
LastName VARCHAR(100),
Specialty VARCHAR(100),
Phone VARCHAR(15),
Email VARCHAR(100),
Qualification VARCHAR(100),
Experience INT, 
Department VARCHAR(50),
AvailableDays VARCHAR(50)
);
INSERT INTO Doctors VALUES
(1, 'Dr. Suresh', 'Mishra', 'Cardiologist', '9812345678', 'suresh@hospital.com', 'MD, DM', 15, 'Cardiology', 'Mon, Tue, Wed, Fri'),
(2, 'Dr. Priya', 'Patel', 'Dermatologist', '9522345678', 'priya@hospital.com', 'MBBS, MD', 10, 'Dermatology', 'Mon, Thu, Sat'),
(3, 'Dr. Ravi', 'Kumar', 'Orthopedic', '9301234567', 'ravi@hospital.com', 'MBBS, DNB', 12, 'Orthopedics', 'Tue, Thu, Fri, Sun'),
(4, 'Dr. Anjali', 'Verma', 'Gynaecologist', '9812345670', 'anjali@hospital.com', 'MBBS, MD', 8, 'Gynaecology', 'Mon, Wed, Fri'),
(5, 'Dr. Vikram', 'Singh', 'General Surgeon', '9876543210', 'vikram@hospital.com', 'MS', 20, 'Surgery', 'Mon, Tue, Thu, Sat'),
(6, 'Dr. Neha', 'Patel', 'Pediatrician', '9309876543', 'neha@hospital.com', 'MBBS, DCH', 7, 'Pediatrics', 'Mon, Thu, Fri'),
(7, 'Dr. Manish', 'Gupta', 'Neurologist', '9512345678', 'manish@hospital.com', 'MD, DNB', 18, 'Neurology', 'Tue, Thu, Sat'),
(8, 'Dr. Sonia', 'Sharma', 'Ophthalmologist', '9398765432', 'sonia@hospital.com', 'MBBS, MS', 14, 'Ophthalmology', 'Mon, Wed, Fri'),
(9, 'Dr. Deepak', 'Reddy', 'Psychiatrist', '9612345678', 'deepak@hospital.com', 'MBBS, DPM', 6, 'Psychiatry', 'Tue, Wed, Sat'),
(10, 'Dr. Ritu', 'Singh', 'Endocrinologist', '9245678901', 'ritu@hospital.com', 'MD, DM', 13, 'Endocrinology', 'Mon, Thu, Fri');
SELECT * FROM Doctors;

-- ------------------------------------------- Table 4: Appointments ----------------------------------------------------
CREATE TABLE Appointments (
AppointmentID INT PRIMARY KEY,
PatientID INT, 
DoctorID INT,
AppointmentDate DATE,
TimeSlot VARCHAR(20),
Reason VARCHAR(255),
Status VARCHAR(20) DEFAULT 'Not Scheduled',
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
INSERT INTO Appointments VALUES
(1, 1, 1, '2025-02-14', '10:00 AM', 'Chest pain', 'Scheduled'),
(2, 2, 2, '2025-02-15', '02:00 PM', 'Skin rash', 'Scheduled'),
(3, 3, 3, '2025-02-16', '11:00 AM', 'Knee pain', 'Scheduled'),
(4, 4, 4, '2025-02-17', '09:00 AM', 'Pregnancy checkup', 'Scheduled'),
(5, 5, 5, '2025-02-18', '01:00 PM', 'Abdominal pain', 'Scheduled'),
(6, 6, 6, '2025-02-19', '03:00 PM', 'Fever and cough', 'Scheduled'),
(7, 7, 7, '2025-02-20', '10:00 AM', 'Headache', 'Scheduled'),
(8, 8, 8, '2025-02-21', '04:00 PM', 'Eye problem', 'Scheduled'),
(9, 9, 9, '2025-02-22', '12:00 PM', 'Stress and anxiety', 'Scheduled'),
(10, 10, 10, '2025-02-23', '11:30 AM', 'Thyroid issue', 'Scheduled');
SELECT * FROM Appointments;

DROP TABLE Appointments;

-- ----------------------------------------------- Table 5: Treatments -----------------------------------------------
CREATE TABLE Treatments (
TreatmentID INT PRIMARY KEY,
AppointmentID INT,
Diagnosis VARCHAR(255),
Medications VARCHAR(255),
TreatmentDate DATE,
TreatmentType VARCHAR(100),
Notes TEXT,
FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);
INSERT INTO Treatments VALUES
(1, 1, 'Acute Coronary Syndrome', 'Aspirin, Nitroglycerin', '2025-02-14', 'Emergency', 'Patient needs immediate care'),
(2, 2, 'Eczema', 'Hydrocortisone cream', '2025-02-15', 'Outpatient', 'Follow-up after 1 week'),
(3, 3, 'Osteoarthritis', 'Ibuprofen, Glucosamine', '2025-02-16', 'Outpatient', 'Physical therapy recommended'),
(4, 4, 'Pregnancy', 'Prenatal vitamins', '2025-02-17', 'Outpatient', 'Routine checkup'),
(5, 5, 'Peptic ulcer', 'Pantoprazole', '2025-02-18', 'Inpatient', 'Hospitalization required'),
(6, 6, 'Viral fever', 'Paracetamol', '2025-02-19', 'Outpatient', 'Rest and hydration advised'),
(7, 7, 'Migraine', 'Sumatriptan', '2025-02-20', 'Outpatient', 'No major concerns, monitor symptoms'),
(8, 8, 'Conjunctivitis', 'Eye drops', '2025-02-21', 'Outpatient', 'Monitor symptoms for 1 week'),
(9, 9, 'Generalized Anxiety Disorder', 'Sertraline', '2025-02-22', 'Outpatient', 'Follow-up in 2 weeks'),
(10, 10, 'Hypothyroidism', 'Levothyroxine', '2025-02-23', 'Outpatient', 'Regular blood tests recommended');
SELECT * FROM Treatments;

-- ------------------------------------------------ Table 6: Billing ---------------------------------------------------
CREATE TABLE Billing (
BillID INT PRIMARY KEY,
PatientID INT,
Amount DECIMAL(10, 2),
BillingDate DATE,
PaymentStatus VARCHAR(20),
PaymentType VARCHAR(55),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
INSERT INTO Billing VALUES
(1, 1, 5000.00, '2025-02-14', 'Paid','Credit Card'),
(2, 2, 3000.00, '2025-02-15', 'Paid','Net Banking'),
(3, 3, 4000.00, '2025-02-16', 'Paid','Cash'),
(4, 4, 1500.00, '2025-02-17', 'Unpaid','Debit Card'),
(5, 5, 3500.00, '2025-02-18', 'Paid','UPI'),
(6, 6, 2500.00, '2025-02-19', 'Paid','Net Banking'),
(7, 7, 2000.00, '2025-02-20', 'Unpaid','Cash'),
(8, 8, 4500.00, '2025-02-21', 'Paid','Credit Card'),
(9, 9, 3000.00, '2025-02-22', 'Paid','UPI'),
(10, 10, 4000.00, '2025-02-23', 'Paid','Cash');
SELECT * FROM Billing;


-- ------------------------------------------------- Table 7: Diagnoses ---------------------------------------------
CREATE TABLE Diagnoses (
DiagnosisID INT PRIMARY KEY,
PatientID INT,
DiagnosisName VARCHAR(255),
Description TEXT,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
INSERT INTO Diagnoses VALUES
(1,1, 'Acute Coronary Syndrome', 'A group of conditions that result in reduced blood flow to the heart'),
(2,2, 'Eczema', 'An inflammatory skin condition characterized by itching and redness'),
(3,3, 'Osteoarthritis', 'A degenerative joint disease causing pain and stiffness'), 
(4,4, 'Pregnancy', 'The condition of carrying a developing embryo or fetus within the female body'),
(5,5, 'Peptic Ulcer', 'A sore that develops on the lining of the stomach or the duodenum'),
(6,6, 'Viral Fever', 'A fever caused by a viral infection'),
(7,7, 'Migraine', 'A severe headache often accompanied by nausea and sensitivity to light'),
(8,8, 'Conjunctivitis', 'Inflammation of the eye’s conjunctiva, often caused by infection'),
(9,9, 'Generalized Anxiety Disorder', 'A mental health condition characterized by excessive worry'),
(10,10, 'Hypothyroidism', 'A condition in which the thyroid gland does not produce enough thyroid hormone');
SELECT * FROM Diagnoses;
DROP TABLE Diagnoses;

-- ------------------------------------------------ Table 8: MedicalRecords ------------------------------------------
CREATE TABLE MedicalRecords (
RecordID INT PRIMARY KEY,
PatientID INT,
RecordDate DATE,
RecordType VARCHAR(100),
Description TEXT,
DoctorID INT,
DiagnosisID INT,
TreatmentID INT,
Notes TEXT,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
FOREIGN KEY (DiagnosisID) REFERENCES Diagnoses(DiagnosisID),
FOREIGN KEY (TreatmentID) REFERENCES Treatments(TreatmentID)
);
INSERT INTO MedicalRecords VALUES
(1, 1, '2025-02-14', 'Emergency Visit', 'Chest pain and discomfort', 1, 1, 1, 'Patient admitted for immediate care'),
(2, 2, '2025-02-15', 'Routine Checkup', 'Skin irritation and rash', 2, 2, 2, 'Patient prescribed ointment and given follow-up advice'),
(3, 3, '2025-02-16', 'Consultation', 'Knee joint pain', 3, 3, 3, 'Physical therapy recommended'),
(4, 4, '2025-02-17', 'Gynaecology Consultation', 'Pregnancy checkup', 4, 4, 4, 'Routine prenatal care'),
(5, 5, '2025-02-18', 'Inpatient Care', 'Abdominal pain, suspected ulcer', 5, 5, 5, 'Patient needs further diagnostic testing'),
(6, 6, '2025-02-19', 'Consultation', 'Fever with cough', 6, 6, 6, 'Advised rest and hydration'),
(7, 7, '2025-02-20', 'Neurology Consultation', 'Chronic headache', 7, 7, 7, 'Patient prescribed pain relievers'),
(8, 8, '2025-02-21', 'Eye Checkup', 'Eye irritation and redness', 8, 8, 8, 'Advised eye drops'),
(9, 9, '2025-02-22', 'Psychiatric Visit', 'Stress and anxiety', 9, 9, 9, 'Prescribed anti-anxiety medication'),
(10, 10, '2025-02-23', 'Endocrinology Consultation', 'Thyroid issues', 10, 10, 10, 'Regular follow-up needed');
SELECT * FROM MedicalRecords;

-- ----------------------------------------- Table 9: Surgeries ----------------------------------------
CREATE TABLE Surgeries (
SurgeryID INT PRIMARY KEY,
PatientID INT,
DoctorID INT,
SurgeryDate DATE,
SurgeryType VARCHAR(255),
Duration INT, 
VaccinationType VARCHAR(100),
RecoveryTime INT, 
Notes TEXT,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
INSERT INTO Surgeries VALUES
(1, 1, 5, '2025-02-15', 'Angioplasty', 2, 'General', 5, 'Patient will need a follow-up visit after recovery'),
(2, 2, 4, '2025-02-16', 'C-section', 1.5, 'Epidural', 7, 'Routine C-section surgery, normal recovery'),
(3, 3, 3, '2025-02-17', 'Knee Arthroscopy', 1, 'Local', 3, 'Physical therapy will be needed post-surgery'),
(4, 4, 2, '2025-02-18', 'Laparoscopic Ovarian Cystectomy', 2, 'General', 4, 'Patient needs to rest and monitor for any complications'),
(5, 5, 7, '2025-02-19', 'Hernia Repair', 2, 'General', 7, 'Follow-up in 10 days'),
(6, 6, 6, '2025-02-20', 'Appendectomy', 1, 'General', 4, 'Patient recovering well after surgery'),
(7, 7, 8, '2025-02-21', 'Eye Surgery (Cataract Removal)', 2, 'Local', 2, 'Post-surgery care for a week'),
(8, 8, 9, '2025-02-22', 'Tonsillectomy', 1.5, 'General', 3, 'Routine recovery expected'),
(9, 9, 10, '2025-02-23', 'Thyroidectomy', 3, 'General', 7, 'Follow-up in 2 weeks for thyroid hormone monitoring'),
(10, 10, 1, '2025-02-24', 'Cholecystectomy', 2, 'General', 5, 'Routine surgery with no complications');
SELECT * FROM Surgeries;

-- ----------------------------------------------- Table 10: LabTests ----------------------------------------------------
CREATE TABLE LabTests (
TestID INT PRIMARY KEY,
PatientID INT,
TestType VARCHAR(255),
TestDate DATE,
Results TEXT,
DoctorID INT,
Notes TEXT,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
INSERT INTO LabTests VALUES
(1, 1, 'ECG', '2025-02-14', 'Normal sinus rhythm', 1, 'Follow-up required in one month'),
(2, 2, 'Blood Culture', '2025-02-15', 'No bacterial growth detected', 2, 'Patient is recovering well'),
(3, 3, 'X-ray', '2025-02-16', 'No fractures, mild joint degeneration', 3, 'Physical therapy suggested'),
(4, 4, 'Ultrasound', '2025-02-17', 'Normal fetal development', 4, 'Routine prenatal checkup'),
(5, 5, 'Endoscopy', '2025-02-18', 'Gastric ulcer detected', 5, 'Prescribed medication for healing'),
(6, 6, 'CBC', '2025-02-19', 'White blood cell count high', 6, 'Follow-up after 5 days'),
(7, 7, 'MRI', '2025-02-20', 'No signs of neurological damage', 7, 'Monitor for migraine triggers'),
(8, 8, 'Blood Pressure Test', '2025-02-21', 'Normal', 8, 'No signs of hypertension'),
(9, 9, 'Thyroid Test', '2025-02-22', 'TSH levels elevated', 9, 'Medication adjustment required'),
(10, 10, 'Liver Function Test', '2025-02-23', 'Normal liver function', 10, 'No concerns at this time');
SELECT * FROM LabTests;

-- ---------------------------------------------- Table 11: Medications ------------------------------------------------
CREATE TABLE Medications (
MedicationID INT PRIMARY KEY,
MedicationName VARCHAR(255),
Dosage VARCHAR(100),
Frequency VARCHAR(50),
Route VARCHAR(50),
Duration INT, 
PrescribedBy INT,
FOREIGN KEY (PrescribedBy) REFERENCES Doctors(DoctorID)
);
INSERT INTO Medications VALUES
(1, 'Aspirin', '75mg', 'Once a day', 'Oral', 30, 1),
(2, 'Hydrocortisone Cream', '1%', 'Twice a day', 'Topical', 14, 2),
(3, 'Ibuprofen', '400mg', 'Every 6 hours', 'Oral', 7, 3),
(4, 'Prenatal Vitamins', '1 tablet', 'Once a day', 'Oral', 180, 4),
(5, 'Pantoprazole', '40mg', 'Once a day', 'Oral', 30, 5),
(6, 'Paracetamol', '500mg', 'Every 4 hours', 'Oral', 7, 6),
(7, 'Sumatriptan', '50mg', 'As needed', 'Oral', 10, 7),
(8, 'Eye Drops', '0.1%', 'Twice a day', 'Ophthalmic', 14, 8),
(9, 'Sertraline', '25mg', 'Once a day', 'Oral', 30, 9),
(10, 'Levothyroxine', '50mcg', 'Once a day', 'Oral', 180, 10);
SELECT * FROM Medications;

-- ----------------------------------------Table 12: Departments----------------------------------------------------
CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(100),
FloorNumber INT,
DoctorID INT,
ContactNumber VARCHAR(15),
TotalStaff INT,
Specializations TEXT,
HospitalID INT,
FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID),
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
INSERT INTO Departments VALUES
(1, 'Cardiology', 5, 1, '011-12345678', 30, 'Heart Disease, Angioplasty, Cardiothoracic Surgery', 1),
(2, 'Orthopedics', 3, 2, '022-98765432', 25, 'Joint Replacement, Spine Surgery, Sports Injuries', 2),
(3, 'Neurology', 6, 3, '011-26588500', 40, 'Epilepsy, Stroke, Brain Tumors', 3),
(4, 'Pediatrics', 2, 4, '022-30995000', 20, 'Neonatal Care, Pediatric Surgery, Vaccinations', 4),
(5, 'General Surgery', 4, 5, '011-23456789', 35, 'Bariatric Surgery, Laparoscopy, Appendectomy', 5),
(6, 'Radiology', 7, 6, '080-22222222', 15, 'CT Scans, MRIs, X-rays, Ultrasound', 6),
(7, 'Gynecology', 8, 7, '0416-2281000', 18, 'Obstetrics, High-Risk Pregnancies, Infertility Treatments', 7),
(8, 'Oncology', 9, 8, '080-40200100', 50, 'Cancer Treatment, Chemotherapy, Radiotherapy', 8),
(9, 'Dermatology', 2, 9, '0120-1234567', 12, 'Skin Diseases, Cosmetic Dermatology, Laser Treatments', 9),
(10, 'ENT (Ear, Nose & Throat)', 3, 10, '022-76543210', 22, 'Hearing Loss, Sinus Problems, Throat Surgery', 10);
SELECT * FROM Departments;

-- ----------------------------------------Table 13: PaymentHistory----------------------------------------------------
CREATE TABLE PaymentHistory (
PaymentHistoryID INT PRIMARY KEY,
PatientID INT,
PaymentDate DATE,
AmountPaid DECIMAL(10, 2),
PaymentMethod VARCHAR(50),
BillID INT,
PaymentStatus VARCHAR(50),
PaymentDetails VARCHAR(255),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (BillID) REFERENCES Billing(BillID)
);
INSERT INTO PaymentHistory (PaymentHistoryID, PatientID, PaymentDate, AmountPaid, PaymentMethod, BillID, PaymentStatus, PaymentDetails)
VALUES
(1, 1, '2025-02-10', 1500.00, 'Credit Card', 101, 'Completed', 'Payment for Cardiology consultation and tests'),
(2, 2, '2025-02-11', 1200.00, 'Cash', 102, 'Completed', 'Payment for Orthopedics consultation and X-rays'),
(3, 3, '2025-02-12', 1800.00, 'Debit Card', 103, 'Pending', 'Payment for Neurology consultation and MRI'),
(4, 4, '2025-02-13', 500.00, 'UPI', 104, 'Completed', 'Partial payment for Pediatric services'),
(5, 5, '2025-02-14', 2200.00, 'Credit Card', 105, 'Completed', 'Payment for General Surgery procedure'),
(6, 6, '2025-02-15', 800.00, 'Cash', 106, 'Failed', 'Payment for Radiology services'),
(7, 7, '2025-02-16', 1000.00, 'Debit Card', 107, 'Completed', 'Payment for Gynecology consultation'),
(8, 8, '2025-02-17', 1500.00, 'UPI', 108, 'Completed', 'Payment for Oncology consultation and chemotherapy'),
(9, 9, '2025-02-18', 1300.00, 'Credit Card', 109, 'Completed', 'Payment for Dermatology services and tests'),
(10, 10, '2025-02-19', 700.00, 'Cash', 110, 'Pending', 'Payment for ENT consultation and medications');

SELECT * FROM PaymentHistory;
DROP TABLE PaymentHistory;

(6, 'Radiology', 7, 6, '080-22222222', 15, 'CT Scan, MRI, X-ray, Ultrasound', 6),
(7, 'Ophthalmology', 3, 7, '0124-4141414', 10, 'Cataract Surgery, LASIK, Retinal Disorders', 7),
(8, 'Psychiatry', 8, 8, '0471-2528063', 12, 'Depression, Anxiety, Cognitive Therapy', 8),
(9, 'Gynaecology', 4, 9, '080-40200100', 20, 'Pregnancy Care, Hysterectomy, Fertility', 9),
(10, 'Endocrinology', 6, 10, '080-40200100', 18, 'Thyroid Disorders, Diabetes, Hormonal Imbalances', 10);
SELECT * FROM Departments;

-- ---------------------------------------- Table 14: Hospital Staff -----------------------------------------
CREATE TABLE HospitalStaff (
StaffID INT PRIMARY KEY,
HospitalID INT,
StaffName VARCHAR(100),
Role VARCHAR(100),
Phone VARCHAR(15),
Email VARCHAR(100),
DepartmentID INT,
Salary DECIMAL(10, 2),
FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID),
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
INSERT INTO HospitalStaff VALUES
(1, 1, 'John Doe', 'Nurse', '011-12345678', 'john.doe@apollo.com', 1, 35000.00),
(2, 2, 'Jane Smith', 'Lab Technician', '022-98765432', 'jane.smith@fortis.com', 2, 25000.00),
(3, 3, 'Alice Johnson', 'Pharmacist', '011-26588500', 'alice.johnson@aiims.edu', 3, 30000.00),
(4, 4, 'Robert Brown', 'Radiology Technician', '0120-1234567', 'robert.brown@maxhospital.com', 4, 27000.00),
(5, 5, 'Emily Davis', 'Admin Staff', '022-30995000', 'emily.davis@kokilabenhospital.com', 5, 20000.00),
(6, 6, 'Michael White', 'Nurse', '0124-4141414', 'michael.white@medanta.org', 6, 32000.00),
(7, 7, 'Sarah Lee', 'Medical Records Coordinator', '0471-2528063', 'sarah.lee@sctimst.ac.in', 7, 28000.00),
(8, 8, 'James Harris', 'Receptionist', '080-22222222', 'james.harris@manipalhospitals.com', 8, 22000.00),
(9, 9, 'Patricia Walker', 'Billing Clerk', '0416-2281000', 'patricia.walker@cmch-vellore.edu', 9, 21000.00),
(10, 10, 'David Lewis', 'Security Guard', '080-40200100', 'david.lewis@naryanahealth.org', 10, 18000.00);
SELECT * FROM HospitalStaff;

-- ----------------------------------------- Table 15: Emergency Contacts ----------------------------------------
CREATE TABLE EmergencyContacts (
EmergencyContactID INT PRIMARY KEY,
PatientID INT,
ContactName VARCHAR(100),
Relationship VARCHAR(50),
Phone VARCHAR(15),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
INSERT INTO EmergencyContacts VALUES
(1, 1, 'Deepak Sharma', 'Father', '9876543210'),
(2, 2, 'Sushil Verma', 'Brother', '9908765432'),
(3, 3, 'Rajesh Kumar', 'Father', '9345678901'),
(4, 4, 'Ravi Singh', 'Brother', '9554433221'),
(5, 5, 'Ramesh Reddy', 'Father', '9612233445'),
(6, 6, 'Jay Patel', 'Brother', '9401234567'),
(7, 7, 'Vijay Nair', 'Brother', '9922334455'),
(8, 8, 'Naveen Sharma', 'Father', '9308765412'),
(9, 9, 'Sanjay Gupta', 'Father', '9145678901'),
(10, 10, 'Arvind Mehta', 'Father', '9988776655');
SELECT * FROM EmergencyContacts;

-- -------------------------------------------- Table 16: Feedback --------------------------------------------
CREATE TABLE Feedback (
FeedbackID INT PRIMARY KEY,
PatientID INT,
HospitalID INT,
DoctorID INT,
FeedbackDate DATE,
Rating INT,
Comments TEXT,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID),
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
INSERT INTO Feedback VALUES
(1, 1, 1, 1, '2025-02-14', 5, 'Excellent care and quick attention for heart issues'),
(2, 2, 2, 2, '2025-02-15', 4, 'Good treatment, though follow-up could have been more prompt'),
(3, 3, 3, 3, '2025-02-16', 3, 'Satisfactory treatment for knee pain'),
(4, 4, 4, 4, '2025-02-17', 5, 'Great care during pregnancy checkup'),
(5, 5, 5, 5, '2025-02-18', 2, 'Could have done more for my abdominal pain'),
(6, 6, 6, 6, '2025-02-19', 4, 'Nice treatment for viral fever, very helpful staff'),
(7, 7, 7, 7, '2025-02-20', 4, 'Good care for my migraine, but waiting time was long'),
(8, 8, 8, 8, '2025-02-21', 5, 'Quick and effective treatment for eye irritation'),
(9, 9, 9, 9, '2025-02-22', 3, 'Anxiety treatment was good, but I need more therapy'),
(10, 10, 10, 10, '2025-02-23', 5, 'Great service for thyroid issue and easy follow-up');
SELECT * FROM Feedback;

-- ----------------------------------------- Table 16: Appointments -----------------------------------------
CREATE TABLE Appointments (
AppointmentID INT PRIMARY KEY,
PatientID INT,
DoctorID INT,
HospitalID INT,
AppointmentDate DATE,
TimeSlot TIME,
Status VARCHAR(50),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID)
);
INSERT INTO Appointments VALUES
(1, 1, 1, 1, '2025-03-10', '10:00:00', 'Scheduled'),
(2, 2, 2, 2, '2025-03-12', '11:00:00', 'Scheduled'),
(3, 3, 3, 3, '2025-03-15', '14:00:00', 'Completed'),
(4, 4, 4, 4, '2025-03-16', '09:00:00', 'Scheduled'),
(5, 5, 5, 5, '2025-03-18', '13:00:00', 'Scheduled'),
(6, 6, 6, 6, '2025-03-19', '15:00:00', 'Completed'),
(7, 7, 7, 7, '2025-03-20', '16:00:00', 'Scheduled'),
(8, 8, 8, 8, '2025-03-22', '10:30:00', 'Scheduled'),
(9, 9, 9, 9, '2025-03-24', '08:00:00', 'Completed'),
(10, 10, 10, 10, '2025-03-25', '12:00:00', 'Scheduled');
SELECT * FROM Appointments;

-- ---------------------------------------- Table 17: Prescriptions -----------------------------------------
CREATE TABLE Prescriptions (
PrescriptionID INT PRIMARY KEY,
PatientID INT,
DoctorID INT,
PrescriptionDate DATE,
Medicines TEXT,
Instructions TEXT,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
INSERT INTO Prescriptions VALUES
(1, 1, 1, '2025-03-10', 'Aspirin 100mg, Metoprolol', 'Take twice a day after meals'),
(2, 2, 2, '2025-03-12', 'Paracetamol 500mg', 'Take as needed for fever'),
(3, 3, 3, '2025-03-15', 'Ibuprofen 200mg', 'Take thrice a day for pain relief'),
(4, 4, 4, '2025-03-16', 'Prenatal vitamins', 'One daily after meals'),
(5, 5, 5, '2025-03-18', 'Omeprazole 20mg', 'Take once daily before breakfast'),
(6, 6, 6, '2025-03-19', 'Ciprofloxacin 500mg', 'Take twice a day for 7 days'),
(7, 7, 7, '2025-03-20', 'Sumatriptan 50mg', 'Take at the onset of a migraine'),
(8, 8, 8, '2025-03-22', 'Latanoprost eye drops', 'One drop in the affected eye at bedtime'),
(9, 9, 9, '2025-03-24', 'Sertraline 50mg', 'Take once daily in the morning'),
(10, 10, 10, '2025-03-25', 'Levothyroxine 50mcg', 'Take once daily on an empty stomach');
SELECT * FROM Prescriptions;

-- ---------------------------------------- Table 18: HospitalServices -----------------------------------------
CREATE TABLE HospitalServices (
ServiceID INT PRIMARY KEY,
HospitalID INT,
ServiceName VARCHAR(100),
ServiceType VARCHAR(100),
Description TEXT,
FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID)
);
INSERT INTO HospitalServices VALUES
(1, 1, '24/7 Emergency Care', 'Emergency', 'Immediate treatment for medical emergencies'),
(2, 2, 'Maternity Services', 'Maternity', 'Comprehensive care for pregnancy and childbirth'),
(3, 3, 'Outpatient Services', 'Outpatient', 'Consultations, follow-up treatments and minor procedures'),
(4, 4, 'Surgical Services', 'Surgery', 'Including orthopedics, general surgery, and more'),
(5, 5, 'Laboratory Services', 'Lab', 'Diagnostics, blood tests, X-rays, and more'),
(6, 6, 'Cancer Treatment', 'Cancer Care', 'Chemotherapy, radiotherapy, and supportive care'),
(7, 7, 'Cardiac Care', 'Cardiology', 'Cardiology consultations, stress tests, angiograms'),
(8, 8, 'Pediatrics', 'Pediatric Care', 'Childcare services including vaccinations and pediatric treatments'),
(9, 9, 'Gastroenterology', 'Gastro Care', 'Diagnosis and treatment of gastrointestinal disorders'),
(10, 10, 'Neurology', 'Neurological Services', 'Treatment for neurological conditions such as migraines, epilepsy');
SELECT * FROM HospitalServices;

-- ---------------------------------------- Table 19: LabTests -----------------------------------------
CREATE TABLE LabTests (
LabTestID INT PRIMARY KEY,
HospitalID INT,
TestName VARCHAR(100),
TestDescription TEXT,
Price DECIMAL(10, 2),
FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID)
);
INSERT INTO LabTests VALUES
(1, 1, 'Blood Test', 'Complete blood count to analyze the general health status', 500.00),
(2, 2, 'Ultrasound', 'Diagnostic imaging for soft tissues and organs', 1500.00),
(3, 3, 'X-ray', 'Radiographic imaging for bones and joints', 1000.00),
(4, 4, 'ECG', 'Electrocardiogram to assess heart function', 300.00),
(5, 5, 'CT Scan', 'Advanced imaging for detailed body scans', 4000.00),
(6, 6, 'MRI', 'Magnetic resonance imaging for detailed brain scans', 5000.00),
(7, 7, 'Blood Sugar Test', 'To test glucose levels in the blood', 200.00),
(8, 8, 'Urine Test', 'Test for urinary tract infections and kidney function', 250.00),
(9, 9, 'Liver Function Test', 'Test to evaluate liver health and function', 800.00),
(10, 10, 'Thyroid Test', 'Test to assess thyroid gland function', 600.00);
SELECT * FROM LabTests;

-- ------------------------------------- Table 20: InsuranceDetails ----------------------------------------
CREATE TABLE InsuranceDetails (
InsuranceID INT PRIMARY KEY,
PatientID INT,
InsuranceCompany VARCHAR(100),
PolicyNumber VARCHAR(50),
CoverageAmount DECIMAL(10, 2),
Validity DATE,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
INSERT INTO InsuranceDetails VALUES
(1, 1, 'Bajaj Allianz', 'BA1234567', 500000.00, '2025-12-31'),
(2, 2, 'ICICI Lombard', 'IC9876543', 350000.00, '2025-06-30'),
(3, 3, 'HDFC ERGO', 'HD11223344', 600000.00, '2025-03-31'),
(4, 4, 'Reliance General', 'RE55588899', 400000.00, '2025-09-30'),
(5, 5, 'Star Health', 'SH11122334', 200000.00, '2025-11-30'),
(6, 6, 'Max Bupa', 'MB1235436', 700000.00, '2025-07-15'),
(7, 7, 'New India Assurance', 'NI6748390', 800000.00, '2025-08-20'),
(8, 8, 'Tata AIG', 'TA9876541', 250000.00, '2025-12-15'),
(9, 9, 'Kotak Mahindra', 'KM9823745', 1000000.00, '2025-10-30'),
(10, 10, 'Bharti AXA', 'BA5678941', 550000.00, '2025-04-30');
SELECT * FROM InsuranceDetails;

-- -------------------------------------------- Table 21: SurgeriesDetails -----------------------------------------
CREATE TABLE SurgeriesDetails (
SurgeryID INT PRIMARY KEY,
PatientID INT,
DoctorID INT,
SurgeryDate DATE,
SurgeryType VARCHAR(100),
Status VARCHAR(50),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
INSERT INTO SurgeriesDetails VALUES
(1, 1, 1, '2025-03-05', 'Coronary Artery Bypass', 'Completed'),
(2, 2, 2, '2025-03-10', 'Cataract Surgery', 'Scheduled'),
(3, 3, 3, '2025-03-12', 'Knee Replacement', 'Completed'),
(4, 4, 4, '2025-03-15', 'Cesarean Section', 'Scheduled'),
(5, 5, 5, '2025-03-18', 'Appendectomy', 'Scheduled'),
(6, 6, 6, '2025-03-22', 'Gallbladder Removal', 'Completed'),
(7, 7, 7, '2025-03-25', 'Laparoscopic Surgery', 'Scheduled'),
(8, 8, 8, '2025-03-30', 'Hysterectomy', 'Scheduled'),
(9, 9, 9, '2025-04-01', 'Spine Surgery', 'Scheduled'),
(10, 10, 10, '2025-04-05', 'Lung Surgery', 'Scheduled');
SELECT * FROM Surgeries;

-- ----------------------------------- Table 22: PaymentDetails -----------------------------------------
CREATE TABLE PaymentDetails (
PaymentID INT PRIMARY KEY,
PatientID INT,
HospitalID INT,
Amount DECIMAL(10, 2),
PaymentDate DATE,
PaymentMethod VARCHAR(50),
Status VARCHAR(50),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID)
);
INSERT INTO PaymentDetails VALUES
(1, 1, 1, 15000.00, '2025-03-01', 'Credit Card', 'Paid'),
(2, 2, 2, 12000.00, '2025-03-03', 'Cash', 'Paid'),
(3, 3, 3, 5000.00, '2025-03-06', 'Insurance', 'Pending'),
(4, 4, 4, 20000.00, '2025-03-10', 'Debit Card', 'Paid'),
(5, 5, 5, 18000.00, '2025-03-12', 'Cash', 'Paid'),
(6, 6, 6, 15000.00, '2025-03-15', 'Insurance', 'Pending'),
(7, 7, 7, 3000.00, '2025-03-17', 'Debit Card', 'Paid'),
(8, 8, 8, 25000.00, '2025-03-20', 'Cash', 'Paid'),
(9, 9, 9, 8000.00, '2025-03-22', 'Credit Card', 'Paid'),
(10, 10, 10, 10000.00, '2025-03-24', 'Insurance', 'Pending');
SELECT * FROM PaymentDetails;

-- -------------------------------------- Table 23: DrugInventory --------------------------------------
CREATE TABLE DrugInventory (
DrugID INT PRIMARY KEY,
HospitalID INT,
DrugName VARCHAR(100),
Quantity INT,
ExpiryDate DATE,
Price DECIMAL(10, 2),
FOREIGN KEY (HospitalID) REFERENCES Hospitals(HospitalID)
);
INSERT INTO DrugInventory VALUES
(1, 1, 'Aspirin', 1000, '2025-12-31', 50.00),
(2, 2, 'Paracetamol', 1500, '2025-10-15', 30.00),
(3, 3, 'Ibuprofen', 2000, '2025-09-30', 20.00),
(4, 4, 'Omeprazole', 800, '2025-11-30', 40.00),
(5, 5, 'Ciprofloxacin', 1200, '2025-06-30', 100.00),
(6, 6, 'Sumatriptan', 500, '2025-05-15', 200.00),
(7, 7, 'Levothyroxine', 1500, '2025-12-31', 150.00),
(8, 8, 'Latanoprost', 300, '2025-07-15', 250.00),
(9, 9, 'Sertraline', 1000, '2025-08-01', 120.00),
(10, 10, 'Metformin', 2000, '2025-10-01', 60.00);
SELECT * FROM DrugInventory;

-- ------------------------------------ Table 24: PatientMedicalHistory ---------------------------------
CREATE TABLE PatientMedicalHistory (
HistoryID INT PRIMARY KEY,
PatientID INT,
Conditionl VARCHAR(100),
DiagnosisDate DATE,
Treatment VARCHAR(200),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
INSERT INTO PatientMedicalHistory VALUES
(1, 1, 'Hypertension', '2020-05-15', 'Medication and lifestyle changes'),
(2, 2, 'Asthma', '2022-03-10', 'Inhalers and allergy medications'),
(3, 3, 'Knee Osteoarthritis', '2021-07-12', 'Physical therapy and pain management'),
(4, 4, 'Pregnancy', '2025-01-10', 'Prenatal care and checkups'),
(5, 5, 'Appendicitis', '2025-03-05', 'Surgical removal of appendix'),
(6, 6, 'Gallstones', '2025-02-28', 'Surgery to remove gallbladder'),
(7, 7, 'Migraine', '2024-12-05', 'Medications and rest'),
(8, 8, 'Conjunctivitis', '2025-03-15', 'Eye drops and rest'),
(9, 9, 'Anxiety', '2025-02-25', 'Cognitive behavioral therapy and medication'),
(10, 10, 'Hypothyroidism', '2025-01-20', 'Thyroid hormone replacement therapy');
SELECT * FROM PatientMedicalHistory;

-- ------------------------------------ Table 25: MedicalReports -----------------------------------------
CREATE TABLE MedicalReports (
ReportID INT PRIMARY KEY,
PatientID INT,
ReportDate DATE,
ReportType VARCHAR(100),
Description TEXT,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
INSERT INTO MedicalReports VALUES
(1, 1, '2025-03-01', 'Cardiology Report', 'Report on heart function after stress test'),
(2, 2, '2025-03-05', 'Pulmonology Report', 'Asthma test results and recommendations'),
(3, 3, '2025-03-07', 'Orthopedic Report', 'Diagnosis of knee osteoarthritis and suggested treatment'),
(4, 4, '2025-03-10', 'Obstetrics Report', 'Ultrasound report for pregnancy'),
(5, 5, '2025-03-12', 'Surgical Report', 'Appendectomy surgery details and recovery plan'),
(6, 6, '2025-03-15', 'Gastroenterology Report', 'Gallstones detected in ultrasound'),
(7, 7, '2025-03-18', 'Neurology Report', 'MRI scan results for migraine management'),
(8, 8, '2025-03-20', 'Ophthalmology Report', 'Eye examination for conjunctivitis'),
(9, 9, '2025-03-22', 'Psychiatric Report', 'Assessment of anxiety disorder and therapy recommendations'),
(10, 10, '2025-03-25', 'Endocrinology Report', 'Thyroid test report and treatment plan');
SELECT * FROM MedicalReports;
