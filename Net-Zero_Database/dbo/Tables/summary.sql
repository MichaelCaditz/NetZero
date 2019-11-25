﻿CREATE TABLE [dbo].[summary] (
    [nID]                                INT             IDENTITY (1000, 1) NOT NULL,
    [nInsolation]                        DECIMAL (18, 6) NULL,
    [dtCreateDate]                       DATETIME2 (7)   NULL,
    [nProjectsID]                        INT             NULL,
    [dtDate]                             DATETIME2 (7)   NOT NULL,
    [bDeleted]                           BIT             NULL,
    [cNote]                              NVARCHAR (50)   NULL,
    [nInsolationPredicted]               DECIMAL (18, 6) NULL,
    [nDemandTotal]                       DECIMAL (18, 6) NULL,
    [nRequiredPV]                        AS              (case when [bUserSpecifiedCoordinates]=(1) AND (([nBatteryEfficiency]*[nInverterDerate])*[nMPPTFactor])*[nInsolationPredictedEmperical]>(0) then [nDemandTotal]/((([nBatteryEfficiency]*[nInverterDerate])*[nMPPTFactor])*[nInsolationPredictedEmperical]) when [bUserSpecifiedCoordinates]=(1) AND (([nBatteryEfficiency]*[nInverterDerate])*[nMPPTFactor])*[nInsolationPredictedEmperical]<=(0) then (0) when [bUserSpecifiedCoordinates]=(0) AND (([nBatteryEfficiency]*[nInverterDerate])*[nMPPTFactor])*[nInsolationPredicted]>(0) then [nDemandTotal]/((([nBatteryEfficiency]*[nInverterDerate])*[nMPPTFactor])*[nInsolationPredicted]) else (0) end),
    [nChosenPV]                          DECIMAL (18, 6) NULL,
    [nMPPTFactor]                        DECIMAL (18, 6) NULL,
    [nBatteryEfficiency]                 DECIMAL (18, 6) NULL,
    [nInverterDerate]                    DECIMAL (18, 6) NULL,
    [nDaysRunFullCharge]                 DECIMAL (18, 6) NULL,
    [nChosenBattery]                     DECIMAL (18, 6) NULL,
    [nVoltage]                           DECIMAL (18, 6) NULL,
    [nRunningLoss]                       DECIMAL (18, 6) NULL,
    [nLat]                               DECIMAL (18, 6) NULL,
    [cChosenTilt]                        NVARCHAR (100)  NULL,
    [nSunAltitude]                       DECIMAL (18, 6) NULL,
    [nSunAzimuth]                        DECIMAL (18, 6) NULL,
    [nDeclination]                       DECIMAL (18, 6) NULL,
    [nChosenTiltDeg]                     DECIMAL (18, 6) NULL,
    [nChosenBatterykWh]                  DECIMAL (18, 6) NULL,
    [nBatteryRemainingkWh]               DECIMAL (18, 6) NULL,
    [nSunAzimuth0800]                    DECIMAL (18, 6) NULL,
    [nSunAzimuth1600]                    DECIMAL (18, 6) NULL,
    [nSunAltitude0800]                   DECIMAL (18, 6) NULL,
    [nSunAltitude1600]                   DECIMAL (18, 6) NULL,
    [nLong]                              DECIMAL (18, 6) NULL,
    [nAirMassRatio]                      DECIMAL (18, 6) NULL,
    [nDayOfYear]                         INT             NULL,
    [nASHRAE_A]                          DECIMAL (18, 6) NULL,
    [nASHRAE_k]                          DECIMAL (18, 6) NULL,
    [nIB]                                DECIMAL (18, 6) NULL,
    [nDNI]                               DECIMAL (18, 6) NULL,
    [nDNIDay]                            DECIMAL (18, 6) NULL,
    [nIncidence]                         DECIMAL (18, 6) NULL,
    [nBeamCollector]                     DECIMAL (18, 6) NULL,
    [nSkyDiffuseFactor]                  DECIMAL (18, 6) NULL,
    [nDiffuseCollector]                  DECIMAL (18, 6) NULL,
    [nReflectedCollector]                DECIMAL (18, 6) NULL,
    [nBeamCollectorHorizontal]           DECIMAL (18, 6) NULL,
    [nDiffuseCollectorHorizontal]        DECIMAL (18, 6) NULL,
    [nDHI]                               DECIMAL (18, 6) NULL,
    [nDHIDay]                            DECIMAL (18, 6) NULL,
    [nGHI]                               DECIMAL (18, 6) NULL,
    [nGHIDay]                            DECIMAL (18, 6) NULL,
    [nIncidenceHNS]                      DECIMAL (18, 6) NULL,
    [nIBC_HNS]                           DECIMAL (18, 6) NULL,
    [nIDC_HNS]                           DECIMAL (18, 6) NULL,
    [nIRC_HNS]                           DECIMAL (18, 6) NULL,
    [nIBC_HNSEmperical]                  DECIMAL (18, 6) NULL,
    [nIDC_HNSEmperical]                  DECIMAL (18, 6) NULL,
    [nIRC_HNSEmperical]                  DECIMAL (18, 6) NULL,
    [nIncidenceHEW]                      DECIMAL (18, 6) NULL,
    [nIBC_HEW]                           DECIMAL (18, 6) NULL,
    [nIDC_HEW]                           DECIMAL (18, 6) NULL,
    [nIRC_HEW]                           DECIMAL (18, 6) NULL,
    [nIncidenceVERT]                     DECIMAL (18, 6) NULL,
    [nIBC_VERT]                          DECIMAL (18, 6) NULL,
    [nIDC_VERT]                          DECIMAL (18, 6) NULL,
    [nIRC_VERT]                          DECIMAL (18, 6) NULL,
    [nIncidencePNS]                      DECIMAL (18, 6) NULL,
    [nIBC_PNS]                           DECIMAL (18, 6) NULL,
    [nIDC_PNS]                           DECIMAL (18, 6) NULL,
    [nIRC_PNS]                           DECIMAL (18, 6) NULL,
    [nIBC2]                              DECIMAL (18, 6) NULL,
    [nIDC2]                              DECIMAL (18, 6) NULL,
    [nIRC2]                              DECIMAL (18, 6) NULL,
    [nIBC2Emperical]                     DECIMAL (18, 6) NULL,
    [nIDC2Emperical]                     DECIMAL (18, 6) NULL,
    [nIRC2Emperical]                     DECIMAL (18, 6) NULL,
    [nHourAngle]                         DECIMAL (18, 6) NULL,
    [nHoursMoreRun]                      DECIMAL (18, 6) NULL,
    [dtCT]                               DATETIME        NULL,
    [nChosenAzimuth]                     DECIMAL (18, 6) NULL,
    [bIsDT]                              BIT             NULL,
    [nBeamCollectorEmperical]            DECIMAL (18, 6) NULL,
    [nReflectedCollectorEmperical]       DECIMAL (18, 6) NULL,
    [nDiffuseCollectorEmperical]         DECIMAL (18, 6) NULL,
    [nTotalEmperical]                    AS              (([nBeamCollectorEmperical]+[nReflectedCollectorEmperical])+[nDiffuseCollectorEmperical]),
    [nInsolationPredictedEmperical]      DECIMAL (18, 6) NULL,
    [nInsolationPredictedEmpericalMonth] DECIMAL (18, 6) NULL,
    [nTotalEmpericalDay]                 DECIMAL (18, 6) NULL,
    [bUserSpecifiedCoordinates]          BIT             NULL,
    CONSTRAINT [PK_Summary] PRIMARY KEY CLUSTERED ([nID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_summary_dtDate]
    ON [dbo].[summary]([dtDate] ASC);
