.class final enum Lcom/dexcom/cgm/tx/mediator/at;
.super Ljava/lang/Enum;
.source "Handle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/tx/mediator/at;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/tx/mediator/at;

.field public static final enum AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

.field public static final enum CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

.field public static final enum Exchange:Lcom/dexcom/cgm/tx/mediator/at;

.field public static final enum Synchronization:Lcom/dexcom/cgm/tx/mediator/at;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/at;

    const-string v1, "AuthenticationControlPoint"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/tx/mediator/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/at;

    const-string v1, "CgmControlPoint"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/tx/mediator/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/at;

    const-string v1, "Synchronization"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/tx/mediator/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/at;->Synchronization:Lcom/dexcom/cgm/tx/mediator/at;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/at;

    const-string v1, "Exchange"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/tx/mediator/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/at;->Exchange:Lcom/dexcom/cgm/tx/mediator/at;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexcom/cgm/tx/mediator/at;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->Synchronization:Lcom/dexcom/cgm/tx/mediator/at;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->Exchange:Lcom/dexcom/cgm/tx/mediator/at;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/at;->$VALUES:[Lcom/dexcom/cgm/tx/mediator/at;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/tx/mediator/at;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/tx/mediator/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/at;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/tx/mediator/at;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/at;->$VALUES:[Lcom/dexcom/cgm/tx/mediator/at;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/tx/mediator/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/tx/mediator/at;

    return-object v0
.end method
