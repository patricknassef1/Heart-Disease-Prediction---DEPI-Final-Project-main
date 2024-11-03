CREATE DATABASE heart_2022_with_nans;
USE heart_2022_with_nans;

-- Select data for review
SELECT TOP (1000) 
      [State],
      [Sex],
      [GeneralHealth],
      [PhysicalHealthDays],
      [MentalHealthDays],
      [LastCheckupTime],
      [PhysicalActivities],
      [SleepHours],
      [RemovedTeeth],
      [HadHeartAttack],
      [HadAngina],
      [HadStroke],
      [HadAsthma],
      [HadSkinCancer],
      [HadCOPD],
      [HadDepressiveDisorder],
      [HadKidneyDisease],
      [HadArthritis],
      [HadDiabetes],
      [DeafOrHardOfHearing],
      [BlindOrVisionDifficulty],
      [DifficultyConcentrating],
      [DifficultyWalking],
      [DifficultyDressingBathing],
      [DifficultyErrands],
      [SmokerStatus],
      [ECigaretteUsage],
      [ChestScan],
      [RaceEthnicityCategory],
      [AgeCategory],
      [HeightInMeters],
      [WeightInKilograms],
      [BMI],
      [AlcoholDrinkers],
      [HIVTesting],
      [FluVaxLast12],
      [PneumoVaxEver],
      [TetanusLast10Tdap],
      [HighRiskLastYear],
      [CovidPos]
FROM [heart_2022_with_nans].[dbo].[heart_2022_with_nans];

-- Cleaning the data by deleting rows with NULL values
DELETE FROM [heart_2022_with_nans].[dbo].[heart_2022_with_nans]
WHERE 
    [State] IS NULL OR
    [Sex] IS NULL OR
    [GeneralHealth] IS NULL OR
    [PhysicalHealthDays] IS NULL OR
    [MentalHealthDays] IS NULL OR
    [LastCheckupTime] IS NULL OR
    [PhysicalActivities] IS NULL OR
    [SleepHours] IS NULL OR
    [RemovedTeeth] IS NULL OR
    [HadHeartAttack] IS NULL OR
    [HadAngina] IS NULL OR
    [HadStroke] IS NULL OR
    [HadAsthma] IS NULL OR
    [HadSkinCancer] IS NULL OR
    [HadCOPD] IS NULL OR
    [HadDepressiveDisorder] IS NULL OR
    [HadKidneyDisease] IS NULL OR
    [HadArthritis] IS NULL OR
    [HadDiabetes] IS NULL OR
    [DeafOrHardOfHearing] IS NULL OR
    [BlindOrVisionDifficulty] IS NULL OR
    [DifficultyConcentrating] IS NULL OR
    [DifficultyWalking] IS NULL OR
    [DifficultyDressingBathing] IS NULL OR
    [DifficultyErrands] IS NULL OR
    [SmokerStatus] IS NULL OR
    [ECigaretteUsage] IS NULL OR
    [ChestScan] IS NULL OR
    [RaceEthnicityCategory] IS NULL OR
    [AgeCategory] IS NULL OR
    [HeightInMeters] IS NULL OR
    [WeightInKilograms] IS NULL OR
    [BMI] IS NULL OR
    [AlcoholDrinkers] IS NULL OR
    [HIVTesting] IS NULL OR
    [FluVaxLast12] IS NULL OR
    [PneumoVaxEver] IS NULL OR
    [TetanusLast10Tdap] IS NULL OR
    [HighRiskLastYear] IS NULL OR
    [CovidPos] IS NULL;


SELECT * 
FROM [heart_2022_with_nans].[dbo].[heart_2022_with_nans]
WHERE 
    [State] IS NULL OR
    [Sex] IS NULL OR
    [GeneralHealth] IS NULL OR
    [PhysicalHealthDays] IS NULL OR
    [MentalHealthDays] IS NULL OR
    [LastCheckupTime] IS NULL OR
    [PhysicalActivities] IS NULL OR
    [SleepHours] IS NULL OR
    [RemovedTeeth] IS NULL OR
    [HadHeartAttack] IS NULL OR
    [HadAngina] IS NULL OR
    [HadStroke] IS NULL OR
    [HadAsthma] IS NULL OR
    [HadSkinCancer] IS NULL OR
    [HadCOPD] IS NULL OR
    [HadDepressiveDisorder] IS NULL OR
    [HadKidneyDisease] IS NULL OR
    [HadArthritis] IS NULL OR
    [HadDiabetes] IS NULL OR
    [DeafOrHardOfHearing] IS NULL OR
    [BlindOrVisionDifficulty] IS NULL OR
    [DifficultyConcentrating] IS NULL OR
    [DifficultyWalking] IS NULL OR
    [DifficultyDressingBathing] IS NULL OR
    [DifficultyErrands] IS NULL OR
    [SmokerStatus] IS NULL OR
    [ECigaretteUsage] IS NULL OR
    [ChestScan] IS NULL OR
    [RaceEthnicityCategory] IS NULL OR
    [AgeCategory] IS NULL OR
    [HeightInMeters] IS NULL OR
    [WeightInKilograms] IS NULL OR
    [BMI] IS NULL OR
    [AlcoholDrinkers] IS NULL OR
    [HIVTesting] IS NULL OR
    [FluVaxLast12] IS NULL OR
    [PneumoVaxEver] IS NULL OR
    [TetanusLast10Tdap] IS NULL OR
    [HighRiskLastYear] IS NULL OR
    [CovidPos] IS NULL; -- Should return no results



