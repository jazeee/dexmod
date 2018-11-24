.class final enum Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;
.super Ljava/lang/Enum;
.source "WhatsNewFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

.field public static final enum ALERT_SCHEDULE:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

.field public static final enum CRITICAL_ALERTS:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

.field public static final enum IMPORTANT_NOTICE:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

.field public static final enum SOUND_ICONS:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    const-string v1, "IMPORTANT_NOTICE"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->IMPORTANT_NOTICE:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    .line 46
    new-instance v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    const-string v1, "CRITICAL_ALERTS"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->CRITICAL_ALERTS:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    .line 47
    new-instance v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    const-string v1, "ALERT_SCHEDULE"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->ALERT_SCHEDULE:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    .line 48
    new-instance v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    const-string v1, "SOUND_ICONS"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->SOUND_ICONS:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->IMPORTANT_NOTICE:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->CRITICAL_ALERTS:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->ALERT_SCHEDULE:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->SOUND_ICONS:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->$VALUES:[Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getNumberOfScreens()I
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->values()[Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->$VALUES:[Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    return-object v0
.end method


# virtual methods
.method public final getNext()Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 58
    invoke-static {}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->values()[Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 60
    invoke-static {}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->values()[Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 62
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->values()[Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final getPrevious()Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 68
    if-gez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->values()[Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method
