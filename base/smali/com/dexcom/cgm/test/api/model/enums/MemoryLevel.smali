.class public final enum Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;
.super Ljava/lang/Enum;
.source "MemoryLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

.field public static final enum Critical:Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

.field public static final enum Low:Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

.field public static final enum Normal:Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;->Normal:Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    const-string v1, "Low"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;->Low:Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    const-string v1, "Critical"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;->Critical:Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;->Normal:Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;->Low:Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;->Critical:Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/MemoryLevel;

    return-object v0
.end method
