.class public final enum Lcom/dexcom/cgm/model/enums/SpeakerType;
.super Ljava/lang/Enum;
.source "SpeakerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/SpeakerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/SpeakerType;

.field public static final enum BuiltIn:Lcom/dexcom/cgm/model/enums/SpeakerType;

.field public static final enum Headphones:Lcom/dexcom/cgm/model/enums/SpeakerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/dexcom/cgm/model/enums/SpeakerType;

    const-string v1, "BuiltIn"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/SpeakerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpeakerType;->BuiltIn:Lcom/dexcom/cgm/model/enums/SpeakerType;

    .line 6
    new-instance v0, Lcom/dexcom/cgm/model/enums/SpeakerType;

    const-string v1, "Headphones"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/model/enums/SpeakerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpeakerType;->Headphones:Lcom/dexcom/cgm/model/enums/SpeakerType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/SpeakerType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/SpeakerType;->BuiltIn:Lcom/dexcom/cgm/model/enums/SpeakerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/model/enums/SpeakerType;->Headphones:Lcom/dexcom/cgm/model/enums/SpeakerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpeakerType;->$VALUES:[Lcom/dexcom/cgm/model/enums/SpeakerType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/SpeakerType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/dexcom/cgm/model/enums/SpeakerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/SpeakerType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/SpeakerType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpeakerType;->$VALUES:[Lcom/dexcom/cgm/model/enums/SpeakerType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/SpeakerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/SpeakerType;

    return-object v0
.end method
