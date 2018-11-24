.class public Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;
.super Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
.source "HealthPermissionManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 644
    new-instance v0, Lcom/samsung/android/sdk/healthdata/ag;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/ag;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;I)V
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 616
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->a:Landroid/os/Bundle;

    .line 617
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->a:Landroid/os/Bundle;

    .line 622
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public getResultMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/sdk/healthdata/af;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 637
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 639
    return-void
.end method
