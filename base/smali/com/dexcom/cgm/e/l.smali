.class public final enum Lcom/dexcom/cgm/e/l;
.super Ljava/lang/Enum;
.source "EGVDatabaseOperations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/e/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/e/l;

.field public static final enum EgvSystemTime:Lcom/dexcom/cgm/e/l;

.field public static final enum RecordedSystemTime:Lcom/dexcom/cgm/e/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/dexcom/cgm/e/l;

    const-string v1, "RecordedSystemTime"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/e/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/e/l;->RecordedSystemTime:Lcom/dexcom/cgm/e/l;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/e/l;

    const-string v1, "EgvSystemTime"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/e/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/e/l;->EgvSystemTime:Lcom/dexcom/cgm/e/l;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dexcom/cgm/e/l;

    sget-object v1, Lcom/dexcom/cgm/e/l;->RecordedSystemTime:Lcom/dexcom/cgm/e/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/e/l;->EgvSystemTime:Lcom/dexcom/cgm/e/l;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dexcom/cgm/e/l;->$VALUES:[Lcom/dexcom/cgm/e/l;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/e/l;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/dexcom/cgm/e/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/e/l;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/e/l;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/dexcom/cgm/e/l;->$VALUES:[Lcom/dexcom/cgm/e/l;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/e/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/e/l;

    return-object v0
.end method
