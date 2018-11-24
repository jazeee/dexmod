.class public final enum Lcom/dexcom/cgm/model/enums/InteractionType;
.super Ljava/lang/Enum;
.source "InteractionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/InteractionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/InteractionType;

.field public static final enum ScreenOff:Lcom/dexcom/cgm/model/enums/InteractionType;

.field public static final enum ScreenOn:Lcom/dexcom/cgm/model/enums/InteractionType;

.field public static final enum UserPresent:Lcom/dexcom/cgm/model/enums/InteractionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/dexcom/cgm/model/enums/InteractionType;

    const-string v1, "ScreenOn"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/InteractionType;->ScreenOn:Lcom/dexcom/cgm/model/enums/InteractionType;

    .line 6
    new-instance v0, Lcom/dexcom/cgm/model/enums/InteractionType;

    const-string v1, "ScreenOff"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/model/enums/InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/InteractionType;->ScreenOff:Lcom/dexcom/cgm/model/enums/InteractionType;

    .line 7
    new-instance v0, Lcom/dexcom/cgm/model/enums/InteractionType;

    const-string v1, "UserPresent"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/model/enums/InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/InteractionType;->UserPresent:Lcom/dexcom/cgm/model/enums/InteractionType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/InteractionType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/InteractionType;->ScreenOn:Lcom/dexcom/cgm/model/enums/InteractionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/model/enums/InteractionType;->ScreenOff:Lcom/dexcom/cgm/model/enums/InteractionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/model/enums/InteractionType;->UserPresent:Lcom/dexcom/cgm/model/enums/InteractionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexcom/cgm/model/enums/InteractionType;->$VALUES:[Lcom/dexcom/cgm/model/enums/InteractionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/InteractionType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/dexcom/cgm/model/enums/InteractionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/InteractionType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/InteractionType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/dexcom/cgm/model/enums/InteractionType;->$VALUES:[Lcom/dexcom/cgm/model/enums/InteractionType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/InteractionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/InteractionType;

    return-object v0
.end method
