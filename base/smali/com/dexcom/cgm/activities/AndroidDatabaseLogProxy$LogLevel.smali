.class final enum Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;
.super Ljava/lang/Enum;
.source "AndroidDatabaseLogProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

.field public static final enum Debug:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

.field public static final enum Error:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

.field public static final enum Info:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

.field public static final enum Verbose:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

.field public static final enum Warn:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;


# instance fields
.field private m_level:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 21
    new-instance v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    const-string v1, "Debug"

    invoke-direct {v0, v1, v7, v3}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Debug:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    const-string v1, "Verbose"

    invoke-direct {v0, v1, v3, v4}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Verbose:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    const-string v1, "Info"

    invoke-direct {v0, v1, v4, v5}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Info:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    const-string v1, "Warn"

    invoke-direct {v0, v1, v5, v6}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Warn:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    const-string v1, "Error"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Error:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    sget-object v1, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Debug:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Verbose:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Info:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Warn:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Error:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->$VALUES:[Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->m_level:I

    .line 32
    return-void
.end method

.method private getLevel()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->m_level:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->$VALUES:[Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    return-object v0
.end method


# virtual methods
.method public final isAboveThreshold(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;)Z
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->getLevel()I

    move-result v0

    invoke-direct {p1}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->getLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