-- Setting an ID
ALTER TABLE [heart_2022_with_nans].[dbo].[heart_2022_with_nans]
ADD PatientID INT IDENTITY(1,1);

SELECT * FROM heart_2022_with_nans;


CREATE TABLE [dbo].[PatientInfo] (
    PatientID INT PRIMARY KEY IDENTITY(1,1),
    [State] NVARCHAR(50),
    [Sex] NVARCHAR(10),
    [GeneralHealth] NVARCHAR(20),
    [AgeCategory] NVARCHAR(20),
    [HeightInMeters] FLOAT,
    [WeightInKilograms] FLOAT,
    [BMI] FLOAT
);

CREATE TABLE [dbo].[HealthInfo] (
    PatientID INT PRIMARY KEY,
    [HadHeartAttack] NVARCHAR(10),
    [HadAngina] NVARCHAR(10),
    [HadStroke] NVARCHAR(10),
    [HadAsthma] NVARCHAR(10),
    [HadSkinCancer] NVARCHAR(10),
    [HadCOPD] NVARCHAR(10),
    [HadDepressiveDisorder] NVARCHAR(10),
    [HadKidneyDisease] NVARCHAR(10),
    [HadArthritis] NVARCHAR(10),
    [HadDiabetes] NVARCHAR(10),
    [DeafOrHardOfHearing] NVARCHAR(10),
    [BlindOrVisionDifficulty] NVARCHAR(10),
    [DifficultyConcentrating] NVARCHAR(10),
    [DifficultyWalking] NVARCHAR(10),
    [DifficultyDressingBathing] NVARCHAR(10),
    [DifficultyErrands] NVARCHAR(10),
    [SmokerStatus] NVARCHAR(10),
    [ECigaretteUsage] NVARCHAR(10),
    [ChestScan] NVARCHAR(10),
    [RaceEthnicityCategory] NVARCHAR(20),
    [AlcoholDrinkers] NVARCHAR(10),
    [HIVTesting] NVARCHAR(10),
    [FluVaxLast12] NVARCHAR(10),
    [PneumoVaxEver] NVARCHAR(10),
    [TetanusLast10Tdap] NVARCHAR(10),
    [HighRiskLastYear] NVARCHAR(10),
    [CovidPos] NVARCHAR(10),
    FOREIGN KEY (PatientID) REFERENCES [dbo].[PatientInfo](PatientID)  -- Foreign key reference
);

INSERT INTO [dbo].[PatientInfo] ([State], [Sex], [GeneralHealth], [AgeCategory], [HeightInMeters], [WeightInKilograms], [BMI])
SELECT 
    [State], 
    [Sex], 
    [GeneralHealth], 
    [AgeCategory],
    [HeightInMeters],
    [WeightInKilograms],
    [BMI]
FROM [heart_2022_with_nans].[dbo].[heart_2022_with_nans];

-- Step 3: Insert into HealthInfo table using the same PatientID from PatientInfo
INSERT INTO [dbo].[HealthInfo] (
    PatientID, 
    [HadHeartAttack], 
    [HadAngina], 
    [HadStroke], 
    [HadAsthma], 
    [HadSkinCancer], 
    [HadCOPD], 
    [HadDepressiveDisorder], 
    [HadKidneyDisease], 
    [HadArthritis], 
    [HadDiabetes], 
    [DeafOrHardOfHearing], 
    [BlindOrVisionDifficulty], 
    [DifficultyConcentrating], 
    [DifficultyWalking], 
    [DifficultyDressingBathing], 
    [DifficultyErrands], 
    [SmokerStatus], 
    [ECigaretteUsage], 
    [ChestScan], 
    [RaceEthnicityCategory], 
    [AlcoholDrinkers], 
    [HIVTesting], 
    [FluVaxLast12], 
    [PneumoVaxEver], 
    [TetanusLast10Tdap], 
    [HighRiskLastYear], 
    [CovidPos]
)
SELECT 
    p.PatientID,  -- Use the PatientID from the newly inserted PatientInfo table
    h.[HadHeartAttack], 
    h.[HadAngina], 
    h.[HadStroke], 
    h.[HadAsthma], 
    h.[HadSkinCancer], 
    h.[HadCOPD], 
    h.[HadDepressiveDisorder], 
    h.[HadKidneyDisease], 
    h.[HadArthritis], 
    h.[HadDiabetes], 
    h.[DeafOrHardOfHearing], 
    h.[BlindOrVisionDifficulty], 
    h.[DifficultyConcentrating], 
    h.[DifficultyWalking], 
    h.[DifficultyDressingBathing], 
    h.[DifficultyErrands], 
    h.[SmokerStatus], 
    h.[ECigaretteUsage], 
    h.[ChestScan], 
    h.[RaceEthnicityCategory], 
    h.[AlcoholDrinkers], 
    h.[HIVTesting], 
    h.[FluVaxLast12], 
    h.[PneumoVaxEver], 
    h.[TetanusLast10Tdap], 
    h.[HighRiskLastYear], 
    h.[CovidPos]
