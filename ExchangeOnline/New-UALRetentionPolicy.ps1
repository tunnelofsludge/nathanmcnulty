# List of all record types as of 2023/03/27 (Note: list is updated frequently, so double check your policies!)
$records = "AeD,AipDiscover,AipFileDeleted,AipProtectionAction,AipHeartBeat,AipScannerDiscoverEvent,AipSensitivityLabelAction,AirAdminActionInvestigation,AirInvestigation,AirManualInvestigation,Alert,AlertIncident,AlertStatus,ApplicationAudit,AttackSim,AttackSimAdmin,AzureActiveDirectory,AzureActiveDirectoryAccountLogon,AzureActiveDirectoryStsLogon,Campaign,Case,CaseInvestigation,CDPClassificationDocument,CDPClassificationMailItem,CDPCompliancePolicyExecution,CDPCompliancePolicyUserFeedback,CdpDlpSensitive,CDPMlInferencingResult,CDPPredictiveCodingLabel,CDPUnifiedFeedback,CMImprovementActionChange,ComplianceConnector,ComplianceDLPEndpoint,ComplianceDLPExchange,ComplianceDLPExchangeClassification,ComplianceDLPSharePoint,ComplianceDLPSharePointClassification,ComplianceSupervisionExchange,ConsumptionResource,CoreReportingSettings,CortanaBriefing,CRM,CustomerKeyServiceEncryption,DataCenterSecurityCmdlet,DataGovernance,DataInsightsRestApiAudit,DataShareOperation,Discovery,DLPEndpoint,DlpImportResult,DlpSensitiveInformationType,EduDataLakeDownloadOperation,EHRConnector,ExchangeAdmin,ExchangeAggregatedOperation,ExchangeItem,ExchangeItemAggregated,ExchangeItemGroup,ExchangeSearch,FilteringAttachmentInfo,FilteringDocMetadata,FilteringEmailContentFeatures,FilteringEmailFeatures,FilteringEntityEvent,FilteringMailGradingResult,FilteringMailMetadata,FilteringMailSubmission,FilteringPostMailDeliveryAction,FilteringRuleHits,FilteringRuntimeInfo,FilteringTeamsMetadata,FilteringTeamsPostDeliveryAction,FilteringTeamsUrlInfo,FilteringTimeTravelDocMetadata,FilteringUrlClick,FilteringUrlInfo,HygieneEvent,IncidentStatus,InformationBarrierPolicyApplication,InformationWorkerProtection,Kaizala,LabelAnalyticsAggregate,LabelContentExplorer,LabelExplorer,LargeContentMetadata,M365ComplianceConnector,MailSubmission,MAPGAlerts,MAPGPolicy,MAPGRemediation,MCASAlerts,MDATPAudit,MDCAssessments,MDCRegulatoryComplianceAssessments,MDCRegulatoryComplianceControls,MDCRegulatoryComplianceStandards,MDCSecurityConnectors,Microsoft365Group,MicrosoftFlow,MicrosoftForms,MicrosoftGraphDataConnectConsent,MicrosoftGraphDataConnectOperation,MicrosoftManagedServicePlatform,MicrosoftPurview,MicrosoftStream,MicrosoftTeams,MicrosoftTeamsAdmin,MicrosoftTeamsAnalytics,MicrosoftTeamsDevice,MicrosoftTeamsSensitivityLabelAction,MicrosoftTeamsShifts,MicrosoftTodoAudit,MipAutoLabelExchangeItem,MipAutoLabelProgressFeedback,MipAutoLabelSharePointItem,MipAutoLabelSharePointPolicyLocation,MipAutoLabelSimulationCompletion,MipAutoLabelSimulationProgress,MipAutoLabelSimulationStatistics,MipExactDataMatch,MIPLabel,MipLabelAnalyticsAuditRecord,MS365DCustomDetection,MS365DIncident,MS365DSuppressionRule,MSDEGeneralSettings,MSDEIndicatorsSettings,MSDEResponseActions,MSDERolesSettings,MSTIC,MultiStageDisposition,MyAnalyticsSettings,OfficeNative,OfficeScriptsRunAction,OMEPortal,OneDrive,OnPremisesFileShareScannerDlp,OnPremisesSharePointScannerDlp,PhysicalBadgingSignal,PlannerCopyPlan,PlannerPlan,PlannerPlanList,PlannerRoster,PlannerRosterSensitivityLabel,PlannerTask,PlannerTaskList,PlannerTenantSettings,PowerAppsApp,PowerAppsPlan,PowerAppsResource,PowerBIAudit,PowerBIDlp,PowerPagesSite,PowerPlatformAdminDlp,PowerPlatformAdminEnvironment,PowerPlatformLockboxResourceAccessRequest,PowerPlatformLockboxResourceCommand,PowerPlatformServiceActivity,PrivacyDataMatch,PrivacyDataMinimization,PrivacyDigestEmail,PrivacyRemediation,PrivacyRemediationAction,PrivacyTenantAuditHistoryRecord,Project,ProjectForTheWebProject,ProjectForTheWebProjectSettings,ProjectForTheWebRoadmap,ProjectForTheWebRoadmapItem,ProjectForTheWebRoadmapSettings,ProjectForTheWebTask,PublicFolder,PurviewDataMapOperation,Quarantine,QuarantineMetadata,RecordsManagement,ScorePlatformGenericAuditRecord,Search,SecureScore,SecurityComplianceAlerts,SecurityComplianceCenterEOPCmdlet,SecurityComplianceInsights,SecurityComplianceRBAC,SecurityComplianceUserChange,SensitivityLabelAction,SensitivityLabeledFileAction,SensitivityLabelPolicyMatch,SharePoint,SharePointAppPermissionOperation,SharePointCommentOperation,SharePointContentTypeOperation,SharePointFieldOperation,SharePointFileOperation,SharePointListItemOperation,SharePointListOperation,SharePointSearch,SharePointSharingOperation,SkypeForBusinessCmdlets,SkypeForBusinessPSTNUsage,SkypeForBusinessUsersBlocked,Sway,SyntheticProbe,TeamsEasyApprovals,TeamsHealthcare,TeamsQuarantineMetadata,TeamsUpdates,TenantAllowBlockList,ThreatFinder,ThreatIntelligence,ThreatIntelligenceAtpContent,ThreatIntelligenceUrl,TimeTravelFilteringDocMetadata,UpdateQuarantineMetadata,UserTraining,VivaGoals,WDATPAlerts,WebpageActivityEndpoint,WorkplaceAnalytics,Yammer"

# Create new policy for 1 year, review cmdlet docs for other parameter options: https://learn.microsoft.com/en-us/powershell/module/exchange/new-unifiedauditlogretentionpolicy?view=exchange-ps
New-UnifiedAuditLogRetentionPolicy -Name "1 Year - All Record Types" -Description "One year retention policy for all activities" -RecordTypes $records -RetentionDuration TwelveMonths -Priority 5
