.class final enum Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;
.super Ljava/lang/Enum;
.source "AlertScheduleSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

.field public static final enum FALLRATE:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

.field public static final enum RISERATE:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

.field public static final enum SIGNALLOSS:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

.field public static final enum URGENTLOW:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 501
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    const-string v1, "RISERATE"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->RISERATE:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    .line 502
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    const-string v1, "FALLRATE"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->FALLRATE:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    .line 503
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    const-string v1, "URGENTLOW"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->URGENTLOW:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    .line 504
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    const-string v1, "SIGNALLOSS"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->SIGNALLOSS:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    .line 499
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->RISERATE:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->FALLRATE:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->URGENTLOW:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->SIGNALLOSS:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->$VALUES:[Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 499
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;
    .locals 1

    .prologue
    .line 499
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->$VALUES:[Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    return-object v0
.end method
