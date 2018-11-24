.class public abstract enum Lcom/samsung/android/sdk/healthdata/j;
.super Ljava/lang/Enum;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/healthdata/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DAILY:Lcom/samsung/android/sdk/healthdata/j;

.field public static final enum HOURLY:Lcom/samsung/android/sdk/healthdata/j;

.field public static final enum MINUTELY:Lcom/samsung/android/sdk/healthdata/j;

.field public static final enum MONTHLY:Lcom/samsung/android/sdk/healthdata/j;

.field public static final enum WEEKLY:Lcom/samsung/android/sdk/healthdata/j;

.field private static final synthetic b:[Lcom/samsung/android/sdk/healthdata/j;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2276
    new-instance v0, Lcom/samsung/android/sdk/healthdata/k;

    const-string v1, "MINUTELY"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/j;->MINUTELY:Lcom/samsung/android/sdk/healthdata/j;

    .line 2299
    new-instance v0, Lcom/samsung/android/sdk/healthdata/l;

    const-string v1, "HOURLY"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/j;->HOURLY:Lcom/samsung/android/sdk/healthdata/j;

    .line 2322
    new-instance v0, Lcom/samsung/android/sdk/healthdata/m;

    const-string v1, "DAILY"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/j;->DAILY:Lcom/samsung/android/sdk/healthdata/j;

    .line 2345
    new-instance v0, Lcom/samsung/android/sdk/healthdata/n;

    const-string v1, "WEEKLY"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/j;->WEEKLY:Lcom/samsung/android/sdk/healthdata/j;

    .line 2367
    new-instance v0, Lcom/samsung/android/sdk/healthdata/o;

    const-string v1, "MONTHLY"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/j;->MONTHLY:Lcom/samsung/android/sdk/healthdata/j;

    .line 2261
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/sdk/healthdata/j;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/sdk/healthdata/j;->MINUTELY:Lcom/samsung/android/sdk/healthdata/j;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/sdk/healthdata/j;->HOURLY:Lcom/samsung/android/sdk/healthdata/j;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/sdk/healthdata/j;->DAILY:Lcom/samsung/android/sdk/healthdata/j;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/sdk/healthdata/j;->WEEKLY:Lcom/samsung/android/sdk/healthdata/j;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/sdk/healthdata/j;->MONTHLY:Lcom/samsung/android/sdk/healthdata/j;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/healthdata/j;->b:[Lcom/samsung/android/sdk/healthdata/j;

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
    .line 2399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2400
    iput p3, p0, Lcom/samsung/android/sdk/healthdata/j;->a:I

    .line 2401
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIB)V
    .locals 0

    .prologue
    .line 2261
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/healthdata/j;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static from(I)Lcom/samsung/android/sdk/healthdata/j;
    .locals 3

    .prologue
    .line 2415
    if-ltz p0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/healthdata/j;->MONTHLY:Lcom/samsung/android/sdk/healthdata/j;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/j;->getValue()I

    move-result v0

    if-le p0, v0, :cond_1

    .line 2416
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid range : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2418
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/j;->values()[Lcom/samsung/android/sdk/healthdata/j;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/j;
    .locals 1

    .prologue
    .line 2261
    const-class v0, Lcom/samsung/android/sdk/healthdata/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/j;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/healthdata/j;
    .locals 1

    .prologue
    .line 2261
    sget-object v0, Lcom/samsung/android/sdk/healthdata/j;->b:[Lcom/samsung/android/sdk/healthdata/j;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/healthdata/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/healthdata/j;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 2410
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/j;->a:I

    return v0
.end method

.method public abstract toSqlLiteral(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method