FROM [heart_2022_with_nans].[dbo].[heart_2022_with_nans] AS h
JOIN [dbo].[PatientInfo] AS p ON h.[State] = p.[State] AND h.[Sex] = p.[Sex];



-- Step 1: Create the new merged table
CREATE TABLE [dbo].[heart_data] (
    PatientID INT PRIMARY KEY IDENTITY(1,1),
    [State] NVARCHAR(50),
    [Sex] NVARCHAR(10),
    [GeneralHealth] NVARCHAR(20),
    [AgeCategory] NVARCHAR(20),
    [HeightInMeters] FLOAT,
    [WeightInKilograms] FLOAT,
    [BMI] FLOAT,
    [HadHeartAttack] NVARCHAR(10),
    [HadAngina] NVARCHAR(10),
    [HadStroke] NVARCHAR(10),
    [HadAsthma] NVARCHAR(10),
    [HadSkinCancer] NVARCHAR(10),
    [HadCOPD] NVARCHAR(10),
    [HadDepressiveDisorder] NVARCHAR(10),
    [HadKidneyDisease] NVARCHAR(10),
    [HadArthritis] NVARCHAR(10),
    [HadDiabetes] NVARCHAR(10),
    [DeafOrHardOfHearing] NVARCHAR(10),
    [BlindOrVisionDifficulty] NVARCHAR(10),
    [DifficultyConcentrating] NVARCHAR(10),
    [DifficultyWalking] NVARCHAR(10),
    [DifficultyDressingBathing] NVARCHAR(10),
    [DifficultyErrands] NVARCHAR(10),
    [SmokerStatus] NVARCHAR(10),
    [ECigaretteUsage] NVARCHAR(10),
    [ChestScan] NVARCHAR(10),
    [RaceEthnicityCategory] NVARCHAR(20),
    [AlcoholDrinkers] NVARCHAR(10),
    [HIVTesting] NVARCHAR(10),
    [FluVaxLast12] NVARCHAR(10),
    [PneumoVaxEver] NVARCHAR(10),
    [TetanusLast10Tdap] NVARCHAR(10),
    [HighRiskLastYear] NVARCHAR(10),
    [CovidPos] NVARCHAR(10)
);

-- Step 2: Insert data into the merged table
INSERT INTO [dbo].[heart_data] (
    [State], [Sex], [GeneralHealth], [AgeCategory], [HeightInMeters], 
    [WeightInKilograms], [BMI], [HadHeartAttack], [HadAngina], [HadStroke], 
    [HadAsthma], [HadSkinCancer], [HadCOPD], [HadDepressiveDisorder], 
    [HadKidneyDisease], [HadArthritis], [HadDiabetes], [DeafOrHardOfHearing], 
    [BlindOrVisionDifficulty], [DifficultyConcentrating], [DifficultyWalking], 
    [DifficultyDressingBathing], [DifficultyErrands], [SmokerStatus], 
    [ECigaretteUsage], [ChestScan], [RaceEthnicityCategory], [AlcoholDrinkers], 
    [HIVTesting], [FluVaxLast12], [PneumoVaxEver], [TetanusLast10Tdap], 
    [HighRiskLastYear], [CovidPos]
)
SELECT 
    p.[State], 
    p.[Sex], 
    p.[GeneralHealth], 
    p.[AgeCategory], 
    p.[HeightInMeters], 
    p.[WeightInKilograms], 
    p.[BMI], 
    h.[HadHeartAttack], 
    h.[HadAngina], 
    h.[HadStroke], 
    h.[HadAsthma], 
    h.[HadSkinCancer], 
    h.[HadCOPD], 
    h.[HadDepressiveDisorder], 
    h.[HadKidneyDisease], 
    h.[HadArthritis], 
    h.[HadDiabetes], 
    h.[DeafOrHardOfHearing], 
    h.[BlindOrVisionDifficulty], 
    h.[DifficultyConcentrating], 
    h.[DifficultyWalking], 
    h.[DifficultyDressingBathing], 
    h.[DifficultyErrands], 
    h.[SmokerStatus], 
    h.[ECigaretteUsage], 
    h.[ChestScan], 
    h.[RaceEthnicityCategory], 
    h.[AlcoholDrinkers], 
    h.[HIVTesting], 
    h.[FluVaxLast12], 
    h.[PneumoVaxEver], 
    h.[TetanusLast10Tdap], 
    h.[HighRiskLastYear], 
    h.[CovidPos]
FROM [dbo].[PatientInfo] p
JOIN [dbo].[HealthInfo] h ON p.PatientID = h.PatientID;