.class public abstract enum Lcom/samsung/android/sdk/healthdata/d;
.super Ljava/lang/Enum;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/healthdata/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AVG:Lcom/samsung/android/sdk/healthdata/d;

.field public static final enum COUNT:Lcom/samsung/android/sdk/healthdata/d;

.field public static final enum MAX:Lcom/samsung/android/sdk/healthdata/d;

.field public static final enum MIN:Lcom/samsung/android/sdk/healthdata/d;

.field public static final enum SUM:Lcom/samsung/android/sdk/healthdata/d;

.field private static final synthetic b:[Lcom/samsung/android/sdk/healthdata/d;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2040
    new-instance v0, Lcom/samsung/android/sdk/healthdata/e;

    const-string v1, "SUM"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/d;->SUM:Lcom/samsung/android/sdk/healthdata/d;

    .line 2051
    new-instance v0, Lcom/samsung/android/sdk/healthdata/f;

    const-string v1, "MIN"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/d;->MIN:Lcom/samsung/android/sdk/healthdata/d;

    .line 2062
    new-instance v0, Lcom/samsung/android/sdk/healthdata/g;

    const-string v1, "MAX"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/d;->MAX:Lcom/samsung/android/sdk/healthdata/d;

    .line 2073
    new-instance v0, Lcom/samsung/android/sdk/healthdata/h;

    const-string v1, "AVG"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/d;->AVG:Lcom/samsung/android/sdk/healthdata/d;

    .line 2084
    new-instance v0, Lcom/samsung/android/sdk/healthdata/i;

    const-string v1, "COUNT"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/d;->COUNT:Lcom/samsung/android/sdk/healthdata/d;

    .line 2033
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/sdk/healthdata/d;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/sdk/healthdata/d;->SUM:Lcom/samsung/android/sdk/healthdata/d;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/sdk/healthdata/d;->MIN:Lcom/samsung/android/sdk/healthdata/d;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/sdk/healthdata/d;->MAX:Lcom/samsung/android/sdk/healthdata/d;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/sdk/healthdata/d;->AVG:Lcom/samsung/android/sdk/healthdata/d;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/sdk/healthdata/d;->COUNT:Lcom/samsung/android/sdk/healthdata/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/healthdata/d;->b:[Lcom/samsung/android/sdk/healthdata/d;

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
    .line 2093
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2094
    iput p3, p0, Lcom/samsung/android/sdk/healthdata/d;->a:I

    .line 2095
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIB)V
    .locals 0

    .prologue
    .line 2033
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/healthdata/d;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static from(I)Lcom/samsung/android/sdk/healthdata/d;
    .locals 3

    .prologue
    .line 2109
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    .line 2110
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

    .line 2112
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/d;->values()[Lcom/samsung/android/sdk/healthdata/d;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/d;
    .locals 1

    .prologue
    .line 2033
    const-class v0, Lcom/samsung/android/sdk/healthdata/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/d;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/healthdata/d;
    .locals 1

    .prologue
    .line 2033
    sget-object v0, Lcom/samsung/android/sdk/healthdata/d;->b:[Lcom/samsung/android/sdk/healthdata/d;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/healthdata/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/healthdata/d;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 2104
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/d;->a:I

    return v0
.end method

.method public abstract toSqlLiteral()Ljava/lang/String;
.end method
