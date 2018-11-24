.class public Lcom/dexcom/cgm/model/PhoneInformation;
.super Ljava/lang/Object;
.source "PhoneInformation.java"


# instance fields
.field private final m_appPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppPackageName"
    .end annotation
.end field

.field private final m_appVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppVersion"
    .end annotation
.end field

.field private final m_buildBoard:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BuildBoard"
    .end annotation
.end field

.field private final m_buildBootloader:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BuildBootloader"
    .end annotation
.end field

.field private final m_buildBrand:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BuildBrand"
    .end annotation
.end field

.field private final m_buildDevice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BuildDevice"
    .end annotation
.end field

.field private final m_buildHardware:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BuildHardware"
    .end annotation
.end field

.field private final m_buildManufacturer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BuildManufacturer"
    .end annotation
.end field

.field private final m_buildModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BuildModel"
    .end annotation
.end field

.field private final m_buildProduct:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BuildProduct"
    .end annotation
.end field

.field private final m_buildRadioVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BuildRadioVersion"
    .end annotation
.end field

.field private final m_osVersionIncremental:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OsVersionIncremental"
    .end annotation
.end field

.field private final m_osVersionRelease:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OsVersionRelease"
    .end annotation
.end field

.field private final m_osVersionSdkInt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OsVersionSdkInt"
    .end annotation
.end field

.field private final m_pid:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PID"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_appPackageName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_appVersion:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_osVersionRelease:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_osVersionIncremental:Ljava/lang/String;

    .line 62
    iput p5, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_osVersionSdkInt:I

    .line 63
    iput-object p6, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_buildProduct:Ljava/lang/String;

    .line 64
    iput-object p7, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_buildDevice:Ljava/lang/String;

    .line 65
    iput-object p8, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_buildBoard:Ljava/lang/String;

    .line 66
    iput-object p9, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_buildManufacturer:Ljava/lang/String;

    .line 67
    iput-object p10, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_buildBrand:Ljava/lang/String;

    .line 68
    iput-object p11, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_buildModel:Ljava/lang/String;

    .line 69
    iput-object p12, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_buildBootloader:Ljava/lang/String;

    .line 70
    iput-object p13, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_buildHardware:Ljava/lang/String;

    .line 71
    iput-object p14, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_buildRadioVersion:Ljava/lang/String;

    .line 72
    iput p15, p0, Lcom/dexcom/cgm/model/PhoneInformation;->m_pid:I

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dexcom/cgm/model/PhoneInformation$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p15}, Lcom/dexcom/cgm/model/PhoneInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
