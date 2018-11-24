.class Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;
.super Ljava/lang/Object;
.source "NamedValues.java"


# instance fields
.field public daytime:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;

.field private nighttime:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$1;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;->nighttime:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;->nighttime:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;

    return-object p1
.end method
