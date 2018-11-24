.class public final Lcom/samsung/android/sdk/healthdata/t;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/sdk/healthdata/s;
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/t;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No data type or invalid data type is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/t;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setDataType(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/t;
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/t;->a:Ljava/lang/String;

    .line 732
    return-object p0
.end method
