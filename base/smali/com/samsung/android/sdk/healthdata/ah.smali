.class public final enum Lcom/samsung/android/sdk/healthdata/ah;
.super Ljava/lang/Enum;
.source "HealthPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/healthdata/ah;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum READ:Lcom/samsung/android/sdk/healthdata/ah;

.field public static final enum WRITE:Lcom/samsung/android/sdk/healthdata/ah;

.field private static final synthetic b:[Lcom/samsung/android/sdk/healthdata/ah;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 472
    new-instance v0, Lcom/samsung/android/sdk/healthdata/ah;

    const-string v1, "READ"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/healthdata/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/ah;->READ:Lcom/samsung/android/sdk/healthdata/ah;

    .line 478
    new-instance v0, Lcom/samsung/android/sdk/healthdata/ah;

    const-string v1, "WRITE"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/healthdata/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/ah;->WRITE:Lcom/samsung/android/sdk/healthdata/ah;

    .line 467
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/healthdata/ah;

    sget-object v1, Lcom/samsung/android/sdk/healthdata/ah;->READ:Lcom/samsung/android/sdk/healthdata/ah;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/healthdata/ah;->WRITE:Lcom/samsung/android/sdk/healthdata/ah;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/healthdata/ah;->b:[Lcom/samsung/android/sdk/healthdata/ah;

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
    .line 483
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 484
    iput p3, p0, Lcom/samsung/android/sdk/healthdata/ah;->a:I

    .line 485
    return-void
.end method

.method public static getType(I)Lcom/samsung/android/sdk/healthdata/ah;
    .locals 2

    .prologue
    .line 505
    sget-object v0, Lcom/samsung/android/sdk/healthdata/ah;->READ:Lcom/samsung/android/sdk/healthdata/ah;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/ah;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 506
    sget-object v0, Lcom/samsung/android/sdk/healthdata/ah;->READ:Lcom/samsung/android/sdk/healthdata/ah;

    .line 508
    :goto_0
    return-object v0

    .line 507
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/healthdata/ah;->WRITE:Lcom/samsung/android/sdk/healthdata/ah;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/ah;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 508
    sget-object v0, Lcom/samsung/android/sdk/healthdata/ah;->WRITE:Lcom/samsung/android/sdk/healthdata/ah;

    goto :goto_0

    .line 510
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown input value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/ah;
    .locals 1

    .prologue
    .line 467
    const-class v0, Lcom/samsung/android/sdk/healthdata/ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/ah;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/healthdata/ah;
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/samsung/android/sdk/healthdata/ah;->b:[Lcom/samsung/android/sdk/healthdata/ah;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/healthdata/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/healthdata/ah;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/ah;->a:I

    return v0
.end method
