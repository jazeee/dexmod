.class public final Lcom/samsung/android/sdk/healthdata/af;
.super Ljava/lang/Object;
.source "HealthPermissionManager.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/samsung/android/sdk/healthdata/ah;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/ah;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/af;->a:Ljava/lang/String;

    .line 534
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/af;->b:Lcom/samsung/android/sdk/healthdata/ah;

    .line 535
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 568
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/samsung/android/sdk/healthdata/af;

    if-eqz v1, :cond_0

    .line 569
    check-cast p1, Lcom/samsung/android/sdk/healthdata/af;

    .line 572
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/af;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/sdk/healthdata/af;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v0

    .line 576
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/af;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/sdk/healthdata/af;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/af;->b:Lcom/samsung/android/sdk/healthdata/ah;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/healthdata/ah;->getValue()I

    move-result v1

    iget-object v2, p1, Lcom/samsung/android/sdk/healthdata/af;->b:Lcom/samsung/android/sdk/healthdata/ah;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/healthdata/ah;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/af;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getPermissionType()Lcom/samsung/android/sdk/healthdata/ah;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/af;->b:Lcom/samsung/android/sdk/healthdata/ah;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/af;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 594
    const/4 v0, 0x0

    .line 597
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/af;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/af;->b:Lcom/samsung/android/sdk/healthdata/ah;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/healthdata/ah;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
