.class public final enum Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;
.super Ljava/lang/Enum;
.source "TestOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

.field public static final enum Flat:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

.field public static final enum LeftLandscape:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

.field public static final enum Portrait:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

.field public static final enum RightLandscape:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

.field public static final enum UpsideDownPortrait:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    const-string v1, "Flat"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->Flat:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    const-string v1, "Portrait"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->Portrait:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    const-string v1, "UpsideDownPortrait"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->UpsideDownPortrait:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    const-string v1, "LeftLandscape"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->LeftLandscape:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    const-string v1, "RightLandscape"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->RightLandscape:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->Flat:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->Portrait:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->UpsideDownPortrait:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->LeftLandscape:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->RightLandscape:Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/TestOrientation;

    return-object v0
.end method
