.class public final enum Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;
.super Ljava/lang/Enum;
.source "NamedValues.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum AlertSchedule:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum DefaultAlertSchedule:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum FallRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum FallRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum HighAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum HighAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum LowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum LowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum NoDataAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum NoDataAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum RiseRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum RiseRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum ShareEnabled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum TrendMaxRange:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum UrgentLowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

.field public static final enum UrgentLowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "TrendMaxRange"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->TrendMaxRange:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "ShareEnabled"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->ShareEnabled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "UrgentLowAlert"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->UrgentLowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "LowAlert"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->LowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "HighAlert"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->HighAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "RiseRateAlert"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->RiseRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "FallRateAlert"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->FallRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "NoDataAlert"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->NoDataAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "UrgentLowAlertScheduled"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->UrgentLowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "LowAlertScheduled"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->LowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "HighAlertScheduled"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->HighAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 38
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "RiseRateAlertScheduled"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->RiseRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "FallRateAlertScheduled"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->FallRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 40
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "NoDataAlertScheduled"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->NoDataAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "DefaultAlertSchedule"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->DefaultAlertSchedule:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    const-string v1, "AlertSchedule"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->AlertSchedule:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->TrendMaxRange:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->ShareEnabled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->UrgentLowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->LowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->HighAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->RiseRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->FallRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->NoDataAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->UrgentLowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->LowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->HighAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->RiseRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->FallRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->NoDataAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->DefaultAlertSchedule:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->AlertSchedule:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->$VALUES:[Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private readAlertSchedule(Lcom/dexcom/cgm/d/a;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    invoke-interface {p1, p2}, Lcom/dexcom/cgm/d/a;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 229
    new-instance v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 230
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/enums/AlertKind;->isUserAlert()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".readAlertSettings() was called with an invalid AlertKind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/enums/AlertKind;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-interface {p1}, Lcom/dexcom/cgm/d/a;->getAlertSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/AlertSettings;

    .line 123
    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/model/AlertSettings;->getAlertProperties(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;-><init>(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$1;)V

    .line 126
    if-nez p3, :cond_1

    .line 128
    new-instance v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;

    invoke-direct {v2, v0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;-><init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    iput-object v2, v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;->daytime:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;

    .line 134
    :goto_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :cond_1
    new-instance v2, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;

    invoke-direct {v2, v0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;-><init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    invoke-static {v1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;->access$102(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;

    goto :goto_0
.end method

.method private storeAlertSchedule(Lcom/dexcom/cgm/b/f;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;

    .line 217
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SimpleAlertSchedule;->getAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 220
    invoke-interface {p1, v0}, Lcom/dexcom/cgm/b/f;->updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 222
    :cond_0
    return-void
.end method

.method private storeAlertSetting(Lcom/dexcom/cgm/b/f;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;

    .line 141
    if-nez p3, :cond_0

    .line 143
    iget-object v0, v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;->daytime:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->updateAlertSettings(Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {v0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;->access$100(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$DayAndNightAlertSettings;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->updateAlertSettings(Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;)V

    goto :goto_0
.end method

.method private updateAlertSettings(Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;)V
    .locals 3

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertKind;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    invoke-virtual {p2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->getUserAlertProperties()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/b/f;->updateAlertSettings(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 165
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An unrecognized alert setting was stored on the server. The alert type was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues$SingleAlertSettings;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->$VALUES:[Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    return-object v0
.end method


# virtual methods
.method public final getValueFromDatabase(Lcom/dexcom/cgm/d/a;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->TrendMaxRange:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_0

    .line 47
    invoke-interface {p1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getGraphHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 48
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->ShareEnabled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_1

    .line 49
    invoke-interface {p1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getShareEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->UrgentLowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_2

    .line 51
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_2
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->LowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_3

    .line 53
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_3
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->HighAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_4

    .line 55
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_4
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->RiseRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_5

    .line 57
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_5
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->FallRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_6

    .line 59
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_6
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->NoDataAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_7

    .line 61
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_7
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->UrgentLowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_8

    .line 63
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_8
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->LowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_9

    .line 65
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_9
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->HighAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_a

    .line 67
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_a
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->RiseRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_b

    .line 69
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_b
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->FallRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_c

    .line 71
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 72
    :cond_c
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->NoDataAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_d

    .line 73
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, p1, v0, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSetting(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/enums/AlertKind;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 74
    :cond_d
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->DefaultAlertSchedule:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_e

    .line 75
    invoke-direct {p0, p1, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSchedule(Lcom/dexcom/cgm/d/a;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 76
    :cond_e
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->AlertSchedule:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_f

    .line 77
    invoke-direct {p0, p1, v2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->readAlertSchedule(Lcom/dexcom/cgm/d/a;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Somehow you managed to call NamedValues.getValueFromDatabase() on an object that wasn\'t actually part of the enumeration!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final storeValueIntoDatabase(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/b/f;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->TrendMaxRange:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_0

    .line 93
    invoke-interface {p1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setGraphHeight(I)V

    .line 102
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->ShareEnabled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_1

    .line 95
    invoke-interface {p1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setShareEnabled(Z)V

    goto :goto_0

    .line 96
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->UrgentLowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->LowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->HighAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->RiseRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->FallRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->NoDataAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_3

    .line 98
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->storeAlertSetting(Lcom/dexcom/cgm/b/f;Ljava/lang/String;I)V

    goto :goto_0

    .line 99
    :cond_3
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->UrgentLowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->LowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->HighAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->RiseRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->FallRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->NoDataAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_5

    .line 100
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->storeAlertSetting(Lcom/dexcom/cgm/b/f;Ljava/lang/String;I)V

    goto :goto_0

    .line 101
    :cond_5
    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->DefaultAlertSchedule:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-eq p0, v0, :cond_6

    sget-object v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->AlertSchedule:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    if-ne p0, v0, :cond_7

    .line 102
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->storeAlertSchedule(Lcom/dexcom/cgm/b/f;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Somehow you managed to call NamedValues.storeValueIntoDatabase() on an object that wasn\'t actually part of the enumeration!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
