.class public final enum Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;
.super Ljava/lang/Enum;
.source "AlertSoundFailureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

.field public static final enum AudioFocusNotGranted:Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

.field public static final enum None:Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;->None:Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    .line 11
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    const-string v1, "AudioFocusNotGranted"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;->AudioFocusNotGranted:Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;->None:Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;->AudioFocusNotGranted:Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;->$VALUES:[Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;->$VALUES:[Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    return-object v0
.end method
